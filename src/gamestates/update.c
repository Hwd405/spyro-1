#include "camera.h"
#include "common.h"
#include "loaders.h"
#include "specular_and_metal.h"
#include "spyro.h"
#include "variables.h"

/// @brief Updates level transition gems and text
void func_8002DA74(void);
INCLUDE_ASM_REORDER_HACK("asm/nonmatchings/gamestates/update", func_8002DA74);

/// @brief Gamestate 1
void func_8002DF9C(void) {
  func_8004A7EC(); // Spyro update
  func_80037BD4(); // Camera update

  func_8002DA74();

  if (g_LoadStage < 11 || !D_800756B0) {
    func_80015370(1);
  }
}

extern SphericalCoordinates D_8006CA84; // Dunno

/// @brief Gamestate 9
void func_8002E000(void) {
  func_8004A200(); // Spyro update
  func_80037BD4(); // Camera update

  g_Camera.m_Rotation.y &= 0xFFF;

  if (g_Camera.m_Rotation.y > 0x800)
    g_Camera.m_Rotation.y -= 0x1000;

  if (g_Camera.m_Rotation.y < -0x200 || g_Camera.m_0xD8 == &D_8006CA84) {
    g_Gamestate = 0;
  }
}

extern int D_8007568C; // Pause menu no button ticks
extern int D_800758B8; // Pause menu text rotation ticks

void func_8002C664(void); // init.c

/// @brief Gamestate 10
void func_8002E084(void) {
  func_8004AA0C(); // Spyro -> return home
  func_80037BD4(); // Camera update

  D_8007568C++;

  if (D_8007568C >= 32) {
    D_8007568C = 0;
    D_800758B8++;
    if (D_800758B8 == 2) {
      func_8002C664();
    }

  } else {
    if (D_8007568C == 16 && D_800758B8 == 0) {
      func_8003EA68(15); // Set state to gliding
    }
  }
}

/// @brief Gamestate 2
INCLUDE_ASM_REORDER_HACK("asm/nonmatchings/gamestates/update", func_8002E12C);

/// @brief Gamestate 3
INCLUDE_ASM_REORDER_HACK("asm/nonmatchings/gamestates/update", func_8002EB2C);

/// @brief Gamestate 4 & 5
INCLUDE_ASM_REORDER_HACK("asm/nonmatchings/gamestates/update", func_8002EDF0);

/// @brief Gamestate 6 (Empty, used to be the dragon dialogue)
void func_8002C91C(void); // TODO: Move to init.h
void func_8002F3C4(void) { func_8002C91C(); }

/// @brief Gamestate 8 Dragon cutscene
INCLUDE_ASM_REORDER_HACK("asm/nonmatchings/gamestates/update", func_8002F3E4);

/// @brief Gamestate 11 (Fairy)
INCLUDE_ASM_REORDER_HACK("asm/nonmatchings/gamestates/update", func_800314B4);

/// @brief Gamestate 12 (Balloonist)
INCLUDE_ASM_REORDER_HACK("asm/nonmatchings/gamestates/update", func_800324D8);

// Memory card used only by titlescreen?!?!?!?!?!?!?!?!?!?!?!
INCLUDE_ASM_REORDER_HACK("asm/nonmatchings/gamestates/update", func_80032A20);

// Memory card used only by titlescreen?!?!?!?!?!?!?!?!?!?!?!
INCLUDE_ASM_REORDER_HACK("asm/nonmatchings/gamestates/update", func_80032AB0);

/// @brief Gamestate 13
INCLUDE_ASM_REORDER_HACK("asm/nonmatchings/gamestates/update", func_80032B08);

/// @brief Gamestate 14
INCLUDE_ASM_REORDER_HACK("asm/nonmatchings/gamestates/update", func_800331AC);

extern int D_80075704; // Credits sequence
extern int D_800756F8;

/// @brief Gamestate 15
INCLUDE_ASM_REORDER_HACK("asm/nonmatchings/gamestates/update", func_800333DC);
#if 0 // Almost matched
void func_800333DC(void) {
  SpecularUpdate(3);

  if (D_80075704 == 99) {
    g_LoadStage = 1;

    if (D_80075818 == -1) {
      D_800758B4 = 60; // Gnorc Gnexus
      if (g_GemTotal == 14000) {
        D_800758B4 = 10; // Artisans
      }
    } else {
      D_800758B4 = D_80075818;
      D_80075818 = -1;
    }

    D_800758AC = 0; // Reset portal level id
    D_800756D0 = 0; // Set no level transition
    D_800756F8 = 0;

    D_80075704 = 100; // Start loading level

  } else {
    if (D_80075704 == 100) {
      // Load level
      D_800756F8 += g_DeltaTime;
      func_80015370(1);
    }
  }
}
#endif

/// @brief Update demo mode
INCLUDE_ASM_REORDER_HACK("asm/nonmatchings/gamestates/update", func_800334D4);

/// @brief Gamestate update function
INCLUDE_ASM_REORDER_HACK("asm/nonmatchings/gamestates/update", GamestateUpdate);
