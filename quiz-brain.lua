local seed = os.time()
math.randomseed(seed)
math.random(); math.random(); math.random();

local quiz_data = require("quiz-data")
local htmlEntities = require("htmlEntities")

local quiz_brain = {}

local score = 0
local invalid_input_before_warning = 3

function quiz_brain.set_seed(seed)
    math.randomseed(seed)
    print(string.format("Starting quiz using seed: %d", seed))
end

function quiz_brain.get_random_question()
    local total_questions = #quiz_data["results"]
    local random_index = math.random(1, total_questions)
    local random_question_data = quiz_data["results"][random_index]
    table.remove(quiz_data["results"], random_index)

    return random_question_data
end

function quiz_brain.format_and_print_answers(correct_answer, incorrect_answers)
    local answer_array = {}
    table.insert(answer_array, correct_answer)
    for i=1, 3 do table.insert(answer_array, incorrect_answers[i]) end

    -- Swap correct answer to random table position
    local correct_answer_index = math.random(1,4)
    answer_array[1], answer_array[correct_answer_index] = answer_array[correct_answer_index], answer_array[1]

    for i,v in ipairs(answer_array) do
        print(string.format("%d.) %s", i, htmlEntities.decode(v)))
    end

    print("") -- new line for estatic reasons
    return correct_answer_index
end

function quiz_brain.format_and_print_question(question)
    print(htmlEntities.decode(question))
end

function quiz_brain.get_user_answer(correct_answer)
    local current_user_answer = 0
    local loops = 1

    while current_user_answer == nil or current_user_answer < 1 or current_user_answer > 4 do
        if (loops > invalid_input_before_warning) then
            print("The quiz only accepts numbers 1-4, not characters or words.")
            print("Type exit to exit the quiz.")
        end

        io.write("Answer (1, 2, 3 or 4): ")
        current_user_answer = io.read()

        if current_user_answer:lower() == "exit" then
            print("Thanks for playing.")
            return "exit"
        end

        current_user_answer = tonumber(current_user_answer)
        loops = loops + 1
    end

    print("") -- new line for estatic reasons
    return current_user_answer == correct_answer
end

function quiz_brain.check_answer_and_add_score(user_answer, correct_answer)
    if user_answer then
        score = score + 1
        io.write("Correct! ")
    else
        print(string.format("Incorrect! The correct answer is: %s", htmlEntities.decode(correct_answer)))
    end

    print(string.format("Your score is now %d\n", score))
end

function quiz_brain.evaluate_quiz(number_of_questions)
    local percent_correct = (100 / number_of_questions) * score

    print(string.format("You got %d percent correct.", percent_correct))

    if percent_correct == 100 then
        print("CONGRATULATIONS! YOU ARE THE QUIZMASTER 3000!")
    elseif percent_correct > 74 then
        print("Good job! Your knowledge is above average. Be proud!")
    elseif percent_correct > 49 then
        print("You barely passed. There's room for improvement. Keep going and you'll get there!")
    elseif percent_correct > 24 then
        print("You know... something. Maybe time to open a book.")
    else
        print("Perhaps this quiz wasn't meant for you.")
    end
end

function quiz_brain.get_seed()
    return seed
end

return quiz_brain
