programa
{
    inclua biblioteca Matematica --> mat 

    // ===== FUNÇÃO DO DISPLAY =====
    funcao mostrarDisplay(real valor)
    {
        escreva(" ________________________________\n")
        escreva("|                                |\n")
        escreva("|          RESULTADO:            |\n")
        escreva("|             ", valor, "             |\n")
        escreva("|                                |\n")
        escreva("|                                |\n")
        escreva("|________________________________|\n")
        escreva("|__1__|__2__|__3__|__+___________|\n")
        escreva("|__4__|__5__|__6__|__-___________|\n")
        escreva("|__7__|__8__|__9__|__*___________|\n")
        escreva("|_sen_|_cos_|_tan_|__=___________|\n")
        escreva("|_log.|_fat.|_pot.|__rad_________|\n")
        escreva("|________________________________|\n")
    }

    // ===== FUNÇÃO PARA FATORIAL =====
    funcao real calcularFatorial(inteiro n)
    {
        inteiro fat = 1

        enquanto (n > 0)
        {
            fat = fat * n
            n = n - 1
        }

        retorne fat
    }

    funcao inicio()
    {
        real vet[3]
        vet[0] = 0.0
        inteiro opcao
        cadeia continuar
        real rad, base, expo

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
            escreva("5. Seno\n")
            escreva("6. Cosseno\n")
            escreva("7. Tangente\n")
            escreva("8. Limpar resultado\n")
            escreva("9. Radiciação\n")
            escreva("10. Fatorial\n")
            escreva("11. Potenciação\n")
            escreva("0. Sair\n")
            escreva("Escolha uma opção: ")
            leia(opcao)

            escolha(opcao)
            {
                // ===== SOMA =====
                caso 1:
                    se(vet[0] == 0)
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
                    mostrarDisplay(vet[0])
                pare

                // ===== SUBTRAÇÃO =====
                caso 2:
                    se(vet[0] == 0)
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
                    mostrarDisplay(vet[0])
                pare

                // ===== MULTIPLICAÇÃO =====
                caso 3:
                    se(vet[0] == 0)
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
                    mostrarDisplay(vet[0])
                pare

                // ===== DIVISÃO =====
                caso 4:
                    se(vet[0] == 0)
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

                    se(vet[2] == 0)
                    {
                        escreva("Erro: divisão por zero!\n")
                    }
                    senao
                    {
                        vet[0] = vet[1] / vet[2]
                        mostrarDisplay(vet[0])
                    }
                pare

                // ===== SENO =====
                caso 5:
                    se(vet[0] == 0)
                    {
                        escreva("Digite o ângulo (graus): ")
                        leia(vet[1])
                    }
                    senao
                    {
                        vet[1] = vet[0]
                    }

                    rad = vet[1] * 3.14159265359 / 180
                    vet[0] = mat.seno(rad)
                    mostrarDisplay(vet[0])
                pare

                // ===== COSSENO =====
                caso 6:
                    se(vet[0] == 0)
                    {
                        escreva("Digite o ângulo (graus): ")
                        leia(vet[1])
                    }
                    senao
                    {
                        vet[1] = vet[0]
                    }

                    rad = vet[1] * 3.14159265359 / 180
                    vet[0] = mat.coseno(rad)
                    mostrarDisplay(vet[0])
                pare

                // ===== TANGENTE =====
                caso 7:
                    se(vet[0] == 0)
                    {
                        escreva("Digite o ângulo (graus): ")
                        leia(vet[1])
                    }
                    senao
                    {
                        vet[1] = vet[0]
                    }

                    rad = vet[1] * 3.14159265359 / 180
                    vet[0] = mat.tangente(rad)
                    mostrarDisplay(vet[0])
                pare

                // ===== LIMPAR =====
                caso 8:
                    vet[0] = 0
                    mostrarDisplay(vet[0])
                pare

                // ===== RADICIAÇÃO =====
                caso 9:
                    escreva("Digite o número para radiciação: ")
                    leia(base)

                    vet[0] = mat.raiz(base, 2)

                    mostrarDisplay(vet[0])
                pare

                // ===== FATORIAL =====
                caso 10:
                    inteiro n

                    escreva("Digite um valor inteiro >= 1: ")
                    leia(n)

                    vet[0] = calcularFatorial(n)

                    mostrarDisplay(vet[0])
                pare

                // ===== POTENCIAÇÃO =====
                caso 11:
                    escreva("Digite a base: ")
                    leia(base)

                    escreva("Digite o expoente: ")
                    leia(expo)

                    vet[0] = mat.potencia(base, expo)

                    mostrarDisplay(vet[0])
                pare

                caso 0:
                    escreva("Saindo...\n")
                pare

                caso contrario:
                    escreva("Opção inválida!\n")
            }

            se (opcao != 0)
            {
                escreva("\nDeseja continuar com o resultado atual? (S/N): ")
                leia(continuar)

                se (continuar == "N" ou continuar == "n")
                {
                    vet[0] = 0
                }
            }

        } enquanto(opcao != 0)
    }
}
