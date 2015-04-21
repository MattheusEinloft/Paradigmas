segunda("santa maria",pedro).
segunda("porto alegre",caren).
segunda("apartamento",henrique).
segunda("apartamento",bia).
segunda("apartamento",alice).
segunda("santa maria",bernardo).
segunda("apartamento",maria).
terca("santa maria",pedro).
terca("porto alegre",caren).
terca("porto alegre",henrique).
terca("porto alegre",bia).
terca("porto alegre",alice).
terca("santa maria",bernardo).
terca("santa maria",maria).
quarta("porto alegre",pedro).
quarta("porto alegre",caren).
quarta("apartamento",henrique).
quarta("porto alegre",bia).
quarta("santa maria",adriano).
quarta("porto alegre",alice).
quarta("porto alegre",bernardo).
quarta("santa maria",maria).
quinta("santa maria",pedro).
quinta("santa maria",caren).
quinta("apartamento",henrique).
quinta("santa maria",bia).
quinta("apartamento",adriano).
quinta("apartamento",alice).
quinta("santa maria",bernardo).
quinta("santa maria",maria).
sexta("apartamento",pedro).
sexta("apartamento",caren).
sexta("apartamento",henrique).
sexta("apartamento",bia).
sexta("apartamento",adriano).
sexta("apartamento",alice).
sexta("apartamento",bernardo).
sexta("apartamento",maria).
pobre(bernardo).
pobre(bia).
pobre(pedro).
pobre(maria).
relacionamento(anita,bernardo).
relacionamento(bernardo,caren).
relacionamento(anita,pedro).
relacionamento(pedro,alice).
relacionamento(alice,henrique).
relacionamento(henrique,maria).
relacionamento(maria,adriano).
relacionamento(adriano,caren).
insano(adriano).
insano(maria).
vitima(anita).

namorou(A,B):- relacionamento(A,B).
namorou(A,B):- relacionamento(B,A).
ciumes(X,Y):- namorou(Z,X), namorou(Y,Z).
motivo(X):- pobre(X) ; ciumes(X,anita) ; insano(X).
bastao(X):- quinta("porto alegre",X) ; quarta("santa maria",X).
martelo(X):- quarta("apartamento",X) ; quinta("apartamento",X).
arma(X):- bastao(X) ; martelo(X).
chave(X):- segunda("santa maria",X) ; terca("porto alegre",X).
apartamento(X):- sexta("apartamento",X) ; quinta("apartamento",X).
acesso(X):- arma(X) , chave(X) , apartamento(X).
assassino(X):- motivo(X) , acesso(X).