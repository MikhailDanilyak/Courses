def fib_mod(n, m):
    fib_list = [0, 1]

    for i in range(2, n + 1):
        element = (fib_list[-1] + fib_list[-2]) % m
        fib_list.append(element)
        if fib_list[-1] == 1 and fib_list[-2] == 0 and i > 2:
            break

    if i == n:
        return fib_list[-1]

    pisano_period_list = fib_list[:-2]

    return pisano_period_list[n % len(pisano_period_list)]


def main():
    n, m = map(int, input().split())
    print(fib_mod(n, m))


if __name__ == "__main__":
    main()
