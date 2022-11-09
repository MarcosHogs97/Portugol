programa
{
	inclua biblioteca Matematica-->mat
	
	funcao real somarValores(real num1,real num2){
		real total=0.0
		total=num1+num2
		retorne total
	}
	funcao real calculoDeGorjeta(real valorConta, real gorjeta){
	
		real total
		se(gorjeta ==1){
			 gorjeta=0.10
				}
		senao se(gorjeta ==2){
			gorjeta=0.12
		}senao{
			gorjeta=0.15
		}
		total=valorConta*gorjeta
		retorne total
	}
		funcao real calculoPessoal(real &num1, real &num2){
		num1=mat.maior_numero(num1,num2)
		real result=num1/num2			
		result=mat.arredondar(result, 2)
		retorne result
	}
		funcao inicio()
	{
		real valorConta=0.0,valorPessoa=0.0,porcentagem=0.0,valorTotal=0.0,gorjeta,quantPessoas,opcao

		escreva("Informe o valor total da conta:\t")
		leia(valorConta)
		limpa()
		escreva("Informe a quantidade de gorjeta: 1)-10, 2)-12% ou 3)-15%")
		escreva("\n")
		leia(opcao)
		
		escreva("Informe a quantidade de pessoas:\t")
		leia(quantPessoas)

		gorjeta=calculoDeGorjeta(valorConta,opcao)
		valorTotal=somarValores(valorConta,gorjeta)
		valorPessoa=calculoPessoal(valorTotal,quantPessoas)

		escreva("O total a ser pago é : ",valorConta)
		escreva("\nO valor da gorjeta é : ",gorjeta)
		escreva("\nO valor individual a ser pago é : ",valorPessoa)
		escreva("\nO total a ser pago é : ",valorTotal)
		escreva("\nQuantida de pessoas: ",quantPessoas)			
	}}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 0; 
 * @DOBRAMENTO-CODIGO = [4, 9, 23];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */