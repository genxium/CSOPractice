#include <stdio.h>

int main() {
	printf("magic number is %d\n", foreignfunc());
	int x = 3;
	x = foreignfunc2(x);
	foreignfunc5(&x);
	
	printf("x is %d\n", x);

	int y = 5, z = 6;
	printf("mean is %d\n", mean(y, z));
	printf("diff is %d\n", diff(y, z));
	return 0;
}
