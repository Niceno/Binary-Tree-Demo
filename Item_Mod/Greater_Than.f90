!==============================================================================!
  logical function Item_Mod_Greater_Than(a, b)
!------------------------------------------------------------------------------!
  implicit none
!------------------------------------------------------------------------------!
  type(Item_Type), intent(in) :: a
  type(Item_Type), intent(in) :: b
!==============================================================================!

  Item_Mod_Greater_Than = a % member_data .gt. b % member_data

  end function
