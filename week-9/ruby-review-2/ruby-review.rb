# U2.W6: Testing Assert Statements

# I worked on this challenge [by myself].


# 2. Review the simple assert statement

# def assert
#   raise "Assertion failed!" unless yield
# end

# name = "bettysue"
# assert { name == "bettysue" }
# assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs
=begin
  First, name is assigned to "bettysue." Next we call the method 'assert' with the
  stipulation that name must equal "bettysue," which it does, so that assertion passes
  "Assertion failed!" being raised. But on the next line we call the method again with the
  requirement that name is equal to "billybob," which it does not, so "Assertion failed!" is
  raised.

  The use of 'yield' in the method functions to checkin with the original assertion. So the
  of operations looks like this:
    1. call 'assert' (go inside assert method)
    2. raise message UNLESS... (YIELD back to original call)
    3. is name equal to string?
    4. IF yes, raise message, ELSE do nothing
=end

# 3. Copy your selected challenge here
  # Calculate a Grade

    def get_grade(average)
      if average >= 90
        return "A"
      elsif average >= 80
        return "B"
      elsif average >= 70
        return "C"
      elsif average>= 60
        return "D"
      else return "F"
      end
    end

=begin
  describe 'get_grade' do
    it 'is defined as a method' do
      expect(defined?(get_grade)).to eq 'method'
    end
    it 'returns "A" when the average is >= 90' do
      expect(get_grade(90)).to eq "A"
    end
    it 'returns "B" when the average is >= 80' do
      expect(get_grade(88)).to eq "B"
    end
    it 'returns "C" when the average is >= 70' do
      expect(get_grade(72)).to eq "C"
    end
    it 'returns "D" when the average is >= 60' do
      expect(get_grade(66)).to eq "D"
    end
    it 'returns "F" when the average is < 60' do
      expect(get_grade(50)).to eq "F"
    end
  end
=end

# 4. Convert your driver test code from that challenge into Assert Statements

def assert_grade
  raise "Improper grade assignment." unless yield
end

assert_grade { defined?(get_grade) == 'method'}
assert_grade { get_grade(90) == "A"}
assert_grade { get_grade(88) == "B"}
assert_grade { get_grade(72) == "C"}
assert_grade { get_grade(66) == "D"}
assert_grade { get_grade(50) == "F"}

# 5. Reflection
=begin
  What concepts did you review in this challenge?
    Block syntax was review for me. I think yield, however, was new. If I have encountered it
    before, then I was unaware of how it reroutes the workflow.

  What is still confusing to you about Ruby?
    I'm still unfamiliar with the rspec language. But this style of testing makes sense.

  What are you going to study to get more prepared for Phase 1?
    I'd like to continue using this method of testing in my driver code until I'm familiar
    some alternative such as rspec.
=end