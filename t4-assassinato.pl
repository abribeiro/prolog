%
vitima(anita).
%
%motivo(ciumes).
%motivo(insanidade).
%motivo(dinheiro).
%
pobre(bia).
pobre(pedro).
pobre(henrique).
pobre(maria).
pobre(bernardo).
rico(caren).
rico(alice).
rico(adriano).
%
insano(adriano).
insano(maria).
%
relacionamento(anita,bernardo).
relacionamento(bernardo,caren).
relacionamento(anita,pedro).
relacionamento(aline,pedro).
relacionamento(alice,henrique).
relacionamento(henrique,maria).
relacionamento(adriano,maria).
relacionamento(adriano,caren).
%
localizacao(santamaria,pedro,segunda).
localizacao(santamaria,pedro,terça).
localizacao(portoalegre,pedro,quarta).
localizacao(santamaria,pedro,quinta).
localizacao(apartamento,pedro,sexta).
localizacao(portoalegre,caren,segunda).
localizacao(portoalegre,caren,terca).
localizacao(portoalegre,caren,quarta).
localizacao(santamaria,caren,quinta).
localizacao(apartamento,caren,sexta).
localizacao(apartamento,henrique,segunda).
localizacao(portoalegre,henrique,terca).
localizacao(apartamento,henrique,quarta).
localizacao(apartamento,henrique,quinta).
localizacao(apartamento,henrique,sexta).
localizacao(apartamento,bia,segunda).
localizacao(portoalegre,bia,terca).
localizacao(portoalegre,bia,quarta).
localizacao(santamaria,bia,quinta).
localizacao(apartamento,bia,sexta).
localizacao(santamaria,adriano,quarta).
localizacao(apartamento,adriano,quinta).
localizacao(apartamento,adriano,sexta).
localizacao(apartamento,alice,segunda).
localizacao(portoalegre,alice,terca).
localizacao(portoalegre,alice,quarta).
localizacao(apartamento,alice,quinta).
localizacao(apartamento,alice,sexta).
localizacao(santamaria,bernardo,segunda).
localizacao(santamaria,bernardo,terca).
localizacao(portoalegre,bernardo,quarta).
localizacao(santamaria,bernardo,quinta).
localizacao(apartamento,bernardo,sexta).
localizacao(apartamento,maria,segunda).
localizacao(santamaria,maria,terca).
localizacao(santamaria,maria,quarta).
localizacao(santamaria,maria,quinta).
localizacao(apartamento,maria,sexta).
%

chave(X) :- localizacao(santamaria,X,quarta) ; localizacao(portoalegre,X,terca).

armas(X) :- localizacao(potoalegre,X,quinta);localizacao(apartamento,X,quarta);localizacao(apartamento,X,quinta).

acesso(X):- chave(X), armas(X).

insanidade(X):- insano(X).

ciumes(X):- relacionamento(anita,X); relacionamento(X,pedro); relacionamento(bernardo,X).

dinheiro(X):- pobre(X).

motivo(X):- insanidade(X); ciumes(X), dinheiro(X).

assassino(X):- motivo(X),acesso(X).
