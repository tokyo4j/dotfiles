#!/usr/bin/python
import os
import subprocess
import filecmp
import glob
import re

for tmpl_file in glob.glob("config/**/*", recursive=True, include_hidden=True):
    if not os.path.isfile(tmpl_file):
        continue
    fs_file = re.sub("^config/", "/", tmpl_file)
    fs_file = re.sub("^/HOME/", f"{os.environ['HOME']}/", fs_file)
    if not os.path.exists(fs_file):
        print("Not exist:", fs_file)
        continue
    if filecmp.cmp(tmpl_file, fs_file):
        print("Identical:", fs_file)
        continue
    subprocess.call(
        ["code", "-d", fs_file, tmpl_file],
        stdout=subprocess.DEVNULL,
        stderr=subprocess.DEVNULL,
    )
