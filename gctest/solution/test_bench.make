# GNU Make project makefile autogenerated by GENie
ifndef config
  config=debug32
endif

ifndef verbose
  SILENT = @
endif

SHELLTYPE := msdos
ifeq (,$(ComSpec)$(COMSPEC))
  SHELLTYPE := posix
endif
ifeq (/bin,$(findstring /bin,$(SHELL)))
  SHELLTYPE := posix
endif
ifeq (/bin,$(findstring /bin,$(MAKESHELL)))
  SHELLTYPE := posix
endif

ifeq (posix,$(SHELLTYPE))
  MKDIR = $(SILENT) mkdir -p "$(1)"
  COPY  = $(SILENT) cp -fR "$(1)" "$(2)"
  RM    = $(SILENT) rm -f "$(1)"
else
  MKDIR = $(SILENT) mkdir "$(subst /,\\,$(1))" 2> nul || exit 0
  COPY  = $(SILENT) copy /Y "$(subst /,\\,$(1))" "$(subst /,\\,$(2))"
  RM    = $(SILENT) del /F "$(subst /,\\,$(1))" 2> nul || exit 0
endif

CC  = gcc
CXX = g++
AR  = ar

ifndef RESCOMP
  ifdef WINDRES
    RESCOMP = $(WINDRES)
  else
    RESCOMP = windres
  endif
endif

MAKEFILE = test_bench.make

ifeq ($(config),debug32)
  OBJDIR              = ../build/obj/Debug/x32/Debug/test_bench
  TARGETDIR           = ../build/bin/Debug
  TARGET              = $(TARGETDIR)/libtest_bench.a
  DEFINES            += -D_SCL_SECURE_NO_WARNINGS -D_CRT_SECURE_NO_WARNINGS -D_CRT_NONSTDC_NO_WARNINGS -DMTR_ENABLED
  ALL_CPPFLAGS       += $(CPPFLAGS) -MMD -MP -MP $(DEFINES) $(INCLUDES)
  ALL_ASMFLAGS       += $(ASMFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Werror -g -m32
  ALL_CFLAGS         += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Werror -g -m32
  ALL_CXXFLAGS       += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Werror -g -m32 -std=c++17
  ALL_OBJCFLAGS      += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Werror -g -m32
  ALL_OBJCPPFLAGS    += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Werror -g -m32 -std=c++17
  ALL_RESFLAGS       += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS        += $(LDFLAGS) -m32
  LIBDEPS            +=
  LDDEPS             +=
  LDRESP              =
  LIBS               += $(LDDEPS)
  EXTERNAL_LIBS      +=
  LINKOBJS            = $(OBJECTS)
  LINKCMD             = $(AR)  -rcs $(TARGET)
  OBJRESP             =
  OBJECTS := \
	$(OBJDIR)/src/main.o \
	$(OBJDIR)/src/minitrace.o \

  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),release32)
  OBJDIR              = ../build/obj/Release/x32/Release/test_bench
  TARGETDIR           = ../build/bin/Release
  TARGET              = $(TARGETDIR)/libtest_bench.a
  DEFINES            += -D_SCL_SECURE_NO_WARNINGS -D_CRT_SECURE_NO_WARNINGS -D_CRT_NONSTDC_NO_WARNINGS -DMTR_ENABLED
  ALL_CPPFLAGS       += $(CPPFLAGS) -MMD -MP -MP $(DEFINES) $(INCLUDES)
  ALL_ASMFLAGS       += $(ASMFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Werror -g -O3 -m32
  ALL_CFLAGS         += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Werror -g -O3 -m32
  ALL_CXXFLAGS       += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Werror -g -O3 -m32 -std=c++17
  ALL_OBJCFLAGS      += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Werror -g -O3 -m32
  ALL_OBJCPPFLAGS    += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Werror -g -O3 -m32 -std=c++17
  ALL_RESFLAGS       += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS        += $(LDFLAGS) -m32
  LIBDEPS            +=
  LDDEPS             +=
  LDRESP              =
  LIBS               += $(LDDEPS)
  EXTERNAL_LIBS      +=
  LINKOBJS            = $(OBJECTS)
  LINKCMD             = $(AR)  -rcs $(TARGET)
  OBJRESP             =
  OBJECTS := \
	$(OBJDIR)/src/main.o \
	$(OBJDIR)/src/minitrace.o \

  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),debug64)
  OBJDIR              = ../build/obj/Debug/x64/Debug/test_bench
  TARGETDIR           = ../build/bin/Debug
  TARGET              = $(TARGETDIR)/libtest_bench.a
  DEFINES            += -D_SCL_SECURE_NO_WARNINGS -D_CRT_SECURE_NO_WARNINGS -D_CRT_NONSTDC_NO_WARNINGS -DMTR_ENABLED
  ALL_CPPFLAGS       += $(CPPFLAGS) -MMD -MP -MP $(DEFINES) $(INCLUDES)
  ALL_ASMFLAGS       += $(ASMFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Werror -g -m64
  ALL_CFLAGS         += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Werror -g -m64
  ALL_CXXFLAGS       += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Werror -g -m64 -std=c++17
  ALL_OBJCFLAGS      += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Werror -g -m64
  ALL_OBJCPPFLAGS    += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Werror -g -m64 -std=c++17
  ALL_RESFLAGS       += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS        += $(LDFLAGS) -m64
  LIBDEPS            +=
  LDDEPS             +=
  LDRESP              =
  LIBS               += $(LDDEPS)
  EXTERNAL_LIBS      +=
  LINKOBJS            = $(OBJECTS)
  LINKCMD             = $(AR)  -rcs $(TARGET)
  OBJRESP             =
  OBJECTS := \
	$(OBJDIR)/src/main.o \
	$(OBJDIR)/src/minitrace.o \

  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),release64)
  OBJDIR              = ../build/obj/Release/x64/Release/test_bench
  TARGETDIR           = ../build/bin/Release
  TARGET              = $(TARGETDIR)/libtest_bench.a
  DEFINES            += -D_SCL_SECURE_NO_WARNINGS -D_CRT_SECURE_NO_WARNINGS -D_CRT_NONSTDC_NO_WARNINGS -DMTR_ENABLED
  ALL_CPPFLAGS       += $(CPPFLAGS) -MMD -MP -MP $(DEFINES) $(INCLUDES)
  ALL_ASMFLAGS       += $(ASMFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Werror -g -O3 -m64
  ALL_CFLAGS         += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Werror -g -O3 -m64
  ALL_CXXFLAGS       += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Werror -g -O3 -m64 -std=c++17
  ALL_OBJCFLAGS      += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Werror -g -O3 -m64
  ALL_OBJCPPFLAGS    += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -Werror -g -O3 -m64 -std=c++17
  ALL_RESFLAGS       += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS        += $(LDFLAGS) -m64
  LIBDEPS            +=
  LDDEPS             +=
  LDRESP              =
  LIBS               += $(LDDEPS)
  EXTERNAL_LIBS      +=
  LINKOBJS            = $(OBJECTS)
  LINKCMD             = $(AR)  -rcs $(TARGET)
  OBJRESP             =
  OBJECTS := \
	$(OBJDIR)/src/main.o \
	$(OBJDIR)/src/minitrace.o \

  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

OBJDIRS := \
	$(OBJDIR) \
	$(OBJDIR)/src \

RESOURCES := \

.PHONY: clean prebuild prelink

all: $(OBJDIRS) $(TARGETDIR) prebuild prelink $(TARGET)
	@:

$(TARGET): $(GCH) $(OBJECTS) $(LIBDEPS) $(EXTERNAL_LIBS) $(RESOURCES) $(OBJRESP) $(LDRESP) | $(TARGETDIR) $(OBJDIRS)
	@echo Archiving test_bench
ifeq (posix,$(SHELLTYPE))
	$(SILENT) rm -f  $(TARGET)
else
	$(SILENT) if exist $(subst /,\\,$(TARGET)) del $(subst /,\\,$(TARGET))
endif
	$(SILENT) $(LINKCMD) $(LINKOBJS)
	$(POSTBUILDCMDS)

$(TARGETDIR):
	@echo Creating $(TARGETDIR)
	-$(call MKDIR,$(TARGETDIR))

$(OBJDIRS):
	@echo Creating $(@)
	-$(call MKDIR,$@)

clean:
	@echo Cleaning test_bench
ifeq (posix,$(SHELLTYPE))
	$(SILENT) rm -f  $(TARGET)
	$(SILENT) rm -rf $(OBJDIR)
else
	$(SILENT) if exist $(subst /,\\,$(TARGET)) del $(subst /,\\,$(TARGET))
	$(SILENT) if exist $(subst /,\\,$(OBJDIR)) rmdir /s /q $(subst /,\\,$(OBJDIR))
endif

prebuild:
	$(PREBUILDCMDS)

prelink:
	$(PRELINKCMDS)

ifneq (,$(PCH))
$(GCH): $(PCH) $(MAKEFILE) | $(OBJDIR)
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) -x c++-header $(DEFINES) $(INCLUDES) -o "$@" -c "$<"

$(GCH_OBJC): $(PCH) $(MAKEFILE) | $(OBJDIR)
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_OBJCPPFLAGS) -x objective-c++-header $(DEFINES) $(INCLUDES) -o "$@" -c "$<"
endif

ifneq (,$(OBJRESP))
$(OBJRESP): $(OBJECTS) | $(TARGETDIR) $(OBJDIRS)
	$(SILENT) echo $^
	$(SILENT) echo $^ > $@
endif

ifneq (,$(LDRESP))
$(LDRESP): $(LDDEPS) | $(TARGETDIR) $(OBJDIRS)
	$(SILENT) echo $^
	$(SILENT) echo $^ > $@
endif

$(OBJDIR)/src/main.o: ../src/main.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/src
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/src/minitrace.o: ../src/minitrace.cpp $(GCH) $(MAKEFILE) | $(OBJDIR)/src
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

-include $(OBJECTS:%.o=%.d)
ifneq (,$(PCH))
  -include $(OBJDIR)/$(notdir $(PCH)).d
  -include $(OBJDIR)/$(notdir $(PCH))_objc.d
endif
