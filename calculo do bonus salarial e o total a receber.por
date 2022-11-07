programa
{	
	inclua biblioteca Matematica -->mat	
	
	funcao inicio()
	{	//variaveis
		cadeia primeiro_nome, segundo_nome
		real salario, total_vendas, bonus_salario, arredonda_total, arredonda_bonus

			//entrada de nome
		 escreva("insira seu primeiro nome: ")
		 leia(primeiro_nome)
			
			//entrada de sobrenome
		 escreva("insira seu seundo nome: ")
		 leia(segundo_nome)
			
			//entrada de salario
		 escreva("informe seu salario: ")
		 leia(salario)
			
			//entrada de lucro total de vendas
		 escreva("informe o total de lucro de vendas: ")
		 leia(total_vendas)

		 	//calculo de 15% para bonus salarial
		 bonus_salario= total_vendas*0.15
			
			//saida nome e sobrenome
		 escreva("//Nome: ",primeiro_nome," //Sobrenome: ",segundo_nome)
			
			//arredondamento total e bonus salarial
		 arredonda_total=mat.arredondar(salario+bonus_salario, 2)
		 arredonda_bonus=mat.arredondar(bonus_salario, 2)
		 	
		 	//saida salario, bonus salarial e total
		 escreva("\n//Salario: R$",salario," \n//Bonus Salarial: R$",arredonda_bonus," \n//Total a Receber: R$",arredonda_total)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 958; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */