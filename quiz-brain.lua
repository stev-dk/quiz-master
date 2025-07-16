math.randomseed(os.time())
math.random(); math.random(); math.random();

local quiz_data = require "quiz-data"

local quiz_brain = {}

local score = 0

function quiz_brain.getRandomQuestion()
    local total_questions = #quiz_data

    random_index = math.random(1, total_questions)

    return quiz_data[random_index], random_index
end

function quiz_brain.formatAndPrintAnswers(correct_answer, incorrect_answers)
    local answer_array = {}
    table.insert(answer_array, correct_answer)
    for i=1, 3 do table.insert(answer_array, incorrect_answers[i]) end

    -- Swap correct answer to random table position
    correctAnswerIndex = math.random(1,4)
    answer_array[1], answer_array[correctAnswerIndex] = answer_array[correctAnswerIndex], answer_array[1]

    for i,v in ipairs(answer_array) do
        print(string.format("%d.) %s", i, v))
    end

    print() -- new line for estatic reasons
    return correctAnswerIndex
end

function quiz_brain.getUserAnswer(correctAnswer)
    local currentUserAnswer = 0

    while currentUserAnswer == nil or currentUserAnswer < 1 or currentUserAnswer > 4 do
        io.write("Answer (1, 2, 3 or 4): ")
        currentUserAnswer = io.read()
        if currentUserAnswer:lower() == "exit" then
            print("Thanks for playing.")
            return "exit"
        end
        currentUserAnswer = tonumber(currentUserAnswer)
    end

    print("") -- new line for estatic reasons
    return currentUserAnswer == correctAnswer
end

function quiz_brain.check_answer_and_add_score(answer)
    if answer then
        score = score + 1
        io.write("Correct! ")
    else
        io.write("Incorrect! ")
    end

    print(string.format("Your score is now %d\n", score))
end

function quiz_brain.removeQuestion(questionIndex)
    table.remove(quiz_data, questionIndex)
end

function quiz_brain.get_score()
    return score
end

return quiz_brain
