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
    return math.random(1, 3)
end

function capturaPalpite()
    while true do
        local palpite = io.read()
        if type(tonumber(palpite)) == "number" then
            palpite = tonumber(palpite)
            if palpite <= 100 and palpite >= 1 then
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
        return false    
    end
end   

function interacao(numero, resultado)
    if resultado then
        print("Parabéns voce acertou o número no "..numero)
    else    
        print("Não era este o número\nTente novamente\nDigíte seu palpite")
    end

    return not resultado
end