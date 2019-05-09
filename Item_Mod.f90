!==============================================================================!
  module Item_Mod
!------------------------------------------------------------------------------!
  use Const_Mod
!------------------------------------------------------------------------------!
  implicit none
!==============================================================================!

  type Item_Type
    real(RP) :: member_data
  end type

  ! These operators are needed for binary tree to work

  interface operator( .lt. )
    module procedure Item_Mod_Less_Than
  end interface

  interface operator( .gt. )
    module procedure Item_Mod_Greater_Than
  end interface

  contains

  include 'Item_Mod/Less_Than.f90'
  include 'Item_Mod/Greater_Than.f90'

  end module
