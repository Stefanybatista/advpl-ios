#include "protheus.ch"

//Ler dois valores (considere que não serão lidos valores iguais)e escrever o maior deles.

User Function vai()

local nNum1:=0
local nNum2:=0

nNum1:= FWInputbox("digite o primeiro número ")
nNum2:= FWInputbox("digite o segundo número")

nNum1 := Val(nNum1)
nNum2 := Val(nNum2)

if nNum1 > nNum2
alert(" o primeiro número é maior")

else 
alert("o segundo número é maior")

Endif 


return 