EE_BIN = sample.elf

EE_CFLAGS = -DUSE_RWOPS 
EE_INCS = -I../include -I$(PS2SDK)/ports/include -I$(PS2SDK)/ports/include/SDL
EE_LIBS = -L../lib -L$(PS2SDK)/ports/lib -lsdlmixer -lsdl -lsdlmain -lc -lm 

all: $(EE_BIN)

%.elf : %.o $(PS2SDK)/ee/startup/crt0.o
	$(EE_CXX) -mno-crt0 -T$(PS2SDK)/ee/startup/linkfile $(EE_LDFLAGS) \
		-o $@ $(PS2SDK)/ee/startup/crt0.o $< $(EE_LIBS)

clean:
	rm -f $(EE_BIN) $(OBJS)

include $(PS2SDK)/samples/Makefile.pref
include $(PS2SDK)/samples/Makefile.eeglobal


