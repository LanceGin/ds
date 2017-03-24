#!/bin/bash
echo "****"
echo "**** ds INTRO V1.0"
echo "****"
echo "**** 'ds' means 'dictionary shell', it helps you to translate a word from"
echo "**** Chinese to English or from English to Chinese in a terminal. The translation"
echo "**** based on YOUDAO traslate api."
echo "****"
echo "**** Copyright (c) 2017-. Lance Gin"
echo "****"
echo "**** now start installing..."
echo "****"

# check whether exists $DS_KEYFROM and $DS_KEY
if [ ! $DS_KEYFROM ]; then
  echo "Use the default api key or set by yourself? [D/S] D -> defalut, S -> Set"
  read is_default

  # check the value get from user
  while [ "$is_default" != "D" ] && [ "$is_default" != "S" ] && [ "$is_default" != "d" ] && [ "$is_default" != "s" ]; do
    echo "Use the default api key or set by yourself? [D/S] D -> defalut, S -> Set"
    read is_default
  done

  # default key or reset?
  if [ $is_default = 'D' ] || [ $is_default = 'd' ]; then
    DS_KEYFROM="gin-shell"
    export DS_KEYFROM
    DS_KEY="1361115375"
    export DS_KEY
    echo "DS_KEYFROM: $DS_KEYFROM"
    echo "DS_KEY: $DS_KEY"
  elif [ $is_default = 'S' ] || [ $is_default = 's' ]; then
    echo "reset key"
  fi
fi

# check whether exists jq
hash jq >/dev/null 2>&1 || {
  echo "****"
  echo "**** jq not installed."
  echo "**** start installing jq"
  echo "****"
  git clone --depth=1 https://github.com/stedolan/jq.git /opt || {
    echo "Error: git clone jq repo failed\n"
    exit 1
  }
  cd /opt/jq
  autoreconf -i
  ./configure --disable-maintainer-mode
  make
  sudo make install
}

# define a function to install ds bin shell
echo "install ds bin shell"


# success
echo '         __             '
echo '     ___/ /        _____'
echo '   /`__  /       / ___/ '
echo '  / /_/ /  __   (__  )  '
echo ' /_ _ _/  /_/ /_____/   '
echo '                           ....is now installed!'
echo ''
