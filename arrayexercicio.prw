#include "protheus.ch"

user function addaluno()
       local aAluno:={}//array

  aAdd(aAluno,{"amarelo" ,7,87,"prrogramador Cobol"})
  aAdd(aAluno,{"lucas 1",10,22,"jogador de CS"})
  aAdd(aAluno,{"Ualace ",2,30,"Instrutor"})
  aAdd(aAluno,{"Castanhari ",0.10,23,"Youtuber"})
  aAdd(aAluno,{"Igor RS" ,6,24,"do sul "})

  Alert("nome do aluno:"+ aAluno[3][1]+;
       " média:" + cValtochar (aAluno[3][2])+;
        " idade:"  +cValtochar (aAluno[3][3])+;
       " profissão:"  +cValtochar (aAluno[3][4]))

varinfo("texto",aAluno)


return 


