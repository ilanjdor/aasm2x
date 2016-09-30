// FILL IN:
// STRUCT: Complete the struct declaration below, so that that when this file
// is compiled, it produces the assembly code found in file 3a.S and 3b.S
// FORMAT[123]: Use the correct printf format string to print out the
// relevant fields of the structure.
#include <stdio.h>
struct x {
	char f1[24];
	long f2;
	short f3;
};

void output_func(struct x *arg1) {
	printf("%s\n", arg1->f1);
	printf("%ld\n", arg1->f2);
	printf("%hd\n", arg1->f3);
}
