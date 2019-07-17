#include "protheus.ch"

//Criar um array de 3 linhas e 2 colunas, cada linha deve guardar o nome de um aluno
//e a idade do mesmo. Exiba os dados do segundo aluno.

 user function doce()  
 local aArray:={}

 aAdd(aArray,{"Stefany",15})
 aAdd(aArray,{"Robert", 17})
 aAdd(aArray,{"Dino", 435})

   Alert("nome:"+aArray[1][1] +"idade"+ cValtochar (aArray[1][2])+;
      "nome:" + aArray[2][1] +"idade"+ cValtochar (aArray [2][2])+;
      "nome:" + aArray[3][1] + "idade"+ cValtochar (aArray [3][2]))
      

varinfo("texto",aArray)


return