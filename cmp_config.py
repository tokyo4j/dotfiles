import os
import subprocess
import filecmp

files = open("./files.txt", "r", encoding="utf-8").read().split("\n")

for f in files:
    dst = "./config/" + f.replace("/", "$")
    src = os.path.expanduser(f)

    if not os.path.exists(src):
        print("Not exist:", src)
        continue

    if filecmp.cmp(src, dst):
        print("Identical:", src)
        continue

    subprocess.call(
        ["code-insiders", "--wait", "-d", src, dst],
        stdout=subprocess.DEVNULL,
        stderr=subprocess.DEVNULL,
    )
