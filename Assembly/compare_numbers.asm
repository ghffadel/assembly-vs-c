.data
	# Área para dados
	
	primeiro: .asciiz "Digite um número: " # Mensagem a ser imprimida
	segundo: .asciiz "Digite outro número: " # Mensagem a ser imprimida
	maior: .asciiz " é o maior número" # Mensagem a ser imprimida

.text
	# Área para instruções
	
	li $v0, 4 # Instrução para imprimir uma string
	la $a0, primeiro # Indicar o endereço da mensagem
	syscall # Executar instrução
	
	li $v0, 5 # Instrução para ler um inteiro
	syscall # Executar instrução
	
	move $t0, $v0 # Mover o conteúdo para um registrador temporário
	
	li $v0, 4 # Instrução para imprimir uma string
	la $a0, segundo # Indicar o endereço da mensagem
	syscall # Executar instrução
	
	li $v0, 5 # Instrução para ler um inteiro
	syscall # Executar instrução
	
	move $t1, $v0 # Mover o conteúdo para um registrador
	
	bgt $t0, $t1, primeiroMaior # Verifica se o primeiro é maior que o segundo e imprime a mensagem se for verdadeiro
	ble $t0, $t1, segundoMaior # Caso contrário, imprime que o segundo é o maior
	
	primeiroMaior:
		li $v0, 1 # Instrução para imprimir um inteiro
		move $a0, $t0 # Mover o conteúdo para um registrador
		syscall # Executar instrução
		
		li $v0, 4 # Instrução para imprimir uma string
		la $a0, maior # Indicar o endereço da mensagem
		syscall # Executar instrução
		
		li $v0, 10 # Instrução para encerrar o programa
		syscall # Executar instrução
		
	segundoMaior:
		li $v0, 1 # Instrução para imprimir um inteiro
		move $a0, $t1 # Mover o conteúdo para um registrador
		syscall # Executar instrução
		
		li $v0, 4 # Instrução para imprimir uma string
		la $a0, maior # Indicar o endereço da mensagem
		syscall # Executar instrução