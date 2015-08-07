// #include "foreign.h"

int foreignfunc() {
	return 6;
}

int foreignfunc2(int x) {
	return ++x;
}

int foreignfunc3(int* x) {
	return (*x + 1);
}

int* foreignfunc4() {
	// returning subroutine stack address is always risky and should never be used in products
	int x = 2;	
	return (&x);
}

void foreignfunc5(int* x) {
	*x = (*x + 1);
}
