#include "common.h"

#include "cd.h"
#include "music.h"
#include "spu.h"


void func_8002BBE0(void); // Music update

void CDLoadTime(void) {

  if (D_800756E0 == 0)
    return; // No timer set

  // Check if the disc read time is exceeded
  if (D_8007588C > D_800756E0) {

    /*
      There used to be a printf here that said
      "Load Time (%d) Exceeded on LoadStage %d\n" (D_800756E0, g_LoadStage)
    */

    // Reinitialize the CD subsystem
    CdInit();
    CdReadCallback(&CDReadDone);

    // Reset our CD music state
    g_CdMusic.m_Flags = 0x40;
    g_CdMusic.m_PostCDCommand = 0;
    g_CdMusic.m_Flags2 = 0;

    // Wait for the CD subsystem to be ready after the reinitialization
    while (CdSync(1, 0) != CdlComplete)
      ;

    D_8007588C = 0; // Reset the disc read time

    CdRead(g_CdState.m_Size, g_CdState.m_OutBuf, CdlModeSpeed);
  }
}

void CDReadDone(u_char intr, u_char *result) {
  // If we managed to read the data, unset the reading flag
  // so other logic can continue.
  if (intr == CdlComplete) {
    g_CdState.m_IsReading = 0;
    D_8007588C = 0; // Disc read time reset
    D_800756E0 = 0; // Max time reset
    return;
  }

  // Aside from CdlComplete, there's only CdlDataEnd and CdlDiskError,
  // so getting here we can assume an error occured.

  // Retry the read if we didn't manage due to a CD error
  CdControl(CdlSetloc, (void *)&g_CdState.m_ReadLoc, nullptr);
  CdRead(g_CdState.m_Size, g_CdState.m_OutBuf, 0x80);
}

void CDLoadSync(int sector, void *buf, int size, int offset, int maxTime) {
  u_char modeFlags = CdlModeSpeed;

  while (g_CdState.m_IsReading || CdSync(1, nullptr) != CdlComplete ||
         (g_CdMusic.m_Flags & 0x40) == 0) {
    CDLoadTime();
    func_8005637C();
    func_8002BBE0();
  };

  // Set the mode to double speed
  CdControl(CdlSetmode, &modeFlags, 0);

  D_800756E0 = maxTime; // Max time
  D_8007588C = 0;       // Disc read time

  CdIntToPos(sector + (offset / 2048), &g_CdState.m_ReadLoc);

  CdControl(CdlSetloc, (void *)&g_CdState.m_ReadLoc, nullptr);

  g_CdState.m_Size = (size + 2047) / 2048; // Size
  g_CdState.m_OutBuf = buf;                // Read buffer
  g_CdState.m_IsReading = 1;               // Is reading

  // Start the read
  CdRead(g_CdState.m_Size, g_CdState.m_OutBuf, CdlModeSpeed);

  while (g_CdState.m_IsReading || CdSync(1, nullptr) != CdlComplete) {
    CDLoadTime();
  }
}

void CDLoadAsync(int sector, void *buf, int size, int offset, int maxTime) {
  u_char modeFlags = CdlModeSpeed;

  // Set the mode to double speed
  CdControl(CdlSetmode, &modeFlags, 0);

  D_800756E0 = maxTime; // Max time
  D_8007588C = 0;       // Disc read time

  CdIntToPos(sector + (offset / 2048), &g_CdState.m_ReadLoc);

  CdControl(CdlSetloc, (void *)&g_CdState.m_ReadLoc, nullptr);

  g_CdState.m_Size = (size + 2047) / 2048; // Size
  g_CdState.m_OutBuf = buf;                // Read buffer
  g_CdState.m_IsReading = 1;               // Is reading

  // Start the read
  CdRead(g_CdState.m_Size, g_CdState.m_OutBuf, CdlModeSpeed);
}