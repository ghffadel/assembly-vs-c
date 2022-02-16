.data
	# �rea para dados
	
	mensagem: .asciiz "Digite o valor n: " # Mensagem a ser imprimida
	espaco: .byte ' ' # Caractere de espa�o

.text
	# �rea para instru��es
	
	li $v0, 4 # Instru��o para imprimir uma string
	la $a0, mensagem # Indicar o endere�o da mensagem
	syscall # Executar instru��o
	
	li $v0, 5 # Instru��o para ler um inteiro
	syscall # Executar instru��o
	
	move $t0, $v0 # Mover o conte�do para um registrador tempor�rio
	move $t1, $zero # Atribuir o valor zero ao ponteiro
	
	repeticao:
		beq $t1, $t0, saida # O programa sai do loop se o ponteiro chegar ao valor n
		
		li $v0, 1 # Instru��o para imprimir um inteiro
		move $a0, $t1 # Mover o conte�do para um registrador
		syscall # Executar instru��o
		
		li $v0, 4 # Instru��o para imprimir uma string
		la $a0, espaco # Indicar o endere�o da mensagem
		syscall # Executar instru��o
		
		addi $t1, $t1, 1 # Incrementa o ponteiro em 1
		j repeticao # Volta para o in�cio da repeti��o
		
	saida:
		li $v0, 10 # Instru��o para encerrar o programa
		syscall # Executar instru��o