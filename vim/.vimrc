"-------------------------------------------------------------------------------------------------------
" junegunn/vim-plug 
"-------------------------------------------------------------------------------------------------------
call plug#begin('~/.vim/plugged')
	Plug 'dracula/vim'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'godlygeek/tabular' | Plug 'tpope/vim-markdown'
	Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install' }
	Plug 'tpope/vim-dispatch'
call plug#end()

"-------------------------------------------------------------------------------------------------------
" dracula/vim
"-------------------------------------------------------------------------------------------------------
colorscheme dracula
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='dracula'

"-------------------------------------------------------------------------------------------------------
" iamcco/markdown-preview.nvim
"-------------------------------------------------------------------------------------------------------
let g:mkdp_refresh_slow=1
let g:mkdp_markdown_css='/home/vicnetto/.vim/plugged/markdown-preview.nvim/css/github-markdown-dark.css'

"-------------------------------------------------------------------------------------------------------
" tpope/vim-dispatch
"-------------------------------------------------------------------------------------------------------
function! g:Open_browser(url)
    " One of the following two lines:
    exec "Start! brave --app=" . a:url
    silent exec "brave --app=" . a:url . " &"
endfunction
let g:mkdp_browserfunc = 'g:Open_browser'

autocmd FIleType markdown nmap <leader>o :MarkdownPreview<CR>

"-------------------------------------------------------------------------------------------------------
" vim configs
"-------------------------------------------------------------------------------------------------------
set number
set numberwidth=2
set relativenumber
syntax enable

vnoremap <C-y> "*y :let @+=@*<CR>
map <C-p> "+P

if &diff
	set noreadonly
endif
