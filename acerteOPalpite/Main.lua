dofile("Functions.lua")

local numeroGerado = geraNumero()

abertura_do_jogo()
manual()

local palpite = capturaPalpite()

function jogo() 
    local continuar = true
    local resposta;
    while true do
        while interacao(numeroGerado, compara(numeroGerado, palpite)) do
            palpite = capturaPalpite()
        end
        print("Deseja continuar jogando?")
        resposta = io.read()
        if string.upper(resposta) == "S" then

        elseif string.upper(resposta) == "N" then
            return
        else 
            print("Resposta inválida responsa apenas com s ou n")
        end    
    end
end
