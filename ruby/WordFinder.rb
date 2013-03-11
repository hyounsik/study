class WordFinder
  
  attr_accessor :hash
  
  def initialize(seriall)
    @hash = {}
    @seriall = seriall
    @routes = []
  end
  
  def findSequences
    root = Node.new
    root.start = 0
    root.fin = 0
    root.previous = nil
    root.is_valid = false
    findNextNodes(root, 0)
    return @routes
  end
  
  def findNextNodes(node)
    start = node.fin + 1
    count = 0
    if start ==  @seriall.length  then
      addRoute(node)
    end
    ( start..( @seriall.length )  ).each do | fin |
      newNode = findWord(start, fin)
      if newNode != nil then
        newNode.previous = node
        findNextNodes(newNode)
        count += 1
      end
    end
    if count == 0 then
      if node.previous.is_valid then
        new_invalid_node = Node.new
        new_invalid_node.is_valid = false
        new_invalid_node.start = node.fin + 1
        new_invalid_node.fin = node.fin + 2
        new_invalid_node.previous = node
        findNextNodes(new_invaild_node)
      elsif 
        node.previous.fin += 1
        findNextNodes(node)
      end
  end
  
  def findWord(start, fin)
    word = @hash[@seriall[start..fin]]
    if word != nil then
      node =Node.new
      node.start = start
      node.fin = fin
      return node
    else
      return nil
    end
  end
  
  def addRoute(node)
    return if node.previous == nil
    wordList = []
    until node.previous == nil
      wordList.push(@seriall[node.start..node.fin])
      node = node.previous
    end
    @routes.push wordList
  end        
end

class Node
  attr_accessor :fin
  attr_accessor :start
  attr_accessor :previous
  attr_accessor :is_valid
end

wordFinder = WordFinder.new("appletter")

wordFinder.hash = { 'apple' => 'apple',
                    'letter' => 'letter',
                    'tiger' => 'tiger',
                    'german' => 'german',
                    'jam' => 'jam' }
            
                    
p wordFinder.findSequences
