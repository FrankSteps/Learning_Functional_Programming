{-
O imposto sobre doações (ITCMD) segue a seguinte tabela progressiva

● 3% (acima de 200 até 2.500 UFP)
● 6% (acima de 2.500 até 12.000 UFP)
● 8% (acima de 12.000 UFP)
A UFP é a Unidade Fiscal Padrão e, atualmente, equivale a R$ 72,61. Defina uma
função que receba como entrada o valor da doação em Reais e calcule o imposto a ser
pago, também em Reais.
Note que a tabela se aplica progressivamente. Assim, por exemplo, se a doação for de
2600 UFP, separamos este valor assim 2600 = 200 + 2300 + 100 e o imposto pago será
0%200 + 3%2300 + 6%100 = 0 + 69 + 6 = 75 UFP.
-}

main :: IO()
main = do 
	let ufp = 30000
	putStrLn("Valor em reais: " ++ show (imposto ufp))

imposto :: Float-> Float 
imposto ufp
	| ufp <= 200   = 0
	| ufp <= 2500  = imposto2 * 72.61
	| ufp <= 12000 = imposto3 * 72.61
	| otherwise    = imposto4 * 72.61
	where 
		faixa3 ufp = 2300 * 0.03
		faixa4 ufp = 2300 * 0.03 + 9500 * 0.06

		imposto2 = (ufp - 200) * 0.03
		imposto3 = faixa3 ufp + (ufp - 2500) * 0.06
		imposto4 = faixa4 ufp + (ufp - 12000) * 0.08



{-

5000 = 200 + 2300 + 2500

2600 = 200 + 2300 + 100
2400 = 200 + 2200
2000 = 200 + 800


	| valor <= 200   = 0
	| valor <= 2500  = 0 + (valor - 200) * 0.03
	| valor <= 12000 = 0 + 2300 * 0.03 + (valor - 2500) * 0.06
	| otherwise      = 0 + 2300 * 0.03 + 9500 * 0.06 + (valor - 12000) * 0.08
-}