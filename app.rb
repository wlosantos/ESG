# ESG Versão 1.0.0 By Lietson Dos Santos.

require 'colorize'

system "clear"

puts "\n [1] - Calcular"
puts " [2] - Informações"
print " [3] - "
print "Sair\n".red

print "\n value: ".green
value = gets.chomp.to_i

if value == 1

    puts "\n\n\n"
    puts "ax²+bx+c=0\n\n"
    
    print "Digite o Valor de A: "
    a = gets.chomp.to_i

    print "Digite o Valor de B: "
    b = gets.chomp.to_i

    print "Digite o valor de C: "
    c = gets.chomp.to_i

    delta = (b * b) - (4 * a * c)

    if delta.negative?
        puts "\nDelta é negativo!"

        return
    else

        delta_raiz = Math.sqrt(delta)

        x1 = (-b + delta_raiz) / (2 * a)
        x2 = (-b - delta_raiz) / (2 * a)

        if b.negative? && c.negative?
            puts "\n\nA resultado da equação: #{a}X²#{b}X#{c}=0\n"
        elsif b.negative? && !c.negative? 
            puts "\n\nA resultado da equação: #{a}X²#{b}X+#{c}=0\n"
        elsif !b.negative? && c.negative? 
            puts "\n\nA resultado da equação: #{a}X²+#{b}X#{c}=0\n"
        else
            puts "\n\nA resultado da equação: #{a}X²+#{b}X+#{c}=0\n"
        end

        puts "Delta é igual a #{delta}"
        puts "A raiz quadrada de Delta é igual a #{delta_raiz} \n\n"

        puts "X1 = #{x1}"
        puts "x2 = #{x2}\n\n"

    end

elsif value == 2
    
    system "clear"
    
    puts "\n [1] - Como fazer uma Equação do Segundo Grau?"
    puts " [2] - Sobre"
    print " [3] - "
    print "Sair\n".red

    print "\n value: ".green
    value = gets.chomp.to_i

    if value == 1
        
        system "clear"
        puts arq = File.readlines("Data")
    elsif value == 2
        
        system "clear"
        puts """
        Nome: ESG - Equação do Segundo Grau 
        Versão: 1.0.0
        Autor: Lietson Dos Santos
        Data de Criação: 13/03/2021 11:34
    
        Objectivo: Este app foi criado para facilitar a resolução de equações do segundo Grau.
        """
    
    puts "\n\n"
    elsif value == 3

        puts "\n Obrigado Por ter usado o ESG, Espero que tenha gostado :>"
        puts " By Lietson Dos Santos"
        exit
    else
        puts "Opção Inválida!"
    end

elsif value == 3
   
    puts "\n Obrigado Por usar o ESG, Espero que tenha gostado :>"
    puts "By Lietson dos santos"
    exit

else
    puts "Opeção inválida!"
end