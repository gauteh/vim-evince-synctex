# Vim <-> Evince forward and backward search for vim-latexsuite and VimTex

# Installation

Should work with standard plugin managers.

# Usage

## LatexSuite

```vim
" recognize all .tex files as latex
let g:tex_flavor = "latex"

" compile your pdf with --synctex support:
let g:Tex_CompileRule_pdf =
      \ 'pdflatex --synctex=1 -interaction=nonstopmode -shell-escape "$*"'
```

Use `\ls` to forward search, use `Ctrl+Left Mouse` to backward search.

## VimTex

```vim

" Bind forward search (this command is provided by us)
nnoremap <leader>lf :VimtexForwardSearch<CR>

```

Use `\lf` to forward search, use `Ctrl+Left Mouse` to backward search.

# Resources and previous work

evince_dbus.py:
 *  https://git.gnome.org/browse/gedit-plugins/tree/plugins/synctex/synctex/evince_dbus.py

evince-backward-search:
 * https://forum.ubuntuusers.de/topic/evince-synctex-vim-emacs-scite-lyx-kile-editor/

Other resources:
* http://blog.wuzzeb.org/posts/2013-05-11-vim-latex-forward-search.html
* http://tex.stackexchange.com/questions/29813/setup-synctex-with-emacs

