-- Quiz Data: https://opentdb.com/
-- Online Converter: https://mageddo.com/tools/json-to-lua-converter

local questions = {
  response_code = 0,
  results = { {
    type = "multiple",
    difficulty = "easy",
    category = "Science: Computers",
    question = "What does the Prt Sc button do?",
    correct_answer = "Captures what&#039;s on the screen and copies it to your clipboard",
    incorrect_answers = { "Nothing", "Saves a .png file of what&#039;s on the screen in your screenshots folder in photos", "Closes all windows" }
  }, {
    type = "multiple",
    difficulty = "hard",
    category = "Science: Computers",
    question = "Which of these is not a key value of Agile software development?",
    correct_answer = "Comprehensive documentation",
    incorrect_answers = { "Individuals and interactions", "Customer collaboration", "Responding to change" }
  }, {
    type = "multiple",
    difficulty = "medium",
    category = "Science: Computers",
    question = "The teapot often seen in many 3D modeling applications is called what?",
    correct_answer = "Utah Teapot",
    incorrect_answers = { "Pixar Teapot", "3D Teapot", "Tennessee Teapot" }
  }, {
    type = "multiple",
    difficulty = "easy",
    category = "Science: Computers",
    question = "This mobile OS held the largest market share in 2012.",
    correct_answer = "iOS",
    incorrect_answers = { "Android", "BlackBerry", "Symbian" }
  }, {
    type = "multiple",
    difficulty = "hard",
    category = "Science: Computers",
    question = "The Harvard architecture for micro-controllers added which additional bus?",
    correct_answer = "Instruction",
    incorrect_answers = { "Address", "Data", "Control" }
  }, {
    type = "multiple",
    difficulty = "medium",
    category = "Science: Computers",
    question = "What is known as &quot;the brain&quot; of the Computer?",
    correct_answer = "Central Processing Unit",
    incorrect_answers = { "Motherboard", "Graphics Processing Unit", "Keyboard" }
  }, {
    type = "multiple",
    difficulty = "hard",
    category = "Science: Computers",
    question = "Who is the founder of Palantir?",
    correct_answer = "Peter Thiel",
    incorrect_answers = { "Mark Zuckerberg", "Marc Benioff", "Jack Dorsey" }
  }, {
    type = "multiple",
    difficulty = "medium",
    category = "Science: Computers",
    question = "On which day did the World Wide Web go online?",
    correct_answer = "December 20, 1990",
    incorrect_answers = { "December 17, 1996", "November 12, 1990", "November 24, 1995" }
  }, {
    type = "multiple",
    difficulty = "easy",
    category = "Science: Computers",
    question = "What is the most preferred image format used for logos in the Wikimedia database?",
    correct_answer = ".svg",
    incorrect_answers = { ".png", ".jpeg", ".gif" }
  }, {
    type = "multiple",
    difficulty = "hard",
    category = "Science: Computers",
    question = "The internet domain .fm is the country-code top-level domain for which Pacific Ocean island nation?",
    correct_answer = "Micronesia",
    incorrect_answers = { "Fiji", "Tuvalu", "Marshall Islands" }
  }, {
    type = "multiple",
    difficulty = "hard",
    category = "Science: Computers",
    question = "Which data structure does FILO apply to?",
    correct_answer = "Stack",
    incorrect_answers = { "Queue", "Heap", "Tree" }
  }, {
    type = "multiple",
    difficulty = "medium",
    category = "Science: Computers",
    question = "What does AD stand for in relation to Windows Operating Systems? ",
    correct_answer = "Active Directory",
    incorrect_answers = { "Alternative Drive", "Automated Database", "Active Department" }
  }, {
    type = "multiple",
    difficulty = "hard",
    category = "Science: Computers",
    question = "What is the name given to layer 4 of the Open Systems Interconnection (ISO) model?",
    correct_answer = "Transport",
    incorrect_answers = { "Session", "Data link", "Network" }
  }, {
    type = "multiple",
    difficulty = "easy",
    category = "Science: Computers",
    question = "The C programming language was created by this American computer scientist. ",
    correct_answer = "Dennis Ritchie",
    incorrect_answers = { "Tim Berners Lee", "al-Khwārizmī", "Willis Ware" }
  }, {
    type = "multiple",
    difficulty = "hard",
    category = "Science: Computers",
    question = "Which kind of algorithm is Ron Rivest not famous for creating?",
    correct_answer = "Secret sharing scheme",
    incorrect_answers = { "Hashing algorithm", "Asymmetric encryption", "Stream cipher" }
  }, {
    type = "multiple",
    difficulty = "hard",
    category = "Science: Computers",
    question = "What was the name of the security vulnerability found in Bash in 2014?",
    correct_answer = "Shellshock",
    incorrect_answers = { "Heartbleed", "Bashbug", "Stagefright" }
  }, {
    type = "multiple",
    difficulty = "medium",
    category = "Science: Computers",
    question = "What did the name of the Tor Anonymity Network orignially stand for?",
    correct_answer = "The Onion Router",
    incorrect_answers = { "The Only Router", "The Orange Router", "The Ominous Router" }
  }, {
    type = "multiple",
    difficulty = "easy",
    category = "Science: Computers",
    question = "In any programming language, what is the most common way to iterate through an array?",
    correct_answer = "&#039;For&#039; loops",
    incorrect_answers = { "&#039;If&#039; Statements", "&#039;Do-while&#039; loops", "&#039;While&#039; loops" }
  }, {
    type = "multiple",
    difficulty = "hard",
    category = "Science: Computers",
    question = "Released in 2001, the first edition of Apple&#039;s Mac OS X operating system (version 10.0) was given what animal code name?",
    correct_answer = "Cheetah",
    incorrect_answers = { "Puma", "Tiger", "Leopard" }
  }, {
    type = "multiple",
    difficulty = "easy",
    category = "Science: Computers",
    question = "What amount of bits commonly equals one byte?",
    correct_answer = "8",
    incorrect_answers = { "1", "2", "64" }
  }, {
    type = "multiple",
    difficulty = "medium",
    category = "Science: Computers",
    question = "What does the term MIME stand for, in regards to computing?",
    correct_answer = "Multipurpose Internet Mail Extensions",
    incorrect_answers = { "Mail Internet Mail Exchange", "Multipurpose Interleave Mail Exchange", "Mail Interleave Method Exchange" }
  }, {
    type = "multiple",
    difficulty = "medium",
    category = "Science: Computers",
    question = "Which of these is the name for the failed key escrow device introduced by the National Security Agency in 1993?",
    correct_answer = "Clipper Chip",
    incorrect_answers = { "Enigma Machine", "Skipjack", "Nautilus" }
  }, {
    type = "multiple",
    difficulty = "medium",
    category = "Science: Computers",
    question = "What is the name of the default theme that is installed with Windows XP?",
    correct_answer = "Luna",
    incorrect_answers = { "Neptune", "Whistler", "Bliss" }
  }, {
    type = "multiple",
    difficulty = "hard",
    category = "Science: Computers",
    question = "What vulnerability ranked #1 on the OWASP Top 10 in 2013?",
    correct_answer = "Injection ",
    incorrect_answers = { "Broken Authentication", "Cross-Site Scripting", "Insecure Direct Object References" }
  }, {
    type = "multiple",
    difficulty = "easy",
    category = "Science: Computers",
    question = "In computing, what does MIDI stand for?",
    correct_answer = "Musical Instrument Digital Interface",
    incorrect_answers = { "Musical Interface of Digital Instruments", "Modular Interface of Digital Instruments", "Musical Instrument Data Interface" }
  }, {
    type = "multiple",
    difficulty = "hard",
    category = "Science: Computers",
    question = "Which RAID array type is associated with data mirroring?",
    correct_answer = "RAID 1",
    incorrect_answers = { "RAID 0", "RAID 10", "RAID 5" }
  }, {
    type = "multiple",
    difficulty = "medium",
    category = "Science: Computers",
    question = "In CSS, which of these values CANNOT be used with the &quot;position&quot; property?",
    correct_answer = "center",
    incorrect_answers = { "static", "absolute", "relative" }
  }, {
    type = "multiple",
    difficulty = "medium",
    category = "Science: Computers",
    question = "What does &quot;LCD&quot; stand for?",
    correct_answer = "Liquid Crystal Display",
    incorrect_answers = { "Language Control Design", "Last Common Difference", "Long Continuous Design" }
  }, {
    type = "multiple",
    difficulty = "hard",
    category = "Science: Computers",
    question = "What was the name of the first Bulgarian personal computer?",
    correct_answer = "IMKO-1",
    incorrect_answers = { "Pravetz 82", "Pravetz 8D", "IZOT 1030" }
  }, {
    type = "multiple",
    difficulty = "hard",
    category = "Science: Computers",
    question = "What type of sound chip does the Super Nintendo Entertainment System (SNES) have?",
    correct_answer = "ADPCM Sampler",
    incorrect_answers = { "FM Synthesizer", "Programmable Sound Generator (PSG)", "PCM Sampler" }
  }, {
    type = "multiple",
    difficulty = "easy",
    category = "Science: Computers",
    question = "What does GHz stand for?",
    correct_answer = "Gigahertz",
    incorrect_answers = { "Gigahotz", "Gigahetz", "Gigahatz" }
  }, {
    type = "multiple",
    difficulty = "medium",
    category = "Science: Computers",
    question = "What is the correct term for the metal object in between the CPU and the CPU fan within a computer system?",
    correct_answer = "Heat Sink",
    incorrect_answers = { "CPU Vent", "Temperature Decipator", "Heat Vent" }
  }, {
    type = "multiple",
    difficulty = "easy",
    category = "Science: Computers",
    question = "In computing, what does LAN stand for?",
    correct_answer = "Local Area Network",
    incorrect_answers = { "Long Antenna Node", "Light Access Node", "Land Address Navigation" }
  }, {
    type = "multiple",
    difficulty = "easy",
    category = "Science: Computers",
    question = "In web design, what does CSS stand for?",
    correct_answer = "Cascading Style Sheet",
    incorrect_answers = { "Counter Strike: Source", "Corrective Style Sheet", "Computer Style Sheet" }
  }, {
    type = "multiple",
    difficulty = "easy",
    category = "Science: Computers",
    question = "On a standard American QWERTY keyboard, what symbol will you enter if you hold the shift key and press 1?",
    correct_answer = "Exclamation Mark",
    incorrect_answers = { "Dollar Sign", "Percent Sign", "Asterisk" }
  }, {
    type = "multiple",
    difficulty = "hard",
    category = "Science: Computers",
    question = "What major programming language does Unreal Engine 4 use?",
    correct_answer = "C++",
    incorrect_answers = { "Assembly", "C#", "ECMAScript" }
  }, {
    type = "multiple",
    difficulty = "hard",
    category = "Science: Computers",
    question = "Dutch computer scientist Mark Overmars is known for creating which game development engine?",
    correct_answer = "Game Maker",
    incorrect_answers = { "Stencyl", "Construct", "Torque 2D" }
  }, {
    type = "multiple",
    difficulty = "medium",
    category = "Science: Computers",
    question = "Which of these programming languages is a low-level language?",
    correct_answer = "Assembly",
    incorrect_answers = { "Python", "C#", "Pascal" }
  }, {
    type = "multiple",
    difficulty = "easy",
    category = "Science: Computers",
    question = "In the programming language Java, which of these keywords would you put on a variable to make sure it doesn&#039;t get modified?",
    correct_answer = "Final",
    incorrect_answers = { "Static", "Private", "Public" }
  }, {
    type = "multiple",
    difficulty = "easy",
    category = "Science: Computers",
    question = "Which SQL keyword is used to fetch data from a database?",
    correct_answer = "SELECT",
    incorrect_answers = { "INDEX", "VALUES", "EXEC" }
  }, {
    type = "multiple",
    difficulty = "easy",
    category = "Science: Computers",
    question = "Which computer hardware device provides an interface for all other connected devices to communicate?",
    correct_answer = "Motherboard",
    incorrect_answers = { "Central Processing Unit", "Hard Disk Drive", "Random Access Memory" }
  }, {
    type = "multiple",
    difficulty = "easy",
    category = "Science: Computers",
    question = "What does the &quot;MP&quot; stand for in MP3?",
    correct_answer = "Moving Picture",
    incorrect_answers = { "Music Player", "Multi Pass", "Micro Point" }
  }, {
    type = "multiple",
    difficulty = "hard",
    category = "Science: Computers",
    question = "How many Hz does the video standard PAL support?",
    correct_answer = "50",
    incorrect_answers = { "59", "60", "25" }
  }, {
    type = "multiple",
    difficulty = "medium",
    category = "Science: Computers",
    question = "Moore&#039;s law originally stated that the number of transistors on a microprocessor chip would double every...",
    correct_answer = "Year",
    incorrect_answers = { "Four Years", "Two Years", "Eight Years" }
  }, {
    type = "multiple",
    difficulty = "medium",
    category = "Science: Computers",
    question = "What was the name given to Android 4.3?",
    correct_answer = "Jelly Bean",
    incorrect_answers = { "Lollipop", "Nutella", "Froyo" }
  }, {
    type = "multiple",
    difficulty = "hard",
    category = "Science: Computers",
    question = "Which of these names was an actual codename for a cancelled Microsoft project?",
    correct_answer = "Neptune",
    incorrect_answers = { "Enceladus", "Pollux", "Saturn" }
  }, {
    type = "multiple",
    difficulty = "easy",
    category = "Science: Computers",
    question = "If you were to code software in this language you&#039;d only be able to type 0&#039;s and 1&#039;s.",
    correct_answer = "Binary",
    incorrect_answers = { "JavaScript", "C++", "Python" }
  }, {
    type = "multiple",
    difficulty = "hard",
    category = "Science: Computers",
    question = "Which of these Cherry MX mechanical keyboard switches is both tactile and clicky?",
    correct_answer = "Cherry MX Blue",
    incorrect_answers = { "Cherry MX Black", "Cherry MX Red", "Cherry MX Brown" }
  }, {
    type = "multiple",
    difficulty = "medium",
    category = "Science: Computers",
    question = "What is the main CPU is the Sega Mega Drive / Sega Genesis?",
    correct_answer = "Motorola 68000",
    incorrect_answers = { "Zilog Z80", "Yamaha YM2612", "Intel 8088" }
  }, {
    type = "multiple",
    difficulty = "hard",
    category = "Science: Computers",
    question = "Which of the following is the oldest of these computers by release date?",
    correct_answer = "TRS-80",
    incorrect_answers = { "Commodore 64", "ZX Spectrum", "Apple 3" }
  } }
}

return questions
