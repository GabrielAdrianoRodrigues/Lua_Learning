print("Calculadora em lua")
::inicio::
print("Escolha o tipo de calculo")
local tipo = io.read("l")

if tipo == '+' then
        dofile("add.lua")
    elseif tipo == '-' then
        dofile("sub.lua")
    elseif tipo == '*' then
        dofile("multi.lua")
    elseif tipo == '/' then
        dofile("sub.lua")
    else
        print("operador inválido utilize somente:")
        print("soma: +")
        print("subtração: -")
        print("multiplicação: *")
        print("divisão: /")
        goto inicio
end

print("Nova operação")
print("S/N")
::resposta::
local resposta = io.read('l')

if string.upper(resposta) == 'S' then
        goto inicio
    elseif string.upper(resposta) == 'N' then
        print('fim')
    else 
        goto resposta
end

