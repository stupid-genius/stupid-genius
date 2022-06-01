set ai hlsearch noet nowrap nu rnu si splitbelow splitright
set foldlevelstart=1 foldmethod=indent history=250 sw=4 ts=4 termwinsize=15x0 visualbell t_vb=
syntax on
filetype plugin indent on

nmap <C-w>m :vnew<CR>
cmap w!! w !sudo tee > /dev/null %
map cf :e <cfile><CR>
nmap nd O<ESC>:r !date<ENTER>
nmap <C-j>= :%!jq --sort-keys .<CR>

let g:EditorConfig_exclude_patterns = ['.git/COMMIT_EDITMSG']
let g:EditorConfig_max_line_indicator = "none"
let g:ale_linters = {'javascript': ['eslint', 'deno'], 'typescript': ['deno']}
let g:ale_fixers = {'javascript': ['eslint', 'deno'], 'typescript': ['deno']}
let g:ale_linters_explicit = 1
" let g:airline#extensions#ale#enabled = 1
set updatetime=100

nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
nmap <silent> t<C-n> :TestNearest<CR>
nmap <silent> t<C-f> :TestFile<CR>
nmap <silent> t<C-s> :TestSuite<CR>
" nmap <silent> t<C-l> :TestLast<CR>
" nmap <silent> t<C-g> :TestVisit<CR>

packadd! dracula
colorscheme dracula
highlight ALEWarningLine ctermbg=darkblue
highlight ALEErrorLine ctermbg=lightred ctermfg=black
highlight DiffChange ctermbg=darkmagenta
highlight DiffAdd ctermbg=darkblue

" hi Normal ctermbg=NONE
