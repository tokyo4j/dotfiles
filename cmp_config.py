import os
import subprocess
import filecmp
import glob
import re

blacklist = open("./blacklist.txt", "r", encoding="utf-8").read().split("\n")
filenames = glob.glob("config/**/*", recursive=True, include_hidden=True)
filenames = [f for f in filenames if os.path.isfile(f)]

files = []
for tmpl in filenames:
      file = re.sub("^config/HOME/", "~/", tmpl)
      file = re.sub("^config/", "/", file)
      if file in blacklist:
          continue
      file = re.sub("~", os.environ["HOME"], file)
      files.append({"tmpl": tmpl, "file": file})

for f in files:
    if not os.path.exists(f["file"]):
        print("Not exist:", f["file"])
        continue

    if filecmp.cmp(f["tmpl"], f["file"]):
        print("Identical:", f["file"])
        continue

    subprocess.call(
        ["code", "-d", f["file"], f["tmpl"]],
        stdout=subprocess.DEVNULL,
        stderr=subprocess.DEVNULL,
    )
