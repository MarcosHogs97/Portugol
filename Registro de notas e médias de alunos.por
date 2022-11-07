programa
{
	
	funcao inicio()
	{	//Variaveis
		cadeia alunos[10]
		real notas[10][5]
		inteiro l=0,c=0,n=0,opcao=0
		//entrada aluno e notas
		faca{
		n=n+1
		escreva("Informe o nome do ",n,"º aluno:\t")
		leia(alunos[l])
		limpa()
		escreva("Informe a 1ª nota:\t")
		leia(notas[l][0])
		limpa()
		escreva("Informe a 2ª nota:\t")
		leia(notas[l][1])
		limpa()		
		escreva("Informe a 3ª nota:\t")
		leia(notas[l][2])
		limpa()		
		escreva("Informe a 4ª nota:\t")
		leia(notas[l][3])
		limpa()
			//calculo da media		
			notas[l][4]=(notas[l][0]+notas[l][1]+notas[l][2]+notas[l][3])/4		
			//Muda o valor da linha da matriz toda vez que repetir
			l=l+1	
		//repeticao
		escreva("Gostaria de adicionar mais algum Aluno? 1-Sim 2-Nao\t")
		leia(opcao)
		limpa()
		}enquanto(opcao==1)		
				
	//Saida
	enquanto(c<=n-1){			
	para(;c<=n-1;c++){			
	escreva("\nAluno: ",alunos[c],"\t1ª Nota: ",notas[c][0],"\t2ª Nota: ",notas[c][1],"\t3ª Nota: ",notas[c][2],"\t4ª Nota :",notas[c][3],"\t\tMedia: ",notas[c][4])
		se(notas[c][4]>9.9){
			escreva("\tAprovado com Distinção e Louvor")
		}
		senao se(notas[c][4]>8.9){
			escreva("\tAprovado com Distinção")
		}
		senao se(notas[c][4]>5.9){
			escreva("\t\tAprovado")
		}
		senao se(notas[c][4]>2.9){
			escreva("\t\tRecuperação")
		}
		senao{
			escreva("\t\tReprovado")
		}
	escreva("\n------------------------------------------------------------------------------------------------------------------------------------------")
		}	
	escreva("\n==============================================================FIM=========================================================================")		
}}}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 395; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {alunos, 6, 9, 6}-{notas, 7, 7, 5}-{opcao, 8, 22, 5};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */