# Script to copy over local settings

import subprocess as sp


# Copy over vim stuff
def vim_setup(save_settings = True):
    if save_settings:
         print 'Saving vim settings'
         sp.call(['cp','~/.vim/'])

# Copy over

