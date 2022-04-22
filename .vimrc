set ai hlsearch noet nowrap nu rnu si splitbelow splitright
set foldlevelstart=1 foldmethod=indent history=250 sw=4 ts=4 termwinsize=15x0 visualbell t_vb=
syntax on
filetype plugin indent on
cmap w!! w !sudo tee > /dev/null %
" map gf :e <cfile><CR>

let g:EditorConfig_exclude_patterns = ['.git/COMMIT_EDITMSG']
let g:EditorConfig_max_line_indicator = "none"
let g:ale_linters = {'javascript': ['eslint'], 'typescript': ['eslint']}
let g:ale_fixers = {'javascript': ['eslint'], 'typescript': ['deno']}
" let g:ale_fixers = {'javascript': ['eslint']}
let g:ale_linters_explicit = 1
set updatetime=100

nmap <silent> t<C-n> :TestNearest<CR>
nmap <silent> t<C-f> :TestFile<CR>
nmap <silent> t<C-s> :TestSuite<CR>
" nmap <silent> t<C-l> :TestLast<CR>
" nmap <silent> t<C-g> :TestVisit<CR>

packadd! dracula
colorscheme dracula
highlight ALEWarningLine ctermbg=darkblue
highlight ALEErrorLine ctermbg=darkred
highlight DiffChange ctermbg=darkmagenta
highlight DiffAdd ctermbg=darkblue
