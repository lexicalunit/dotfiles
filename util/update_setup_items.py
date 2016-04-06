#!/usr/bin/env python

# Sorts and formats the installed items lists at the top of the setup script.

import subprocess
import sys

try:
    # python 3 support:
    from builtins import bytes
except:
    pass

if __name__ == '__main__':
    inside = False
    with open('setup', 'r') as f:
        for line in f:
            if line.startswith('# BEGIN GENERATED PACKAGE LISTS'):
                sys.stdout.write(line)
                inside = True
            elif line.startswith('# END GENERATED PACKAGE LISTS'):
                output = subprocess.check_output(['setup', '-i'])[:-1]
                if isinstance(output, bytes):
                    output = output.decode('utf-8')
                sys.stdout.write(output)
                sys.stdout.write(line)
                inside = False
            elif not inside:
                sys.stdout.write(line)
