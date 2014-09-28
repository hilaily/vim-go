if exists("g:go_loaded_gosnippets")
  finish
endif
let g:go_loaded_gosnippets = 1

" by default UltiSnips
if !exists("g:go_snippet_engine")
	let g:go_snippet_engine = "ultisnips"
endif

function! s:GoUltiSnips()
	if globpath(&rtp, 'plugin/UltiSnips.vim') == ""
		return
	endif

	if !exists("g:UltiSnipsSnippetDirectories")
			let g:UltiSnipsSnippetDirectories = ["gosnippets/UltiSnips"]
	else
			let g:UltiSnipsSnippetDirectories += ["gosnippets/UltiSnips"]
	endif
endfunction

if g:go_snippet_engine == "ultisnips"
	call s:GoUltiSnips()
endif