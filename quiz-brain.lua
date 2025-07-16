math.randomseed(os.time())
math.random(); math.random(); math.random();

local quiz_data = require "quiz-data"

local quiz_brain = {}

local score = 0

function quiz_brain.get_random_question()
    local total_questions = #quiz_data
    local random_index = math.random(1, total_questions)

    return quiz_data[random_index], random_index
end

function quiz_brain.format_and_print_answers(correct_answer, incorrect_answers)
    local answer_array = {}
    table.insert(answer_array, correct_answer)
    for i=1, 3 do table.insert(answer_array, incorrect_answers[i]) end

    -- Swap correct answer to random table position
    local correct_answer_index = math.random(1,4)
    answer_array[1], answer_array[correct_answer_index] = answer_array[correct_answer_index], answer_array[1]

    for i,v in ipairs(answer_array) do
        print(string.format("%d.) %s", i, v))
    end

    print() -- new line for estatic reasons
    return correct_answer_index
end

function quiz_brain.get_user_answer(correct_answer)
    local current_user_answer = 0

    while current_user_answer == nil or current_user_answer < 1 or current_user_answer > 4 do
        io.write("Answer (1, 2, 3 or 4): ")
        current_user_answer = io.read()

        if current_user_answer:lower() == "exit" then
            print("Thanks for playing.")
            return "exit"
        end

        current_user_answer = tonumber(current_user_answer)
    end

    print("") -- new line for estatic reasons
    return current_user_answer == correct_answer
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

function quiz_brain.remove_question(question_index)
    table.remove(quiz_data, question_index)
end

function quiz_brain.get_score()
    return score
end

return quiz_brain
