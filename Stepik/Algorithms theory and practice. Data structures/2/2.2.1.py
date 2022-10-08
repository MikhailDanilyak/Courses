def fib(n):
    fib_list = [0, 1, 1]

    while len(fib_list) <= n:
        #print(f"fib_list length: {len(fib_list)}; fib_list: {fib_list}")
        fib_list.append(fib_list[-1] + fib_list[-2])

    return fib_list[-1]


def main():
    n = int(input())
    print(fib(n))


if __name__ == "__main__":
    main()
