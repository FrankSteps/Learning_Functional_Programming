{-
2. Um dado imposto segue a seguinte tabela progressiva
Valor v Imposto

Até RS 1000..........................3%
Acima de RS 1000 e até R$ 5000.......5%
acima de R$ 5000.....................7%

A aplicação desta tabela se dá da seguinte forma. Por exemplo, se o valor for R$
5500, separamos este valor assim 1000 + 4000 + 500 e o imposto pago será
3%1000 + 5%4000 + 7%500 = 30+200+35 = 265. Defina uma função que receba o
valor e devolva o imposto a ser pago.
-}

main :: IO()
main = do 
	let valor = 5500
	print(imposto valor)

-- função responsável pelos cálculos da função progressiva
imposto :: Double -> Double 
imposto valor 
	| valor <= 1000 = valor * 0.03
	| valor <= 5000 = impostoFaixa2
	| otherwise     = impostoFaixa3
	where 
		-- criando as funções para o cálculo dos impostos
		faixa1       = 1000 * 0.03
		faixa2 valor = (valor - 1000) * 0.05
		faixa3 valor = (valor - 5000) * 0.07

		impostoFaixa2 = faixa1 + faixa2 valor               -- <- inserindo o valor na função faixa2 
		impostoFaixa3 = faixa1 + 4000 * 0.05 + faixa3 valor -- <- inserindo o valor na função faixa3






