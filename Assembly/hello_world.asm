.data
	# Área para dados
	
	mensagem: .asciiz "Hello World" # Mensagem a ser imprimida

.text
	# Área para instruções
	
	li $v0, 4 # Instrução para imprimir uma string
	la $a0, mensagem # Indicar o endereço da mensagem
	syscall # Executar instrução