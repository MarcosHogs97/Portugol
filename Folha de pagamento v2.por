programa
{	//Biblioteca
	inclua biblioteca Tipos-->tp
	inclua biblioteca Matematica-->mat	
	//funcoes
	funcao real descontoIR(real salarioB){
		real ir=0.0
		se(salarioB<=1250){
			ir=0.0
		}
		senao se(salarioB>1250 e salarioB<=2000){
			ir=salarioB *5/100
		}
		senao se(salarioB>2000.1){
		ir = salarioB * 7/100
		}
		retorne ir
	}
	funcao inteiro dependente(inteiro dependentes){
		inteiro dependents
		dependents=dependentes*50
		retorne dependents
	}	
	funcao real salarioBruto(real valorSetor, real horasExtras,inteiro dependentes){
		real salarioB
		salarioB=valorSetor+horasExtras+dependentes
		retorne salarioB
	}
	funcao real descontoINSS(real salarioB){
		real inss
		se(salarioB<=1250){
			inss=salarioB*8.5/100
		}
		senao{
			inss=salarioB*9/100			
		}
		retorne inss
			}
	funcao real salarioLiquido(real salarioB, real inss, real ir){
		real salarioL
		salarioL=salarioB-inss-ir
		retorne salarioL
	}
	funcao real hora_Extra(real horasTrabalhadas,real horasMes,real valorSetor){
			real valorHoraExtra=0.0,HoraExtra=0.0
			se(horasTrabalhadas>=horasMes){
				HoraExtra=horasTrabalhadas-horasMes
				valorHoraExtra=(valorSetor/220)*HoraExtra
		
				retorne valorHoraExtra
			}senao{
				retorne valorHoraExtra
			}
	}
	funcao real quantidadeHorasExtras(real horasTrabalhadas,real horasMes){
			real horasExtras=0.0
			horasExtras=horasTrabalhadas-horasMes
			retorne horasExtras
	}
	funcao real valor_Setor(inteiro setor){
			real valorSetor=0.0
			se(setor==6){
				valorSetor=2470.40}
				senao se(setor==5){
				valorSetor=2700.50
				}
				senao se(setor==4){
				valorSetor=3400.50
				}
				senao se(setor==3){
				valorSetor=2300.0
				}
				senao se(setor==2){
				valorSetor=3110.90
				}
				senao se(setor==1){
				valorSetor=2890.50
				}
			retorne valorSetor
	}
	funcao cadeia nome_setor(inteiro setor){
				cadeia nomeSetor=" "
			se(setor==6){
				nomeSetor="Operacional"}
				senao se(setor==5){
				nomeSetor="Logística e transporte"
				}
				senao se(setor==4){
				nomeSetor="TI"
				}
				senao se(setor==3){
				nomeSetor="Financeiro"
				}
				senao se(setor==2){
				nomeSetor="Comercial"
				}
				senao se(setor==1){
				nomeSetor="Administrativo"
				}
			retorne nomeSetor	
	}
	funcao real salario_Hora(real salarioB,real horasMes){
		real salarioHora=0.0
		salarioHora=salarioB/horasMes
		retorne salarioHora
	}
	funcao inicio()
	{	//variaveis
		const real horasMes=220.0
		cadeia funcionario[25],nomeSetor[25]
		real valorSetor[25],salarioB[25],valorHoraExtra[25],salarioL[25],descINSS[25],descIR[25],setor[25],horasTrabalhadas[25],horasExtras[25],salarioHora[25]
		inteiro n=1,addDependentes[25],setores[25],dependentes[25],quantidadeF
		//Entrada
		escreva("Informe a quantidade de funcionarios de no maximo 25:\t")
		leia(quantidadeF)
		limpa()
			para(inteiro l=0;l<=quantidadeF-1;l++){				
				escreva("\nInforme nome do ",n,"° funcionario:\t")
				leia(funcionario[l])
				limpa()
				faca{
					escreva("\nInforme o sentor: 1-Administrativo 2-Comercial 3-Financeiro 4-TI 5-Logística e transporte 6-Operacional")
					escreva("\n")
					leia(setores[l])
					limpa()
					}enquanto(setores[l] !=1 e setores[l] !=2 e setores[l] !=3 e setores[l] !=4 e setores[l] !=5 e setores[l] !=6)
				
				faca{
					escreva("\nInforme a quantidade de hora trabalhada(no minimo 220):\t")
					leia(horasTrabalhadas[l])
					limpa()
					}enquanto(horasTrabalhadas[l]<horasMes)
				escreva("\nInforme a quantidade de dependentes:\t")
				leia(dependentes[l])
				limpa()
				n=n+1
				}
		//calculos e arredondamentos
		para(inteiro l=0;l<=quantidadeF-1;l++){				
			valorSetor[l]=valor_Setor(setores[l])
			valorHoraExtra[l]=hora_Extra(horasTrabalhadas[l], horasMes, valorSetor[l])
			salarioB[l]=salarioBruto(valorSetor[l], valorHoraExtra[l], dependentes[l])
			salarioB[l]=mat.arredondar(salarioB[l], 2)
			descINSS[l]=descontoINSS(salarioB[l])
			descINSS[l]=mat.arredondar(descINSS[l], 2)
			descIR[l]=descontoIR(salarioB[l])
			descIR[l]=mat.arredondar(descIR[l], 2)
			salarioL[l]=salarioLiquido(salarioB[l], descINSS[l], descIR[l])
			salarioL[l]=mat.arredondar(salarioL[l], 2)
			addDependentes[l]=dependente(dependentes[l])
			nomeSetor[l]=nome_setor(setores[l])
			horasExtras[l]=quantidadeHorasExtras(horasTrabalhadas[l], horasMes)
			salarioHora[l]=salario_Hora(salarioB[l], horasMes)
			salarioHora[l]=mat.arredondar(salarioHora[l], 2)
		//saida	
		escreva("\nNome do funcionario:\t\t",funcionario[l])
		escreva("\nSetor:\t\t\t\t",nomeSetor[l])
		escreva("\nSalario:\t\t\t","R$: ",valorSetor[l])
		escreva("\nHoras trabalhadas:\t\t",horasTrabalhadas[l]," Horas")
		escreva("\nSalario hora:\t\t\t","R$: ",salarioHora[l])
		se(dependentes[l]>=1){
			escreva("\nDependentes:\t\t\t",dependentes[l])
			}
		se(dependentes[l]>=1){
			escreva("\nAdicional dependentes:\t\t","R$: ",addDependentes[l])
			}
		se(horasTrabalhadas[l]>horasMes){
			escreva("\nHoras extras:\t\t\t",horasExtras[l]," Horas")
				}
		escreva("\nSalario bruto:\t\t\t","R$: ",salarioB[l])
		escreva("\nDesconto INSS:\t\t\t","R$: ",descINSS[l])
		escreva("\nDesconto IR:\t\t\t","R$: ",descIR[l])
	 	escreva("\nSalario liquido:\t\t","R$: ",salarioL[l])
		escreva("\n-----------------------------------------------------")
			}
	escreva("\n=========================FIM=========================")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 4398; 
 * @DOBRAMENTO-CODIGO = [5, 18, 23, 28, 38, 43, 54, 59, 80, 101];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */