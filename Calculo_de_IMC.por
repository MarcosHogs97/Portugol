programa
{
	inclua biblioteca Matematica-->mat
		
	funcao inicio()
	{
	//Variaveis
		real peso,altura,imc
		caracter opcao='n'
	//entrada peso e altura
	escreva("deseja calcular seu IMC? (S/N) \t")
	leia(opcao)
	enquanto(opcao == 'S' ou opcao == 's'){
	escreva("Informe seu peso: ")
	leia(peso)
	escreva("informe sua altura: ")
	leia(altura)
	// calculo IMC e arredondamento
	altura=mat.potencia(altura, 2.0)
	imc=peso/altura
	imc=mat.arredondar(imc, 2)
	limpa()	
	//saida IMC e tabela
	escreva("seu IMC é de: ",imc)
		se(imc <18.5)
			escreva("\nCuidado, seu IMC está no baixo peso.")
		senao se(imc <24.9)
			escreva("\nParabéns, seu IMC está no intervalo normal.")
		senao se(imc <29.9)
			escreva("\nCuidado, seu IMC está no sobrepeso.")
		senao se(imc <34.9)
			escreva("\nCuidado, seu IMC está no obesidade classe I.")
		senao se(imc <39.9)
			escreva("\nCuidado, seu IMC está no obesidade classe II.")
		senao
			escreva("\nCuidado, seu IMC está no obesidade classe III.")
	//Repitir calculo
	escreva("\n===============================================")			
	escreva("\nGostaria de Realizar outro calculo? (S/N)\t")
	leia(opcao)
	limpa()
}}}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1143; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */