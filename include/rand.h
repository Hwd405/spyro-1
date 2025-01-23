#ifndef __RAND_H
#define __RAND_H

/// @brief returns a value between [pMin, pMax] both inclusive
int RandRange(int pMin, int pMax);

/// @brief returns a value between [pMin, pMax] both inclusive, and randomly
/// makes them negative
int RandRangeSigned(int pMin, int pMax);

#endif // !__RAND_H
