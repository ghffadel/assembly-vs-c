.data
	# Área para dados
	
	mensagem: .asciiz "Digite o valor n: " # Mensagem a ser imprimida
	espaco: .byte ' ' # Caractere de espaço

.text
	# Área para instruções
	
	li $v0, 4 # Instrução para imprimir uma string
	la $a0, mensagem # Indicar o endereço da mensagem
	syscall # Executar instrução
	
	li $v0, 5 # Instrução para ler um inteiro
	syscall # Executar instrução
	
	move $t0, $v0 # Mover o conteúdo para um registrador temporário
	move $t1, $zero # Atribuir o valor zero ao ponteiro
	
	repeticao:
		beq $t1, $t0, saida # O programa sai do loop se o ponteiro chegar ao valor n
		
		li $v0, 1 # Instrução para imprimir um inteiro
		move $a0, $t1 # Mover o conteúdo para um registrador
		syscall # Executar instrução
		
		li $v0, 4 # Instrução para imprimir uma string
		la $a0, espaco # Indicar o endereço da mensagem
		syscall # Executar instrução
		
		addi $t1, $t1, 1 # Incrementa o ponteiro em 1
		j repeticao # Volta para o início da repetição
		
	saida:
		li $v0, 10 # Instrução para encerrar o programa
		syscall # Executar instrução