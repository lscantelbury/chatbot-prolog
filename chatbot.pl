:- [perguntas].
main :-
	write('Ola, sou Gabi, o chatbot em Prolog!'), nl,		
	write('Caso eu não consiga responder sua pergunta, digite aprender entre aspas e me ensine como responder'), nl,		
	repeat, read(Entrada),
	pergunta(Entrada, Saida),
	responde(Saida),
	encerra_programa(Entrada).

responde(Entrada) :-
	Entrada = aprender,
	write('Não entendi sua pergunta, por favor me ensine a resposta'), nl,
	write('Pergunta: '), nl,
	read(Pergunta),
	write('Resposta: '), nl,
	read(Resposta),
	asserta(pergunta(Pergunta, Resposta)),
	write('Obrigado! Continue perguntando.'), nl.	

responde(Entrada) :- 
	Entrada \= aprender,
	write(Entrada), nl.

encerra_programa(Entrada) :- 
	Entrada = tchau.
