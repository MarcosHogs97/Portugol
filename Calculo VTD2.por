programa
{		
		inclua biblioteca Matematica-->mat
	funcao inicio()
	{
		//vatiaveis
		inteiro velocidade=0, distancia=0,opcaoInicial=0,opcaoRep=0,tempo=0,segundos=0,h=0,m=0,s=0
		// codigo
		escreva("Olá, Oque gostaria de fazer ?") 
	faca{
		faca{
		
		escreva("\n(1) - Calcular Distancia Percorrida	(2) - Calcular Velocidade Media	(3) - Calcular Tempo Nescessário  (4) - Sair\t ")
		leia(opcaoInicial)
		limpa()
		}enquanto(opcaoInicial !=1 e opcaoInicial!=2 e opcaoInicial !=3 e opcaoInicial !=4)
		escolha(opcaoInicial)
		{
			//Calcular distancia Percorrida
			caso 1:
		{
		escreva("informe a velociade media em KM/h que pretendi ir: ")
		leia(velocidade)
		limpa()
		escreva("informe o tempo em Horas que pretende chegar: ")
		leia(tempo)
		limpa()

		distancia=velocidade*tempo

		escreva("A distancia que ira percorrer indo a ",velocidade," KM/h em um tempo de ",tempo," horas é de : ",distancia," KM")

			pare
		}	
			//Calcular velocidade media
			caso 2:{
		escreva("informe o tempo em Horas que ira percorrer: ")
		leia(tempo)
		limpa()
		escreva("informe a distancia que pretende percorrer: ")
		leia(distancia)
		limpa()

		velocidade=(distancia/tempo)

		escreva("Para percorrer uma distancia de ",distancia,"KM em um tempo de ",tempo," Horas a velocidade media deve ser de :",velocidade,"KM/h")
			pare
		}
			//Calcular tempo
			caso 3:{
		escreva("informe a Distacia que ira percorrer: ")
		leia(distancia)
		limpa()
		escreva("informe a velocidade media que pretende percorrer: ")
		leia(velocidade)
		limpa()
		
		tempo=distancia/velocidade

		escreva("O tempo que sera necessario para percorre uma distancia de ",distancia,"KM se manter uma velociade media de ",velocidade,"Km/h é de +ou- ",tempo," Horas ")
			pare
		}	
			//Sair
			caso 4:{
		escreva("Obrigado e volte sempre!!!")
		pare
		}}
	//repetição
	escreva("\nGostaria de fazer mais alguma coisa?	(1)Sim	(2)Nao:\t")
	leia(opcaoRep)
	limpa()
	}enquanto(opcaoRep !=2)
	limpa()
	escreva("Obrigado e volte sempre!!!")
}}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1729; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */