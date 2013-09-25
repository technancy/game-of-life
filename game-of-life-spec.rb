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
	it 'checks around extracts actual coordinate values' do
		subject.grid << [[0,0],[0,1],[0,2]]
		subject.print_out
		expect(subject.check_around).to eq([0,0])
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
		@grid[0][0]

	end

	def print_out
		puts "#{@grid[0][0]}"
	end




end
