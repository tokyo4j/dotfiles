import os
import subprocess
import filecmp

files = open("./files.txt", "r", encoding="utf-8").read().split("\n")
files = filter(lambda l: l[0] != "#", files)

for f in files:
    dst = "./config/" + f.replace("/", "_")
    src = os.path.expanduser(f)

    if not os.path.exists(src):
        print("Not exist:", src)
        continue

    if filecmp.cmp(src, dst):
        print("Identical:", src)
        continue

    subprocess.call(
        ["code", "-d", src, dst],
        stdout=subprocess.DEVNULL,
        stderr=subprocess.DEVNULL,
    )
