
	--- funções do jogador
	jogador={}

	function jogador:criarJogador()
	nJogador = {nome = " ", jogada = " ", pontos = 0}

	return nJogador
	end

	jogador1 = jogador:criarJogador()
	jogador2 = jogador:criarJogador()

	jogador1.jogada = " x"
	jogador2.jogada = " o"



	--- Funções tabuleiro

	tabuleiro = {}

	function tabuleiro:gerar()

		for i = 1, 3 do
			tabuleiro[i] = {}

			for j = 1, 3 do
				tabuleiro[i][j] = " "
			end
		end

	end

tabuleiro:gerar()
	------>


	function tabuleiro:visualizar()

		for i = 1, 3 do
			draw = " "

			for j = 1, 3 do

				if j ~= 3 then
				draw = draw .. tabuleiro[i][j] .."|"

				else
				draw = draw .. tabuleiro[i][j]

				end
			end
			print(draw)

				if i < 3 then
				print("-------")
				end
		end
	end


	------->

	function tabuleiro:iniciarjogo()
	print("Bem vindo ao joga da velha.\n")

	print("Jogador x digite seu nome:")
		jogador1.nome = io.read()

		print("\n")

	print("Jogador o digite seu nome:")
		jogador2.nome = io.read()

		print("\n")

	end

		--- Verifica o vencedor
	function tabuleiro:checarVencedor(var)

		if tabuleiro[1][1] == var and  tabuleiro[1][2] == var and tabuleiro[1][3] == var then
			print("Jogador " .. var .. " Venceu")
		tabuleiro:novojogo()

		elseif tabuleiro[2][1] == var and  tabuleiro[2][2] == var and tabuleiro[2][3] == var then
			print("Jogador " .. var .. " Venceu")
		tabuleiro:novojogo()

		elseif tabuleiro[3][1] == var and  tabuleiro[3][2] == var and tabuleiro[3][3] == var then
			print("Jogador " .. var .. " Venceu")
		tabuleiro:novojogo()


		---checa colunas
		elseif tabuleiro[1][1] == var and  tabuleiro[2][1] == var and tabuleiro[3][1] == var then
			print("Jogador " .. var .. " Venceu")
		tabuleiro:novojogo()

		elseif tabuleiro[1][2] == var and  tabuleiro[2][2] == var and tabuleiro[3][2] == var then
			print("Jogador " .. var .. " Venceu")
		tabuleiro:novojogo()

		elseif tabuleiro[1][3] == var and  tabuleiro[2][3] == var and tabuleiro[3][3] == var then
			print("Jogador " .. var .. " Venceu")
		tabuleiro:novojogo()


		---checa diagonais
		elseif tabuleiro[1][1] == var and  tabuleiro[2][2] == var and tabuleiro[3][3] == var then
			print("Jogador " .. var .. " Venceu")
		tabuleiro:novojogo()

		elseif tabuleiro[1][3] == var and  tabuleiro[2][2] == var and tabuleiro[3][1] == var then
			print("Jogador " .. var .. " Venceu")
		tabuleiro:novojogo()
		end

	end



	function tabuleiro:checarEmpate(nj)

	if nj == 10 then

	print("Jogo empatado")

	tabuleiro:novojogo()

	end

	end

	------>

	function tabuleiro:novojogo()



	print("Fim de jogo.\nDeseja jogar novamente?\n ")


	print(" Digite 1: sim ou 2:não")
	num = io.read("*number")


		if num == 1 then
		tabuleiro:gerar()
		tabuleiro:visualizar()
		njogada = 1
		tabuleiro:iniciarjogada()

		elseif num == 2 then

		print("fim")
		njogada = 10

		else

		print("Eu disse 1 ou 2, vai ficar sem jogar!")

		end


	end

	--------------->
		njogada = 1

primav = true
	function tabuleiro:iniciarjogada()
primav = false



		while njogada <= 9 do

			if njogada % 2 == 0 then
				print("Jogador " .. jogador1.nome .. " jogue:(x)")
				print("digite a linha:")
					line = io.read('*number')
				print("digite a coluna:")
					colu = io.read('*number')

if type(line) == "number" and type(colu) == "number" then


					if line > 0 and line < 10 then
						if(tabuleiro[line][colu] == " ")then
							tabuleiro[line][colu] = "x"
							tabuleiro:visualizar()
							tabuleiro:checarVencedor("x")
							njogada = njogada + 1

						else

						print("local ocupado, Jogue novamente.\n")

						end

					else
					 print("#ERRO!! Você digitou algo diferente de 1 a 9!")
					end
else
print("\nTu digitou letra.\n")
io.read(1)
end
			else
				print("Jogador " .. jogador2.nome .. " jogue:(o)")
				print("digite a linha:")
					line = io.read('*number')
				print("digite a coluna:")
					colu = io.read('*number')

if type(line) == "number" and type(colu) == "number" then

					if line > 0 and line < 10 then
						if(tabuleiro[line][colu] == " ")then
							tabuleiro[line][colu] = "o"
							tabuleiro:visualizar()
							tabuleiro:checarVencedor("o")
							njogada = njogada + 1

						else

						print("\nlocal ocupado, Jogue novamente.\n")

						end

					else
					 print("#ERRO!! Você digitou algo diferente de 1 a 9!")
					end
else
print("\nTu digitou letra.\n")
io.read(1)
end
			end

		end
		tabuleiro:checarEmpate(njogada)


	end

claro = 2
	if primav then

	tabuleiro:iniciarjogo()

	tabuleiro:visualizar()

	tabuleiro:iniciarjogada()

	end

