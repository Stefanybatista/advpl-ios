#include "protheus.ch"

user function somanum()
local nNum1:=0
local nNum2:=0
local nTotal:=0
local cNum1:=''
local cNum2:=''


 cNum1:= FWInputBox("digite aqui o primeiro n�mero")
 cNum2:= FWInputBox("digite aqui o primeiro n�mero")

nNum1:= val(cNum1)
nNum2:= val(cNum2)

nTotal:= nNum1+nNum2

alert("a soma dos n�meros �" + cValtochar(nTotal))

return