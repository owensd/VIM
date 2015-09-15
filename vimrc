call plug#begin('~/.vim/plugged')

" Color Scheme
Plug 'morhetz/gruvbox'

" Swift Support
Plug 'keith/swift.vim'

" xctool support
Plug 'brow/vim-xctool'

" Make sure you use single quotes
" Plug 'junegunn/seoul256.vim'
" Plug 'junegunn/vim-easy-align'

" Group dependencies, vim-snippets depends on ultisnips
" Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
" Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using git URL
" Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Plugin options
" Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' }

" Unmanaged plugin (manually installed and updated)
" Plug '~/my-prototype-plugin'

" Add plugins to &runtimepath
call plug#end()

syntax on
colorscheme sourcerer
set background=dark    " Setting dark mode
set ruler
set tabstop=4 shiftwidth=4 expandtab

let hostname = substitute(system('hostname'), '\n', '', '')

if has("gui_running")

  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_macvim")
    set guifont=Liberation\ Mono:h12
    if hostname == "owensd-mbp.local"
      set lines=60 columns=125 
    else
	  set lines=75	 columns=250
      125 vsplit
    endif
  elseif has("gui_win32")
    set guifont=Consolas:h11:cANSI
  endif
endif

" Setup xctool for various file types
au BufEnter *.swift,*.m,*.mm compiler xctool

set wrap "turn on line wrapping
set wrapmargin=8 " wrap lines when coming within n characters from side
"set linebreak " set soft wrapping
"set showbreak=… " show ellipsis at breaking

set autoindent " automatically set indent of new line
set smartindent

set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
