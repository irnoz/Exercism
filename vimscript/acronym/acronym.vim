"
" Convert a phrase into an uppercased acronym formed from
" the initial letter of each word, ignoring leading underscores
"
" Examples:
"
"   :echo Abbreviate('First In, First Out')
"   FIFO
"
"   :echo Abbreviate('The Road _Not_ Taken')
"   TRNT
"
function! Abbreviate(phrase) abort
	let words = split(a:phrase, '\v(\s|_|[^[:alnum:]])+')
	let abbreviation = ''
	for word in words 
		if len(word) > 0
			let abbreviation .= toupper(strpart(word, 0, 1))
		endif
	endfor
	return abbreviation	
endfunction 
