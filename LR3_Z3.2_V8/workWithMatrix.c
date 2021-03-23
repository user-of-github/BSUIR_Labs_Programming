#include "workWithMatrix.h"

unsigned short** CreateArray(const short rows, const short cols)
{
	unsigned short** new_array = (unsigned short**)malloc(rows * sizeof(unsigned short*));
	short row;
	for (row = 0; row < rows; ++row)
		new_array[row] = (unsigned short*)malloc(cols * sizeof(unsigned short));

	short col;
	for (row = 0; row < rows; ++row)
		for (col = 0; col < cols; ++col)
			new_array[row][col] = 0;

	return new_array;
}

short BelongsToRange(const short number, const short left, const short right)
{
	return (((number >= left) && (number <= right)) ? ((short)1) : ((short)0));
}

void ProcessTurnHorizontal(const short fixed_coordinate,
	const short fixed_range,
	const short from,
	const short to,
	const short range,
	unsigned short** matrix,
	const unsigned short value)
{
	if (BelongsToRange(fixed_coordinate, 0, fixed_range - 1) == 1)
	{

		if ((from > range) || (to < 0))
			return;
		short counter = 0;
		for (counter = from; counter <= to; ++counter)
		{
			if (BelongsToRange(counter, 0, range - 1) == 1)
				matrix[fixed_coordinate][counter] = value;
		}
	}
}

void ProcessTurnVertical(const short fixed_coordinate,
	const short fixed_range,
	const short from,
	const short to,
	const short range,
	unsigned short** matrix,
	const unsigned short value)
{
	if (BelongsToRange(fixed_coordinate, 0, fixed_range - 1) == 1)
	{

		if ((from > range) || (to < 0))
			return;
		short counter = 0;
		for (counter = from; counter <= to; ++counter)
		{
			if (BelongsToRange(counter, 0, range - 1) == 1)
				matrix[counter][fixed_coordinate] = value;
		}
	}
}

void PrintMatrix(const unsigned short** matrix, const short rows, const short cols)
{
	printf("<Matrix>\n");
	short row, col;
	for (row = 0; row < rows; ++row)
	{
		for (col = 0; col < cols; ++col)
			printf("%hu ", matrix[row][col]);
		printf("\n");
	}
	printf("</Matrix>\n");
}

void FreeMemory(unsigned short** matrix, const short rows)
{
	short row = 0;
	for (row = 0; row < rows; ++row)
		free(matrix[row]);

	free(matrix);
}

void RunTask(const short start_row, const short start_col, const short rows, const short cols, unsigned short **matrix)
{
	unsigned short value = 1;
	if ((BelongsToRange(start_row, 0, rows - 1) == 1) && (BelongsToRange(start_col, 0, cols - 1) == 1))
		matrix[start_row][start_col] = value;

	short row_top, row_bottom, col_left, col_right;
	row_top = row_bottom = start_row;
	col_left = col_right = start_col;

	while ((row_top >= 0) || (row_bottom <= rows) || (col_left >= 0) || (col_right <= cols))
	{
		--row_top;
		++row_bottom;
		--col_left;
		++col_right;
		++value;
		ProcessTurnHorizontal(row_top, rows, col_left, col_right, cols, matrix, value);
		ProcessTurnVertical(col_left, cols, row_top, row_bottom, rows, matrix, value);
		ProcessTurnHorizontal(row_bottom, rows, col_left, col_right, cols, matrix, value);
		ProcessTurnVertical(col_right, cols, row_top, row_bottom, rows, matrix, value);
	}
}