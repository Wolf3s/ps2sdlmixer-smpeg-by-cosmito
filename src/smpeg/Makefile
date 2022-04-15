EE_LIB = libsmpeg.a

EE_CFLAGS = -DUSE_RWOPS -DMP3_MUSIC
EE_CXXFLAGS = -DNOCONTROLS

HAVE_MP3_MUSIC = 0

SMPEG_OBJS  = smpeg.o MPEGlist.o MPEGring.o
SMPEG_OBJS += audio/bitwindow.o audio/filter.o
SMPEG_OBJS += audio/filter_2.o audio/huffmantable.o
SMPEG_OBJS += audio/MPEGaudio.o audio/mpeglayer1.o
SMPEG_OBJS += audio/mpeglayer2.o audio/mpeglayer3.o
SMPEG_OBJS += audio/mpegtable.o audio/mpegtoraw.o
SMPEG_OBJS += video/decoders.o video/video.o
SMPEG_OBJS += video/util.o video/motionvector.o
SMPEG_OBJS += video/readfile.o video/MPEGvideo.o
SMPEG_OBJS += video/floatdct.o video/jrevdct.o
SMPEG_OBJS += video/vhar128.o video/gdith.o
SMPEG_OBJS += video/parseblock.o MPEGfilter.o
SMPEG_OBJS += MPEGstream.o MPEGsystem.o MPEG.o

EE_OBJS = $(SMPEG_OBJS)

EE_INCS = -I -I$(PS2SDK)/common/include -I$(PS2SDK)/ports/include -I$(PS2SDK)/ports/include/SDL -Iaudio/ -Ivideo 

install: $(EE_LIB)
	mv $(EE_LIB) $(PS2SDK)/ports/lib
	cp -f smpeg.h MPEGfilter.h $(PS2SDK)/ports/include/SDL

clean:
	rm -f $(EE_LIB) $(EE_OBJS)

include $(PS2SDK)/samples/Makefile.pref
include $(PS2SDK)/samples/Makefile.eeglobal

