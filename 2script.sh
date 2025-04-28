#!/bin/bash
#!/usr/bin/env bash	#Distribuições diferentes bash pode estar em diretório diferente, com essa linha o bash é buscado via variavel ambiente path 

#O script tem por objetivo, explanar uso de variavel com string, numero, calculos entre variaveis, e utilização de comandos na variavel 


VARNOME="Diego dos Santos Gomes"	#NOMEVAR=VALORVAR Tipos: Se estiver entre aspas" é string, sem string é numero
									#Em shellbash não é necessário especificar o tipo da variavel
					
echo $VARNOME

VARVAL1=1995						#VARVAL1 Armazena o primeiro valor, que é 1995
VARVAL2=2025						#VARVAL2 Armazena o segundo valor, que é 2025

TOTAL=$((VARVAL1 + VARVAL2))		#TOTAL=$((var1+var2)) Irá somar VARVAL1 e VARVAL2 
									#Para calculos é importante sempre atribuir dois ((

echo $TOTAL							#O echo no $TOTAL irá exibir o resultado resolvido

USR=$(cat /etc/passwd | grep diego)	#Para executar comandos no script 
echo $USR
