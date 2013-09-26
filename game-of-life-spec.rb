describe 'playing game of life' do
	subject {Game.new} 
	it 'creates empty array to represent grid' do
		pending
		expect(subject.grid).to be_a Array
	end

	it 'ticks over on empty grid' do
		pending
		expect(subject.tickover).to eq([])
	end

	it 'ticks over with one cell' do
		pending
		subject.grid << 1
		expect( subject.tickover ).to eq([])
	end
	it 'extracts actual coordinate values' do
		pending
		subject.grid << [[0,0],[0,1],[0,2]]
		subject.print_out
		expect(subject.check_around).to eq([0,0])
	end
	it 'finds [0,1] exists and so [0,0] has a neighbour' do
		pending
		subject.grid << [[0,0],[0,1],[0,2]]
		subject.check_around
		expect(subject.check_around).to eq('you have 2 neighbour(s)')
	end
	it 'finds [0,0] has only 2 neighbour' do
		subject.grid = [[0,0],[0,1],[-1,-1]]
		subject.check_around
		expect(subject.check_around).to eq('you have 2 neighbour(s)')
	end
	it 'returns a grid of 1 cells if seeded with 3 cells' do
		pending
		subject.grid << [[0,0],[0,1],[0,2]]
		expect(subject.tickover).to eq([[0,1]])
	end

	it 'check for life' do
		pending
		expect(subject.grid.size).to_not eql(0)
	end



end

class Game
	attr_accessor :grid

	def initialize
		@grid = []
		@neighbour = 0		
	end

	def tickover
		if grid.size == 1
			@grid = []
		end
		@grid
	end

	def check_around
		x = 0
		y = 0

		matches = [[x-1,y-1], [x,y-1] , [x+1,y-1] , [x-1,y] , [x+1,y] , [x-1,y+1] , [x,y+1] , [x+1,y+1]]	
		puts "MATCHES #{matches}"
		puts "GRID = #{@grid.inspect}"	

		intersection = @grid & matches
			
				if !intersection.empty?		
					neighbour = intersection.size
					return "you have #{neighbour} neighbour(s)"				
				end

	end

	def print_out
		#puts "#{@grid[0].each}"

		#			x=-1         x=n        x=+1
		#y=n-1 	x=n-1,y=n-1   x=n,y=n-1  x=n+1,y=n-1	
		#y=n   	x=n-1,y=n     x=0,y=0    x=n+1,y=n
		#y=n+1 	x=n-1,y=n+1   x=n,y=n+1  x=n+1,y=n+1

	end




end
