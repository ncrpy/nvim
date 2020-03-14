" Install not-installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

" Remove deleted plugins on startup.
call map(dein#check_clean(), "delete(v:val, 'rf')")
call dein#recache_runtimepath()

" Update plugins on startup.
call dein#clear_state()
call dein#update()
