" -- Miracles --
set relativenumber "set rnu set nu
set number
set fillchars+=vert:\
set nocompatible
" set termguicolors
" set t_Co=256
set term=xterm-256color
set termguicolors
" set cursorline
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

filetype on
syntax   on
set omnifunc=syntaxcomplete#Complete
let &t_ut=''
if has('mouse')
  set mouse=a
endif

" -- ident --
augroup autoindent
  au!
  autocmd BufWritePre * :normal migg=G`i
augroup End

" -- fonts --
if has("gui_running")
  if has("gui_gtk2")
    set guifont=mononoki\ Nerd\ Font:12
  elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h14
  elseif has("gui_win32")
    set guifont=Consolas:h11:cANSI
  endif
endif
set guifont=mononoki\ Nerd\ Font:s12
"set guifont=DroidSansMono\ Nerd\ Font:s12
" set guifont=Menlo:s12
set encoding=UTF-8

" -- Plugins --
call plug#begin('~/.vim/plugged')

" filtering
Plug 'godlygeek/tabular'

" git
Plug 'tpope/vim-fugitive'

" copilot
Plug 'github/copilot.vim'

" fast file navigation
" Plug 'git://git.wincent.com/command-t.git'

" discord
Plug 'vimsence/vimsence'

" file Manager
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
" Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" emmet
Plug 'mattn/emmet-vim'
Plug 'rstacruz/sparkup', {'rtp': 'vim/'}

" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Telemetry
Plug 'wakatime/vim-wakatime'

" OrgMode
Plug 'jceb/vim-orgmode'

" Haskell
Plug 'neovimhaskell/haskell-vim'

" JavaScript
Plug 'othree/yajs.vim', {'for': 'javascript'}
Plug 'othree/es.next.syntax.vim', {'for': 'javascript'}
Plug 'pearofducks/ansible-vim'

" React
Plug 'maxmellon/vim-jsx-pretty'

" Cocvim
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" DayLight
" Plug 'jonstoler/werewolf.vim'

" Themes
Plug 'gosukiwi/vim-atom-dark'
Plug 'sjl/badwolf'
Plug 'arcticicestudio/nord-vim'
Plug 'dracula/vim'
Plug 'rakr/vim-one'
Plug 'Rigellute/rigel'
Plug 'dylanaraps/wal.vim'
Plug 'joshdick/onedark.vim'
Plug 'sheerun/vim-polyglot'
Plug 'ghifarit53/tokyonight-vim'
Plug 'sonph/onehalf', { 'rtp': 'vim' }

call plug#end()
"call vundle#end()            " required
"filetype plugin indent on    " required

colorscheme nord
" colorscheme badwolf
" colorscheme atom-dark
" colorscheme tokyonight
" set background=light
" colorscheme wal
" colorscheme onedark
" colorscheme onehalflight
" colorscheme onehalfdark
let g:one_allow_italics = 1
let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 1
" transparent bg
" autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE

" vim sense
" let g:vimsence_client_id = '439476230543245312'
let g:vimsence_small_text = 'Vigário'
let g:vimsence_small_image = 'vim'
let g:vimsence_editing_details = 'Editing: my last try till now'
let g:vimsence_editing_state = 'Working on: my life, go work on your too'
let g:vimsence_editing_large_text = 'Editing: the existence'
let g:vimsence_file_explorer_text = 'Looking for: a reason to live'
let g:vimsence_file_explorer_details = 'Looking for: try again'
" let g:vimsence_custom_icons = {'filetype': 'iconname'}

""

set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
" To ignore plugin indent changes, instead use:
"filetype plugin on

" nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-t> :NERDTree<CR>
" nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Start NERDTree and leave the cursor in it.
" autocmd VimEnter * NERDTree
" Open the existing NERDTree on each new tab.
"autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

"" let g:arline_left_sep = ''
"" let g:airline#extensions#tabline#left_sep = ' '
"" let g:airline#extensions#tabline#left_alt_sep = '|'
" let g:airline#extensions#tabline#formatter = 'default'
" let g:airline#extensions#tabline#enabled = 1
" let g:airline_powerline_fonts = 1

" -- shortcuts ---
vmap <C-c> "+y
nmap <C-b> "+p
map <C-w> :w<CR>
nnoremap <C-q> :q<CR>
""" vnoremap <C-y> :call system('xclip', @0)<CR>
""" horizontal resize """
"nnoremap <silent> <Leader>+ :exe "resize " . (winheight(0) * 3/2)<CR>
"nnoremap <silent> <Leader>- :exe "resize " . (winheight(0) * 2/3)<CR>
""
""" Vertical Resize """
"nnoremap <silent> <Leader>+ :exe "vertical resize " . (winwidth(0) * 3/2)<CR>
"nnoremap <silent> <Leader>- :exe "vertical resize " . (winwidth(0) * 2/3)<CR>
" noremap <silent> <C-S-Left> :vertical resize +5<CR>
" noremap <silent> <C-S-Right> :vertical resize -5<CR>
noremap <silent> <C-S-Left> :vertical resize +1<CR>
noremap <silent> <C-S-Right> :vertical resize -1<CR>

"--- TABS ---
nmap <C-n> :tabnew<CR>          " create a new tab
map <silent>z :tabprevious<CR>     " move to previous tab
map <silent>x :tabnext<CR>         " move to next tab

"-- COC ---

nmap <silent> k :call CocAction('doHover')<CR>
"autocmd CursorHold * silent call CocActionAsync('doHover')
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" ================ Search ===========================

set incsearch       " Find the next match as we type the search
set hlsearch        " Highlight searches by default
set ignorecase      " Ignore case when searching...
set smartcase       " ...unless we type a capital

