Just a small capstone project in Lua

TODO
- Reintroduce the quiz evaluation from initial project
- Escaping HTML chars in opentdb JSON data
    - https://github.com/TiagoDanin/htmlEntities-for-lua
- Add support for choosing difficulty
- Add support for choosing category
- Add support for reading the raw JSON data
    making the converter obsolete

version 0.2.3
- Now shows the user the correct answer, if a user guessed wrong
- After three invalid inputs, words, characters or
    lower than 1 or higher than 4, the game gives info to the user
    to type exit to stop the quiz. Also tells the user what input
    is valid

version 0.2.2
- Reformatted some code, to make the program able to read
    data directly from the converter.
- Slightly reformatted some code to save space, and
    enhance readability

version 0.2.1
- Uniformed naming to use snake case

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
