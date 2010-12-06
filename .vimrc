" vim:ts=8
"
" .vimrc
" by andrey ivanov <mail@werf.ru>
"

" defaults for everything
let c_minlines=500				" confoozled
set backspace=indent,eol,start			" yeah.
set ignorecase					" make searching fun
set laststatus=2				" always
set nofoldenable				" this shit is annoying
set nostartofline				" yeah, sure
set pastetoggle=<C-p>				" control+p to toggle pasting
set ruler					" always show ruler
set scrolloff=10				" context is good
set shiftwidth=4				" match default tab spacing
set showcmd					" tell me what i'm doing
set showmatch					" where'd the opening ')' go?
set showmode					" where am i?
set smartcase					" be smart about searching
set spellfile=~/.vimspell.add			" my goodwords
set tabstop=4					" default tabs at 4 spaces
set viminfo=					" annoying!
set statusline=%<%f\ %h%m%r%=%{strftime('%c')}\ \ %l:%c:%P
syntax on					" enable syntax highlighting

au BufNewFile,BufRead *.phtml set ft=php
au BufNewFile,BufRead *.mab set ft=ruby

" php, html, perl, c, css
au FileType php,html,perl,c,cpp,css set tw=79 autoindent

" makefiles and c have tabstops at 8 for portability
au FileType make,c,cpp set ts=8 sw=8

" email - expand tabs, wrap at 68 for future quoting, enable spelling
au FileType mail set tw=68 et spell spelllang=en_us

" cvs - commit messages are like email
au FileType cvs set tw=68 et

" ruby - what tabs?
au FileType ruby,eruby set ts=2 sw=2 tw=79 et smartindent


" tab navigation like firefox
:nmap <C-t> :tabnew<CR>


" vimspell (disabled for now)
" let spell_auto_type = "cvs,mail,text,html,phtml,php,none"
