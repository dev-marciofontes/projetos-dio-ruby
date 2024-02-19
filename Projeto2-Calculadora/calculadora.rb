def solicitar_operacao
  puts "Escolha uma operação: "
  puts "1. Adição"
  puts "2. Subtração"
  puts "3. Multiplicação"
  puts "4. Divisão"
  puts "5. Sair"
  gets.chomp.to_i
end

def solicitar_numero(ordem)
  puts "Digite o #{ordem} número: "
  gets.chomp.to_f
end

def calcular(operacao, num1, num2)
  case operacao
  when 1
    num1 + num2
  when 2
    num1 - num2
  when 3
    num1 * num2
  when 4
    if num2.zero?
      "Erro: Divisão por zero é indefinida"
    else
      num1 / num2
    end
  else
    "Erro: Operação inválida"
  end
end

loop do
  operacao = solicitar_operacao
  break if operacao == 5

  num1 = solicitar_numero("primeiro")
  num2 = solicitar_numero("segundo")

  resultado = calcular(operacao, num1, num2)

  puts "O resultado é: #{resultado}"
  puts
end