#include "protheus.ch"

//Crie uma janela com um botão de fechar. Ao clicar nesse botão a janela deverá
//ser fechada.

user function octn()


local oOlog
local ctitulo:= "texto"



DEFINE MSDIALOG oDlg TITLE cTitulo FROM 000,000 TO 400,500 PIXEL


@100,120 BUTTON "Confirmar" SIZE 040, 047 PIXEL OF oDlg ACTION oDlg:End()

ACTIVATE MSDIALOG oDlg CENTERED

return