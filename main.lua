local quiz_brain = require "quiz-brain"

local total_questions = 10

-- Quiz Intro
print("Welcome to quizmaster 3000\n")
print("Type exit at anytime, to stop the quiz.")

-- Loop 10 times
for i=1, total_questions do
    -- Grab random question from quiz
    local currentQuestionData, currentQuestionIndex = quiz_brain.getRandomQuestion()

    -- Present question to user
    print(currentQuestionData.question)

    -- Present answers to user
    local currentCorrectAnswer = quiz_brain.formatAndPrintAnswers(currentQuestionData.correct_answer, currentQuestionData.incorrect_answers)

    -- Promt user for answer
    local userAnsweredCorrect = quiz_brain.getUserAnswer(currentCorrectAnswer)
    if userAnsweredCorrect == "exit" then
        break
    end

    -- Check if answer is correct
    -- Keep score
    quiz_brain.check_answer_and_add_score(userAnsweredCorrect)

    -- Delete grabbed question from this session
    quiz_brain.removeQuestion(currentQuestionIndex)
end

-- Display score
print(string.format("You finished the quiz! You got a score of %d out %d possible.", quiz_brain.get_score(), total_questions))
