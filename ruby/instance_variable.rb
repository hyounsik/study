class TestTest
  def pop
    @pop
  end
  def pop=( pop )
    @pop = pop
  end
end

test = TestTest.new
p test.pop
test.pop = 'fdfd'
p test.pop
p self
p self.class