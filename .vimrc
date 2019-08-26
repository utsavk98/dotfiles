:let mapleader = ","
execute pathogen#infect()
autocmd vimenter * NERDTree
autocmd VimEnter * wincmd p

map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

set number
set backspace=indent,eol,start
set autoread

" open curly and quote automatically creates a close
inoremap { {<CR><BS>}<Esc>ko
inoremap " ""<Esc>i
inoremap ' ''<Esc>i

" cleaner tabs and whitespaces
set expandtab
set shiftwidth=4
set smarttab
set tabstop=4
set autoindent
set smartindent
set wrap!

" easy paste mode toggle for external clipboard
set pastetoggle=<F2>

" Enable syntax highlighting
syntax on

" Enable filetype detection
filetype on

" Enable filetype-specific plugins
filetype plugin on

" fix the issue of colorscheme not applying properly
set t_Co=256

" set background colors and colorscheme
set background=dark
colorscheme gruvbox

" fuzzy find for vim
source ~/.fzf/plugin/fzf.vim
map; :Files <CR>

" show commands
set showcmd
set ttimeout
set ttimeoutlen=0
set timeoutlen=1000

" mouse options
set mouse=v
map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>
set clipboard=unnamed

" incsearch
map / <Plug>(incsearch-forward)
map ? <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
" :h g:incsearch#auto_nohlsearch
set hlsearch
let g:incsearch#auto_nohlsearch = 1
map n <Plug>(incsearch-nohl-n)
map N <Plug>(incsearch-nohl-N)
map * <Plug>(incsearch-nohl-*)
map # <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)

" Comment or uncomment lines
autocmd FileType c,cpp,java,scala let b:comment_leader = '// '
autocmd FileType rust,javascript let b:comment_leader = '// '
autocmd FileType sh,ruby,python,cmake let b:comment_leader = '# '
autocmd FileType conf,fstab,puppet let b:comment_leader = '# '
autocmd FileType matlab,tex let b:comment_leader = '% '
autocmd FileType mail let b:comment_leader = '| '
autocmd FileType vim let b:comment_leader = '" '
noremap <silent> ,cc :s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
noremap <silent> ,cu :s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>

" vim multicursor
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_start_word_key = '<C-m>'
let g:multi_cursor_select_all_word_key = '<A-m>'
let g:multi_cursor_start_key = 'g<C-m>'
let g:multi_cursor_select_all_key = 'g<A-m>'
let g:multi_cursor_next_key = '<C-m>'
let g:multi_cursor_prev_key = '<C-p>'
let g:multi_cursor_skip_key = '<C-x>'
let g:multi_cursor_quit_key = '<Esc>'
