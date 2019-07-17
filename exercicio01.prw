#include "protheus.ch"

user function somanum()
local nNum1:=0
local nNum2:=0
local nTotal:=0
local cNum1:=''
local cNum2:=''


 cNum1:= FWInputBox("digite aqui o primeiro número")
 cNum2:= FWInputBox("digite aqui o primeiro número")

nNum1:= val(cNum1)
nNum2:= val(cNum2)

nTotal:= nNum1+nNum2

alert("a soma dos números é" + cValtochar(nTotal))

return