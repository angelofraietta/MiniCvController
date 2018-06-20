#
#  $Id: Makefile,v 1.16 2003/05/27 00:44:54 angelofraietta Exp $
#
# Makefile for Mac OSX patch editor JNI Libraries
# 	Template leaf node Makefile
#


JAVLIB=libmidicontrollerlib.jnilib
JNI_INCLUDE = -I/System/Library/Frameworks/JavaVM.framework/Headers

# C++ source names, if any, go here -- minus the .cc
CC_PIECES=  jnimidi \
  sysexwriter \
  midicontrollerlibrary \
  midiinputunit

C_PIECES= htmsocket

C_FILES = $(C_PIECES:%=%.c)
C_O_FILES = $(C_PIECES:%=%.o)

CC_FILES = $(CC_PIECES:%=%.cpp)
CC_O_FILES = $(CC_PIECES:%=%.o)


DEFINES  += -D_PATCH_EDITOR 
CPPFLAGS += -I ../estl 
CPPFLAGS += -I ../threads/source
CPPFLAGS += -I ../mididriver
CPPFLAGS += -I ../midicontroller/code


CPPFLAGS += $(DEFINES)

FRAMEWORKS += -framework CoreMidi -framework CoreServices -framework AudioToolbox

LD_LIBS   +=  ../threads/source/hal_mac/sm_thread.a  
LD_LIBS   +=  ../mididriver/hal_mac/sm_MIDI.a
LD_LIBS += $(LIB)



all: $(LIB) $(CC_O_FILES)  $(JAVLIB) 


clean:
	rm *.o

install:
	cp  $(JAVLIB) ~/miniCVIntel/

.cpp.o :
	cc $(JNI_INCLUDE) $(CPPFLAGS) -c $< -o $@

.c.o :
	cc $(JNI_INCLUDE) $(CPPFLAGS) -c $< -o $@



$(JAVLIB) : $(CC_O_FILES) $(C_O_FILES) $(LD_LIBS)
	g++ -dynamiclib -o $(JAVLIB) $(C_O_FILES) $(CC_O_FILES) $(LD_LIBS) $(FRAMEWORKS) -framework JavaVM 






