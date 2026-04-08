if has('nvim')
    set rtp+='~/.local/share/nvim/site/plugged'
    call plug#begin('~/.local/share/nvim/site/plugged')
else
    if has('win32')
        set rtp+='C:\Users\c64cosmin\.vim\bundle'
    else
        set rtp+='~/.vim/bundle'
    endif
    call plug#begin('~/.vim/bundle')
endif

"Language types
Plug 'tikhomirov/vim-glsl'
Plug 'alx741/vim-rustfmt'
Plug 'pangloss/vim-javascript'
Plug 'evanleck/vim-svelte', {'branch': 'main'}
Plug 'kshenoy/vim-signature'
Plug 'easymotion/vim-easymotion'
Plug 'prettier/vim-prettier'
Plug 'othree/html5.vim'

Plug 'tpope/vim-surround'
Plug 'mbbill/undotree'
Plug 'c64cosmin/harpwn'

"prettier
if has("win32")
    let g:prettier#config#single_quote = 'true'
    let g:prettier#config#trailing_comma = 'all'
endif

"fzf
if has("win32")
    Plug 'c64cosmin/fzf', { 'do': './install --all' }
    Plug 'c64cosmin/fzf.vim'
    let g:fzf_vim_preview_bash = 'bash.exe'
else
    Plug 'junegunn/fzf', { 'do': './install --all' }
    Plug 'junegunn/fzf.vim'
endif
"remove :W from fzf.vim
command! W exec ':w'

if !&diff
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
endif

if has('nvim')
	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-lua/popup.nvim'
endif

call plug#end()

filetype plugin indent on
