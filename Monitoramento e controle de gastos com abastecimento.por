//Nome: Marcos Henrique Oliveira Gomes da Silva
//codigo: Monitoramento e controle de gastos com abastecimento

programa
{
	inclua biblioteca Matematica-->mat
	
	
	funcao inicio()
	{
		//variaveis
		real  autonomia_carro, km_litro, valor_combustivel, valor_gasto, arredonda_autonomia, arredonda_gasto ,km
		
		//valor de variaveis fixos
		autonomia_carro = 9.5
		valor_combustivel = 4.89
		
		// codigo
				//entrada
		escreva("informe a distancia que sera percorrida: ")
		leia(km)
				//calculo de gosto de combustivel 
		km_litro=km/autonomia_carro
		arredonda_autonomia= mat.arredondar(km_litro, 2)
				limpa()
				//saida Combustivel Necessario
		escreva("\nPara percorrer ",km, "KM serão necessários ",arredonda_autonomia," litros de combustivel")
		
				//calculo de R$ gasto
		valor_gasto=km/autonomia_carro*valor_combustivel
		arredonda_gasto= mat.arredondar(valor_gasto, 2)
				//Saida gosta de R$ por km
		escreva("\nPara percorrer ",km,"KM serão gastos R$",arredonda_gasto," em combustivel ")
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 882; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */