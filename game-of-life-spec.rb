describe 'playing game of life' do
	x = 0
	y = 0
	status = 'A'
	subject{ Cell.new(x,y,status) }
	it 'creates a cell' do
		expect(subject.coords).to eq([0,0])
	end
	it 'has neighbours' do
		expect(subject).to have_neighbours
	end
	it 'to have 8 neighbours' do
		expect(subject.neighbours.size).to eql(8)
	end
	it 'find out if cell is alive or dead' do
		expect(subject.state).to eql "A"
	end
end


class Cell

	def initialize(x,y, status)
		@x = x
		@y = y
		@status = status
	end

	def state
		@status
	end

	def coords
		[@x, @y]
	end

	def has_neighbours?
		neighbours.size >= 1
	end

	def neighbours
		[[0,1,"A"],[0,1,"D"],[0,1,"A"],[0,1,"A"],[0,1,"D"],[0,1,"A"],[0,1,"D"],[0,1,"D"]]
	end


end