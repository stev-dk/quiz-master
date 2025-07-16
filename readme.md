Just a small capstone project in Lua

FUTURE PLANS
- Add support for reading the raw JSON data
    making the converter obsolete
- Adding GUI
- Adding a SEED, for consistent quiz, to quiz against friends
    or enemies...

TODO, near future plans
- Add support for choosing difficulty
- Add support for choosing category

Version 0.3
- Decode HTML entities in quiz data from opentdb
    using https://github.com/TiagoDanin/htmlEntities-for-lua
- Refactor printing question to be called from quiz-brain
    to avoid requiring htmlEntities.lua in main.lua

Version 0.2.4
- Reintroduced the quiz evaluation from initial project
    but with more levels of feedback.

Version 0.2.3
- Now shows the user the correct answer, if a user guessed wrong
- After three invalid inputs, words, characters or
    lower than 1 or higher than 4, the game gives info to the user
    to type exit to stop the quiz. Also tells the user what input
    is valid

Version 0.2.2
- Reformatted some code, to make the program able to read
    data directly from the converter.
- Slightly reformatted some code to save space, and
    enhance readability

Version 0.2.1
- Uniformed naming to use snake case

Version 0.2
- Updated quiz to sudo take JSON files from opentdb
- Updated from single file (quizmaster3000.lua) to multiple
    files (main.lua, quiz-brain.lua and quiz-data.lua)

Version 0.1
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
