include ext/unrar/makefile

print-baseobj:
	@echo -n $(addprefix ext/unrar/,$(OBJECTS:.o=.cpp))

print-binobj:
	@echo -n $(addprefix ext/unrar/,$(UNRAR_OBJ:.o=.cpp))

print-libobj:
	@echo -n $(addprefix ext/unrar/,$(LIB_OBJ:.o=.cpp))
