programa
{
	inclua biblioteca Matematica-->mat
	
	funcao inicio()
	{	//variaveis
		real valorCompras,valorPago,arredondaTroco
		caracter proximoCliente  = 's'
		//codigo
		enquanto (proximoCliente == 's'){
		faca{
				//entrada dos valores das compras e pago
			escreva("informe o valor das compras: R$")
			leia(valorCompras)
			}enquanto(valorCompras <=0)
			faca{
				escreva("informe o valor das Pago: R$")
				leia(valorPago)
				limpa()
				}enquanto(valorPago<valorCompras)
	
	//arredonda e limpa
	arredondaTroco=mat.arredondar(valorPago-valorCompras, 2)
	limpa()
	//saida
	escreva("	  O troco sera de: R$",arredondaTroco)
	escreva("\n||---------------------------------------||")
	escreva("\nAtenderar outro cliente ? s para sim e n para nao: ")
	leia(proximoCliente)
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 779; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */