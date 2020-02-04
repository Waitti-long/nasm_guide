import os
import sys

name = sys.argv[1]
name = name[:name.find(".")]

os.system("nasm -g -f elf64 -o {0}.o {1}".format(name,sys.argv[1]))
os.system("gcc -o {0} {0}.o".format(name))
os.remove("{0}.o".format(name))
