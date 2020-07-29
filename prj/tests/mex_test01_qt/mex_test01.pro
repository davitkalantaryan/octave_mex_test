# 
# file:			mex_test01.pro  
# creaed on:	2020 Jul 29  
# created by:	D. Kalantaryan (davit.kalantaryan@gmail.com)  
#  


message("!!! mex_test01.pro ")

include ( $${PWD}/../../common/common_qt/sys_common.pri )

QT -= core
QT -= gui
CONFIG -= qt

win32{

	TEMPLATE = lib
	TARGET_EXT = mex
	QMAKE_EXTENSION_SHLIB = mex

} else {
	QMAKE_LFLAGS = -Wl,-E -pie -shared
	TARGET_EXT = mex
	QMAKE_EXTENSION_SHLIB = mex
	#TARGET = $${TARGET}.mexa64
	GCCPATH = $$system(which gcc)
	message("!!!!!!!!!!! GCCPATH=$$GCCPATH")
	# QMAKE_CXXFLAGS += -std=c++14 # in the case of DOOCS
	#TARGET_NAME = $$TARGET_NAME.mexa64
	TARGET = $${TARGET}.mex
}

DESTDIR = $${PRJ_PWD}/$${SYSTEM_PATH}/obin

INCLUDEPATH += /snap/octave/30/include/octave-5.2.0/octave

SOURCES +=	\
	$${PWD}/../../../src/tests/mex_test01.cpp
