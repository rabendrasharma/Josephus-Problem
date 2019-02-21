Josephus problem or round table gun shot problem
#Algorithm
#1. make each even no '0'
#2. If no_of_player is even so 1st will be always winner and on odd not so make it '0'
#3. Remove all '0' value
#4. Continue all above steps untill one person remain

Example:

# 1, 2, 3, 4, 5
# 1, 3, 5
# 3

# 1, 2, 3, 4, 5, 6
# 1, 3, 5
# 5

# 1, 2, 3, 4, 5, 6, 7
# 3, 5, 7, 
# 7

# 1, 2, 3, 4, 5, 6, 7, 8
# 1, 3, 5, 7
# 1, 5
# 1


Program:

class Test
	def test_method no_of_players
		people = []

		#create array from given no of person
		1..no_of_players.times do |i|
			people << i+1
		end

		loop do

			#placing '0' to all even numbers
		  people.each_index do |j|
        if (j % 2 == 1)
          people[j] = 0
        end
      end
      #placing '0' on first place if number of people is odd and on even always be 1st number will be winner
      people[0] = 0 if (people.length % 2 == 1 && people.length != 1)

      #removing all 0's
      (people.length - 1).downto(0) do |k|
        people.slice!(k, 1) if (people[k] == 0)
      end
    break if people.length < 2
		end
		puts people.last
	end
end

Test.new.test_method(6)

