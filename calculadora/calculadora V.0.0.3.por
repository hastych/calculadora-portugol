programa
{inclua biblioteca Matematica --> mat 
    funcao inicio()
    {
        real vet[3]
        vet[0] = 0.0
        inteiro opcao, seno, coseno, tangente
        cadeia continuar
        real rad
        
        faca
        {
            
            vet[1] = 0.0
            vet[2] = 0.0
            
            escreva("\n=== CALCULADORA ===\n")
            escreva("Resultado anterior: ", vet[0], "\n")
            escreva("1. Soma\n")
            escreva("2. Subtração\n")
            escreva("3. Multiplicação\n")
            escreva("4. Divisão\n")
            escreva("5.seno\n")
            escreva("6.coseno\n")
            escreva("7.tangente\n")
            escreva("8. Limpar resultado\n")
            escreva("0. Sair\n")
            escreva("Escolha uma opção: ")
            leia(opcao)

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
                    se(vet[0] == 0.0)
                    {
                        escreva("Digite um ângulo (graus): ")
                        leia(vet[1])
                    }
                    senao
                    {
                        vet[1] = vet[0]
                        escreva("Usando resultado anterior como ângulo (", vet[1], ")\n")
                    }

                    rad = vet[1] * 3.14159265359 / 180
                    vet[0]= mat.seno(rad)
 
                    escreva("\nSeno = ", vet[0], "\n")
                pare

                caso 6:
                    se(vet[0] == 0.0)
                    {
                        escreva("Digite um ângulo (graus): ")
                        leia(vet[1])
                    }
                    senao
                    {
                        vet[1] = vet[0]
                        escreva("Usando resultado anterior como ângulo (", vet[1], ")\n")
                    }

                    rad = vet[1] * 3.14159265359 / 180
                    vet[0] = mat.coseno(rad)

                    escreva("\nCosseno = ", vet[0], "\n")
                pare

                 caso 7:
                    se(vet[0] == 0.0)
                    {
                        escreva("Digite um ângulo (graus): ")
                        leia(vet[1])
                    }
                    senao
                    {
                        vet[1] = vet[0]
                        escreva("Usando resultado anterior como ângulo (", vet[1], ")\n")
                    }

                    rad = vet[1] * 3.14159265359 / 180
                    vet[0] = mat.tangente(rad)

                    escreva("\nTangente = ", vet[0], "\n")
                pare

                caso 8:
                    vet[0] = 0.0
                    escreva("Resultado limpo!\n")
                pare

                caso 0:
                    escreva("Saindo...\n")
                pare

                caso contrario:
                    escreva("Opção inválida!\n")
            }

            
            se (opcao != 0)
            {
                escreva("\nDeseja continuar a partir do resultado atual? (S/N): ")
                leia(continuar)

                se (continuar == "N" ou continuar == "n")
                {
                    vet[0] = 0.0
                    escreva("Resultado zerado!\n")
                }
            }

        }
        enquanto(opcao != 0)
    }
}
