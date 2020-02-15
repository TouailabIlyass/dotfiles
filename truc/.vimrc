set nu
syntax on

imap ss <esc>:w<cr>i
imap <c-p> <esc>:

augroup filetype_c
	autocmd filetype c ia ma int main (int argc, char **argv)<cr>{<cr><tab>return (0);<cr>}
	autocmd filetype c ia iff if ()<cr>{<cr><cr>}<esc>3kf)i
	autocmd filetype c ia wh while ()<cr>{<cr><cr>}<esc>3kf)i
	autocmd filetype c ia fo for (;;)<cr>{<cr><cr>}<esc>3kf)i
	autocmd filetype c ia pr printf("\n");<esc>4hi
	autocmd filetype c ia sc scanf(,"");<esc>4hi
	autocmd filetype c ia br break;
	autocmd filetype c ia re return ();<esc>hi
	autocmd filetype c ia in int ;
	autocmd filetype c ia fl float ;
	autocmd filetype c ia do double ;
	autocmd filetype c ia ch char ;
	autocmd filetype c ia stg char str[10];
	autocmd filetype c ia [ []<esc>i
	autocmd filetype c ia inc #include <><esc>i
	autocmd filetype c ia st string.h
	autocmd filetype c ia std stdio.h
	autocmd filetype c ia un unistd.h
	autocmd filetype c ia vfun void func ()<cr>{<cr><cr>}<esc>3kwea
	autocmd filetype c ia ifun int func ()<cr>{<cr><cr>}<esc>3kwea
	autocmd filetype c ia dfun double func ()<cr>{<cr><cr>}<esc>3kwea
	autocmd filetype c ia ffun float func ()<cr>{<cr><cr>}<esc>3kwea
	autocmd filetype c ia cfun char func ()<cr>{<cr><cr>}<esc>3kwea
augroup end
