#!/bin/bash

# define update_ds function
update_ds()
{
  # cd ~/.ds
  # git pull
  # success
  echo '****         __             '
  echo '****     ___/ /        _____'
  echo '****   /`__  /       / ___/ '
  echo '****  / /_/ /  __   (__  )  '
  echo '**** /_ _ _/  /_/ /_____/   '
  echo '****                           ....is now updated!'
  echo '****'
}

# define uninstall_ds function
uninstall_ds()
{
  # rm -rf ~/.ds
  # rm /usr/local/bin/ds
  # unset $DS_KEY
  # unset $DS_KEYFROM
  # sed -i '/DS_KEY/d' ~/.bashrc
  # sed -i '/DS_KEYFROM/d' ~/.bashrc
  # success
  echo '****         __             '
  echo '****     ___/ /        _____'
  echo '****   /`__  /       / ___/ '
  echo '****  / /_/ /  __   (__  )  '
  echo '**** /_ _ _/  /_/ /_____/   '
  echo '****                           ....is now updated!'
  echo '****'
  echo '**** nothing would be remained in the system.'
  echo '****'
}

# define reset key && keyfrom function
reset_key()
{
  
  # success
  echo '****         __             '
  echo '****     ___/ /        _____'
  echo '****   /`__  /       / ___/ '
  echo '****  / /_/ /  __   (__  )  '
  echo '**** /_ _ _/  /_/ /_____/   '
  echo '****                           ....is now updated the KEY and KEYFROM!'
  echo '****'
}