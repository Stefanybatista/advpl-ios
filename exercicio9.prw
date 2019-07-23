#include "protheus.ch"

// Criar uma função que recebe a altura (alt) e o sexo de uma pessoa e retorna o seu
//peso ideal. Para homens, calcular o peso ideal usando a fórmula peso ideal = 72.7 x alt
//- 58 e, para mulheres, peso ideal = 62.1 x alt - 44.7.

user function peso2()

//entrada de dados 

// receber o peso e a altura
//receber o sexo da pessoa 

local aPessoas:={}
LOCAL cMensagem:=''
LOCAL nx:=1

AADD(aPessoas,{1.56, 'M',0})
AADD(aPessoas,{2,'F',0})
AADD(aPessoas,{1.60,'M',0})
AADD(aPessoas,{2.89,'F',0})
AADD(aPessoas,{1.84,'F',0})


//processa o calculo do peso ideal
for nx:= 1 to len(aPessoas)
aPessoas[nx,3]:= u_calculo(aPessoas[nx1,1],aPessoas[nx,2])

cMensagem += u_mensagem(nx, aPessoas[nx,3])


next

//saida  de daddos 
alert(cMensagem)


return



user function mensagem(nPosicao,nPeso)
local mensagem:='' 

cMensagem:=" o peso ideal da pessoa" + cvaltochar(nPosicao)+ ;

"é" + str(nPeso,6,2) + CRLF


return cMensagem