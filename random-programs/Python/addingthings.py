#Some easy warm up code from CodeByte
#just an adding program.
def SimpleAdding(num):
    total = 0
    start = 1
    while start <= num:
        total += start
        start += 1
    return total

print SimpleAdding(raw_input())
