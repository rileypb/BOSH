BOSH Help by Philip Riley begins here.

The Bureau of Special Help is a room. "It is bare save for a bookshelf and a button on the wall marked 'Exit'. Faraji can go east or north from here."

The exit button is scenery in the Bureau of Special Help. The description is "A button that will take Faraji back to the real world."

The Help Shelf is a scenery supporter in Bureau of Special Help. The description is "The shelf is full of books, each with a title that seems to promise help with some problem or other. Faraji may READ any of them to get some help."
Understand "bookshelf/bookshelves/books/book" as the Help Shelf.

Basics of Interactive Fiction is a thing. It is on the Help Shelf. The printed name is "[italic type]Basics of Interactive Fiction[roman type]". 

The description is "Welcome to the world of interactive fiction! This book will help you get started with the basics of playing interactive fiction, particularly those games known as 'parser-based' games, or 'text adventures.' By getting here and reading this book, you've already taken the first step. Congratulations! Now, let's get started.

You're in a world made of text. Every turn you typically see a description of your surroundings, with which you can interact. You interact with this world by typing commands. The most basic command is to move around. You can do this by typing directions, such as 'north,' 'south,' 'east,' or 'west.' You can also use 'up' and 'down' to move vertically, and sometimes 'in' and 'out'. You can also move northeast, southwest, etc. 

".




The original location is a room that varies.

Check helping when the player is in the Bureau of Special Help:
	say "Faraji is already in the Bureau of Special Help. To leave, press the button." instead.

Carry out helping:
	now the original location is the location of the player;
    now the player is in the Bureau of Special Help;

Instead of pushing the exit button:
	say "Faraji presses the button and finds themself back in the real world.";
	now the player is in the original location.

The Observation Room is east of the Bureau of Special Help. "It is a small room with a window[window description]. Exits lead north and west."

To say window description:
	let roll be a random number from 1 to 5;
	if roll is 1:
		say " through which can be seen a lake pelted by rain";
	else if roll is 2:
		say " through which can be seen the roof of a building, surmounted by a tall radio tower";
	else if roll is 3:
		say " through which can be seen a great white expanse of impossible geometry";
	else if roll is 4:
		say " through which can be seen a hex wrench at the bottom of a heating vent";
	else:
		say " through which can be seen a dirty laundromat";

The garden is north of the Observation Room. "Flowers and shrubs crowd the paths. Faraji can leave to the south and west."

The living room is west of the garden and north of the Bureau of Special Help. "A cozy couch sits next to the warm fireplace. Exits lead south and east."

BOSH Help ends here.