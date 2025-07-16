Just a small capstone project in Lua

TODO
- Reintroduce the quiz evaluation
- Escaping HTML chars in opentdb or other formatting
    - https://github.com/TiagoDanin/htmlEntities-for-lua
- Introduce a counter, that tracks the number of invalid
    answers. If it exceeds 3, tell the user to type exit
    to to exit the quiz. Breaking the loop
- If a user answers incorrect, give correct answer

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
