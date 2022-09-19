function abertura_do_jogo()
    print("Bem vindo ao jogo Adivinhe o Número\n")
end

function manual()
    print("Você deseja ler o manual do jogo(s/n)")
    local resposta = io.read()
    if string.upper(resposta) == "S" then
        print("\n-> Este é um jogo de adivinhação onde o computador\n"..
              "-> irá escolher um número aleatório, que o jogador\n"..
              "-> prescisará adivinhar por simples processo de\n"..
              "-> tentativa e erro.")
    elseif string.upper(resposta) == "N" then
        return
    else 
        print("Resposta inválida responsa apenas com s ou n")
        manual()
    end    
end

function geraNumero()
    local seed = os.clock()*1000000000000
    math.randomseed(seed)
    return math.random(1, 100)
end

function capturaPalpite()
    while true do
        print("Digíte seu palpite")
        local palpite = io.read()
        if type(tonumber(palpite)) == "number" then
            palpite = tonumber(palpite)

            if palpite > 100  then
                print("informe um numero menor que 100")
            elseif palpite < 1 then
                print("informe um numero maior que 0")
            end

            if (palpite <= 100 and palpite >= 1) then
                return palpite
            end

        else
            print("Informe um número válido!")
        end
    end    
end

function compara(numero, palpite) 
    if numero == palpite then
        return true
    else 
        if palpite > numero then
            print("O numero informado e maior que eu estou pensando")
        else 
            print("O numero informado e menor que eu estou pensando")
        end
        return false    
    end
end   

function interacao(numero, resultado)
    if resultado then
        print("Parabéns voce acertou o número no "..numero)
    else    
        print("Tente novamente\n")
    end

    return not resultado
end