function! Abbreviate(name)
	let words = split(a:name, '[- ]')
	let abbreviation = ''
	for word in words
		let first_letter = matchstr(word, '\a')
		if !empty(first_letter)
			let abbreviation .= toupper(first_letter)
		endif
	endfor
	return abbreviation
endfunction
