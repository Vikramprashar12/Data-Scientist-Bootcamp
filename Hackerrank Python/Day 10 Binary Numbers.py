n = 1111
binary_num = str(bin(n).replace("0b", ""))
max = 0
running = 0
for x in binary_num:
    if int(x) == 1:
        running += 1
    else:
        if running > max:
            max = running
        running = 0

print(max)
