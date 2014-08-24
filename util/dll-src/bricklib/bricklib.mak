# Microsoft Developer Studio Generated NMAKE File, Based on bricklib.dsp
!IF "$(CFG)" == ""
CFG=bricklib - Win32 Debug
!MESSAGE No configuration specified. Defaulting to bricklib - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "bricklib - Win32 Release" && "$(CFG)" != "bricklib - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "bricklib.mak" CFG="bricklib - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "bricklib - Win32 Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "bricklib - Win32 Debug" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 

CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "bricklib - Win32 Release"

OUTDIR=.\Release
INTDIR=.\Release
# Begin Custom Macros
OutDir=.\Release
# End Custom Macros

ALL : "$(OUTDIR)\bricklib.dll"


CLEAN :
	-@erase "$(INTDIR)\loader.obj"
	-@erase "$(INTDIR)\rcxtty.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(OUTDIR)\bricklib.dll"
	-@erase "$(OUTDIR)\bricklib.exp"
	-@erase "$(OUTDIR)\bricklib.lib"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /MT /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "BRICKLIB_EXPORTS" /Fp"$(INTDIR)\bricklib.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 
MTL_PROJ=/nologo /D "NDEBUG" /mktyplib203 /win32 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\bricklib.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /incremental:no /pdb:"$(OUTDIR)\bricklib.pdb" /machine:I386 /out:"$(OUTDIR)\bricklib.dll" /implib:"$(OUTDIR)\bricklib.lib" 
LINK32_OBJS= \
	"$(INTDIR)\rcxtty.obj" \
	"$(INTDIR)\loader.obj"

"$(OUTDIR)\bricklib.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "bricklib - Win32 Debug"

OUTDIR=.\Debug
INTDIR=.\Debug
# Begin Custom Macros
OutDir=.\Debug
# End Custom Macros

ALL : "$(OUTDIR)\bricklib.dll"


CLEAN :
	-@erase "$(INTDIR)\loader.obj"
	-@erase "$(INTDIR)\rcxtty.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\vc60.pdb"
	-@erase "$(OUTDIR)\bricklib.dll"
	-@erase "$(OUTDIR)\bricklib.exp"
	-@erase "$(OUTDIR)\bricklib.ilk"
	-@erase "$(OUTDIR)\bricklib.lib"
	-@erase "$(OUTDIR)\bricklib.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /MTd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "BRICKLIB_EXPORTS" /Fp"$(INTDIR)\bricklib.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ  /c 
MTL_PROJ=/nologo /D "_DEBUG" /mktyplib203 /win32 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\bricklib.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /incremental:yes /pdb:"$(OUTDIR)\bricklib.pdb" /debug /machine:I386 /out:"$(OUTDIR)\bricklib.dll" /implib:"$(OUTDIR)\bricklib.lib" /pdbtype:sept 
LINK32_OBJS= \
	"$(INTDIR)\rcxtty.obj" \
	"$(INTDIR)\loader.obj"

"$(OUTDIR)\bricklib.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ENDIF 

.c{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.c{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<


!IF "$(NO_EXTERNAL_DEPS)" != "1"
!IF EXISTS("bricklib.dep")
!INCLUDE "bricklib.dep"
!ELSE 
!MESSAGE Warning: cannot find "bricklib.dep"
!ENDIF 
!ENDIF 


!IF "$(CFG)" == "bricklib - Win32 Release" || "$(CFG)" == "bricklib - Win32 Debug"
SOURCE=..\loader.c

"$(INTDIR)\loader.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=..\rcxtty.c

"$(INTDIR)\rcxtty.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)



!ENDIF 

