!==============================================================================!
  module Binary_Tree_Mod
!------------------------------------------------------------------------------!
  use Const_Mod
  use Item_Mod
!------------------------------------------------------------------------------!
  implicit none
!==============================================================================!

  type Node_Type
    integer         :: generation
    type(Item_Type) :: item
    integer         :: parent
    integer         :: left
    integer         :: right
  end type

  contains

  include 'Binary_Tree_Mod/Insert.f90'
  include 'Binary_Tree_Mod/Print.f90'
  include 'Binary_Tree_Mod/Get_Max.f90'
  include 'Binary_Tree_Mod/Get_Min.f90'

  end module
