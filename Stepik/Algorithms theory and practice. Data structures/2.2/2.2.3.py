def fib_mod(n, m):
    fib_list = [0, 1, 1]

    while len(fib_list) <= n:
        #print(f"fib_list length: {len(fib_list)}; fib_list: {fib_list}")
        fib_list.append(fib_list[-1] % m + fib_list[-2] % m)

    return fib_list[-1] % m


def main():
    n, m = map(int, input().split())
    print(fib_mod(n, m))


if __name__ == "__main__":
    main()
