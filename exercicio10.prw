#include "protheus.ch"

// Criar uma função que recebe a altura (alt) e o sexo de uma pessoa e retorna o seu
//peso ideal. Para homens, calcular o peso ideal usando a fórmula peso ideal = 72.7 x alt
//- 58 e, para mulheres, peso ideal = 62.1 x alt - 44.7.

user function peso2()

//entrada de dados 

// receber o peso e a altura
//receber o sexo da pessoa 

exercicio 8
local nAltura:= val(FWInputbox("digite a altura:"))
local cSexo:= FWInputbox("digite M para  masculino e F para feminino")
local nPeso


//processa o calculo do peso ideal

nPeso:= u_calculo(nAltura,cSexo)

//saida  de daddos 

alert(nPeso)

//processa o calculo do peso ideal 
//exibir o saida de dasdos com o valor do peso ideal


return




user function calculo(nAlt, cSexo)

//Para homens= 72.7 x alt- 58 
//para mulheres= 62.1 x alt - 44.7.

local nRet:=0

if Upper (cSexo)== 'M'
nRet:=72.7 * nalt- 58 


elseif Upper (cSexo)== 'F'
nRet:=62.1 * nalt - 44.7

endif

return nRet