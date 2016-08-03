# ArrayList#new(size): Instantiate a new dynamic array with initial size size.
# ArrayList#add(element): Add element to the end of the list. Return the element added.
# ArrayList#get(index): Retrieve an element at index. If no element exists at that index, throw an OutOfBoundsException
# ArrayList#set(index, element): Replace an existing element at index. Return the element. If no element exists at that index, throw an OutOfBoundsException
# ArrayList#length: Return the number of items in the list

class ArrayList

  attr_reader :arr

  def initialize(size)
    @arr = Array.new(size)
  end

  def add(element)
    arr << element
    return element
  end

  def get(index)
    arr.fetch(index)
  end

  def set(index, element)
    if arr.length > index
      arr[index] = element
    else
      raise IndexError, 'Index is not valid'
    end
  end

  def length
    arr.count
  end

end
