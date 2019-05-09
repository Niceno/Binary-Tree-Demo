!==============================================================================!
  recursive integer function Binary_Tree_Mod_Get_Min(list, curr) result(next)
!------------------------------------------------------------------------------!
  implicit none
!------------------------------------------------------------------------------!
  type(Node_Type) :: list(:)
  integer         :: curr
!------------------------------------------------------------------------------!
  integer :: left
!==============================================================================!

  ! In the case of an empty tree
  if(curr .eq. OFF) then
    print *, "Binary tree is empty, maximum value undefined!"
    next = OFF
    return
  end if

  left = list(curr) % left    ! reach for the bigger value

  if(left .eq. OFF) then      ! found the biggest
    next = curr
  else                        ! not found, go furhter to the left
    next = Binary_Tree_Mod_Get_Min(list, left)
  end if

  end function
