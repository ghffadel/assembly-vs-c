.data
	# �rea para dados
	
	mensagem: .asciiz "Hello World" # Mensagem a ser imprimida

.text
	# �rea para instru��es
	
	li $v0, 4 # Instru��o para imprimir uma string
	la $a0, mensagem # Indicar o endere�o da mensagem
	syscall # Executar instru��o