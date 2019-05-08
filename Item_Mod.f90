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

  ! This operator is needed for binary tree to work
  interface operator(<=)
    module procedure Item_Mod_Less_Or_Equals
  end interface operator(<=)

  contains

  include 'Item_Mod/Less_Or_Equals.f90'

  end module
