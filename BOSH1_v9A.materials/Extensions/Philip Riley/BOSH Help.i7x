BOSH Help by Philip Riley begins here.

Use authorial modesty.

Include Tutorial by Philip Riley.

Help Area is a region. The Bureau of Special Help, the Observation Room, the ornamental garden, and the living room are in the Help Area.

After taking something while in the Help Area for the first time:
	if the action is not silent:
		say "Taken. Try taking INVENTORY to see what you picked up.";
	otherwise:
		say "[line break](You have just taken [the noun]. Try taking INVENTORY to see what you picked up.)";

After taking inventory while in the Help Area for the first time:
	if the player's command matches the text "inventory", case insensitively:
		say "You could also just type I to take inventory.";

The Bureau of Special Help is a room. "It is bare save for a bookshelf and a button on the wall marked 'Exit'. Faraji can go east from here. There is also [if the living room door is open]an open[otherwise]a closed[end if] door to the north."

The tutorial message is "You can type EXAMINE BOOKSHELF to see what's on the shelf, or PUSH BUTTON to leave help. You can also type a direction (like EAST) to move around. Type LOOK to repeat the description of the room"

The exit button is scenery in the Bureau of Special Help. The description is "A button that will take Faraji back to the real world."

The Help Shelf is a scenery supporter in Bureau of Special Help. The description is "The shelf is full of books, each with a title that seems to promise help with some problem or other. Faraji may READ any of them to get some help."
Understand "bookshelf/bookshelves/books/book/shelves" as the Help Shelf.

IF Basics is a thing. It is on the Help Shelf. The printed name is "[italic type]IF Basics[roman type]". Understand "book" as IF Basics.

The description is "Welcome to the world of interactive fiction! This book will help you get started with the basics of playing interactive fiction, specifically those games known as 'parser-based' games, or 'text adventures.' By getting here and reading this book, you've already taken the first step. Congratulations! Now, let's get started.

You're in a world made of text. Every turn you typically see a description of your surroundings, with which you can interact. You interact with this world by typing commands. The most basic command is to move around. You can do this by typing directions, such as 'north,' 'south,' 'east,' or 'west.' You can also use 'up' and 'down' to move vertically, and sometimes 'in' and 'out'. You can also move northeast, southwest, etc.

You can also interact with objects in the world. You can type 'look' to see the description of the room you're in. You can type 'examine' followed by an object to get a closer look at it. You can type 'take' or 'get' followed by an object to pick it up. You can type 'drop' followed by an object to drop it. You can type 'inventory' or 'i' to see what you're carrying.

You're in a safe place now, so go experiment! When you're ready to continue your adventure, PRESS THE BUTTON to leave this place and return to the real world. Good luck!".

Commands Volume 1 is a thing. It is on the Help Shelf. The printed name is "[italic type]Commands Volume 1[roman type]". Understand "book" as Commands Volume 1.
The description is "This book will help you learn the basic commands you can use to interact with the world of interactive fiction. Here are some of the most common commands you can use:

LOOK (or L): This command will repeat the description of the room you're in. It's useful if you've forgotten what's around you.

EXAMINE (or X): This command will give you a closer look at an object in the room. You can type EXAMINE followed by the name of the object you want to look at.

TAKE (or GET): This command will allow you to pick up an object in the room. You can type TAKE followed by the name of the object you want to pick up.

DROP: This command will allow you to drop an object you're carrying. You can type DROP followed by the name of the object you want to drop.

INVENTORY (or I): This command will show you a list of the objects you're carrying. You can type INVENTORY to see what you're carrying.

GO (or MOVE): This command will allow you to move in a particular direction. You can type GO followed by the direction you want to move in. Alternatively, you can just type the direction (or an abbreviation) itself.

OPEN: This command will allow you to open a container. You can type OPEN followed by the name of the container you want to open.

CLOSE: This command will allow you to close a container. You can type CLOSE followed by the name of the container you want to close.

SAVE: You can type SAVE to save your game. You can then type RESTORE to restore your game to the point where you saved it.

One of the most important things to remember is that simple commands are usually the best. The parser is designed to understand simple, direct commands. If you're not sure what to do, try typing a simple command and see what happens. Good luck!".

Commands Volume 2 is a thing. It is on the Help Shelf. The printed name is "[italic type]Commands Volume 2[roman type]". Understand "book" as Commands Volume 2.

The description is "This book will help you learn some intermediate commands you can use to interact with the world of interactive fiction. Here are some of the most common commands you can use:

WAIT (or Z): This command will allow you to wait for a turn.

ASK: You can type ASK a character ABOUT a topic to ask a character about a particular topic. Note that not all characters will respond to all topics. If you're already talking to a character, you can just type ASK ABOUT followed by the topic.

UNLOCK: This command will allow you to unlock a locked object. You can type UNLOCK object WITH key.

LOCK: This command will allow you to lock a lockable object. You can type LOCK object WITH key.

LOOK UP: Some games allow you to LOOK UP a topic IN a book.

PUT IN: This command will allow you to put an object in a container. You can type PUT object IN container.

PUT ON: This command will allow you to put an object on a supporter. You can type PUT object ON surface.

HINTS: If you're stuck, you can type HINTS to get a list of available hint topics. You can then type HINT followed by the topic you want a hint on. Note that the available hints will change depending on where you are in the game.

UNDO: You can type UNDO to undo your last move. Note that not all games support this command. This game does.

QUIT: You can type QUIT to quit the game.

SCRIPT ON: You can type SCRIPT ON to turn on the transcript feature, which will record everything that happens in the game. You can then type SCRIPT OFF to turn off the transcript feature.".

Commands Volume 3 is a thing. It is on the Help Shelf. The printed name is "[italic type]Commands Volume 3[roman type]". Understand "book" as Commands Volume 3.

The description is "This book will help you learn some more advanced commands you can use to interact with the world of interactive fiction. Here are some of the most common commands you can use:

PUSH: This command will allow you to push an object in the room. You can type PUSH followed by the name of the object you want to push. Sometimes you can push something to another room by typing PUSH object direction.

PULL: This command will allow you to pull an object in the room. You can type PULL followed by the name of the object you want to pull.

TURN: This command will allow you to turn an object in the room. You can type TURN followed by the name of the object you want to turn.

TYPE: This command will allow you to type on a keyboard or keypad in the room. You can enter TYPE something ON keyboard.

CLIMB: This command will allow you to climb an object in the room. You can type CLIMB followed by the name of the object you want to climb.

HIT: This command will allow you to hit an object in the room. You can type HIT followed by the name of the object you want to hit. Sometimes you can use HIT something WITH object. Not all games allow hitting.

AGAIN (or G): This command will allow you to repeat your last command. You can type AGAIN to repeat your last command."



Strategies of Adventuring is a thing. It is on the Help Shelf. The printed name is "[italic type]Strategies of Adventuring[roman type]". Understand "book" as Strategies of Adventuring.

The description is "This book will help you learn some strategies for playing interactive fiction. Here are some tips to get you started:

1. Explore: One of the most important things you can do in interactive fiction is to explore your surroundings. Look around, examine objects, and try different commands to see what happens. Don't get stuck in one place; keep moving and trying new things.

2. Take Notes: Interactive fiction can be complex, with many different locations, objects, and characters to keep track of. It's a good idea to take notes as you play, so you can remember important details and clues.

3. Talk to Characters: Many interactive fiction games have characters you can interact with. Try talking to them, asking them questions, and learning more about the world you're in. Characters can provide important information and clues to help you progress in the game.

4. Try Different Commands: Every once in a while, try typing a command you haven't tried before. You never know what might happen!

5. Don't Give Up: Interactive fiction can be challenging, but it's also rewarding. If you get stuck, don't give up. Try different things, explore new areas, and keep experimenting. You'll be surprised at what you can discover."

Grammar of IF is a thing. It is on the Help Shelf. The printed name is "[italic type]Grammar of IF[roman type]". Understand "book" as Grammar of IF.

The description is "This book will help you learn some advanced grammar (and other) rules for playing interactive fiction. Here are some of the most common advanced grammar rules you can use:

1. Compound Commands: You can type multiple commands on one line by separating them with a period. For example, you can type TAKE KEY. UNLOCK DOOR to take the key and unlock the door in one turn. Using THEN instead of a period will also work.

2. Compound Objects: You can refer to multiple objects at once by separating them with 'and'. For example, you can type TAKE KEY AND LANTERN to take both the key and the lantern in one turn.

3. Abbreviations: You can use abbreviations for common commands. For example, you can type X KEY to examine the key, or L to LOOK. You can also use abbreviations for directions, such as N for NORTH, S for SOUTH, SW for SOUTHWEST, etc. Some other common abbreviations include I for INVENTORY, Z to WAIT, and G to do the same thing AGAIN.

4. Pronouns: You can use pronouns to refer to objects you've already mentioned. For example, if you've already mentioned the key, you can type TAKE IT to take the key. You can also use pronouns to refer to characters, such as HIM or HER or THEM.

5. Prepositions: You can use prepositions to specify how you want to interact with an object. For example, you can type PUT KEY IN BOX to put the key in the box, or GIVE KEY TO WALRUS to give the key to the walrus.

6. Shortened Names: You can usually refer to objects by part of their names. For example, you might refer to the Flying Purple People Eater as just PURPLE or FLYING or even EATER.

7. Synonyms: Sometimes you can use synonyms for names and commands, such as TORCH instead of FLASHLIGHT, or ATTACK instead of HIT."

BOSH Game Book is a thing. It is on the Help Shelf. The printed name is "[italic type]BOSH Game Book[roman type]". Understand "BOSH/game/book/gamebook" as BOSH Game Book.

The description is "The game you are playing is 'Bureau of Strange Happenings', or BOSH for short. It is a text adventure game, a type of game where you interact with a world made of text. In BOSH, you play the role of Agent Faraji, investigating strange occurrences in the United States and its territories. As Agent Faraji, you will travel to different locations, talk to characters, and solve puzzles to uncover the truth behind these strange happenings.

For some helpful tips for BOSH, type ABOUT."


The help-wardrobe is a room.
The help closet is a room.

The original location is a room that varies.
The original interlocutor is an object that varies.

Check helping when the location is in Help Area:
	say "Faraji is already in the Bureau of Special Help. To leave, press the button." instead.

Carry out helping:
	say "Suddenly Agent Faraji is surrounded by a white vapor. When it clears, they find themself somewhere else...";
	now the original location is the location of the player;
	now the original interlocutor is the current interlocutor;
	now the player is in the Bureau of Special Help;
	now the current interlocutor is nothing;
	repeat with the item running through things worn by the player:
		now the item is in the help-wardrobe;
	repeat with the item running through things carried by the player:
		now the item is in the help closet;

Instead of pushing the exit button:
	say "Faraji presses the button and finds themself back in the real world.";
	now the player is in the original location;
	now the current interlocutor is the original interlocutor;
	repeat with the item running through things in the help-wardrobe:
		now the item is worn by the player;
	repeat with the item running through things in the help closet:
		now the item is carried by the player;
	now the living room key is nowhere;
	now the umbrella is on the viewing couch;
	now Doctor Helpful carries Advanced Adventuring;
	now the yellow flower is nowhere;
	now Doctor Helpful for the book is not exhausted;
	now IF Basics is on the Help Shelf;
	now Commands Volume 1 is on the Help Shelf;
	now Commands Volume 2 is on the Help Shelf;
	now Strategies of Adventuring is on the Help Shelf;
	now Commands Volume 3 is on the Help Shelf;
	now Grammar of IF is on the Help Shelf;
	now BOSH Game Book is on the Help Shelf;
	now the Bad Luck Counter is 0;
	now the umbrella is closed;
	now the living room door is locked;
	truncate the queue of Doctor Helpful to 0 entries;

An observed room is a kind of room. An observed room has a room called the next room. 

The fake-lake is an observed room. "a lake at night, pelted by rain. Nothing can be seen through the storm-darkened waters".

The fake-lake-thing is scenery in the fake-lake. It is privately-named. The printed name is "lake". Understand "lake" as the fake-lake-thing. The description is "The lake is dark and stormy."

The fake-rain is scenery in the fake-lake. It is privately-named. The printed name is "rain". Understand "rain/storm" as the fake-rain. The description is "The rain is coming down in sheets, making it impossible to see anything through the storm-darkened waters." 

The fake-parlor is an observed room. It is privately-named. "a creepy looking place. It looks like the parlor of an old house, maybe Colonial era. There is a table with some chairs, with a book on the table. On the periphery of the window something insect-like flutters, largely out of view".
The next room of the fake-lake is the fake-parlor. 

The fake-table is scenery in the fake-parlor. It is privately-named. The description is "The table is old and weathered, with a book on top of it." Understand "old/weathered/table" as the fake-table. The printed name is "table".

The fake-book is scenery in the fake-parlor. It is privately-named. The description is "The book is too far away to read." Understand "book" as the fake-book. The printed name is "book".

The fake-chairs are scenery in the fake-parlor. They are privately-named. The description is "The chairs are old and rickety." Understand "old/rickety/chairs/chair" as the fake-chairs. They are plural-named. The printed name is "chairs".

The fake-doll-fly is scenery in the fake-parlor. It is privately-named. The description is "It seems like an insect, but with other inscrutable parts, and too large. It's hard to make out the details." Understand "insect/insect-like/bug/bug-like/fly" as the fake-doll-fly. The printed name is "insect".

The fake-hyperplane is an observed room. "a blinding white space with impossible geometry. What looks like a structure of some kind is visible in the distance, but it's hard to make out the details".
The next room of the fake-parlor is the fake-hyperplane.

The fake-structure is scenery in the fake-hyperplane. It is privately-named. The description is "The structure is too far away to make out the details." Understand "structure" as the fake-structure. The printed name is "structure".

The fake-geometry is scenery in the fake-hyperplane. It is privately-named. The description is "The geometry of the space is difficult to comprehend." Understand "impossible/geometry" as the fake-geometry. The printed name is "impossible geometry".

The fake-steeple is an observed room. "a steeple in a small town. The steeple is old and weathered, and the town looks deserted. There is a telescope on a tripod, pointed at the town".
The next room of the fake-hyperplane is the fake-steeple.
The next room of the fake-steeple is the fake-lake.

The fake-telescope is scenery in the fake-steeple. It is privately-named. The description is "The telescope is pointed at the town. It is mounted on a tripod." Understand "telescope" as the fake-telescope. The printed name is "telescope".

The fake-tripod is scenery in the fake-steeple. It is privately-named. The description is "The tripod is holding the telescope steady." Understand "tripod" as the fake-tripod. The printed name is "tripod".

The fake-town is scenery in the fake-steeple. "A small town, deserted. The buildings look from another era, but strangely still new.". Understand "small/deserted/buildings/town" as the fake-town. The printed name is "town".

The Observation Room is east of the Bureau of Special Help. "This small white room seems like a museum gallery, but with a window instead of art[window description]. 

A comfortable-looking viewing couch dominates the center of the observation room. Exits lead north and west."

The Observation Room has a room called the window contents. The window contents is the fake-lake.
The tutorial message is "[if the player is not on the comfortable viewing couch]You can type LOOK to repeat the description of the room. You can also EXAMINE an object to get a closer look at it. Or you can SIT ON THE COUCH[otherwise]You can STAND UP from the couch[end if]"

The comfortable viewing couch is an enterable scenery supporter in the Observation Room. It is exposed. The description is "The couch is soft and comfortable." Understand "comfortable-looking/sofa/seat/seating" as the comfortable viewing couch.

Does the player mean entering the comfortable viewing couch:
	it is very likely.

Bad Luck Counter is a number that varies. Bad Luck Counter is 0.

The umbrella is on the comfortable viewing couch. The description is "A sturdy black umbrella. [if the umbrella is open]It is open[otherwise]It is closed[end if].". 
Understand "black/sturdy" as the umbrella. "Someone has left an umbrella on the couch."
The tutorial message is "[if the player carries the umbrella and the location is the Observation Room]You could PUT UMBRELLA ON COUCH[otherwise]You can type TAKE UMBRELLA to pick it up. Or you can OPEN UMBRELLA to open it[end if]"

The umbrella can be open or closed. The umbrella is closed. The umbrella can be openable. The umbrella is openable.

Description notes for the umbrella:
	if the umbrella is open:
		add "open" to descriptive notes;
	otherwise:
		add "closed" to descriptive notes.
	

Check opening the umbrella:
	if the player does not carry the umbrella and the umbrella is touchable:
		say "(first taking the umbrella)[command clarification break]";
		silently try taking the umbrella;
		if the player does not carry the umbrella:
			stop the action;

Check opening the umbrella when the umbrella has been open:
	say "No way. Faraji won't do [italic type]that[roman type] again." instead;

After opening the umbrella:
	say "Oh no, it's bad luck to open an umbrella indoors! Faraji should close it quickly!";
	now the Bad Luck Counter is 5;

Every turn when the umbrella is open:
	increment the Bad Luck Counter;

Check closing the umbrella:
	if the player does not carry the umbrella:
		say "(first taking the umbrella)[command clarification break]";
		silently try taking the umbrella;
		if the player does not carry the umbrella:
			stop the action;

After closing the umbrella:
	say "Faraji closes the umbrella. Phew!
	
	You can see the Bad Luck Counter in the status line (up at the top of the screen). When it reaches 0, Faraji will be safe from bad luck.";

Every turn when the Bad Luck Counter > 0 and the umbrella is closed:
	if Faraji carries something:
		let S be a random thing carried by the player;
		say "Oops! Faraji drops [the S].";
		now the S is in the location;
	otherwise:
		let roll be a random number from 1 to 6;
		if roll is 1:
			say "Faraji trips over their own feet.";
		if roll is 2:
			say "Faraji stubs their toe.";
		if roll is 3:
			say "Faraji loses their balance.";
		if roll is 4:
			say "Faraji gets a cramp in their leg.";
		if roll is 5:
			say "Faraji bumps into the wall.";
		if roll is 6:
			say "Faraji gets a sudden headache.";
	decrement the Bad Luck Counter;
	if the Bad Luck Counter is 0:
		say "[line break]Faraji can feel the bad luck finally dissipate. Thank goodness.";

The observation room has a number called the window countdown. The window countdown is 3.

Every turn when the location is the Observation Room:
	decrement the window countdown of the observation room;
	if the window countdown of the observation room is 0:
		now the window contents of the observation room is the next room of the window contents of the observation room;
		now the window countdown of the observation room is 4;
		say "The view through the window changes.";
		try examining the window;

Understand "parlor/house" as the observation window when the window contents of the observation room is the fake-parlor.
Understand "hyperplane" as the observation window when the window contents of the observation room is the fake-hyperplane.
Understand "steeple" as the observation window when the window contents of the observation room is the fake-steeple.

To say window description:
	say ". Through the window you can see [description of the window contents of the Observation Room]"

The observation window is a scenery transparent closed openable container in the Observation Room. Understand "view", "viewing", "screen" as the observation window.

Instead of opening the observation window:
	say "Faraji can't open the window. It's just for looking through.";

Instead of closing the observation window:
	say "Faraji can't close the window. It's just for looking through.";

Instead of examining the observation window:
	say "Through the window one can see [description of the window contents of the Observation Room].".

After deciding the scope of the player when the location is the Observation Room:
	place the window contents of the observation room in scope.

Rule for reaching inside a room when the location is the Observation Room:
	say "Faraji can't reach through the window.";
	deny access.

The ornamental garden is north of the Observation Room. "Flowers and shrubs crowd the paths. Faraji can leave to the south. A door leads west."
The tutorial message is "Sometimes things you need will be hidden. You can type EXAMINE FLOWERS to see if there's anything there"

The garden door is an openable scenery door. It is west of the ornamental garden and east of the living room. "The door is an elegant wooden door, with a brass handle. [if the garden door is open]It is open[otherwise]It is closed[end if]."
The tutorial message is "[if the location is the garden]You can go through the door to the living room[otherwise if the location is the living room]You can go through the door to the garden[end if]"

Instead of opening the garden door when the garden door is locked:
	say "The door is locked. You can try to UNLOCK the door if you have the right key.";

The living room key is a key. The description is "A small brass key." Understand "small/brass" as the living room key.

The brass handle is part of the garden door. The description is "The handle is made of brass."

The flowers are scenery in the ornamental garden. The description is "The flowers are in full bloom." Understand "flower/bloom/blooms" as the flowers.

picking flowers is an action applying to nothing. Understand "pick flowers/flower" as picking flowers.

The yellow flower is a thing. The description is "A bright yellow flower." Understand "bright" as the yellow flower.

Check picking flowers:
	if the location is not the ornamental garden:
		say "Faraji doesn't see any flowers to pick." instead;

Check picking flowers when the yellow flower is somewhere:
	say "Faraji doesn't want another flower." instead;

Carry out picking flowers:
	now the player carries the yellow flower;

Report picking flowers:
	say "Faraji picks a bright yellow flower."

The shrubs are scenery in the ornamental garden. The description is "The shrubs are neatly trimmed." Understand "shrubs" as the shrubs.

The paths are scenery in the ornamental garden. The description is "The paths are made of crushed stone." Understand "crushed/stone/path" as the paths.

After examining the flowers when the living room key is nowhere:
	say "Faraji notices a glint of metal among the flowers. It's a small brass key. They take it.";
	now the player carries the living room key.

The living room door is a closed, locked, lockable, openable scenery door. It is south of the living room and north of the Bureau of Special Help. "The door is sturdy and wooden. [if the living room door is open]It is open[otherwise]It is closed[end if]."
The living room door has matching key the living room key.
The tutorial message is "[if the living room door is locked]This door is locked. You will to UNLOCK LIVING ROOM DOOR WITH the key (have you found it yet?) to open it[otherwise if the location is the living room]You can go through the door to the Bureau of Special Help[otherwise]You can go through the door to the living room[end if]"

The living room is a room. "[if cozy sofa is not mentioned]A cozy sofa sits next to the warm fireplace[otherwise]The sofa is next to the fireplace[end if]. Doors lead south and east."

The tutorial message is "You can type ASK DOCTOR ABOUT a topic to ask Doctor Helpful about a particular topic. You can ASK DOCTOR FOR an object, or GIVE an object TO DOCTOR.

You can ask that Doctor Helpful stand up by typing DOCTOR, STAND UP. You can ask him to sit down again by typing DOCTOR, SIT ON THE SOFA"

The cozy sofa is an enterable scenery supporter in the living room. The description is "The sofa is soft and comfortable." Understand "soft/comfortable/couch/divan" as the cozy sofa.

Does the player mean entering the cozy sofa:
	it is very likely.

The warm fireplace is scenery in the living room. The description is "The fireplace is warm and inviting." Understand "warm/inviting/fire/place" as the warm fireplace.

Instead of doing something to the warm fireplace when the action requires a touchable noun:
	say "Faraji would rather not risk burning themself."

Advanced Adventuring is a thing. The printed name is "[italic type]Advanced Adventuring[roman type]". 
Understand "book" as Advanced Adventuring.
The description is "This book will help you learn some advanced strategies for playing interactive fiction. Here are some tips to get you started:

1. Experiment: Interactive fiction is a genre that rewards experimentation. Try different commands, explore new areas, and interact with objects in creative ways. You never know what you might discover!

2. Pay Attention: Interactive fiction games are full of clues and hints that can help you progress. Pay attention to the details of the world around you, and take note of anything that seems important. You never know when a seemingly insignificant detail might turn out to be the key to solving a puzzle.

3. Think Outside the Box: Interactive fiction games often require you to think creatively and solve puzzles in unconventional ways. Don't be afraid to try something new or think outside the box. You might be surprised at what you can accomplish!

4. Use Your Inventory: The objects you carry can be important tools in solving puzzles and progressing in the game. Don't forget to use your inventory items when you get stuck. Try combining objects, using them in different ways, or giving them to characters you meet.

5. Ask for Help: If you're stuck, don't be afraid to ask for help. Many interactive fiction games have built-in hint systems that can provide you with clues and guidance. You can also ask other players for help on forums or social media. Don't be afraid to reach out!

6. Have Fun: Interactive fiction is a unique and rewarding genre of gaming. Don't be afraid to immerse yourself in the world of the game, explore new areas, and enjoy the experience. Remember, the most important thing is to have fun!"

Instead of examining Advanced Adventuring when Doctor Helpful carries Advanced Adventuring:
	say "Faraji can't read the book while Doctor Helpful is holding it. They'll have to ASK DOCTOR FOR the book to borrow it. He might lend it to you, but you might have to talk to him a bit before he's willing to lend it.";

Doctor Helpful is a man on the cozy sofa. He is carrying Advanced Adventuring. 
The description is "Doctor Helpful is a tweedy old professor with ink-stained fingers." Understand "tweedy/professor/man/doc" as Doctor Helpful. "Doctor Helpful reclines on the sofa[if Doctor Helpful carries Advanced Adventuring] reading a book[end if], looking thoughtful."

ink-stained fingers is part of Doctor Helpful. The description is "Doctor Helpful's fingers are stained with ink." They are plural-named.


Doctor Helpful for the book is a questioning quip.
	Understand "ask doctor/helpful for book" as Doctor Helpful for the book.
	It mentions Advanced Adventuring.
	The comment is "'Doctor, may I borrow your book?'"
	The reply is "'Of course, Agent Faraji. Here you go.' Doctor Helpful hands Faraji a copy of [italic type]Advanced Adventuring[roman type].".
	It is repeatable.
	It quip-supplies Doctor Helpful.

Doctor Helpful for the book can be activated.

An availability rule for Doctor Helpful for the book:
	if Doctor Helpful carries Advanced Adventuring and Doctor Helpful for the book is activated:
		always available;
	otherwise:
		never available.

A plausibility rule for Doctor Helpful for the book:
	if Doctor Helpful for the book is activated:
		it is plausible;
	otherwise:
		it is implausible.

After discussing Doctor Helpful for the book:
	now the player carries Advanced Adventuring;
	now Doctor Helpful for the book is not activated.

Instead of giving something to Doctor Helpful:
	say "The Doctor politely declines [the noun]. 'I don't need it, but thank you for offering.'"

Persuasion rule for asking Doctor Helpful to try exiting:
	if Doctor Helpful is on the cozy sofa:
		persuasion succeeds;
	otherwise:
		say "Doctor Helpful smiles and says, 'But I'm not sitting down, my dear Agent Faraji. I'm already standing.'";
		persuasion fails.

Persuasion rule for asking Doctor Helpful to try entering the cozy sofa:
	if Doctor Helpful is not on the cozy sofa:
		persuasion succeeds;
	otherwise:
		say "Doctor Helpful smiles and says, 'But I'm not standing up, my dear Agent Faraji. I'm already sitting.'";
		persuasion fails.



flowers-subject is a subject. It is privately-named. The printed name is "flowers". Understand "flowers/bloom/blooms" as flowers-subject.
adventuring-subject is a subject. It is privately-named. The printed name is "adventuring". Understand "adventure/adventuring" as adventuring.
commands-subject is a subject. It is privately-named. The printed name is "commands". Understand "commands/command" as commands-subject.
elderberry juice is a subject.
nouns are a subject.
verbs-subject is a subject. It is privately-named. The printed name is "verbs". Understand "verbs/verb" as verbs-subject.
Observation-Room-subject is a subject. It is privately-named. The printed name is "observation room". Understand "observation/room/window/viewing/screen/view" as Observation-Room-subject.
ornamental-garden-subject is a subject. It is privately-named. The printed name is "ornamental garden". Understand "ornamental/garden/gardens" as ornamental-garden-subject.
Great-aunt Gertrude is a subject. Understand "great-aunt/gertrude/great/aunt" as Great-aunt Gertrude. The printed name is "Great-aunt Gertrude".
living-room-subject is a subject. It is privately-named. The printed name is "living room". Understand "living/room" as living-room-subject.
help-subject is a subject. It is privately-named. The printed name is "help". Understand "help" as help-subject.
Bureau-of-Special-Help-subject is a subject. It is privately-named. The printed name is "Bureau of Special Help". Understand "bureau/special/help" as Bureau-of-Special-Help-subject.
doctor-books is a subject. It is privately-named. The printed name is "doctor's books". Understand "doctor/doctor's/doctors/books" as doctor-books.

Does the player mean quizzing someone about Bureau-of-Special-Help-subject when the location is not in Help Area:
	it is very unlikely.

Interactive-Fiction is a subject. It is privately-named. Understand "interactive/fiction" as Interactive-Fiction. The printed name is "Interactive Fiction".
parser-based-games is a subject. It is privately-named. Understand "parser-based/games/parser/based" as parser-based-games. The printed name is "parser-based games".

To say doctor-book-response:
	if Doctor Helpful carries Advanced Adventuring:
		say "'I've written a whole slew of books on the subject of adventuring. You should read them; they're in the room south of here. Right now I'm carrying one of them,' Doctor Helpful replies.";
	otherwise:
		say "'I've written a whole slew of books on the subject of adventuring. You should read them; they're in the room south of here,' Doctor Helpful replies.".

Table of Quiz Topics (continued)
subject (a thing)	interlocutor (a person)	comment (a text)	reply (a text)
Doctor Helpful	Doctor Helpful		"Faraji says, 'Tell me about yourself, Doctor.'"	"'I'm a tweedy old professor with ink-stained fingers,' Doctor Helpful replies."
warm fireplace	Doctor Helpful		"Faraji asks, 'What can you tell me about the fireplace?'"	"He smiles and replies, 'I've been warming myself by that fireplace for years. It's a comforting sight.'"
cozy sofa	Doctor Helpful		"Faraji asks, 'What can you tell me about the sofa?'"	"'I got it for a steal at an overstock sale,' Doctor Helpful replies."
flowers-subject	Doctor Helpful		"Faraji says 'I just love your flowers.'"	"'Thank you, but I'm afraid I'm not much of a gardener. Feel free to PICK FLOWER if you like,' Doctor Helpful replies."
adventuring-subject	Doctor Helpful		"Faraji asks, 'What can you tell me about adventuring?'"	"'Adventuring is a noble pursuit. Why, I've written a whole slew of books on the subject. You should read them; they're in the room south of here[if Doctor Helpful carries Advanced Adventuring]. Right here I'm carrying one of them,[end if]' Doctor Helpful replies."
commands-subject	Doctor Helpful		"Faraji asks, 'What can you tell me about commands?'"	"'Commands are the lifeblood of interactive fiction. You can't do much without them. I wrote a book on the subject, you know. It's in the room south of here. My favorite command? GIVE DOCTOR FLOWER,' Doctor Helpful replies."
Advanced Adventuring	Doctor Helpful		"[if Doctor Helpful carries Advanced Adventuring]Faraji asks, 'What book are you reading?[otherwise]Faraji asks, 'What can you tell me about Advanced Adventuring?'[end if]"	"[if Doctor Helpful carries Advanced Adventuring]'I'm reading [italic type]Advanced Adventuring[roman type], my latest book. It's a real page-turner. You should read it,' Doctor Helpful replies[otherwise]'It's the book I'm most proud of. You should read it,' Doctor Helpful replies[end if]."
yellow flower	Doctor Helpful		"Faraji says, 'I brought you a flower.'"	"'Thank you, Larch. It's lovely,' Doctor Helpful replies."
umbrella	Doctor Helpful		"Faraji says, 'I found an umbrella.'"	"'That's a nice umbrella,' Doctor Helpful replies."
Larch Faraji	Doctor Helpful		"Faraji says, 'What do you know about me?'"	"'You're an agent investigating strange occurrences in the United States and its territories,' Doctor Helpful replies."
ink-stained fingers	Doctor Helpful		"Faraji says, 'What's up with your fingers?'"	"'It's not really ink. It's elderberry juice,' Doctor Helpful replies."
elderberry juice	Doctor Helpful		"Faraji says, 'What's up with the elderberry juice?'"	"'I like it. Good for the constitution,' Doctor Helpful replies."
nouns	Doctor Helpful		"Faraji says, 'What can you tell me about nouns?'"	"'Ah yes, the humble noun. Not as exciting as verbs, but just as important,' Doctor Helpful replies."
verbs-subject	Doctor Helpful		"Faraji says, 'What can you tell me about verbs?'"	"'Verbs are the flashy ones -- they get all the attention. Every work of interactive fiction has its own set of verbs, most of which are standard across games, but some of which are unique. For instance, a game about a chef might have a verb like COOK, while a game about a detective might have a verb like INTERROGATE,' Doctor Helpful replies."
IF Basics	Doctor Helpful		"Faraji says, 'What can you tell me about this book?'"	"'My first book. A best-seller, you know, depending on how you define [']best-seller,[']' Doctor Helpful replies."
Commands Volume 1	Doctor Helpful		"Faraji says, 'What can you tell me about this book?'"	"'I wrote that one during a particularly productive summer. I think it's quite good,' Doctor Helpful replies."
Commands Volume 2	Doctor Helpful		"Faraji says, 'What can you tell me about this book?'"	"'Not my best work, but it has its moments,' Doctor Helpful replies."
Strategies of Adventuring	Doctor Helpful		"Faraji says, 'What can you tell me about this book?'"	"'My best-selling book in Iceland,' Doctor Helpful replies."
Grammar of IF	Doctor Helpful		"Faraji says, 'What can you tell me about this book?'"	"'That one was a real labor of love. I'm quite proud of it,' Doctor Helpful replies."
BOSH Game Book	Doctor Helpful		"Faraji says, 'What can you tell me about this book?'"	"'I wrote that one on commission. I don't like to talk about it,' Doctor Helpful replies."
Commands Volume 3	Doctor Helpful		"Faraji says, 'What can you tell me about this book?'"	"'I didn't really want to write that one, but the publisher insisted,' Doctor Helpful replies. 'Still, it sold quite well among left-handed readers.'"
Observation-Room-subject	Doctor Helpful		"Faraji says, 'What is going on in the Observation Room?'"	"'No one really knows where those places are. It used to mostly show a large underground labyrinth, filled with tunnels, caves, and peculiar rock formations, and every so often a bedraggled adventurer,' Doctor Helpful replies."
ornamental-garden-subject	Doctor Helpful		"Faraji says, 'What can you tell me about the ornamental garden?'"	"'Ah, well, it was left to me by my great-aunt Gertrude. She's still alive, but she absolutely despises gardening,' Doctor Helpful replies."
Great-aunt Gertrude	Doctor Helpful		"Faraji says, 'What can you tell me about your great-aunt Gertrude?'"	"'Horrible woman. Absolutely no appreciation for interactive fiction,' Doctor Helpful replies."
living-room-subject	Doctor Helpful		"Faraji says, 'What can you tell me about the living room?'"	"'It's a cozy place, isn't it? I've spent many a happy hour here,' Doctor Helpful replies."
help-subject	Doctor Helpful		"Faraji says, 'Can you help me?'"	"'Of course, Agent Faraji. I [italic type]am[roman type] Doctor Helpful, after all,' Doctor Helpful replies."
Bureau-of-Special-Help-subject	Doctor Helpful		"Faraji says, 'What can you tell me about the Bureau of Special Help?'"	"'We're here to help you, Agent Faraji. That's what we do,' Doctor Helpful replies."
Interactive-Fiction	Doctor Helpful		"Faraji says, 'What can you tell me about interactive fiction?'"	"'Ah, interactive fiction. A noble pursuit. There are, broadly speaking, two kinds of interactive fiction: parser-based and choice-based. Parser-based games, like this one, allow you to type commands to interact with the world. Choice-based games, on the other hand, present you with a series of choices to make. Both are valid forms of interactive fiction, but I prefer parser-based games myself,' Doctor Helpful replies."
parser-based-games	Doctor Helpful	"Faraji says, 'How much do you know about parser-based games?'"	"'I know quite a bit about them, actually. Parser-based games, like this one, allow you to type commands to interact with the world. They're a bit more complex than choice-based games, but they're also more flexible and immersive. I've written a whole slew of books on the subject, you know,' Doctor Helpful replies."
living room key	Doctor Helpful	"Faraji says, 'What can you tell me about this key?'"	"'Ah, that's the key to the living room. If you haven't yet, try locking or unlocking the door with it,' Doctor Helpful replies."
doctor-books	Doctor Helpful	"Faraji says, 'What can you tell me about your books?'"	"[doctor-book-response]"

Before quizzing Doctor Helpful about adventuring-subject:
	if Doctor Helpful carries Advanced Adventuring:
		now Doctor Helpful for the book is activated;

Before quizzing Doctor Helpful about Advanced Adventuring:
	if Doctor Helpful carries Advanced Adventuring:
		now Doctor Helpful for the book is activated;

After quizzing Doctor Helpful about flowers-subject:
	now the yellow flower is nowhere;

Instead of giving Advanced Adventuring to Doctor Helpful:
	say "Doctor Helpful accepts the book back with a smile. 'Thank you, Larch. I hope you found it helpful.'";
	now Doctor Helpful carries Advanced Adventuring;

Instead of giving the yellow flower to Doctor Helpful:
	say "Doctor Helpful accepts the flower with a smile. 'Thank you, Larch. It's lovely.'";
	now Doctor Helpful carries the yellow flower;

BOSH Help ends here.