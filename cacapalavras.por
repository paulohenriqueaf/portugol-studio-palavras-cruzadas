programa
{
inclua biblioteca Util --> u
inclua biblioteca Texto --> t
inclua biblioteca Tipos --> tipos

const inteiro SIZE = 10
const inteiro WORDS = 5
const inteiro MAX_LENGTH = 5

caracter grid[SIZE][SIZE]
caracter words[WORDS][MAX_LENGTH] = {{'S','T','A','T','E'},{'G','I','A','N','T'},{'A','P','P','L','E'},{'H','O','U','S','E'},{'W','A','T','C','H'}}
cadeia wordsFull[WORDS] = {"STATE","GIANT","APPLE","HOUSE","WATCH"}

inteiro wordsFound[WORDS]

inteiro directions[8][2] = {
    {1, 0},     // direita
    {1, -1},    // direita pra cima
    {0, -1},    // pra cima
    {-1, -1},   // esquerda pra cima
    {-1, 0},    // esquerda
    {-1, 1},    // esquerda pra baixo
    {0, 1},     // pra baixo
    {1, 1}      // direita pra baixo
}

funcao vazio initializeGrid()
{
    inteiro i, j
    para (i = 0; i < SIZE; i++) {
        para (j = 0; j < SIZE; j++) {
            grid[i][j] = ' '
        }
    }
}

/*funcao vazio fillGridWithWords() { 
    inteiro i
    para (i = 0; i < WORDS; i++) {
        inteiro len = 5
        logico placed = falso

        enquanto (nao (placed)) {
            inteiro dir = u.sorteia(1,10) % 8
            inteiro row = u.sorteia(1,10) % SIZE
            inteiro col = u.sorteia(1,10) % SIZE
            inteiro j, r, c

            se (col + directions[dir][0] * len < 0 ou
                col + directions[dir][0] * len >= SIZE ou
                row + directions[dir][1] * len < 0 ou
                row + directions[dir][1] * len >= SIZE) {
                //continue
            }
            
		  r = row
		  c = col            
            para (j = 0; j < len; j++) {
                se (grid[r][c] != ' ' e grid[r][c] != words[i][j]) {
                    pare
                }
                r += directions[dir][1]
                c += directions[dir][0]
            }

            se (j == len) {
            	 r = row
		  	 c = col
                para (j = 0; j < len; j++) {
                    grid[r][c] = words[i][j]
                    r += directions[dir][1]
                    c += directions[dir][0]
                }
                placed = verdadeiro
            }
        }
    }
}*/

/*funcao vazio fillGridWithWords (caracter grid[SIZE][SIZE], caracter words[WORDS][MAX_LENGTH]) {
    inteiro i, j, len, placed, dir, row, col

    para (i = 0; i < WORDS; i++) {
        len = 5
        placed = 0

        enquanto (placed == 0) {
            dir = u.sorteia(1,10) % 8
            row = u.sorteia(1,10) % SIZE
            col = u.sorteia(1,10) % SIZE

            se ((col + directions[dir][0] * len >= 0) e
                (col + directions[dir][0] * len < SIZE) e
                (row + directions[dir][1] * len >= 0) e
                (row + directions[dir][1] * len < SIZE)) {
                inteiro valid = 1;
                se (j = 0; j < len; j++) {
                    se ((grid[row + directions[dir][1] * j][col + directions[dir][0] * j] != ' ') e
                        (grid[row + directions[dir][1] * j][col + directions[dir][0] * j] != words[i][j])) {
                        valid = 0
                        pare
                    }
                }
                se (valid == 1) {
                    para (j = 0; j < len; j++) {
                        grid[row + directions[dir][1] * j][col + directions[dir][0] * j] = words[i][j];
                    }
                    placed = 1;
                }
            }
        }
    }
}
*/

funcao vazio fillGridWithWords() {
    inteiro i, j, len, placed, dir, row, col

    para (i = 0; i < WORDS; i++) {
        len = 5
        placed = 0

        enquanto (placed == 0) {
            dir = u.sorteia(1,10) % 8
            row = u.sorteia(1,10) % SIZE
            col = u.sorteia(1,10) % SIZE

            se ((col + (directions[dir][0] * len) >= 0) e (col + (directions[dir][0] * len) < SIZE)) {
                se ((row + (directions[dir][1] * len) >= 0) e (row + (directions[dir][1] * len) < SIZE)) {
                    inteiro valid = 1
                    para (j = 0; j < len; j++) {
                        se ((grid[row + (directions[dir][1] * j)][col + (directions[dir][0] * j)] != ' ') e
                            (grid[row + (directions[dir][1] * j)][col + (directions[dir][0] * j)] != words[i][j])) {
                            valid = 0
                            pare
                        }
                    }
                    se (valid == 1) {
                        para (j = 0; j < len; j++) {
                            grid[row + (directions[dir][1] * j)][col + (directions[dir][0] * j)] = words[i][j]
                        }
                        placed = 1
                    }
                }
            }
        }
    }
}

funcao caracter whichLetter(){
	inteiro LetterDraw = u.sorteia(1, 26)
	caracter Draw = ' '
	
	escolha(LetterDraw){
			caso 1:
				Draw = 'A'
				pare
		
			caso 2:
				Draw = 'B'
				pare
		
			caso 3:
				Draw = 'C'
				pare
		
			caso 4:
				Draw = 'D'
				pare
		
			caso 5:
				Draw = 'E'
				pare
		
			caso 6:
				Draw = 'F'
				pare
		
			caso 7:
				Draw = 'G'
				pare
		
			caso 8:
				Draw = 'H'
				pare
		
			caso 9:
				Draw = 'I'
				pare
		
			caso 10:
				Draw = 'J'
				pare
		
			caso 11:
				Draw = 'K'
				pare
		
			caso 12:
				Draw = 'L'
				pare
		
			caso 13:
				Draw = 'M'
				pare
		
			caso 14:
				Draw = 'N'
				pare
		
			caso 15:
				Draw = 'O'
				pare
		
			caso 16:
				Draw = 'P'
				pare
		
			caso 17:
				Draw = 'Q'
				pare
		
			caso 18:
				Draw = 'R'
				pare
		
			caso 19:
				Draw = 'S'
				pare
		
			caso 20:
				Draw = 'T'
				pare
		
			caso 21:
				Draw = 'U'
				pare
		
			caso 22:
				Draw = 'V'
				pare
		
			caso 23:
				Draw = 'W'
				pare
		
			caso 24:
				Draw = 'X'
				pare
		
			caso 25:
				Draw = 'Y'
				pare
		
			caso 26:
				Draw = 'Z'
				pare
		
			caso contrario:
				Draw = 'X'	
				pare
			}
		retorne Draw
}

funcao vazio fillGridWithRandomLetters() {
    inteiro i, j
    para (i = 0; i < SIZE; i++) {
        para (j = 0; j < SIZE; j++) {
            se (grid[i][j] == ' ') {
                grid[i][j] = whichLetter()
            }
        }
    }
}

funcao vazio displayGrid() {
    inteiro i, j
    para (i = 0; i < SIZE; i++) {
        para (j = 0; j < SIZE; j++) {
            escreva(grid[i][j]," ")
        }
        escreva("\n")
    }
}

funcao inteiro checkWord(cadeia word, inteiro row, inteiro col) {
    inteiro i
    para (i = 0; i < WORDS; i++) {
        se (word == wordsFull[i]) {
            se (grid[row][col] == t.obter_caracter(word,0)) {
                wordsFound[i] = 1
                retorne 1
            }
            senao {
                escreva("A palavra ", word," existe na grade, mas começa em uma posição diferente.\n")
                retorne -1
            }
        }
    }
    retorne 0
}

funcao inteiro checkWin() {
    inteiro i, count = 0
    para (i = 0; i < WORDS; i++) {
        se (wordsFound[i] == 1) {
            count++
        }
    }
    retorne count
}

funcao inicio() {
    //srand(time(NULL))
    escreva("Bem vindo ao Caça palavras em inglês, selecionamos 5 palavras para você encontrar em inglês nessa grade, são palavras simples!\n Você vai procurar a palavra, digitar a palavra que você encontrou e depois o jogo vai te perguntar onde está localizada a palavra. Que comece o desafio!\n As palavras são: STATE, GIANT, APPLE, HOUSE, WATCH. Mas não pense que vai ser fácil achá-las, é aí que está o desafio\n\n\n")
  
    initializeGrid()
    fillGridWithWords()
    fillGridWithRandomLetters()
    displayGrid()
    escreva("\n") // para dar um espaço (me da agonia)

    inteiro remainingWords = WORDS
    cadeia word
    logico win = falso
    inteiro row, col

    enquanto (remainingWords > 0) {
        escreva("Digite uma palavra para procurar: ")
        leia(word)
	   word = t.caixa_alta(word)
        escreva("Digite a linha e coluna da primeira letra da palavra ",word,". (no formato L Enter C , linha e coluna separados por Enter):\n")
        leia(row,col)

        inteiro result = checkWord(word, row - 1, col - 1)

        se (result == 1) {
            remainingWords = WORDS - checkWin()
            escreva("Parabéns! Você encontrou a palavra ",word,". Faltam ",remainingWords, " palavras para encontrar.\n")
        }
        senao se (result == -1) {
            remainingWords = WORDS - checkWin()
            escreva("A palavra ",word," está na grade, mas começa em uma posição diferente. Faltam ",remainingWords," palavras para encontrar.\n")
        }
        senao {
            escreva("A palavra ",word," não foi encontrada.\n")
        }

        se (remainingWords == 0) {
            escreva("Parabéns! Você encontrou todas as palavras. Você ganhou!\n")
            win = verdadeiro
            pare
        }
    }

    se (nao(win)) {
        escreva("Obrigado por jogar! Tente novamente.\n")
    }

}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 4765; 
 * @DOBRAMENTO-CODIGO = [37, 80];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */