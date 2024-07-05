Visible Rooms by Philip Riley begins here.

Use authorial modesty.

[Code by otistdog: https://intfiction.org/t/overly-elaborate-looking/50715/2]

After deciding the scope of the player while examining (this is the place the room in scope while looking rule): [limits applicability to when parsing examining action]
	place the location in scope, but not its contents. [everything else should already be in scope if applicable]	

Does the player mean doing anything to the location: [still prioritizes examination of things vs rooms]
	it is unlikely.

Instead of examining a room:
	try looking instead.


After deciding the scope of the player while taking (this is the place the room in scope while taking rule):
	place the location in scope, but not its contents.	

Instead of taking a room:
	say "How can you take what you're standing in?"

After deciding the scope of the player while dropping (this is the place the room in scope while dropping rule):
	place the location in scope, but not its contents.	

Instead of dropping a room:
	say "[text of the can't drop what's not held rule response (A)][paragraph break]";

Rule for deciding whether all includes the location:
	it does not.

Room-exiting is an action applying to one thing. Understand "exit [something]" as room-exiting.

Check room-exiting:
	if the noun is not the holder of the player:
		say "You can't exit what you're not in." instead;
	otherwise:
		try exiting;

Does the player mean room-exiting the location:
	it is very likely;

Does the player mean room-exiting the holder of the player:
	it is very likely.

After deciding the scope of the player while room-exiting (this is the place the room in scope while room-exiting rule):
	place the location in scope, but not its contents.

	

Visible Rooms ends here.
