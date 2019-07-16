#include "protheus.ch"

user function media()
local nNum1:=0
local nNum2:=0
local nNum3:=0

local nMedia:=0

nNum1 := val(fwinputbox("nota1"))
nNum2 := val(fwinputbox("nota2"))
nNum3 := val(fwinputbox("nota3"))

nMedia:=((nNum1*2)+(nNum2*3)+(nNum3*5))/10

alert("a média é "+cValtochar(nMedia))


return