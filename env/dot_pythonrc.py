import atexit
import os
import readline
import rlcompleter
 
history_path = os.path.expanduser("~/.pyhistory")
 
 
def save_history(history_path=history_path):
    import readline
    readline.write_history_file(history_path)
 
 
if os.path.exists(history_path):
    readline.read_history_file(history_path)
atexit.register(save_history)
 
if 'libedit' in readline.__doc__:
    readline.parse_and_bind("bind ^I rl_complete")
else:
    readline.parse_and_bind("tab: complete")
