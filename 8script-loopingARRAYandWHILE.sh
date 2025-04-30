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
EOF
#fecha bloco comentado
: << 'EOF'
#==========Estrutura de repetição - looping, loop FOR
#O for é usado para criar um loop que executa um bloco de código várias vezes

for (( VAR = 0; VAR < 10; VAR++ )); do	#Inicialização:	VAR = 0		- Define a variável i com o valor inicial de 0.
echo $VAR								#Condição:		VAR < 10	- O loop continua enquanto i for menor que 3.
done									#Incremento:	VAR++		- A cada iteração, o valor de i é incrementado em 1.
EOF
#fecha bloco comentado
: << 'EOF'
#==========Estrutura de repetição - looping, loop FOR com ARRAY
#O script ao final, exibe a lista contida dentro do array
# Um array é uma lista de coisas


frutas=(		#este é o array declarado frutas=(
Laranja
Melancia
Morango
Jabuticaba
Mamão
uva)			#fecha o array 
										# O comando for inicia um loop que percorre cada elemento do array frutas
for contagem in ${frutas[@]}; do		# ${frutas[@]} acessa todos os elementos dentro do array
	echo $contagem						# A variável contagem recebe o valor de cada elemento do array a cada iteração do loop.
done
EOF
#==========Estrutura de repetição - ARRAY com WHILE
# O script tem por objetivo realizar a contagem do array frutas e exibir a quantidade no array

frutas=(Laranja Melancia Morango Jabuticaba Mamão uva)	#Declaração do array frutas
indice=0												#Varívavel indice é inicializada com valor 0
while [[ $indice -lt ${#frutas[@]} ]]; do				#A condição verifica se o indice é menor que o array
	echo $indice										# ${#frutas[@]} retorna o número de elementos no array frutas
	indice=$(($indice +1))								# indice=$(($contagem + 1)) incrementa o valor de contagem em 1 a cada iteração.
done												




















