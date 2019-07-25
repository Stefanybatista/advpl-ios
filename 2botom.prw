#include "protheus.ch"

/*Crie uma janela com 2 campos do tipo GET para solicitar o nome de um usuário
e sua senha. Adicione um botão de OK e um de cancelar. 

Ao clicar em OK deve-
se avaliar se a senha é igual a "IOS2019", caso seja, exibir uma mensagem de
senha correta. Se estiver errado exibir uma mensagem de senha incorreta.
 
 Ao clicar em cancelar deve-se fechar a janela
*/

user function botom()
local oDlg
local cTexto:= "texto"
Local oFont
local cNome:= Space(100)
local cpass:= space(10)


DEFINE MSDIALOG oDlg title cTexto FROM 000,000 TO 400,500 PIXEL

//criar a fonte
oFont := TFont():New('Courier new',,-18,.T.)

@ 10,10 SAY oSay PROMPT 'Nome:' SIZE 200,20 COLORS CLR_RED,CLR_WHITE FONT oFont OF oDlg PIXEL
@ 50,10 SAY oSay PROMPT 'Senha:' SIZE 200,20 COLORS CLR_RED,CLR_WHITE FONT oFont OF oDlg PIXEL
 



// barra para usuario digitar
@ 10,50 GET oGet VAR cNome FONT oFont SIZE 200,20 OF oDlg PIXEL VALID !empty(cNome) 
@ 50,50 GET oGet VAR cpass FONT oFont SIZE 50,20 OF oDlg PIXEL 
 

//botões
@80,120 BUTTON "OK" SIZE 040, 047 PIXEL OF oDlg ACTION u_boto(cpass) 

@140,120 BUTTON "Cancelar" SIZE 040, 047 PIXEL OF oDlg ACTION oDlg:End()

ACTIVATE MSDIALOG oDlg CENTERED
return

user function boto(cpass)
 if alltrim(cpass) == "IOS2019"

alert ("correto")

else

alert("errado")

endif

return