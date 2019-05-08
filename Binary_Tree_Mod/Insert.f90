!==============================================================================!
  subroutine Binary_Tree_Mod_Insert(list, i, head)
!------------------------------------------------------------------------------!
  implicit none
!------------------------------------------------------------------------------!
  type(Node_Type) :: list(:)
  integer         :: i
  integer         :: head
!------------------------------------------------------------------------------!
  integer :: seek
!==============================================================================!

  list(i) % parent = OFF
  list(i) % left   = OFF
  list(i) % right  = OFF

  !----------------------------------!
  !   In the case of an empty tree   !
  !----------------------------------!
  if (head .eq. OFF) then
    head = i
    return
  end if

  !-----------------------------------------------------!
  !   Start to find the proper placement for the list   !
  !-----------------------------------------------------!
  seek = head

  do

    ! Moving to the left
    if ( list(i) % item <= list(seek) % item ) then
      if ( list(seek) % left .eq. OFF ) then   ! found its place
        list(seek) % left   = i
        list(seek) % parent = seek
        exit
      else                                     ! go further left
        seek = list(seek) % left
      end if

    ! Moving to the right
    else
      if ( list(seek) % right .eq. OFF ) then  ! found its place
        list(seek) % right  = i
        list(seek) % parent = seek
        exit
      else                                     ! go further right
        seek = list(seek) % right
      end if
    end if

  end do

  end subroutine
