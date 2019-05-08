!==============================================================================!
  recursive subroutine Binary_Tree_Mod_Print(list, head)
!------------------------------------------------------------------------------!
  implicit none
!------------------------------------------------------------------------------!
  type(record) :: list(:)
  integer      :: head
!==============================================================================!

  if (head .ne. OFF) then
    call Binary_Tree_Mod_Print (list, list(head) % left)
    print "(i6,f10.3)", list(head) % generation, list(head) % item
    call Binary_Tree_Mod_Print (list, list(head) % right)
  end if

  end subroutine
