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
hash ds >/dev/null 2>&1 || {
  read -p "Use the default api key or set by yourself? D -> defalut, S -> Set [D/S] :" is_default

  # check the value get from user
  while [ "$is_default" != "D" ] && [ "$is_default" != "S" ] && [ "$is_default" != "d" ] && [ "$is_default" != "s" ]; do
    read -p "Use the default api key or set by yourself? D -> defalut, S -> Set [D/S] :" is_default
  done

  # default key or reset?
  if [ "$is_default" = 'D' ] || [ "$is_default" = 'd' ]; then
    DS_KEYFROM="gin-shell"
    DS_KEY="1361115375"
    echo "export DS_KEYFROM=\"$DS_KEYFROM\"" >> ~/.bashrc
    echo "export DS_KEY=\"$DS_KEY\"" >> ~/.bashrc
  elif [ "$is_default" = 'S' ] || [ "$is_default" = 's' ]; then
    echo "reset key"
    read -p "Set your own keyfrom:" USER_KEYFROM
    read -p "Set your own key:" USER_KEY
    echo "export DS_KEYFROM=\"$USER_KEYFROM\"" >> ~/.bashrc
    echo "export DS_KEY=\"$USER_KEY\"" >> ~/.bashrc
  fi
}

# check whether exists jq
hash jq >/dev/null 2>&1 || {
  echo "****"
  echo "**** jq not installed."
  echo "**** start installing jq"
  echo "****"
  git clone --depth=1 https://github.com/stedolan/jq.git ~/.jq || {
    echo "Error: git clone jq repo failed\n"
    exit 1
  }
  cd ~/.jq
  autoreconf -i
  ./configure --disable-maintainer-mode
  make
  sudo make install
}

# define a function to install ds bin shell
echo "****"
echo "****"
echo "****"
git clone --depth=1 https://github.com/LanceGin/ds.git ~/.ds || {
  echo "Error: git clone ds repo failed\n"
  exit 1
}
chmod +x ~/.ds/bin/ds.sh
ln -s ~/.ds/bin/ds.sh /usr/local/bin/ds

# success
echo '         __             '
echo '     ___/ /        _____'
echo '   /`__  /       / ___/ '
echo '  / /_/ /  __   (__  )  '
echo ' /_ _ _/  /_/ /_____/   '
echo '                           ....is now installed!'
echo ''