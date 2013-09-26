describe 'playing game of life' do
	subject {Game.new} 
	it 'creates empty array to represent grid' do
		expect(subject.grid).to be_a Array
	end

	it 'ticks over on empty grid' do
		expect(subject.tickover).to eq([])
	end

	it 'ticks over with one cell' do
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
		subject.grid << [[0,0],[0,1],[0,2]]
		subject.check_around
		expect(subject.check_around).to eq('you have a neighbour')
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
		@grid[0].each do |thing|
			if thing == [x,y+2]
				puts "you have a neighbour"
				return "you have a neighbour"
			end
		end
	end

	def print_out
		#puts "#{@grid[0].each}"

#			x=1         x=2        x=3
#y=n-1 	x=n-1,y=n-1   x=n,y=n-1  x=n+1,y=n-1	
#y=n   	x=n-1,y=n     x=2,y=3    x=n+1,y=n
#y=n+1 	x=n-1,y=n+1   x=n,y=n+1  x=n+1,y=n+1

	end




end
