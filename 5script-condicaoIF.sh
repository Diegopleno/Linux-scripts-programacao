#!/bin/bash
#!/usr/bin/env bash	#Distribuições diferentes bash pode estar em diretório diferente, com essa linha o bash é buscado via variavel ambiente path 

#O script tem por objetivo, explanar uso de condicional IF;

#LIÇÕES ANTERIORES
#NOMEVAR=VALORVAR se estiver entre aspas" será string, sem aspas é numero
#Não é necessário especificar o tipo da variavel como em outras linguagens
#Para calculos é importante sempre atribuir dois (( Ex: VALOR10=1 VALOR20=2 VARSOMA=$((VALOR10 + VALOR20)) | echo $VARSOMA-> Resultado = 3
#Para executar comandos no script segue o exemplo: VARLISTUSR=$(cat /etc/passwd | grep diego") echo $VARLISTUSR
#Variaveis reservadas - $0 $1 $2 ... - recebem parametros passados ao script
# $0"	#Reservado ao nome do script - retorna o nome do script
# $1"	#Retorna Primeiro parametro passado - a frente do nome do script
# $2"	#Retorna segundo parametro passado - a frente do nome do script
# $*"	#Acessa todos os parametros passados numa unica string
# $#"	#conta quantidade de parametros passados ao script
# $?"	#Última saída do ultimo comando - Se 0 funcionou - se 1 deu erro
# $$"	#pid de execução do script
# Comentando blocos de código com EOF:Inicio-> : << 'EOF'  fim-> EOF

#==========atividade if e comentários
: << 'EOF'

VAR=""					#Variável 1
VAR2="a"				#Variável 2
if [[ "$VAR" = "$VAR2"  ]]; then	#Bloco de IF
	echo "1São iguais."		#Ação dentro do IF | Comando se o IF é verdadeiro
fi					#Fecha bloco IF
					#O simbolo de = ou != 
					#São operadores de comparação de strings no Shell Script.
#=====
if [[ "$VAR" !=  "$VAR2"  ]]; then	#Bloco de IF
	echo "2São diferentes."		#Ação dentro do IF | Comando se o IF é verdadeiro
fi					#Aqui o operador de comparação é != -> se var um difere de var2 
#=====
[ "$VAR" = "$VAR2" ] && echo "3São iguais!"	# operador && =and =e
[ "$VAR" = "$VAR2" ] || echo "4são diferentes"	# operador || =or  =ou
[ "$VAR" = "$VAR2" ] && echo "5São iguais!" || echo "6são diferentes!" 
EOF #fecha bloco comentado
#==========



































