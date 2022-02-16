.data
	# �rea para dados
	
	primeiro: .asciiz "Digite um n�mero: " # Mensagem a ser imprimida
	segundo: .asciiz "Digite outro n�mero: " # Mensagem a ser imprimida
	maior: .asciiz " � o maior n�mero" # Mensagem a ser imprimida

.text
	# �rea para instru��es
	
	li $v0, 4 # Instru��o para imprimir uma string
	la $a0, primeiro # Indicar o endere�o da mensagem
	syscall # Executar instru��o
	
	li $v0, 5 # Instru��o para ler um inteiro
	syscall # Executar instru��o
	
	move $t0, $v0 # Mover o conte�do para um registrador tempor�rio
	
	li $v0, 4 # Instru��o para imprimir uma string
	la $a0, segundo # Indicar o endere�o da mensagem
	syscall # Executar instru��o
	
	li $v0, 5 # Instru��o para ler um inteiro
	syscall # Executar instru��o
	
	move $t1, $v0 # Mover o conte�do para um registrador
	
	bgt $t0, $t1, primeiroMaior # Verifica se o primeiro � maior que o segundo e imprime a mensagem se for verdadeiro
	ble $t0, $t1, segundoMaior # Caso contr�rio, imprime que o segundo � o maior
	
	primeiroMaior:
		li $v0, 1 # Instru��o para imprimir um inteiro
		move $a0, $t0 # Mover o conte�do para um registrador
		syscall # Executar instru��o
		
		li $v0, 4 # Instru��o para imprimir uma string
		la $a0, maior # Indicar o endere�o da mensagem
		syscall # Executar instru��o
		
		li $v0, 10 # Instru��o para encerrar o programa
		syscall # Executar instru��o
		
	segundoMaior:
		li $v0, 1 # Instru��o para imprimir um inteiro
		move $a0, $t1 # Mover o conte�do para um registrador
		syscall # Executar instru��o
		
		li $v0, 4 # Instru��o para imprimir uma string
		la $a0, maior # Indicar o endere�o da mensagem
		syscall # Executar instru��o