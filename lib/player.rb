class Player
    attr_accessor :name 
   
    
    def initialize(name)
     @name = name
     @life_points = 10
    end

    def life_points
        return @life_points
    end


    def gets_damage(damage)
        @damage= damage
        @life_points= @life_points-@damage
        if @life_points <= 0
            puts "Le joueur #{@name} est mort"
        end
    end
    
    
    def attacks(player2)
        puts "#{@name} attaque #{player2.name}"
        damage= compute_damage
        player2.gets_damage(damage)
        puts "il lui inflige #{damage} points de dégats"
    end

    def counter_attack(player1)
        puts "#{@name} attaque #{player1.name}"
        damage= compute_damage
        player1.gets_damage(damage)
        puts "il lui inflige #{damage} points de dégats"
       
    end

    def compute_damage
        return rand(1..6)
    end


end