BOSH Help by Philip Riley begins here.

Include Adaptive Hints by Eric Eve.

Carry out helping:
    say "TO BE IMPLEMENTED.";


Table of Potential Hints (continued)
title (text)	subtable (table-name)
"How do I get the phone to stop ringing?"	Table of Ringing Phone Hints
"How do I answer the phone?"	Table of Answering Phone Hints
"How do I get the phone out of the desk?"	Table of Desk Opening Hints
"How do I unlock the desk?"	Table of Desk Unlocking Hints
"Where can I find a hex wrench?"	Table of Hex Wrench Hints
"Where's Margaret?"	Table of Margaret Hints
"Where can I find a screwdriver?"	Table of Screwdriver Hints
"How do I get into the laundromat?"	Table of Laundromat Hints
"How do I get into the back lot?"	Table of Back Lot Hints
"Is Chief Klimp useful to me?"	Table of Chief Klimp Hints
"What are the astral lenses good for?"	Table of Astral Lenses Hints
"What is the glow in the back basement?"	Table of Glow Hints
"How do I move the crates in the back basement?"	Table of Crate Moving Hints


When play begins:
	activate the Table of Ringing Phone Hints;
	activate the Table of Margaret Hints;


Table of Ringing Phone Hints
hint (text)	used (a number)
"Answer it."
"Oh, well, I guess it's not that easy."


After going to Biff's Office for the first time:
	activate the Table of Answering Phone Hints;


Table of Answering Phone Hints
hint (text)	used (a number)
"Take it out of the desk."
"What do you mean you can't take it out of the desk?"


Table of Desk Opening Hints
hint (text)	used (a number)
"Unlock it."
"With a key, maybe?"
"Ask Margaret."
"Oh, the key is inside the locked desk. That's helpful."


Table of Desk Unlocking Hints
hint (text)	used (a number)
"Find the key."
"Oh, but it's in the desk."
"Take a closer look at the desk."
"Maybe there's a way to open it without the key."
"If you could just find a hex wrench, you could open the desk."


Table of Hex Wrench Hints
hint (text)	used (a number)
"Ask Margaret."


Table of Margaret Hints
hint (text)	used (a number)
"Margaret is usually in the front office, but she moves around a bit."
"You might find her walking between the front office and the back lot."
"The back lot is behind the locked door in Faraji's office."


Table of Screwdriver Hints
hint (text)	used (a number)
"Ask Margaret."
"Oh, she doesn't know."
"Maybe there's another way to get a screwdriver."
"Ask around the nearby stores."
"You have no money, so you can't buy one."
"Maybe there's one in the laundromat."


Table of Laundromat Hints
hint (text)	used (a number)
"Don't go any further until you've gotten into the back lot."
"Looks like the laundromat is locked from the back lot."
"Maybe there's another way, though."


Table of Back Lot Hints
hint (text)	used (a number)
"Find a way to get past the door in Faraji's office."
"Ask Margaret for help."
"Try following Margaret."
"She will eventually go to the back lot."
"Sneak through the door when she unlocks it."


Table of Chief Klimp Hints
hint (text)	used (a number)
"Chief Klimp is a wealth of information."
"Most of it useless."
"He has lots of stuff in his office, some of which might be useful."
"Look at his stuff."


Table of Astral Lenses Hints
hint (text)	used (a number)
"They might be useful for seeing things that are hidden."
"But they don't work in fluorescent light."
"So you'll have to find a place without fluorescent light."
"Maybe the back lot?"


Table of Glow Hints
hint (text)	used (a number)
"Whatever it is, we need to move the crates to get to it."
"Maybe there's a way to move the crates."
"Don't go any further until you've moved the crates."
"Whoa that's weird."
"I wonder what would happen if..."
"... if Faraji entered the washer."


After going to the back basement for the first time:
	activate the Table of Glow Hints;
	activate the Table of Crate Moving Hints;


Table of Crate Moving Hints
hint (text)	used (a number)
"They're too heavy to move by hand."
"Maybe there's a tool that could help."
"Like a handtruck."
"We can't get the handtruck down the stairs."
"Maybe we can find another way to get from the laundromat front to the back basement."
"What about the switch in the back basement?"
"Oh no, it's dark! Maybe there's a way to see in the dark."
"Wear the astral lenses."
"Now there's a passage to push the handtruck through."


BOSH Help ends here.