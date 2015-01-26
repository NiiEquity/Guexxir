defmodule Guexxir do
	def welcome_player do
		IO.puts String.duplicate("*", 50)
		player = String.strip IO.gets("What is your name? ")
		IO.puts "Welcome #{player}, Lets play a guessing game"
		IO.puts String.duplicate("*", 50)
	end

	def guess do
		guesses = ["nii","laptop","grace","vera","lily"]
		name = String.strip IO.gets("Can you guess a name ? ")

		if name in guesses do
			IO.puts "weldone"
		else 
			IO.puts "Sorry"
		end

		response = String.strip IO.gets("Will you like to play again? ")
		if response == "No" do
			exit_game
		else
			guess
		end
	end

	def exit_game, do: System.halt(0)

	def start do
		welcome_player 
		guess
	end
end


Guexxir.start