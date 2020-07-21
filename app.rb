require 'bundler'
Bundler.require

require_relative 'lib/player'
require_relative 'lib/game'


def show_state
    player1= Player.new('José')
    player2= Player.new('Josianne')
    puts "Voici l'état de nos joueurs:"
    puts "#{player1.name} a #{player1.life_points} points de vie"
    puts "#{player2.name} a #{player2.life_points} points de vie"
    puts ""

    

    while ((player1.life_points).to_i > 0 ) && ((player2.life_points).to_i > 0) 
        puts "Passons à la phase d'attaque:"
        player2.attacks(player1)
        if ((player1.life_points).to_i <= 0)
            break puts "#{player1.name} a été tué !"
        else 
        player1.counter_attack(player2)
        puts ""
        puts "Voici l'état de nos joueurs :"
        puts "#{player1.name} a #{player1.life_points} points de vie"
        puts "#{player2.name} a #{player2.life_points} points de vie"
        puts ""
        end
        
        
        
    end
end

show_state()


binding.pry