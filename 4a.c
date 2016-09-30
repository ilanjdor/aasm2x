// FILL IN:
// UNION: Complete the union declaration below, so that that when this file
// is compiled, it produces the assembly code found in file 4a.S and 4b.S
// FORMAT[123]: Use the correct printf format string to print out the
// relevant fields of the structure.
#include <stdio.h>
union x {
	char u1[8];
	int u2;
	long u3;
};

void output_func(union x *arg1) {
	printf("%s\n", arg1->u1);
	printf("%d\n", arg1->u2);
	printf("%ld\n", arg1->u3);
}
