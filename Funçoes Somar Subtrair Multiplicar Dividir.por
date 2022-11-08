programa
{
	inclua biblioteca Matematica-->mat	
	funcao inteiro somar(inteiro num1, inteiro num2){
		retorne num1 + num2
	}
	funcao inteiro subtrair(inteiro &num1, inteiro &num2){
		retorne num1 - num2
	}	
	funcao inteiro multiplicar(inteiro &num1, inteiro &num2){
		retorne num1 * num2
	}	
	funcao real dividir(real &num1, real &num2){
		retorne num1 / num2
	}
	funcao inicio() 
	{
		//Variaveis
		inteiro a, b,resultado,opcoes,opcao
		real c,d,result
	//entrada de escolha da operção
	escreva("Qual operação gostaria de fazer ? 1-Somar 2-Subtrair 3-Multiplicar 4-Dividir 5-Sair")
	escreva("\n")
	leia(opcoes)
	limpa()
	escolha(opcoes)
	{
	caso 1:{
		faca{
		//entrada dos valoras A e B	
		escreva("Informe o 1º número: \t")
		leia(a)
		limpa()
		escreva("Informe o 2º número: \t")
		leia(b)
		limpa()
		//função de Somar
		resultado=somar(a,b)
		//Saida do resultado
		escreva("O resultado da operação é: ",resultado)
		escreva("\nGostaria de fazer uma nova operação ?	1-Sim	2-Nao")
		escreva("\n")
		leia(opcao)
		limpa()
		}enquanto(opcao!=2)
			escreva("Até a proxima !!")
	pare}
	caso 2:{
		faca{
		//entrada dos valoras A e B	
		escreva("Informe o 1º número: \t")
		leia(a)
		limpa()
		escreva("Informe o 2º número: \t")
		leia(b)
		limpa()
		//função subtrair
		resultado=subtrair(a,b)
		//Saida do resultado
		escreva("O resultado da operação é: ",resultado)
		escreva("\nGostaria de fazer uma nova operação ?	1-Sim	2-Nao")
		escreva("\n")
		leia(opcao)
		limpa()
		}enquanto(opcao!=2)
			escreva("Até a proxima !!")
	pare}
	caso 3:{
		faca{
		//entrada dos valoras A e B	
		escreva("Informe o 1º número: \t")
		leia(a)
		limpa()
		escreva("Informe o 2º número: \t")
		leia(b)
		limpa()
		//função multiplicar
		resultado=multiplicar(a,b)
		//saida do resultado
		escreva("O resultado da operação é: ",resultado)
		escreva("\nGostaria de fazer uma nova operação ?	1-Sim	2-Nao")
		escreva("\n")
		leia(opcao)
		limpa()
		}enquanto(opcao!=2)
			escreva("Até a proxima !!")
	pare}
	caso 4:{
		faca{
		//entrada dos valoras A e B	
		escreva("Informe o 1º número: \t")
		leia(c)
		limpa()
		escreva("Informe o 2º número: \t")
		leia(d)
		limpa()
		//função de dividir e arredondamento
		result=dividir(c,d)
		result=mat.arredondar(result, 2)
		//saida do resultado
		escreva("O resultado da operação é: ",result)
		escreva("\nGostaria de fazer uma nova operação ?	1-Sim	2-Nao")
		escreva("\n")
		leia(opcao)
		limpa()
		}enquanto(opcao!=2)
		escreva("Até a proxima !!")
	pare}
	caso 5:{
		//opcao 5-Sair
		escreva("Até a proxima !!")
	}}}}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2313; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {num1, 4, 30, 4}-{num2, 4, 44, 4}-{num1, 13, 27, 4}-{a, 18, 10, 1}-{b, 18, 13, 1};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
