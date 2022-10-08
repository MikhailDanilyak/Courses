def gcd(a, b):

    while b > 0 and a > 0:
        if a > b:
            a = a % b
        else:
            b = b % a

        if a == 0 or b == 0:
            return max(a, b)


def main():
    a, b = map(int, input().split())
    print(gcd(a, b))


if __name__ == "__main__":
    main()
