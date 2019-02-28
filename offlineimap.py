#! /usr/bin/env python2
from subprocess import check_output

def get_pass(key):
    return check_output('pass ' + key + "|head -1", shell=True).splitlines()[0]
