from collections import Counter
import re

logfile = "work/log/mul.log"

counter = Counter()

with open(logfile) as f:
    for line in f:
        m = re.search(r"\b(add|sub|mul|div|lw|sw|beq|jal|jalr)\b", line)
        if m:
            counter[m.group(1)] += 1

print("Instruction Coverage")
print("--------------------")

for inst, count in sorted(counter.items()):
    print(f"{inst:5} : {count}")
