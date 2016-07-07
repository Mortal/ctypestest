int fib(int v) {
	if (v <= 1) return v;
	return fib(v-2) + fib(v-1);
}
