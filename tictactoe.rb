
# definimos el tablero

tablero = [["1","2","3"],["4","5","6"],["7","8","9"]]

# mostramos el tablero inicial
tablero.each {|x| print "#{x}\n"}


# iniciamos el juego

turno = 0
while turno <= 8  
	
	puts "Inicia el jugador 1 con las X "
	puts "Selecciona la casilla que deseas marcar... Turno: #{turno + 1}"
	
	j1 = gets.to_i
	case j1
 		when 1 then tablero [0][0] = "x"
 		when 2 then tablero [0][1] = "x"
 		when 3 then tablero [0][2] = "x"
 		when 4 then tablero [1][0] = "x"
 		when 5 then tablero [1][1] = "x"
 		when 6 then tablero [1][2] = "x"
 		when 7 then tablero [2][0] = "x"
 		when 8 then tablero [2][1] = "x"
 		when 9 then tablero [2][2] = "x"
	end 	
	if tablero [0][0] && tablero [0][1] && tablero [0][2] == "X"
		puts "Las X ganan"
		break
	elsif tablero [1][0] && tablero [1][1] && tablero [1][2] == "X"
		puts "Las X ganan"
		break
	elsif tablero [2][0] && tablero [2][1] && tablero [2][2] == "X"
		puts "Las X ganan"
		break
	elsif tablero [0][0] && tablero [1][0] && tablero [2][0] == "X"
		puts "Las X ganan"
		break	
	elsif tablero [0][1] && tablero [1][1] && tablero [2][1] == "X"
		puts "Las X ganan"
		break	
	elsif tablero [0][2] && tablero [1][2] && tablero [2][2] == "X"
		puts "Las X ganan"
		break	
	elsif tablero [0][0] && tablero [1][1] && tablero [2][2] == "X"
		puts "Las X ganan"
		break	
	elsif tablero [0][2] && tablero [1][1] && tablero [2][0] == "X"
		puts "Las X ganan"
		break	
	end

	tablero.each {|x| print "#{x}\n"}
	turno += 1
	if turno == 9 
		break
	end

	puts "Turno del jugardor 2 con las O... Turno: #{turno + 1}"
	j2 = gets.to_i
	case j2
 		when 1 then tablero [0][0] = "O"
 		when 2 then tablero [0][1] = "O"
 		when 3 then tablero [0][2] = "O"
 		when 4 then tablero [1][0] = "O"
 		when 5 then tablero [1][1] = "O"
 		when 6 then tablero [1][2] = "O"
 		when 7 then tablero [2][0] = "O"
 		when 8 then tablero [2][1] = "O"
 		when 9 then tablero [2][2] = "O"
	end 

	if tablero [0][0] && tablero [0][1] && tablero [0][2] == "O"
		puts "Las O ganan"
		break
	elsif tablero [1][0] && tablero [1][1] && tablero [1][2] == "O"
		puts "Las O ganan"
		break
	elsif tablero [2][0] && tablero [2][1] && tablero [2][2] == "O"
		puts "Las O ganan"
		break
	elsif tablero [0][0] && tablero [1][0] && tablero [2][0] == "O"
		puts "Las O ganan"
		break	
	elsif tablero [0][1] && tablero [1][1] && tablero [2][1] == "O"
		puts "Las O ganan"
		break	
	elsif tablero [0][2] && tablero [1][2] && tablero [2][2] == "O"
		puts "Las O ganan"
		break	
	elsif tablero [0][0] && tablero [1][1] && tablero [2][2] == "O"
		puts "Las O ganan"
		break	
	elsif tablero [0][2] && tablero [1][1] && tablero [2][0] == "O"
		puts "Las O ganan"
		break	
	end	
	tablero.each {|x| print "#{x}\n"}
	turno += 1

	
end

