EE_LIB = libsdlmixer.a

EE_CFLAGS   = -DMOD_MUSIC -DWAV_MUSIC -DUSE_RWOPS
EE_CXXFLAGS = -DNOCONTROLS

HAVE_MP3_MUSIC = 0

MIKMOD_OBJS  = src/mikmod/mplayer.o src/mikmod/mdriver.o src/mikmod/mloader.o
MIKMOD_OBJS += src/mikmod/load_it.o src/mikmod/load_s3m.o src/mikmod/load_mod.o src/mikmod/load_xm.o 
MIKMOD_OBJS += src/mikmod/virtch.o src/mikmod/virtch2.o src/mikmod/munitrk.o src/mikmod/mmerror.o
MIKMOD_OBJS += src/mikmod/mmalloc.o src/mikmod/sloader.o src/mikmod/mwav.o
MIKMOD_OBJS += src/mikmod/drv_nos.o src/mikmod/drv_sdl.o src/mikmod/mmio.o
MIKMOD_OBJS += src/mikmod/mlutil.o src/mikmod/virtch_common.o src/mikmod/npertab.o
MIKMOD_OBJS += src/mikmod/mlreg.o src/mikmod/mdreg.o

MIXER_OBJS  = src/load_aiff.o src/load_ogg.o src/load_voc.o src/music.o src/music_cmd.o
MIXER_OBJS += src/music_ogg.o src/wavestream.o src/effect_position.o
MIXER_OBJS += src/effect_stereoreverse.o src/effects_internal.o src/mixer.o

EE_OBJS = $(MIXER_OBJS) $(MIKMOD_OBJS) 

EE_INCS  = -I. -I../include -Isrc/mikmod -Isrc/smpeg -I$(PS2SDK)/common/include -I$(PS2SDK)/ports/include -I$(PS2SDK)/ports/include/SDL

install: $(EE_LIB)
	mv $(EE_LIB) $(PS2SDK)/ports/lib
	cp -f include/SDL_mixer.h $(PS2SDK)/ports/include/SDL

clean: 
	rm -f $(EE_OBJS)

sample:
	$(MAKE) -C test/ all

include $(PS2SDK)/samples/Makefile.pref
include $(PS2SDK)/samples/Makefile.eeglobal

