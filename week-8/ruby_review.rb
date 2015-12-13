=begin

-- Or Equal --
(http://www.rubeque.com/problems/or-equal?solution_code=%22rubeque%22)

In Ruby, the combination of "||=" has some great uses. It also has some limitations too though.

code:

b = 8
c = false

a ||= "rubeque"
b ||= "rubeque"
c ||= "rubeque"

assert_equal a, "rubeque"
assert_equal b, 8
assert_equal c, ___

my solution: "rubeque"

-- Reflection --

What concepts did you review or learn in this challenge?

I learned about the ||= operator (meaning 'or equal'). Even though one might expect it to operate like a = a || b it acutally operates like a||a = b. In other words, IF 'a' is true, then remain a, ELSE a = b. In the problem above, 'a' was nil, 'b' was a definitive value, and 'c' was false. Nil and false both return as false, so they are set to equal the value on the righthand side.

What is still confusing to you about Ruby?

I'd mostly just like to know more. But this exercise demonstrates that from here on out it's about ironing out details and familiarity. I was unaware that || could be combined with = like that. And I was definitely unaware of the misconception of its use. I'm sure the same applies to quite a few things I might think I know about Ruby.

What are you going to study to get more prepared for Phase 1?

Well, these exercises are pretty cool. They seem to be focused on erradicating misconceptions through creating challenges. Otherwise, I really just need to work on my website. Ruby feels like dessert to me right now, but I really need my CSS vegetables for a while.

=end