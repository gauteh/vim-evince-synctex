silent !which evince
redraw!

if v:shell_error == 0

    let s:path = fnamemodify(resolve(expand('<sfile>:p')), ':h')
    " LatexSuite
    function! Tex_ViewLaTeX()
      let cmd = s:path . '/../../bin/evince_backward.sh "' . fnamemodify(Tex_GetMainFileName(), ":p:r") . '.pdf" ' . v:servername . ' &'
      " let cmd = 'evince ' . fnamemodify(Tex_GetMainFileName(), ":p:r") . '.pdf &'
      let output = system(cmd)
    endfunction

    function! Tex_ForwardSearchLaTeX()
      call Tex_ViewLaTeX()
      let cmd = s:path . '/../../bin/evince_dbus.py ' . fnamemodify(Tex_GetMainFileName(), ":p:r") .  '.pdf ' . line(".") . ' ' . expand("%:p")
      let output = system(cmd)
    endfunction

    " VimTex
    let g:vimtex_view_general_viewer  = resolve(s:path . '/../../bin/evince_backward.sh')
    let g:vimtex_view_general_options = '@pdf ' . v:servername

    function! Evince_ForwardSearch()
      VimtexView
      let cmd = s:path . '/../../bin/evince_dbus.py ' . b:vimtex.out() . ' ' . line(".") . ' ' . expand("%:p")
      let output = system(cmd)
    endfunction

    command! -buffer VimtexForwardSearch  call Evince_ForwardSearch()

endif
