// All the mystery functions are of the form:
#include <stdio.h>
struct ll {
	int key;
	struct ll *next;
};

int mysteryN(struct ll *ll, int key) {
	// Returns 1 if key appears in data structure arg
	// Returns 0 if key does not appear in data structure arg
	while (ll != NULL) {
		if (ll->key == key)
			return 1;
		else
			ll = ll->next;
	}
	return 0;
}
