Algoritmo "AVALIAÇÃO_LPA_2"
//NOME: Lucas Crespo Rodrigues
//MATRICULA:01419654
//PROFESSOR: José Mario
//DISCIPLINA:Logica de Programação Algoritmica
//TURNO: Noite
tipo
   cliente = registro
      nome : caractere
      atd : caractere
      valor : real
      numpedido : inteiro
   fimregistro

procedimento op_inserir
inicio
   se num < max  entao
      se fim = max entao
         fim := fim - max
      fimse
      cont := cont + 1
      fim := fim + 1
      escreva ("Informe o número do pedido: ")
      leia (dados_cli.numpedido)
      escreva ("Informe o nome do cliente: ")
      leia (dados_cli.nome[cont])
      escreva ("Informe o tipo de atendimento: ")
      leia (dados_cli.atd[cont])
      escreva ("Informe o valor do pedido: ")
      leia (dados_cli.valor[cont])
      pedido[fim] := dados_cli.numpedido
      num := num + 1
      valor_final := valor_final+dados_cli.valor
   senao
      escreval ("Fila Cheia")
      pausa
   fimse
   limpatela
fimprocedimento

procedimento op_atender
inicio
   se num > 0 entao
      pedido[ini] := 0
      ini := ini + 1
      se ini > max entao
         ini := ini - max
      fimse
      num := num - 1
   senao
      escreval ("Fila Vazia")
      pausa
   fimse
fimprocedimento

procedimento op_listar
inicio
   se num > 0 entao
      aux := ini
      para ind de 1 ate num faca
         escreval (ind,"º - ",pedido[aux]," - ",dados_cli.nome[aux]," - ",dados_cli.atd[aux]," - ",dados_cli.valor[aux])
         aux := aux + 1
         se aux > max entao
            aux := aux - max
         fimse
      fimpara
   senao
      escreval ("Fila Vazia")
      pausa
   fimse
fimprocedimento

procedimento op_pesquisar
inicio
   se num > 0 entao
      aux := ini
   senao
      escreva ("Não há pedidos cadastrados!!!")
   fimse
   escreva ("Informe a posição do pedido: ")
   leia (pesquisa)
   repita
      aux := aux + 1
      se aux > max entao
         aux := aux - max
      fimse
   ate pesquisa = aux
   escreval ("pedido -> ",pedido[aux]," - ",dados_cli.nome[aux])
fimprocedimento

Var
   pedido : vetor [1..10] de inteiro
   dados_cli : vetor [1..10] de cliente
   fim, num, ini, max, opcao, ind, aux, cont, proc, pesquisa : inteiro
   valor_final : real
Inicio
   max := 10
   num := 0
   ini := 1
   fim := 0

   repita
      escreval ("#### MENU ####")
      escreval ("1 - INSERIR")
      escreval ("2 - ATENDER")
      escreval ("3 - LISTAR")
      escreval ("4 - PESQUISAR")
      escreval ("5 - ENCERRAR")
      escreval ("")
      escreva  ("Informe a opção desejada: ")
      leia (opcao)
      escolha opcao
      caso 1
         op_inserir
      caso 2
         limpatela
         op_atender
      caso 3
         limpatela
         op_listar
      caso 4
         limpatela
         op_pesquisar
      fimescolha

   ate opcao = 5

   escreval ("Valor final :",valor_final)

Fimalgoritmo
