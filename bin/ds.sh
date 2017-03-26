#!/bin/bash

# source command shell
. ~/ds/bin/command.sh

# get the YouDao api token
keyfrom=$DS_KEYFROM
key=$DS_KEY

# define a function to open a HTTP request
translate()
{
  base_url="http://fanyi.youdao.com/openapi.do"
  req_params="keyfrom=$keyfrom&key=$key&type=data&doctype=json&version=1.1&only=dict&q=$1"
  res=`curl -s -H "charset=UTF-8" -d $req_params "http://fanyi.youdao.com/openapi.do"`
  translate_res=$res
  return
}

# print the translate result
print_result()
{
  # get the words needs to be translated
  unkmown_word="$1"

  # get the translated response
  translate $unkmown_word

  # use jq to parse the response json
  phonetic=`echo $translate_res | jq '.basic.phonetic'`
  explains=`echo $translate_res | jq '.basic.explains[]'`

  # print the data
  echo "$unkmown_word[$phonetic]"
  echo "翻译："
  echo "$explains"
}

# check the opts and params
set -- $(getopt c: "$@")
while [ -n "$1" ]; do
  case "$1" in
    -c )
      param="$2"
      if [ "$param" = "uninstall" ]; then
        uninstall_ds
      elif [ "$param" = "update" ]; then
        update_ds
        # cd ~/.ds
        # git pull
        # # success
        # echo '****         __             '
        # echo '****     ___/ /        _____'
        # echo '****   /`__  /       / ___/ '
        # echo '****  / /_/ /  __   (__  )  '
        # echo '**** /_ _ _/  /_/ /_____/   '
        # echo '****                           ....is now updated!'
        # echo '****'
      elif [ "$param" = "reset_key" ]; then
        reset_key
      fi
      shift ;;
    -- )
      shift
      break ;;
    * )
      echo "sorry, maybe $1 is not a ds command." ;;
  esac
  shift
done

if [ -n "$1" ]; then
  print_result "$1"
fi
