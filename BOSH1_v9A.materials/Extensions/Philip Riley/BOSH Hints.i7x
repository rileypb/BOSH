BOSH Hints by Philip Riley begins here.

Include Hints by Philip Riley.	

The hint-ringing-phone is a hint topic. Understand "ringing/ring/phone" as the hint-ringing-phone. The printed name is "ringing phone".

The hint-find-ringing-phone is a hint topic. It is unlisted. It is progressive. The progression is {"The phone is ringing. Faraji should probably answer it.", "Faraji will need to find the phone before they can answer it.", "Follow the sound of the ringing phone.", "The phone is in Faraji's office, in the desk.", "Perhaps Faraji should try opening the desk."}.

Hinting the hint-ringing-phone:
	if player does not know desk-locked:
		abide by the hinting rules for the hint-find-ringing-phone;
	otherwise:
		rule succeeds with result "It would seem that the phone is locked in Faraji's desk.";

Activating the hint-ringing-phone:
	if the blue flipphone is not handled and the front office is visited:
		activate;
	otherwise:
		deactivate;


The hint-locked-desk is a hint topic. Understand "locked/desk", "faraji's/my/their desk" as the hint-locked-desk. The printed name is "locked desk".

Hinting the hint-locked-desk:
	if the player does not know desk-locked or the blue flipphone is handled:
		make no decision;
	if player does not know key-is-lost:
		rule succeeds with result "The desk is locked. Faraji should probably unlock it. Maybe someone has a key.";
	otherwise if player does not know hex-screws:
		abide by the hinting rules for the hint-locked-desk-no-key;
	otherwise:
		rule succeeds with result  "Maybe Faraji could take the desk apart to get the key out.";

Activating the hint-locked-desk:
	if the blue flipphone is not handled:
		activate;
	otherwise:
		deactivate;

The hint-locked-desk-no-key is a hint topic. Understand "key locked in desk" as the hint-locked-desk-no-key. The printed name is "key locked in desk". It is progressive. It is unlisted. The progression is {"Oops, I guess the key is locked in the desk.", "Maybe there's another key.", "Or maybe there's a way in without a key.", "Why not give the desk a once-over?"}.

The hint-hex-wrench is a hint topic. Understand "hex/allen/-- wrench/key/tool", "hex/allen" as the hint-hex-wrench. The printed name is "hex wrench".

Hinting the hint-hex-wrench:
	if the player does not know hex-screws:
		make no decision;
	otherwise if the player does not know vent-screws:
		rule succeeds with result "It looks like Faraji needs a hex wrench to disassemble the desk.";
	otherwise if the red screwdriver is not handled:
		rule succeeds with result "Hmm. Faraji better find a screwdriver.";

Activating the hint-hex-wrench:
	if the hex wrench is not handled:
		activate;
	otherwise:
		deactivate;

The hint-screwdriver is a hint topic. Understand "screwdriver" as the hint-screwdriver. The printed name is "screwdriver".

Definition: the laundromat is well-searched: 
	if the laundromat-store is visited and the laundromat back room is visited and the laundromat basement is visited and the back basement is visited:
		yes;
	no;

Hinting the hint-screwdriver:
	[ relevant facts: vent-screws, margaret-no-screwdriver, screwdriver-in-laundromat, break-in-to-laundromat, screwdriver is seen ]
	if the player does not know vent-screws:
		go on;
	if the player does not know margaret-no-screwdriver:
		rule succeeds with result "Faraji needs a screwdriver to open the vent. Maybe they can ask Margaret for one.";
	otherwise:
		let hints be a list of texts;
		if the player knows break-in-to-laundromat:
			if the laundromat back room is visited and the laundromat is not well-searched:
				add "could continue to search the laundromat for a screwdriver" to hints;
			otherwise if the laundromat is not well-searched:
				add "could break into the laundromat to get a screwdriver" to hints;
		if the player knows store-sells-screwdrivers:
			if the laundromat is well-searched:
				add "could give up on the laundromat and buy the red screwdriver at the convenience store, or maybe something more interesting will happen" to hints;
			otherwise:
				add "could buy the red screwdriver at the convenience store" to hints;
		if hints is empty:
			if the laundromat is well-searched:
				rule succeeds with result "Faraji has searched the laundromat and hasn't found a screwdriver. Maybe they should try the convenience store, or maybe something more interesting will happen.";
			otherwise:
				rule succeeds with result "If Margaret doesn't have one, maybe Faraji could ask around.";
		otherwise:
			if the number of entries in hints is 1:
				rule succeeds with result "Faraji [entry 1 of hints].";
			otherwise:
				rule succeeds with result "Faraji [entry 1 of hints], or they [entry 2 of hints].";

Activating the hint-screwdriver:
	if the red screwdriver is not handled:
		activate;
	otherwise:
		deactivate;

The hint-margaret is a hint topic. Understand "margaret/chao" as the hint-margaret. The printed name is "Margaret Chao".

Hinting the hint-margaret:
	rule succeeds with result "Margaret is a bit flaky, but usually helpful. Her home base is the front office, but she periodically wanders off to throw things away in the dumpster out back.";

The hint-back-door is a hint topic. Understand "back door","backdoor", "white metal door" as the hint-back-door. 
The printed name is "back door". 

Hinting the hint-back-door when the player knows back-door-is-locked:
	if the player does not know margaret-backdoor-key:
		rule succeeds with result "The back door is locked. Maybe someone has a key for it?";
	otherwise if the back lot is unvisited:
		rule succeeds with result "Apparently Margaret has a key for the back door.";
	otherwise:
		go on;

The hint-get-back-in is a hint topic. Understand "escape back lot" as the hint-get-back-in. The printed name is "escape back lot". It is progressive. The progression is {"Faraji is locked out of the building. Maybe they can get out of the back lot another way?", "Perhaps there's a secret exit in the dumpster?", "LOL. No, there's no secret exit in the dumpster.", "What might one do to get through a door they can't or shouldn't open?", "Faraji has two options: wait around for Margaret to come back out, or...", "KNOCK ON WHITE METAL DOOR."}.

Activating rule for the hint-get-back-in:
	if the player knows escape-back-lot:
		deactivate;
	if the bosh back door is locked and the location is the back lot:
		activate;
	otherwise:
		deactivate;

hint-enter-laundromat is a hint topic. Understand "laundromat", "how/-- to/-- enter the/-- laundromat" as the hint-enter-laundromat. The printed name is "how to enter the laundromat".

Activating the hint-enter-laundromat:
	if the laundromat back room is unvisited and the player knows laundromat-front-door-is-locked:
		activate;
	otherwise:
		deactivate;

hint-try-laundromat-back-door is an unlisted progressive hint topic. The progression is {"Faraji could try the back door of the laundromat.", "It's in the back lot."}.

hint-enter-laundromat-hyper is an unlisted progressive hint topic. The progression is {"If the back door is locked, Faraji will need another way to get in.", "Faraji will need to find a special item to get into the laundromat."}

Hinting the hint-enter-laundromat:
	if the player does not know break-in-to-laundromat:
		rule succeeds with result "Do you routinely break into laundromats? Whatever for?";
	otherwise:
		if the laundromat back room is unvisited:
			if the player does not know laundromat-back-door-is-locked:
				abide by the hinting rules for the hint-try-laundromat-back-door;
			otherwise if the player does not enclose the astral lenses:
				abide by the hinting rules for the hint-enter-laundromat-hyper;
			otherwise:
				rule succeeds with result "I wonder what there is to see in the back lot that we didn't see before.";
		otherwise:
			go on;

Activating the hint-enter-laundromat:
	if the laundromat back room is unvisited:
		activate;
	otherwise:
		deactivate;

hint-klimp is a hint topic. Understand "chief/-- huffton/-- klimp", "chief" as the hint-klimp. The printed name is "Chief Klimp".
		
Hinting the hint-klimp:
	if Chief Klimp is in the Room of Stuff:
		rule succeeds with result "Chief Klimp is not in the office yet.";
	otherwise if BOSH Chief's office is unvisited:
		rule succeeds with result "Chief Klimp is in the office. Faraji should probably go see him.";
	otherwise if the astral lenses are not handled:
		rule succeeds with result "Faraji should explore Klimp's office. They might find something interesting.";
	otherwise:
		rule succeeds with result "Chief Klimp is a great source of knowledge about all sorts of useless things.";

hint-moira is a hint topic. Understand "moira", "moira/-- zin" as the hint-moira. The printed name is "Moira Zin".

Hinting the hint-moira:
	rule succeeds with result "Moira Zin is a field agent. She's the most competent person in the building, and she knows it. She is very proud of her book collection.";

hint-strange-glow is a hint topic. Understand "glow", "strange glow" as the hint-strange-glow. The printed name is "strange glow".

hint-touch-the-glow is an unlisted progressive hint topic. The progression is {"I guess we're hoping the glow will do something interesting.", "I don't suppose singing to it will help.", "Maybe Faraji should enter it."}.

Activating the hint-strange-glow:
	if the back basement is visited:
		if the Featureless hyperplane is visited:
			deactivate;
		activate;
	deactivate;

Hinting the hint-strange-glow:
	if the broken washing machine is nowhere:
		if the handtruck is in the back basement:
			rule succeeds with result "Handtrucks are very handy for moving heavy objects.";
		otherwise:
			rule succeeds with result "Faraji needs something to help them move the crates.";
	otherwise:
		abide by the hinting rules for the hint-touch-the-glow; 

hint-handtruck is a hint topic. Understand "handtruck", "hand/-- truck" as the hint-handtruck. The printed name is "handtruck".

hint-handtruck-no-stairs is an unlisted progressive hint topic. The progression is {"Faraji can't take the handtruck down the stairs.", "If only there was another way to push the handtruck that didn't involve stairs.", "Is it possible there are other astral tunnels Faraji hasn't found yet?", "Faraji should wear the astral lenses, but they can't in the fluorescent light.", "Maybe Faraji could find a way to turn off the lights.", "There's a way to turn off the lights in the back basement."}.

Activating the hint-handtruck:
	if the location is in the laundromat-region and the handtruck is not in the back basement and the handtruck is seen:
		activate;
	deactivate;

Hinting the hint-handtruck:
	if the player does not know handtruck-no-stairs:
		rule succeeds with result "To move the handtruck, type PUSH HANDTRUCK <direction>.";
	otherwise:
		abide by the hinting rules for the hint-handtruck-no-stairs;

hint-featureless-hyperplane is a hint topic. Understand "featureless hyperplane", "hyperplane", "hyperspace" as the hint-featureless-hyperplane. The printed name is "featureless hyperplane".

Activating the hint-featureless-hyperplane:
	if the Featureless hyperplane is visited and Field office reception is unvisited:
		activate;
	deactivate;

The hint-find-the-pillar is an unlisted progressive hint topic. Understand "pillar", "ethereal pillar" as the hint-find-the-pillar. The printed name is "pillar". The progression is {"Faraji should probably explore the featureless hyperplane.", "Follow the directions toward the distant structure."}.

The hint-find-the-compass is an unlisted progressive hint topic. The progression is {"Faraji seems to have lost the mystic compass. They should probably find it.", "[compass location hint]"}.

To say compass location hint:
	if the mystic compass is in the Featureless Hyperplane:
		say "The mystic compass is right here";
	otherwise if the mystic compass is nowhere:
		say "The mystic compass is at the Ethereal Pillar on the Featureless Hyperplane";
	otherwise:
		say "The mystic compass is in [the location of the mystic compass]";

The hint-find-the-stair is an unlisted progressive hint topic. The progression is {"What does Doris mean by 'Seek the origin'?", "What does the line of symbols, 'o p q d b', mean?", "What does the compass readout, '[symbols for convert entry 1 of hyperplane coords to base five] : [symbols for convert entry 2 of hyperplane coords to base five] : [symbols for convert entry 3 of hyperplane coords to base five]', mean?", "What is the mathematical definition of 'origin'?", "'Origin' might mean the point of intersection of the x, y, and z axes, or the point (0, 0, 0).", "How can Faraji find the origin?", "Does Faraji have a tool that will tell them their location?", "Faraji should probably use the mystic compass.", "The compass shows Faraji's coordinates, (south/north, east/west, back/forth).", "The line of symbols 'o p q d b' tells us what digit is bigger than another. Instead of 'o p q d b', we could say '0 1 2 3 4'.", "The compass readout '[symbols for convert entry 1 of hyperplane coords to base five] : [symbols for convert entry 2 of hyperplane coords to base five] : [symbols for convert entry 3 of hyperplane coords to base five]' tells us Faraji's location in base five, if you're into that math stuff.", "Faraji should move around until they make the compass say 'o o o'.", "Faraji needs to go south until the first coordinate is 'o'.", "Faraji needs to go east until the second coordinate is 'o'.", "Faraji needs to go back until the third coordinate is 'o'."}.

Activating the hint-featureless-hyperplane:
	if the location is Featureless hyperplane:
		activate;
	deactivate;

Hinting the hint-featureless-hyperplane:
	if the Ethereal Pillar is not seen:
		abide by the hinting rules for the hint-find-the-pillar;
	if the Descending Stair is not seen:
		if the player does not carry the mystic compass:
			if the mystic compass is handled:
				[ Lead the player back to the mystic compass. ]
				abide by the hinting rules for the hint-find-the-compass;
			otherwise:
				if the Ethereal Pillar is nowhere:
					rule succeeds with result "Faraji should go back to the Ethereal Pillar.";
				otherwise:
					rule succeeds with result "Faraji should take the Mystic Compass.";
		otherwise:
			abide by the hinting rules for the hint-find-the-stair;
	otherwise:
		go on;

The hint-field-office is a progressive hint topic. Understand "field office" as the hint-field-office. The printed name is "field office". The progression is {"Talk to Doris."}.

Activating the hint-field-office:
	if field office reception is visited and the location is in hyperspace:
		activate;
	otherwise:
		deactivate;

The hint-new-bikers-of-troy is a progressive hint topic. Understand "new bikers of troy", "new/-- bikers", "troy" as the hint-new-bikers-of-troy. The printed name is "New Bikers of Troy". The progression is {"Faraji needs to find a book.", "The book may or may not be titled 'New Bikers of Troy'.", "It might be anywhere, hyperspace or elsewhere.", "Who has books?", "Faraji should check Minerva's office.", "Minerva will allow Faraji to borrow a book", "If the book is not in Minerva's office, maybe Faraji needs to get out of hyperspace.", "Faraji should ask Doris about how to get out of hyperspace.", "Now that Faraji is in Moira's office, why don't they check out the bookshelves?", 
"Maybe the book isn't named 'New Bikers of Troy' exactly.", "Are there any books you've seen with similar names?", "How about anagrams?", "Faraji needs the book 'Tribes of New York' from Moira's library."}.

Activating the hint-new-bikers-of-troy:
	if about the mission is exhausted and Tribes of New York is not delivered:
		activate;
	deactivate;

hint-utility-closet-dark is a progressive hint topic. 
Understand "in/-- the/-- dark" as the hint-utility-closet-dark.
The printed name is "in the dark". The progression is {"How can Faraji see in the dark?", "Maybe Faraji could do the same thing they did last time.", "Faraji should wear the astral lenses."}.

Activating the hint-utility-closet-dark:
	if the location is the utility closet and the utility closet is dark and the astral lenses are not worn and the closet door is closed:
		activate;
	otherwise:
		deactivate;

hint-utility-closet-trapped is a progressive hint topic. 
Understand "trapped/-- in/-- the/-- utility/-- closet" as the hint-utility-closet-trapped. The printed name is "trapped in the utility closet". The progression is {"How did Faraji get past a locked door last time?", "Faraji should knock on the door."}.	

Activating the hint-utility-closet-trapped:
	if the location is the utility closet and the astral lenses are worn and the closet door is locked:
		activate;
	otherwise:
		deactivate;

hint-enigma-lake is a progressive hint topic. Understand "enigma/-- lake" as the hint-enigma-lake. The printed name is "enigma lake". The progression is {"The town of Enigma Lake is an amazing place with lots of things to see!", "Well, maybe not that amazing, but it's more interesting than the Featureless Hyperplane.", "Faraji should explore the town if they want to find Daniels, the missing agent.", "There are probably hidden places to find, as well."}.

Activating the hint-enigma-lake:
	if the location is in ELR:
		activate;
	otherwise:
		deactivate;

hint-work-schedule is a progressive hint topic. Understand "work/-- schedule" as the hint-work-schedule. The printed name is "work schedule". The progression is {"It looks like a list of names assigned to days.", "What use is that when the town is about to be flooded?", "Maybe one of the names is significant."}.

Activating the hint-work-schedule:
	if the work schedule is seen and the copper key is not handled:
		activate;
	otherwise:
		deactivate;

hint-backpack is a progressive hint topic. Understand "backpack", "back/-- pack" as the hint-backpack. The printed name is "backpack". The progression is {"Faraji might look inside.", "I wonder what the red key is for? Faraji better take it.", "Have you examined the backpack?", "Better remember the initials 'WGT'"}.
	
Activating the hint-backpack:
	if the backpack is seen and the copper key is not handled:
		activate;
	otherwise:
		deactivate;

BOSH Hints ends here.