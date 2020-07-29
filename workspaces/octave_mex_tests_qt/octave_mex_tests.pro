# 
# file:			octave_mex_tests.pro  
# creaed on:	2020 Jul 29  
# created by:	D. Kalantaryan (davit.kalantaryan@gmail.com)  
#  

TEMPLATE = subdirs
#CONFIG += ordered

SUBDIRS		+=	$${PWD}/../../prj/tests/mex_test01_qt/mex_test01.pro


OTHER_FILES +=	\
	$${PWD}/../../README.md					\
	$${PWD}/../../.gitignore				\
	$${PWD}/../../LICENSE
