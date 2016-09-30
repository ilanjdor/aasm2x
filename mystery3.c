#include <stdio.h>
struct treenode {
	int val;
	struct treenode *left;
	struct treenode *right;
};

int mystery(struct treenode *t, int key) {
	while (t != NULL) {
		if (t->val == key)
			return 1;

		if (t->val < key)
			t = t->right;
		else
			t = t->left;
	}
	return 0;
}
