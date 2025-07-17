local quiz_brain = require("quiz-brain")

local total_questions = 10
local seed = nil

-- NOT IMPLEMENTED YET!!
local difficulty = "easy"
local category = "general"
-- NOT IMPLEMENTED YET!!

-- Quiz Intro
print("Welcome to quizmaster 3000")
print("Type exit at anytime, to stop the quiz.\n")

-- IMPLEMENTATION OF SEEDING
while not seed do
    io.write("Enter a seed (if left empty a random seed will be used): #")
    seed = io.read()

    if seed == "" then
        print(string.format("Starting quiz using random seed #%d", quiz_brain.get_seed()))
    else
        seed = tonumber(seed)
        if seed then
            quiz_brain.set_seed(seed)
        else
            print("Invalid input")
        end
    end
end
-- IMPLEMENTATION OF SEEDING

-- Loop 10 times
for i=1, total_questions do
    -- Grab random question from quiz
    local current_question_data = quiz_brain.get_random_question()

    -- Present question to user
    quiz_brain.format_and_print_question(current_question_data.question)

    -- Present answers to user
    local current_correct_answer = quiz_brain.format_and_print_answers(
        current_question_data.correct_answer, current_question_data.incorrect_answers)

    -- Promt user for answer
    local user_answered_correct = quiz_brain.get_user_answer(current_correct_answer)
    if user_answered_correct == "exit" then
        break
    end

    -- Check if answer is correct and score accordingly
    quiz_brain.check_answer_and_add_score(user_answered_correct, current_question_data.correct_answer)
end

-- Display score
quiz_brain.evaluate_quiz(total_questions)
