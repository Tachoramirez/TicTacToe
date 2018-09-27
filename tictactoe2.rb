# definimos el tablero

tablero = [["1","2","3"],["4","5","6"],["7","8","9"]]

# mostramos el tablero inicial
puts "Bienvenido al juego del gato.! "
puts
tablero.each {|x| print "#{x}\n"}

# Definimos jugadores
jugador = true
ganador = false
turno = 1

# Inicia el juego
while ganador == false   && turno < 10

        if jugador == true
                jugador = "x" 
        else jugador == false
                jugador = "O"
        end
        puts "turno de las #{jugador}... Elije una casilla. "
        puts
        casilla = gets.to_i

        case casilla
        when 1 then tablero [0][0] = jugador
        when 2 then tablero [0][1] = jugador
        when 3 then tablero [0][2] = jugador
        when 4 then tablero [1][0] = jugador
        when 5 then tablero [1][1] = jugador
        when 6 then tablero [1][2] = jugador
        when 7 then tablero [2][0] = jugador
        when 8 then tablero [2][1] = jugador
        when 9 then tablero [2][2] = jugador
        end    


        quien_gana()

        if jugador == "x"
                jugador = false
        elsif jugador == "O"
                jugador = true
        end


        turno = turno + 1
        tablero.each {|x| print "#{x}\n"}
        puts

end


if ganador == false
        puts "no hay ganador, es un empate"
else
        puts "Ganan las #{jugador}"
end


def quien_gana ()
        if tablero[0][0] && tablero[0][1] && tablero[0][2] == jugador
        elsif tablero[1][0] && tablero[1][1] && tablero[1][2] == jugador
        elsif tablero[2][0] && tablero[2][1] && tablero[2][2] == jugador
        elsif tablero[0][0] && tablero[1][0] && tablero[2][0] == jugador
        elsif tablero[0][1] && tablero[1][1] && tablero[2][1] == jugador
        elsif tablero[0][2] && tablero[1][2] && tablero[2][2] == jugador
        elsif tablero[0][0] && tablero[1][1] && tablero[2][2] == jugador
        elsif tablero[2][0] && tablero[1][1] && tablero[0][2] == jugador
        end
        return ganador = true
end
