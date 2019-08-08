#include 'protheus.ch'

User function music ()

Local oBrowse := FWMBrowse():New()
// novo
Local aArea := GetArea() 
Local aAreaZA0 := ZA0->(GetArea()) //
Local cMensagem := ''
//novo

DbSelectArea("ZA0")
ZA0->(DbSetOrder())
//novo


If ZA0->ZA0_TIPO = '1' 
        cTipo := 'Autor'
    else 
        cTipo := 'Interprete'
    EndIf
 
//novo
cMensagem += 'Código: '
cMensagem += 'Data falecimento: ' + DTOC(ZA0->ZA0_DTAFAL) + CRLF 
    cMensagem += 'Tipo: ' + cTipo
  

//novo

oBrowse:SetAlias("ZA1")
oBrowse:SetMenuDef('Iosmusic')
oBrowse:Activate() 

Return

Static Function MenuDef()
Return FWMVCMenu('Iosmusic')

Static Function ModelDef()

Local oModel := MPFormModel():New("ZA1MODEL")
Local oStruZA1 := FWFormStruct(1, "ZA1")
Local oStruZA2 := FWFormStruct(1, "ZA2")
local bValid := {|oModelGrid| ValidAutor(oModelGrid)}

oModel:AddFields("ZA1MASTER",/* Owner */,oStruZA1, /**/)
oModel:AddGrid("ZA2DETAIL","ZA1MASTER",oStruZA2, , bValid)
oModel:SetRelation( 'ZA2DETAIL', { {'ZA2_FILIAL', "xFilial('ZA2')"},;
 {"ZA2_MUSICA" , "ZA1_MUSICA"} }, ZA2->( IndexKey( 1 ) ) )

oModel:GetModel( 'ZA1MASTER' ):SetDescription( 'Dados da Musica' )
oModel:GetModel( 'ZA2DETAIL' ):SetDescription( 'Dados do Autor Da Musica'  )


Return oModel


Static Function ViewDef()
Local oView := FWFormView():New()
Local oStruct := FWFormStruct(2, "ZA1")
Local oStructZA2 := FWFormStruct(2, "ZA2")
oView:SetModel(ModelDef())


oView:AddField("ZA1_VIEW", oStruct, "ZA1MASTER")
oView:AddGrid( 'ZA2_VIEW', oStructZA2, 'ZA2DETAIL' )

oView:AddIncrementField( 'ZA2_VIEW', 'ZA2_ITEM' )=oView:CreateHorizontalBox("BOXZA1", 50)
oView:CreateHorizontalBox("BOXZA2", 50)


oView:SetOwnerView("ZA1_VIEW","BOXZA1") 
oView:SetOwnerView("ZA2_VIEW","BOXZA2") 


oView:EnableTitleView('ZA2_VIEW')

Return oView


Static function ValidAutor (oModelGrid)
local lRet := .f.
local cCodAutor := oModelGrid:GetValue('ZA2_AUTOR')

// buscar na ZA0 o registro do autor que está sendo inserido no grid// JÁ FOI
// pegar a data de falecimento 
//se a data não estiver em branco , bloquear a inclusão exibindo msg de erro






Return lRet