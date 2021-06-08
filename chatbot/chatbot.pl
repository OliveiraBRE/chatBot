% Universidade Cruzeiro do Sul
% Curso: Ciência da Computação
% Disciplina: Projeto Integrador de Competências em Ciência da Computação IV
% Discente: Bruno Roberto Esteves Oliveira  RGM: 20624506
% Descrição: Chatbot desenvolvido por meio da linguagem lógica Prolog

% referência ao banco de dados
:- include('db_one.pl').
:- include('db_two.pl').

tecbot :-
  write('Saudacoes, humanoide!'), nl,
  write('Digite o que deseja saber: '), nl,

  repeat, nl,
  read(Input),
  data_base_search(Input, Output),
  write(Output), nl,
  end_session(Input).

data_base_search(Input, Answer) :-
  ethernet(Input, Answer), !;
  geral(Input, Answer), !.

end_session(Input) :-
  Input = sair.