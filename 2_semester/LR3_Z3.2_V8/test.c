#include "workWithMatrix.h"
#include <assert.h>
#include <conio.h>
#undef main

int EqualMatrix(const short rows,
	const short cols,
	const unsigned short** matrix1,
	const unsigned short matrix2[rows][cols]);

int main(void)
{
	const short test_rows_1 = 3, test_cols_1 = 3;
	const short test_startRow_1 = 1, test_startCol_1 = 1;
	unsigned short** test_matrix_1 = CreateArray(test_rows_1, test_cols_1);
	RunTask(test_startRow_1, test_startCol_1, test_rows_1, test_cols_1, test_matrix_1);
	const unsigned short test_matrix_1_solution[3][3] = {
		2, 2, 2,
		2, 1, 2,
		2, 2, 2
	};
	assert(EqualMatrix(test_rows_1, test_cols_1, test_matrix_1, test_matrix_1_solution));

	const short test_rows_2 = 3, test_cols_2 = 3;
	const short test_startRow_2 = 0, test_startCol_2 = 0;
	unsigned short** test_matrix_2 = CreateArray(test_rows_2, test_cols_2);
	RunTask(test_startRow_2, test_startCol_2, test_rows_2, test_cols_2, test_matrix_2);
	const unsigned short test_matrix_2_solution[3][3] = {
		1, 2, 3,
		2, 2, 3,
		3, 3, 3
	};
	assert(EqualMatrix(test_rows_2, test_cols_2, test_matrix_2, test_matrix_2_solution));

	_getch();

	return 0;
}

int EqualMatrix(const short rows,
	const short cols,
	const unsigned short** matrix1,
	const unsigned short matrix2[rows][cols])
{
	unsigned short row, col;
	for (row = 0; row < rows; ++row)
		for (col = 0; col < cols; ++col)
			if (matrix1[row][col] != matrix2[row][col])
				return 0;
	return 1;
}