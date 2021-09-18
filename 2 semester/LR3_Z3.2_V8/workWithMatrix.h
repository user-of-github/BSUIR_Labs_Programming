#ifndef LR3_Z3_2_V8__WORKWITHMATRIX_H_
#define LR3_Z3_2_V8__WORKWITHMATRIX_H_

#include <stdio.h>
#include <malloc.h>

unsigned short** CreateArray(const short rows, const short cols);

short BelongsToRange(const short number, const short left, const short right);

void ProcessTurnHorizontal(const short fixed_coordinate,
	const short fixed_range,
	const short from,
	const short to,
	const short range,
	unsigned short** matrix,
	const unsigned short value);

void ProcessTurnVertical(const short fixed_coordinate,
	const short fixed_range,
	const short from,
	const short to,
	const short range,
	unsigned short** matrix,
	const unsigned short value);

void PrintMatrix(const unsigned short** matrix, const short rows, const short cols);

void FreeMemory(unsigned short** matrix, const short rows);

void RunTask(const short start_row, const short start_col, const short rows, const short cols, unsigned short** matrix);

#endif //LR3_Z3_2_V8__WORKWITHMATRIX_H_
