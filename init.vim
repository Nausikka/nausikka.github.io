" This file is to personalize my vim settings
autocmd VimEnter * NERDTree
set nocompatible              " be iMproved, required
filetype off                  " required

:setlocal foldmethod=syntax	"required

" Setting tabs for intendation
set tabstop=4
set softtabstop=0 noexpandtab
set shiftwidth=4

"key mapping
:noremap `jk <Esc>
:imap `jk <Esc>

" Fugitive Conflict Resolution
nnoremap <leader>gd :Gvdiff<CR>
nnoremap gdh :diffget //2<CR>
nnoremap gdl :diffget //3<CR>

" shortcut to activate emmet plugin with comma 
let g:user_emmet_leader_key=','

"
"Use ctrl-[hjkl] to select the active split!
"Use ctrl-[hjkl] to select the active split!
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>
nmap <F6> :NERDTreeToggle<CR>

call plug#begin()
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
Plug 'preservim/nerdtree'
Plug 'Valloric/YouCompleteMe'
Plug 'jiangmiao/auto-pairs'
Plug 'mattn/emmet-vim' | "autocomplete for html
Plug 'maxmellon/vim-jsx-pretty'  | "highlighting for jsx
Plug 'pangloss/vim-javascript' | "syntax support for js
Plug 'tpope/vim-commentary'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-fugitive'
call plug#end()            " required
"filetype plugin indent on    " required

"switch on syntax highlighting
syntax on

"set colors for terminal
set termguicolors
:set omnifunc=htmlcomplete#CompleteTags
colorscheme darkblue
set background=dark
" set status line to show current branch
set statusline=%{FugitiveStatusline()}

"adding numbers
set number

"settings for formating with 'gq'
" FORMATTERS
au FileType javascript setlocal formatprg=prettier
au FileType javascript.jsx setlocal formatprg=prettier
au FileType typescript setlocal formatprg=prettier\ --parser\ typescript
au FileType html setlocal formatprg=js-beautify\ --type\ html
au FileType scss setlocal formatprg=prettier\ --parser\ css
au FileType css setlocal formatprg=prettier\ --parser\ css

