!==============================================================================!
  module Binary_Tree_Mod
!------------------------------------------------------------------------------!
  use Const_Mod
  use Item_Mod
!------------------------------------------------------------------------------!
  implicit none
!==============================================================================!

  type record
    integer         :: generation
    type(Item_Type) :: item
    integer         :: parent
    integer         :: left
    integer         :: right
  end type record

  contains

  include 'Binary_Tree_Mod/Insert.f90'
  include 'Binary_Tree_Mod/Print.f90'

  end module
