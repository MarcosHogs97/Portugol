programa
{
	inclua biblioteca Matematica-->mat
		
	funcao inicio()
	{
				//variaveis
		real autonomia_carro= 9.5, distancia_litro, valor_combustivel=4.90, valor_gasto, arredonda_autonomia, gastoCombustivel ,distancia,horasTrabalhadas=0.0
		real horas=0.0,gastoAlimentacao=0.0,gastoHospedagem=0.0,gastoPecas=0.0,valorFonte=140.0,valorProcessador=850.0,valorMemoria=190.0,valorHd=280.0 ,totalGasto=0.0
		caracter opcaoPecaReposicao,opcaoMaisPecas,opcaoAlimentacao,opcaoHospedagem
		inteiro PecaReposicao,quantidadeFonte=0,quantidadePeca=0,quantidadeProcessador=0,quantidadeMemoria=0,quantidadeHd=0
		logico fonte=falso,processador=falso,memoria=falso,hd=falso
		//entrada de distancia
		escreva("informe a distancia que sera percorrida: ")
		leia(distancia)
			//calculo de R$ gasto
		valor_gasto=distancia/autonomia_carro*valor_combustivel
		gastoCombustivel= mat.arredondar(valor_gasto, 2)
			//calculo horas trabalhadas
		escreva("quantas horas trabalhadas serao necessarias: ")
		leia(horas)
		horasTrabalhadas=horas*35.0
		limpa()
			//Alimentacao
			escreva("Avera gostos com alimentaçao ? (S/N):\t")
			leia(opcaoAlimentacao)
			se(opcaoAlimentacao =='S' ou opcaoAlimentacao =='s'){
				escreva("Quanto sera gasto com alimento:\t")
				leia(gastoAlimentacao)
				totalGasto=totalGasto+gastoAlimentacao
				}
			limpa()
			//Hospedagem
			escreva("Avera gostos com Hospedagem ? (S/N):\t")
			leia(opcaoHospedagem)
			se(opcaoHospedagem =='S' ou opcaoHospedagem =='s'){
				escreva("Quanto sera gasto com Hospedagem:\t")
				leia(gastoHospedagem)
				totalGasto=totalGasto+gastoAlimentacao
				}
			limpa()			
		//peças de reposiçao
		escreva("Voce utilizara alguma peça de reposiçao ? (S/N):\t")
		leia(opcaoPecaReposicao)
		limpa()
		se (opcaoPecaReposicao == 'S' ou opcaoPecaReposicao == 's')
		{
		faca{
			faca{		
			escreva("qual peça sera nescessarias?: ")
			escreva("\n(1)-Fonte	(2)-Processado	(3)-Memoria	(4)-HD \t:")
			leia(PecaReposicao)
			limpa()
			se(PecaReposicao == 1){
			fonte=verdadeiro
			escreva("quantas Fontes seram necessarias?:\t")
			leia(quantidadeFonte)
			limpa()
			gastoPecas=gastoPecas+(valorFonte*quantidadeFonte)
			}
			senao se(PecaReposicao == 2){
			processador=verdadeiro
			escreva("quantos Processadores seram necessarios?:\t")
			leia(quantidadeProcessador)
			gastoPecas=gastoPecas+(valorProcessador*quantidadeProcessador)
			}
			senao se(PecaReposicao == 3){
			memoria=verdadeiro
			escreva("quantas Memorias seram necessarias?:\t")
			leia(quantidadeMemoria)
			gastoPecas=gastoPecas+(valorMemoria*quantidadeMemoria)
			}
			senao se(PecaReposicao == 4){
			hd=verdadeiro
			escreva("quantos HDs seram necessaris?:\t")
			leia(quantidadeHd)
			gastoPecas=gastoPecas+(valorHd*quantidadeHd)
			}}enquanto(PecaReposicao !=1 e PecaReposicao!=2 e PecaReposicao!=3 e PecaReposicao!=4)
			escreva("gostaria de adicionar mais alguma peça?(S/N):\t")
			leia(opcaoMaisPecas)
			}enquanto(opcaoMaisPecas !='n'e opcaoMaisPecas !='N')
			limpa()
			//saida com peças de reposisao
			escreva("================DETALHAMENTO=======================")
			escreva("\nKM: ",distancia," despesa de deslocamento \tR$:",gastoCombustivel)
			escreva("\n",horas,"h trabalhadas, total \t\tR$:",horasTrabalhadas)
			se (fonte == verdadeiro ou memoria == verdadeiro ou hd== verdadeiro ou processador== verdadeiro){
		 		escreva("\nPeças de reposição: ")
				se(fonte == verdadeiro){
		 		escreva("\n",quantidadeFonte,"x", " Fonte(s) \tR$:", valorFonte)
		 			se(quantidadeFonte >=2){
		 					escreva("\t Total: R$:",valorFonte*quantidadeFonte)
		 			}}
		 		se(memoria== verdadeiro){
		 		escreva("\n",quantidadeMemoria,"x", " Memória(s) \tR$:", valorMemoria)
		 			 se(quantidadeMemoria >=2){
		 					escreva("\t Total: R$:",valorMemoria*quantidadeMemoria)
		 			 }}
		 		se(processador == verdadeiro){
		 		escreva("\n",quantidadeProcessador,"x", " Processador(es) R$:", valorProcessador)
		 			 se(quantidadeProcessador >=2){
		 					escreva("\t Total: R$:",valorProcessador*quantidadeProcessador)
		 			 }}
		 		se(hd == verdadeiro){
		 		escreva("\n",quantidadeHd,"x", " HD(s) \tR$", valorHd)
		 			 se(quantidadeHd >=2){
		 					escreva("\t\t Total: R$:",valorHd*quantidadeHd)
		 			 }}}
				se(opcaoAlimentacao =='S' ou opcaoAlimentacao =='s'){
					escreva("\nHospedagem: \t\t\t\tR$:",gastoHospedagem)}
				se(opcaoHospedagem =='S' ou opcaoHospedagem =='s'){
					escreva("\nAlimentação: \t\t\t\tR$:",gastoAlimentacao)}
			totalGasto= (gastoAlimentacao + (gastoHospedagem + horasTrabalhadas)) + (gastoCombustivel + gastoPecas)
			totalGasto= mat.arredondar(totalGasto, 2)
			escreva("\nTotal: \t\t\t\t\tR$:",totalGasto)
			escreva("\n=====================FIM===========================")
				
		}senao{
			//saida sem peças de reposisao
			escreva("================DETALHAMENTO=======================")
			escreva("\nKM: ",distancia," despesa de deslocamento \tR$:",gastoCombustivel)
			escreva("\n",horas,"h trabalhadas, total \t\tR$:",horasTrabalhadas)
				se(opcaoAlimentacao =='S' ou opcaoAlimentacao =='s'){
					escreva("\nHospedagem: \t\t\t\tR$:",gastoHospedagem)}
				se(opcaoHospedagem =='S' ou opcaoHospedagem =='s'){
					escreva("\nAlimentação: \t\t\t\tR$:",gastoAlimentacao)}
			totalGasto= gastoAlimentacao + gastoHospedagem + horasTrabalhadas + gastoCombustivel
			totalGasto= mat.arredondar(totalGasto, 2)
			escreva("\nTotal: \t\t\t\t\tR$:",totalGasto)
			escreva("\n=====================FIM===========================")
		}}}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 4735; 
 * @DOBRAMENTO-CODIGO = [117];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */