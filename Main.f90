!==============================================================================!
  program main
!------------------------------------------------------------------------------!
  use Const_Mod
  use Binary_Tree_Mod
!------------------------------------------------------------------------------!
  implicit none
!------------------------------------------------------------------------------!
  integer      :: head, i
  type(record) :: list(N_ITEMS)
  real(RP)     :: r
!------------------------------------------------------------------------------!

  head = OFF

  print *, 'Contents of generated data:'
  do i = 1, N_ITEMS
    list(i) % generation = i
    call random_number(r)
    list(i) % item % member_data = 1000.0 * r
    print "(i6,f10.3)", i, list(i) % item % member_data
    call Binary_Tree_Mod_Insert (list, i, head)
  end do

  print *, 'Contents of sorted binary tree:'
  call Binary_Tree_Mod_Print(list, head)

end
