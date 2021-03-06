struct sorted_array {
	int nelems;
	int elems[];
};

int mystery(struct sorted_array *ip, int key) {
	int nelems = ip->nelems;
	int *array = ip->elems;

	int lo, mid, hi;

	lo = 0;
	hi = nelems - 1;

	while (lo <= hi) {
		mid = (lo + hi) / 2;
		if (array[mid] == key)
			return 1;
		if (array[mid] < key)
			lo = mid + 1;
		else
			hi = mid - 1;
	}
	return 0;
}
