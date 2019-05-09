!==============================================================================!
  recursive integer function Binary_Tree_Mod_Get_Max(list, curr) result(next)
!------------------------------------------------------------------------------!
  implicit none
!------------------------------------------------------------------------------!
  type(Node_Type) :: list(:)
  integer         :: curr
!------------------------------------------------------------------------------!
  integer :: right
!==============================================================================!

  ! In the case of an empty tree
  if(curr .eq. OFF) then
    print *, "Binary tree is empty, maximum value undefined!"
    next = OFF
    return
  end if

  right = list(curr) % right  ! reach for the bigger value

  if(right .eq. OFF) then     ! found the biggest
    next = curr
  else                        ! not found, go furhter to the right
    next = Binary_Tree_Mod_Get_Max(list, right)
  end if

  end function
