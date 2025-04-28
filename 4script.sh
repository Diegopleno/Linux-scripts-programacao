#!/bin/bash
#!/usr/bin/env bash	#Distribuições diferentes bash pode estar em diretório diferente, com essa linha o bash é buscado via variavel ambiente path 

#O script tem por objetivo, explanar uso de variavel e parametros;

#LIÇÕES ANTERIORES
#NOMEVAR=VALORVAR se estiver entre aspas" será string, sem aspas é numero
#Não é necessário especificar o tipo da variavel como em outras linguagens
#Para calculos é importante sempre atribuir dois (( Ex: VALOR10=1 VALOR20=2 VARSOMA=$((VALOR10 + VALOR20)) | echo $VARSOMA-> Resultado = 3
#Para executar comandos no script segue o exemplo: VARLISTUSR=$(cat /etc/passwd | grep diego") echo $VARLISTUSR
#Variaveis reservadas - $0 $1 $2 ... - recebem parametros passados ao script
echo "Nome do script $0"			#Nome script
echo "Parametro 1: $1"				#Primeiro parametro
echo "Parametro 2: $2"				#segundo parametro
echo "Todos so parametros: $*"		#acessa todos os parametros passados numa unica string
echo "Contagem de parametros: $#"	#conta quantidade de parametros passados ao script
echo "Saida do ultimo comando: $?"	#Se 0 funcionou - se 1 deu erro
echo "PID dessa execução é: $$"		#pid de execução do script
