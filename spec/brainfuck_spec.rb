require_relative '../brainfuck'

describe "when interpreting source code" do

  before(:each) do
    @interpreter =  Interpreter.new
  end

  it "outputs the character signified by the cell at the pointer when encountering '.'" do
    output = @interpreter.execute(".")
    expect(output.ord).to eq(0)
  end

  it "inputs a character and stores it in the cell at the pointer when encountering ','" do
    @interpreter.stub(:gets) { "A" }
    output = @interpreter.execute(",.")
    expect(output).to eq("A")
  end

  it "increments the memory cell under the pointer when encountering '+'" do
    output = @interpreter.execute("+.")
    expect(output.ord).to eq(1)
  end

  it "decrements the memory cell under the pointer when encountering '-'" do
    @interpreter.stub(:gets) { "B" }
    output = @interpreter.execute(",-.")
    expect(output).to eq("A")
  end

  it "moves the pointer to the right when encountering '>'" do
    output = @interpreter.execute("+>.")
    expect(output.ord).to eq(0)
  end

  it "moves the pointer to the left when encountering '<'" do
    @interpreter.stub(:gets) { "A" }
    output = @interpreter.execute(",><.")
    expect(output).to eq("A")
  end

  describe "when encountering '['" do

  end

  describe "when encountering ']'" do

  end

end