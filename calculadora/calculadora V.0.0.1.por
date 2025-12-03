programa
{
    funcao inicio()
    {
        real vet[3]
        vet[0] = 0.0
        inteiro opcao
        
        faca
        {
            // Limpa os números
            vet[1] = 0.0
            vet[2] = 0.0
            
            escreva("\n=== CALCULADORA ===\n")
            escreva("Resultado anterior: ", vet[0], "\n")
            escreva("1. Soma\n")
            escreva("2. Subtração\n")
            escreva("3. Multiplicação\n")
            escreva("4. Divisão\n")
            escreva("5. Limpar resultado\n")
            escreva("0. Sair\n")
            escreva("Escolha uma opção: ")
            leia(opcao)         // <-- ler direto como inteiro, sem usar cadeia
            
            escolha(opcao)
            {
                caso 1:
                    se(vet[0] == 0.0)
                    {
                        escreva("Digite o primeiro número: ")
                        leia(vet[1])
                    }
                    senao
                    {
                        vet[1] = vet[0]
                        escreva("Usando resultado anterior (", vet[1], ")\n")
                    }
                    escreva("Digite o segundo número: ")
                    leia(vet[2])
                    vet[0] = vet[1] + vet[2]
                    escreva(vet[1], " + ", vet[2], " = ", vet[0], "\n")
                pare

                caso 2:
                    se(vet[0] == 0.0)
                    {
                        escreva("Digite o primeiro número: ")
                        leia(vet[1])
                    }
                    senao
                    {
                        vet[1] = vet[0]
                        escreva("Usando resultado anterior (", vet[1], ")\n")
                    }
                    escreva("Digite o segundo número: ")
                    leia(vet[2])
                    vet[0] = vet[1] - vet[2]
                    escreva(vet[1], " - ", vet[2], " = ", vet[0], "\n")
                pare

                caso 3:
                    se(vet[0] == 0.0)
                    {
                        escreva("Digite o primeiro número: ")
                        leia(vet[1])
                    }
                    senao
                    {
                        vet[1] = vet[0]
                        escreva("Usando resultado anterior (", vet[1], ")\n")
                    }
                    escreva("Digite o segundo número: ")
                    leia(vet[2])
                    vet[0] = vet[1] * vet[2]
                    escreva(vet[1], " * ", vet[2], " = ", vet[0], "\n")
                pare

                caso 4:
                    se(vet[0] == 0.0)
                    {
                        escreva("Digite o primeiro número: ")
                        leia(vet[1])
                    }
                    senao
                    {
                        vet[1] = vet[0]
                        escreva("Usando resultado anterior (", vet[1], ")\n")
                    }

                    escreva("Digite o segundo número: ")
                    leia(vet[2])

                    se(vet[2] == 0.0)
                    {
                        escreva("Erro: divisão por zero!\n")
                    }
                    senao
                    {
                        vet[0] = vet[1] / vet[2]
                        escreva(vet[1], " / ", vet[2], " = ", vet[0], "\n")
                    }
                pare

                caso 5:
                    vet[0] = 0.0
                    escreva("Resultado limpo!\n")
                pare

                caso 0:
                    escreva("Saindo...\n")
                pare

                caso contrario:
                    escreva("Opção inválida!\n")
            }
        }
        enquanto(opcao != 0)
    }
}
