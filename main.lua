-- Aqui importo a biblioteca
require 'md5'

function criptografar() 
    print("Digite uma string para criptografar: ")
    String = io.read()
    nova_string = "Hash de " .. String .. ": " .. md5.sumhexa(String) .. "\n"
    local arquivo, erro = io.open("arquivo.txt", "a")
    if arquivo then
        arquivo:write(nova_string)
    end 
    arquivo:close()
    --Este comando funciona apenas no windows
    os.execute("cls")   
end

function exibirHash() 
    local arquivo = io.open("arquivo.txt", "r")
    if arquivo then
        -- Lê o conteúdo do arquivo e o imprime linha por linha
        for linha in arquivo:lines() do
            print(linha)
        end
        arquivo:close()
    else 
        print("Arquivo nao existe")
    end
end

function menu()
    local op = 0
    while op ~= 3 do  
        print("=====================")
        print("[1] - Criptografar")
        print("[2] - Exibir as hash do arquivo")
        print("[3] - Sair")
        print("=====================")
        op = tonumber(io.read())

        --Este comando funciona apenas no windows
        os.execute("cls")
        if op == 1 then
            criptografar()
        elseif op == 2 then 
            exibirHash()
        elseif op == 3 then
            print("Encerrando...")
        else
            print("Opcao invalida") 
        end
    end
end

menu()