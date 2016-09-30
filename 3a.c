// FILL IN:
// STRUCT: Complete the struct declaration below, so that that when this file
// is compiled, it produces the assembly code found in file 3a.S and 3b.S
// FORMAT[123]: Use the correct printf format string to print out the
// relevant fields of the structure.
#include <stdio.h>
struct x {
	int 	f1;
	short	f2;
	char	f3;
};

void output_func(struct x *arg1) {
	printf("%d\n", arg1->f1);
	printf("%hd\n", arg1->f2);
	printf("%c\n", arg1->f3);
}
