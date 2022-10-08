def fib_digit(n):
    fib_list = [0, 1, 1]

    while len(fib_list) <= n:
        #print(f"fib_list length: {len(fib_list)}; fib_list: {fib_list}")
        fib_list.append(fib_list[-1] % 10 + fib_list[-2] % 10)

    return fib_list[-1] % 10


def main():
    n = int(input())
    print(fib_digit(n))


if __name__ == "__main__":
    main()
