dofile("Functions.lua")

local numeroGerado = geraNumero()

abertura_do_jogo()
manual()

local palpite = capturaPalpite()

while interacao(numeroGerado, compara(numeroGerado, palpite)) do
    palpite = capturaPalpite()
end

