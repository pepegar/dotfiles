"
" Settings for PHP filetype
"
" Set up automatic formatting
set formatoptions+=tcqlro

function! PhpBlockSelect(mode) " Function to locate endpoints of a PHP block {{{
	let motion = "v"
	let line = getline(".")
	let pos = col(".")-1
	let end = col("$")-1

	if a:mode == 1
		if line[pos] == '?' && pos+1 < end && line[pos+1] == '>'
			let motion .= "l"
		elseif line[pos] == '>' && pos > 1 && line[pos-1] == '?'
			" do nothing
		else
			let motion .= "/?>/e\<CR>"
		endif
		let motion .= "o"
		if end > 0
			let motion .= "l"
		endif
		let motion .= "?<\\?php\\>\<CR>"
	else
		if line[pos] == '?' && pos+1 < end && line[pos+1] == '>'
			" do nothing
		elseif line[pos] == '>' && pos > 1 && line[pos-1] == '?'
			let motion .= "h?\\S\<CR>""
		else
			let motion .= "/?>/;?\\S\<CR>"
		endif
		let motion .= "o?<\\?php\\>\<CR>4l/\\S\<CR>"
	endif

	return motion
endfunction
" }}}


" Jump to matching bracket for 3/10th of a second (works with showmatch)
set matchtime=3
set showmatch
let php_folding = 1
let php_noShortTags = 1

" Mappings to select full/inner PHP block
nmap <silent> <expr> vaP PhpBlockSelect(1)
nmap <silent> <expr> viP PhpBlockSelect(0)
" Mappings for operator mode to work on full/inner PHP block
omap <silent> aP :silent normal vaP<CR>
omap <silent> iP :silent normal viP<CR>
let g:pdv_cfg_Uses = 1
" Set default Copyright
let g:pdv_cfg_Copyright = "2014 Pepe García"
let g:pdv_cfg_Version = "Release: 0.1"
let g:pdv_cfg_Author = "Pepe García <jl.garhdez@gmail.com>"
let g:pdv_cfg_License = "MIT http://opensource.org/licenses/MIT"
let g:pdv_cfg_ReturnVal = "void"
