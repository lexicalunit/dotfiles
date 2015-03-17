#!/usr/bin/env python

# Sorts and formats the installed items lists at the top of the setup script.

import subprocess
import sys

if __name__ == '__main__':
    inside = False
    with open('setup', 'r') as f:
        for line in f:
            if line.startswith('# BEGIN GENERATED PACKAGE LISTS'):
                sys.stdout.write(line)
                inside = True
            elif line.startswith('# END GENERATED PACKAGE LISTS'):
                sys.stdout.write(subprocess.check_output(['setup', '-i'])[:-1])
                sys.stdout.write(line)
                inside = False
            elif not inside:
                sys.stdout.write(line)
