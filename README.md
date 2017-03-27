# ds
[![Build Status](https://travis-ci.org/LanceGin/ds.svg?branch=master)](https://travis-ci.org/LanceGin/ds)

>    'ds' means 'dictionary shell', it helps you to translate a word from Chinese to English or from English to Chinese in a terminal. The translation based on YOUDAO traslate api.

# Feature

## • translate Chinese to English

![alt text](http://wx1.sinaimg.cn/mw1024/89243dfbgy1fdwz01bf4lg20n80cctg6.gif "Title")

## • translate English to Chinese

![alt text](http://wx3.sinaimg.cn/mw1024/89243dfbgy1fdwz04r67ag20ko09wn1b.gif "Title")

# Usage

## 1. translate English

	ds ENG_WORD
  
## 2. translate Chinese

	ds 中文词汇

# Api

## 1. install

	curl -L https://raw.githubusercontent.com/LanceGin/ds/master/install.sh > install.sh
	bash install.sh
	source ~/.bashrc
	rm install.sh

## 2. uninstall

	ds -c uninstall
  
## 3. update

	ds -c update

## 4. reset YOUDAO api key and keyfrom

	ds -c reset_key
	source ~/.bashrc
