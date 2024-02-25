class Question
  attr_accessor :prompt, :answer

  def initialize(prompt, answer)
    @prompt = prompt
    @answer = answer
  end
end

p1 = "What color are apples?\n(a)red\n(b)purple\n(c)orange"
p2 = "What color are grapes?\n(a)red\n(b)purple\n(c)orange"
p3 = "What color are bananas?\n(a)red\n(b)purple\n(c)yellow"

questions = [
  Question.new(p1, "a"),
  Question.new(p2, "b"),
  Question.new(p3, "c")
]

def run_test(questions)
  score = 0
  for question in questions
    puts question.prompt
    user_answer = gets.chomp()
    if user_answer.downcase == question.answer.downcase
      score += 1
    else
      puts "You got it wrong."
    end
  end
  puts "You got #{score} correct out of 3."
end

run_test(questions)
