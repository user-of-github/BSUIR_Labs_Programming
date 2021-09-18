#include "workWithMatrix.h"
#include <conio.h>

char* ERROR_INPUT_MESSAGE = "Wrong input. Start again";
char* ERROR_MEMORY_MESSAGE = "Unable to allocate memory. Start again";

int main(void)
{
	printf("Enter number of rows and cols for matrix\n");
	short rows, cols;
	if (!(scanf("%hd", &rows) && scanf("%hd", &cols)))
	{
		printf("%s", ERROR_INPUT_MESSAGE);
		return 0;
	}

	if (rows <= 0 || cols <= 0)
	{
		printf("%s", ERROR_INPUT_MESSAGE);
		return 0;
	}
	unsigned short** matrix = CreateArray(rows, cols);
	if (matrix == NULL)
	{
		printf("%s", (const char*)ERROR_MEMORY_MESSAGE);
		return 0;
	}

	PrintMatrix(matrix, rows, cols);
	printf("From what position (rowY;colX) should we start (starting from 0)?\n");
	short start_row, start_col;
	if (!((scanf("%hd", &start_row)) && (scanf("%hd", &start_col))))
	{
		printf(ERROR_INPUT_MESSAGE);
		return 0;
	}

	RunTask(start_row, start_col, rows, cols, matrix);

	PrintMatrix(matrix, rows, cols);

	FreeMemory(matrix, rows);

	printf("Success. Press any key\n");
	_getch();

	return 0;
}

