programa
{
	
	funcao inicio()
	{	//---------------------------------------
		real totalPedido=0.0
		cadeia nome,bebida ="",pizza =""		
		inteiro opcao,opcaoPizza,opcaoPedidoSair,saborPizza, opcaoBebida_S_N=0,qualBebida=0
		caracter tamanho,queijo,pepperoni,finalizarPedido

		//---------------------------------------

		//entrada
		escreva("Olá, qual é o seu nome? ")
		leia(nome)
		limpa()
		escreva("\nOlá ",nome," gostaria de fazer um pedido? (1) para Sim (2) para Nao \t:")
		leia(opcaoPedidoSair)
		limpa()

		escolha(opcaoPedidoSair)
			{
			caso 1:
			faca{
			//tamanho da pizza
			escreva("(P)Pizza Pequena: R$15.00,	(M)Pizza Media: R$20.00,	(G)Pizza Grande: R$25.00 	(F)Pizza Familia: R$30.00")
			escreva("\nQual o tamanho da pizza que deseja ? \t:")
			leia(tamanho) 
			}enquanto(tamanho !='p' e tamanho !='P' e tamanho !='m' e tamanho !='M' e tamanho !='g' e tamanho !='G' e tamanho !='f' e tamanho !='F')
			limpa()
		//calculo tamanho da pizza
		se(tamanho == 'P' ou tamanho == 'p'){
		totalPedido=15.0
		}
		senao se(tamanho == 'M' ou tamanho == 'm'){
		totalPedido=20.0
		}
		senao se(tamanho == 'G' ou tamanho == 'g'){
		totalPedido=25.0
		}
		senao se(tamanho == 'F' ou tamanho == 'f'){
		totalPedido=35.0
		}
				//sabor da pizza
			faca{
			escreva(" qual o sabor da sua pizza? (1) - 4Queijos, (2) - Calabresa, (3) - Portuguesa, (4) - Carne de Sol, (5) Mussarela \t:")		
			leia(opcaoPizza)
			}enquanto(opcaoPizza !=1 e opcaoPizza !=2 e opcaoPizza !=3 e opcaoPizza !=4 e opcaoPizza !=5)
			se(opcaoPizza == 1){
			pizza="4Queijos"
			}
			senao se(opcaoPizza == 2){
			pizza="Calabresa"
			}
			senao se(opcaoPizza == 3){
			pizza="Portuguesa"
			}
			senao se(opcaoPizza == 4){
			pizza="Carne de Sol"
			}
			senao se(opcaoPizza == 5){
			pizza="Mussarela"
			}
			limpa()
			
				//pepperoni
		escreva("Gostaria decressenta Pepperoni ? (S/N)\t")
		leia(pepperoni)
		limpa()
		se((pepperoni == 's' ou pepperoni == 'S') e totalPedido == 15.0){
		totalPedido=totalPedido+2
		}
		senao se((pepperoni == 's' ou pepperoni == 'S') e totalPedido == 35.0){
		totalPedido=totalPedido+4
		}
		senao se(pepperoni == 's' ou pepperoni == 'S'){
		totalPedido=totalPedido+3
		}
		
		//queijo extra
		escreva("Gostaria decressenta Queijo Extra ? (S/N)\t")
		leia(queijo)
		limpa()
		se(queijo == 's' ou queijo == 'S'){
		totalPedido=totalPedido+1.0
		}
		//escolha de bebida
		escreva("gostaria de uma bebida?	(0) para Sim	(1) para Nao \t:")
		leia(opcaoBebida_S_N)
		limpa()
			escolha(opcaoBebida_S_N){
				caso 0:{
		faca{				
		//qual bebida
		escreva("\n(1)Agua: R$2.00,	(2)Coca-Cola 500ml: R$5.00,	(3)Coca-Cola 1L: R$7.00 	(4)Coca-Cola 2L: R$9.00,	(5)Suco de Laranja 500ml: R$4.00	(6)Suco de Maracuja 500ml: R$4.00")
		escreva("\n(7)Guarana 1l: R$6.00,	(8)Guarana 2l: R$8.00,	(9)Fanta Laranja 1L: R$6.00	(10)Fanta Laranja 2L: R$8.00,	(11)Fanta Uva 1L: R$6.00	(12)Fanta Uva 2L: R$8.00 ")
		escreva("\nQual bebida gostaria ?\t:")
		leia(qualBebida)
		limpa()
		}enquanto(qualBebida !=1 e qualBebida !=2 e qualBebida !=3 e qualBebida !=4 e qualBebida !=5 e qualBebida !=6 e qualBebida !=7 e qualBebida !=8 e qualBebida !=9 e qualBebida !=10 e qualBebida !=11 e qualBebida !=12)
			se(qualBebida == 1){
			bebida="Agua"
			totalPedido=totalPedido+2.00
			}
			senao se(qualBebida == 2){
			bebida="Coca-Cola 500ml"
			totalPedido=totalPedido+5.00
			}
			senao se(qualBebida == 3){
			bebida="Coca-Cola 1L"
			totalPedido=totalPedido+7.00
			}
			senao se(qualBebida == 4){
			bebida="Coca-Cola 2L"
			totalPedido=totalPedido+9.00
			}
			senao se(qualBebida == 5){
			bebida="Suco de Laranja 500ml"
			totalPedido=totalPedido+4.00
			}
			senao se(qualBebida == 6){
			bebida="Suco de Maracuja 500ml"
			totalPedido=totalPedido+4.00
			}
			senao se(qualBebida == 7){
			bebida="Guarana 1l"
			totalPedido=totalPedido+6.00
			}
			senao se(qualBebida == 8){
			bebida="Guarana 2l"
			totalPedido=totalPedido+8.00
			}
			senao se(qualBebida == 9){
			bebida="Fanta Laranja 1L"
			totalPedido=totalPedido+6.00
			}
			senao se(qualBebida == 10){
			bebida="Fanta Laranja 2L"
			totalPedido=totalPedido+8.00
			}
			senao se(qualBebida == 11){
			bebida="Fanta Uva 1L"
			totalPedido=totalPedido+6.00
			}
			senao se(qualBebida == 12){
			bebida="Fanta Uva 2L"
			totalPedido=totalPedido+8.00
			}
				escreva("Seu pedido foi Uma pizza")			
				escreva("\ntamanho: \t\t\t",tamanho)
				escreva("\nSabor : \t\t\t",pizza)
				escreva("\nBebida: \t\t\t", bebida, "\n")
				se (pepperoni == 'S' ou pepperoni == 's'){
					escreva("\nMais adcional de Pepperoni")
				}
				se (queijo == 'S' ou queijo == 's'){
					escreva("\nMais adcional de Queijo Extra")
				}
				escreva("\nO total a ser pago é de :R$",totalPedido)
				
				
				escreva("\nGostaria de Finalizar seu Pedido? (S/N) \t")
				leia(finalizarPedido)
				limpa()
				se(finalizarPedido == 's' ou finalizarPedido == 'S'){
				escreva("\nSeu pedido esta sendo preparado, Obrigado pela preferencia!!")
				}
				
				
				pare
				}
				caso 1:{
				escreva("Seu pedido foi Uma pizza")			
				escreva("\ntamanho: \t\t\t",tamanho)
				escreva("\nSabor : \t\t\t",pizza)
				se (pepperoni == 'S' ou pepperoni == 's'){
					escreva("Mais adcional de Pepperoni\n")
				}
				se (queijo == 'S' ou queijo == 's'){
					escreva("Mais adcional de Queijo Extra\n")
				}
				escreva("\nO total a ser pago é de :R$",totalPedido)
				escreva("\nGostaria de Finalizar seu Pedido? (S/N) \t")
				leia(finalizarPedido)
				limpa()
				se(finalizarPedido == 's' ou finalizarPedido == 'S'){
				escreva("\nSeu pedido esta sendo preparado, Obrigado pela preferencia!!")
				}
				
				pare
				}
			}
			
			
			
			
			
			
			
			
			
			pare
			caso 2:
			{	escreva("Obrigado e volte semrpe")
				}
			pare
			}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 4840; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */