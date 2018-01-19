class Stack 
  
  def initialize
    @stack = []
  end 
  
  def add(el)
    @stack.push(el)
  end 
  
  def remove
    @stack.pop
  end 
  
  def show
    @stack 
  end 
end 


class Queue
  
  def initialize 
    @queue = []
  end 
  
  def enqueue(el)
    @queue.push(el)
  end 
  
  def dequeue
    @queue.shift 
  end 
  
  def show
    @queue 
  end 
  
end 

class Map 

  def initialize
    @map = []
  end 
  
  def assign(key, value)
    if lookup(key)
      idx = lookup_pair_index(key)
      @map[idx][1] = value
    else 
      @map << [key, value]
    end 
    @map 
  end
  
  def lookup_pair_index(key)
      @map.each_with_index do |pair, idx|
        return idx if pair[0] == key 
      end 
  end
  
  def lookup(key)
    @map.each { |pair| return true if pair[0] == key }
    false 
  end 
  
  def remove(key)
    idx = lookup_pair_index(key)
    @map = @map[0...idx] + @map[idx + 1 .. -1]
  end 
  
  
  def show
    @map 
  end 

end 
















