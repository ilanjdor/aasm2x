struct unsorted_array {
	int nelems;
	int elems[];
};

int mystery(struct unsorted_array *ip, int key) {
	int *array = ip->elems;

	for (int i = 0; i < ip->nelems; i++)
		if (array[i] == key)
			return 1;
	return 0;
}
