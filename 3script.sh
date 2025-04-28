#!/bin/bash
#!/usr/bin/env bash	#Distribuições diferentes bash pode estar em diretório diferente, com essa linha o bash é buscado via variavel ambiente path 

#O script tem por objetivo, explanar uso de variavel com comandos na variavel 

#LIÇÕES ANTERIORES
#NOMEVAR=VALORVAR se estiver entre aspas" será string, sem aspas é numero
#Não é necessário especificar o tipo da variavel como em outras linguagens
#Para calculos é importante sempre atribuir dois (( Ex: VALORPRI=1 VALORSEG=2 VARSOMA=$((VALORPRI10 + VALORSEG20)) | echo $VARSOMA-> Resultado = 3
#Para executar comandos no script segue o exemplo: VARLISTUSR=$(cat /etc/passwd | grep diego") echo $VARLISTUSR


VARLISTUSR=$(cat /etc/passwd | grep "diego")
echo $VARLISTUSR
echo
