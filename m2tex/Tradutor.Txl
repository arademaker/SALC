define qqtoken
	[token]
end define

include "ArvoreBinaria.Grammar"
include "Tradutor.Grammar"
include "ArvoreBinaria.Rul"
include "Tradutor.Rul"

redefine program
	[repeat termo]  |[repeat traducao]
end redefine

function main
	replace [program]
		I [repeat termo]
		
	construct TraducaoVazia [repeat traducao]
		_
	
	by
		TraducaoVazia [tradzuir I]
end function