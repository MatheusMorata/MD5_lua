-- Aqui importo a biblioteca
require 'md5'

local op = 0

while op ~= 1 do  
    print("=====================")
    print("[1] - Criptografar")
    print("=====================")
    op = tonumber(io.read())

    --Este comando funciona apenas no windows
    os.execute("cls")
    if op == 1 then
        print("Digite uma string para criptografar: ")
        String = io.read()
        nova_string = md5.sumhexa(String)
        os.execute("cls")
        print("String criptografada: " .. nova_string)
    end
end