" Description: Keymaps

nnoremap <S-C-p> "0p

" Delete without yank
nnoremap <leader>d "_d
nnoremap x "_x

" Increment/decrement
nnoremap + <C-a>
nnoremap - <C-x>

"-----------------------------
" Tabs

" Open current directory
" nmap te :tabedit 
" nmap <S-Tab> :tabprev<Return>
" nmap <Tab> :tabnext<Return>

"Buffers
nnoremap <Tab> :bn!<Return>
nnoremap <S-Tab> :bp!<Return>

"------------------------------
" Windows
" Split window
nmap ss :split<Return><C-w>w
nmap sv :vsplit<Return><C-w>w

" Resize window
nmap <C-w><left> <C-w><
nmap <C-w><right> <C-w>>
nmap <C-w><up> <C-w>+
nmap <C-w><down> <C-w>-

