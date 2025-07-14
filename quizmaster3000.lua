--[[
QUIZ Master 3000
9th of july 2025
Steffan Johannesen
--]]

local score = 0
local questions = {
    {
      question = "What is the capital of France?",
      options = {"Paris", "Berlin", "Rome"},
      correct = 1
    },
    {
      question = "Which planet is closest to the sun?",
      options = {"Earth", "Venus", "Mercury"},
      correct = 3
    },
    {
      question = "How many legs does a spider have?",
      options = {"6", "8", "10"},
      correct = 2
    }
  }

print("Welcome to quizmaster 3000")
-- Ascii art?

function printOptions(optionsArray)
    for i, v in ipairs(optionsArray) do
        print(string.format("%d.) %s", i, v))
    end
end

function askForAnswer()
    io.write("Answer: ")
    local answer = io.read()

    while not tonumber(answer) do
        print("Not a number, try again or type exit to exit.")
        io.write("Answer: ")
        answer = io.read()
        
        if answer == "exit" then return end
    end

    return tonumber(answer)
end

function checkAnswer(userAnswer, correctAnswer)
    if userAnswer == correctAnswer then
        -- Add points
        score = score + 1
        io.write("Correct!")
    else
        io.write("Incorrect!")
    end
    io.write(string.format(" Your current score is %d\n", score))
end

function evaluateQuiz()
    local percentCorrect = (100 / #questions) * score
    print(string.format("You got %d percent correct.", percentCorrect))
    
    if percentCorrect == 100 then
        print("CONGRATULATIONS! YOU ARE THE QUIZMASTER 3000!")
    elseif percentCorrect > 65 then
        print("Good job! Your knowledge is above average. Be proud!")
    elseif percentCorrect > 32 then
        print("You barely passed. There's room for improvement. Keep going and you'll get there!")
    else
        print("Perhaps this quiz wasn't meant for you.")
    end
end

-- Main quiz loop
for k, quiz in ipairs(questions) do
    print(quiz.question)

    printOptions(quiz.options)
    local answer = askForAnswer()
    if answer == nil then
        print("You chose to quit. Thanks for playing.")
        break
    end
    checkAnswer(answer, quiz.correct)
end

print(string.format("\nYou finished the quiz! You got %d correct of %d possible.", score, #questions))
evaluateQuiz()