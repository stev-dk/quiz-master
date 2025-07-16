Just a small capstone project in Lua

TODO
- Uniform naming
- Reintroduce the quiz evaluation

version 0.2
- Updated quiz to sudo take JSON files from opentdb
- Updated from single file (quizmaster3000.lua) to multiple
    files (main.lua, quiz-brain.lua and quiz-data.lua)

version 0.1
- Show an intro message
- Use a table of quiz questions with:
    question (string)
    options (table)
    correct (number index of correct option)
- Loop through each question using a numeric for loop
- Let the user input their answer (as a number)
- Give immediate feedback (Correct / Incorrect)
- Track and print final score
- Use at least one custom function for checking the answer or displaying a question
