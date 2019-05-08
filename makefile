#===============================================================================
#
#   Generate Makefile
#
#-------------------------------------------------------------------------------

#--------------------------
#   Variable definitions
#--------------------------

# Fortran compiler ("gnu", "intel" or "portland")
FC = gfortran

# Directories for objects and modules. (No need to change.)
DIR_MODULE = .Modules
DIR_OBJECT = .Objects

OPT_COMP = -J $(DIR_MODULE) -g -Wall
OPT_LINK = $(OPT_COMP)

# Program name (This should hardly change)
PROGRAM_FILE = Binary_Tree

#-------------
#   Modules
#-------------

# Modules in the local directory
SRC_MOD += Const_Mod.f90	\
           Item_Mod.f90		\
           Binary_Tree_Mod.f90

SRC_FUN = Main.f90

#--------------------------------------------------------
#   List of objects generated from the list of modules
#--------------------------------------------------------
OBJ_MOD = $(SRC_MOD:%.f90=$(DIR_OBJECT)/%.o)
OBJ_FUN = $(SRC_FUN:%.f90=$(DIR_OBJECT)/%.o)
OBJ = $(OBJ_MOD) $(OBJ_FUN)

#---------------------------------------------------------
#   Default rule to build Fortran modules and functions
#---------------------------------------------------------

# Modules
$(DIR_OBJECT)/%.o: %.f90 %/*.f90
	@echo FC $<
	@$(FC) $(OPT_COMP) -c -o $@ $<

# Functions
$(DIR_OBJECT)/%.o: %.f90
	@echo FC $<
	@$(FC) $(OPT_COMP) -c -o $@ $<

#-----------------------------------
#   Rule to build main program
#-----------------------------------
#   Note: Should not be modified.
#-----------------------------------
$(PROGRAM_FILE): $(OBJ) 
	@echo Linking "\033[0;32m $(PROGRAM_FILE) \033[0m"
	@$(FC) $(OPT_LINK) -o $(PROGRAM_FILE) $(OBJ)

#--------------------------------------------------------------------
#   Explicit dependencies for modules
#--------------------------------------------------------------------
$(DIR_OBJECT)/Item_Mod.o:	\
Const_Mod.f90			\
Item_Mod/*.f90

$(DIR_OBJECT)/Binary_Tree_Mod.o:	\
Const_Mod.f90				\
Item_Mod.f90				\
Item_Mod/*.f90				\
Binary_Tree_Mod/*.f90

#---------------------
#   Explicit target.
#---------------------
clean:
	rm -f $(DIR_OBJECT)/*.o $(DIR_MODULE)/*.mod $(PROGRAM_FILE)
