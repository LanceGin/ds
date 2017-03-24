#!/bin/bash

# get the words needs to be translated
unkmown_word="$1"

# get the YouDao api token
keyfrom="gin-shell"
key="1361115375"

# define a function to open a HTTP request
function translate()
{
  base_url="http://fanyi.youdao.com/openapi.do"
  req_params="keyfrom=$keyfrom&key=$key&type=data&doctype=json&version=1.1&only=dict&q=$1"
  res=`curl -s -H "charset=UTF-8" -d $req_params "http://fanyi.youdao.com/openapi.do"`
  translate_res=$res
  return
}

# get the translated response
translate $unkmown_word

# use jq to parse the response json
phonetic=`echo $translate_res | jq '.basic.phonetic'`
explains=`echo $translate_res | jq '.basic.explains[]'`

# print the data
echo "$unkmown_word[$phonetic]"
echo "翻译："
echo "$explains"