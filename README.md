# ds
[![Build Status](https://travis-ci.org/LanceGin/ds.svg?branch=master)](https://travis-ci.org/LanceGin/ds)

>    'ds' means 'dictionary shell', it helps you to translate a word from Chinese to English or from English to Chinese in a terminal. The translation based on YOUDAO traslate api.

# Feature

## • translate Chinese to English

![alt text](http://wx1.sinaimg.cn/mw1024/89243dfbgy1fdwz01bf4lg20n80cctg6.gif "Title")

## • translate English to Chinese

![alt text](http://wx3.sinaimg.cn/mw1024/89243dfbgy1fdwz04r67ag20ko09wn1b.gif "Title")

# Install

## 1. save the install script

	curl -L https://raw.githubusercontent.com/LanceGin/ds/master/install.sh > install.sh
  
## 2. excute the install script

	bash install.sh
  
## 3. source the bashrc file

	source ~/.bashrc
  
## 4. delete the install script

	rm install.sh

# Usage

## 1. translate English

	ds ENG_WORD
  
## 2. translate Chinese

	ds 中文词汇

## 3. uninstall ds

	ds -c uninstall
  
## 4. update ds

	ds -c update

## 5. reset YOUDAO api key and keyfrom

	ds -c reset_key
	source ~/.bashrc
