#include 'Protheus.ch'

User function autor()

Local oBrowse := FWMBrowse():New()

oBrowse:SetAlias("ZA0")
//set voc� coloca as configura��es para executar a fun��o.
oBrowse:SetMenuDef('Ios01')
oBrowse:Activate() 

Return

//Fun��o que pertence somente a este fonte

Static Function MenuDef()

Return FWMVCMenu('Ios01') //Menu padr�o do C.R.U.D

Static Function ModelDef()

Local oModel := MPFormModel():New("Li")
Local oStruZA0 := FWFormStruct(1, "ZA0")
Local bPos := {|oModelField| PosVldAutor(oModelField) }
//Form Field : Campo de formul�rio

oModel:AddFields("ZA0MASTER",/* Owner */,oStruZA0, /**/, bPos)
Return oModel

Static Function PosVldAutor(oModelField)
Local lTudoOk := .T.
Local dFalec := oModelField:GetValue("ZA0_DTAFAL")
Local cNome := oModelField:GetValue("ZA0_NOME")

If dFalec > Date()
lTudoOk := .F.
Help( ,, 'HELP',, 'N�o adivinhe o futuro', 1, 0)


ElseIf 'RICARDO' $ UPPER(cNome) .or. Empty(cNome)
lTudoOk := .F.

Help( ,, 'HELP',, 'Ele n�o pode estar aqui', 1, 0)

Endif
Return lTudoOk

Static Function ViewDef()

Local oView := FWFormView():New()
Local oStruct := FWFormStruct(2, "ZA0")

oView:SetModel(ModelDef())

oView:AddField("ZA0_VIEW", oStruct, "ZA0MASTER")
oView:CreateHorizontalBox("BOXZA0", 100)
oView:SetOwnerView("ZA0_VIEW","BOXZA0")
Return oView
