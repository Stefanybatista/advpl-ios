#include "protheus.ch"

//Ler dois valores (considere que n�o ser�o lidos valores iguais)e escrever o maior deles.

User Function vai()

local nNum1:=0
local nNum2:=0

nNum1:= FWInputbox("digite o primeiro n�mero ")
nNum2:= FWInputbox("digite o segundo n�mero")

nNum1 := Val(nNum1)
nNum2 := Val(nNum2)

if nNum1 > nNum2
alert(" o primeiro n�mero � maior")

else 
alert("o segundo n�mero � maior")

Endif 


return 