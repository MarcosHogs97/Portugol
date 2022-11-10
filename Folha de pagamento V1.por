programa
{
	inclua biblioteca Matematica-->mat	
	
	funcao real descontoIR(real num1){
		real ir=0.0
		se(num1<=500){
			ir=0.0
		}
		senao se(num1<=1000){
			ir=num1 *5/100
		}
		senao se(num1>1000){
		ir = num1 * 7/100
		}
		retorne ir
	}
	funcao inteiro dependente(inteiro dependentes){
		inteiro dependents
		dependents=dependentes*50
		retorne dependents
	}
	funcao real salarioBruto(real horasTrabalhadas,real salarioHora,inteiro dependentes){
		real salarioB
		salarioB=(horasTrabalhadas*salarioHora)+(50*dependentes)
		retorne salarioB
	}
	funcao real descontoINSS(real salarioB){
		real inss
		se(salarioB<=1000){
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
	funcao inicio()
	{
	cadeia funcionario
	real salarioL=0.0,salarioH=0.0,salarioB=0.0,horasT=0.0,ir=0.0,inss=0.0
	inteiro dependentes,dependents

	//entradas
	escreva("Informe o nome do funcionario:\t")
	leia(funcionario)
	limpa()
	escreva("Informe o salario hora:\t")
	leia(salarioH)
	limpa()
	escreva("Informe as horas trabalhadas:\t")
	leia(horasT)
	limpa()
	escreva("Informe a quantidade de dependentes:\t")
	leia(dependentes)
	limpa()
	//funcoes
   	salarioB=salarioBruto(horasT, salarioH, dependentes)
	ir=descontoIR(salarioB)
	ir=mat.arredondar(ir, 2)
	inss=descontoINSS(salarioB)
	inss=mat.arredondar(inss, 2)
	salarioL=salarioLiquido(salarioB, inss, ir)
	salarioL=mat.arredondar(salarioL, 2)
	dependents=dependente(dependentes)
	//Saidas
	escreva("Nome do Funcionario:\t",funcionario)
	escreva("\nHoras trabalhadas:\t",horasT)
	escreva("\nSalarios Horas:\t\t","R$: ",salarioH)
	se(dependentes>=1){
	escreva("\nDependentes:\t\t",dependentes)
	}
	escreva("\nSalario:\t\t","R$: ",salarioH*horasT)	
	se(dependents>=1){
	escreva("\nAdicional dependentes:\t","R$: ",dependents)
	}	
	escreva("\nSalario Bruto:\t\t","R$: ",salarioB)
	escreva("\nDesconto INSS:\t\t","R$: ",inss)
	escreva("\nDesconto IR:\t\t","R$: ",ir)
	escreva("\nSalario Liquido:\t","R$: ",salarioL)
	escreva("\n=======================================")
	}
}
	cadeia funcionario
	real salarioL=0.0,salarioH=0.0,salarioB=0.0,horasT=0.0,ir=0.0,inss=0.0
	inteiro dependentes,dependents
	
	escreva("Informe o nome do funcionario:\t")
	leia(funcionario)
	limpa()
	escreva("Informe o salario hora:\t")
	leia(salarioH)
	limpa()
	escreva("Informe as horas trabalhadas:\t")
	leia(horasT)
	limpa()
	escreva("Informe a quantidade de dependentes:\t")
	leia(dependentes)
	limpa()

   	salarioB=salarioBruto(horasT, salarioH, dependentes)
	ir=descontoIR(salarioB)
	inss=descontoINSS(salarioB)
	salarioL=salarioLiquido(salarioB, inss, ir)
	salarioL=mat.arredondar(salarioL, 2)
	dependents=dependente(dependentes)
	
	escreva("Nome do Funcionario:\t",funcionario)
	escreva("\nHoras trabalhadas:\t",horasT)
	escreva("\nSalarios Horas:\t\t",salarioH)
	escreva("\nDependentes:\t\t",dependentes)
	escreva("\nSalario:\t\t",salarioH*horasT)
	se(dependentes>=1){
	escreva("\nAdicional dependentes:\t",dependentes)
	}
	escreva("\nSalario Bruto:\t\t",salarioB)
	escreva("\nDesconto INSS:\t\t",inss)
	escreva("\nDesconto IR:\t\t",ir)
	escreva("\nSalario Liquido:\t",salarioL)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1956; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
