from ctypes import cdll


def get_cdll_fib():
    libc_fib = cdll.LoadLibrary('./c_fib.so')
    return libc_fib.fib


def main():
    fib = get_cdll_fib()
    for i in range(10):
        print("fib(%d) = %d" % (i, fib(i)))


if __name__ == "__main__":
    main()
