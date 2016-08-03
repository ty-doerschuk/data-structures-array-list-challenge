require_relative 'array_list'

describe ArrayList do

  let(:arraylist) { ArrayList.new(5) }

  it 'initializes with a size of 5 elements' do
    expect(arraylist.arr.length).to eq(5)
  end

  it '#add element to the end of the list' do
    arraylist.add('foo')
    expect(arraylist.arr[-1]).to eq('foo')
  end

  it '#add returns the element added' do
    add = arraylist.add('foo')
    expect(add).to eq('foo')
  end

  it '#get retrieves an element at index' do
    arraylist.add('foo')
    get = arraylist.get(-1)
    expect(get).to eq('foo')
  end

  it '#set replaces an existing element at index' do
    arraylist.set(1, 'foobar')
    expect(arraylist.arr[1]).to eq('foobar')
  end

  it '#set returns the element' do
    set = arraylist.set(1, 'foobar')
    expect(set).to eq('foobar')
  end

  it '#length returns the number of items in the list' do
    expect(arraylist.arr.length).to eq(5)
  end

end
