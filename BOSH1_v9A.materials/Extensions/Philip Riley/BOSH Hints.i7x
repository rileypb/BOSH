BOSH Hints by Philip Riley begins here.

Use authorial modesty.

Include Hints by Philip Riley.	

The hint-ringing-phone is a hint topic. Understand "ringing/ring/phone" as the hint-ringing-phone. The printed name is "ringing phone".

The hint-find-ringing-phone is a hint topic. It is unlisted. It is progressive. The progression is {"The phone is ringing. Faraji should probably answer it.", "Faraji will need to find the phone before they can answer it.", "Follow the sound of the ringing phone.", "The phone is in Faraji's office, in the desk.", "Perhaps Faraji should try opening the desk."}.

Hinting the hint-ringing-phone:
	if player does not know desk-locked:
		abide by the hinting rules for the hint-find-ringing-phone;
	otherwise:
		rule succeeds with result "It would seem that the phone is locked in Faraji's desk.";

Activating the hint-ringing-phone:
	if the blue flip phone is not handled and the front office is visited:
		activate;
	otherwise:
		deactivate;


The hint-locked-desk is a hint topic. Understand "locked/desk", "faraji's/my/their desk" as the hint-locked-desk. The printed name is "locked desk".

The hint-locked-desk-hex is an unlisted progressive hint topic. The progression is {"Maybe Faraji could take the desk apart to get the key out.", "Faraji will need a hex wrench to disassemble the desk."}.

The hint-locked-desk-endgame is an unlisted progressive hint topic. The progression is {"Faraji should use the screwdriver to open the heating vent and get the hex wrench.", "Faraji should use the hex wrench to disassemble the desk and answer the phone."}.

Hinting the hint-locked-desk:
	if the red screwdriver is handled:
		abide by the hinting rules for the hint-locked-desk-endgame;
	if the player does not know desk-locked or the blue flip phone is handled:
		make no decision;
	if player does not know key-is-lost:
		rule succeeds with result "The desk is locked. Faraji should probably unlock it. Maybe someone has a key.";
	otherwise if player does not know hex-screws:
		abide by the hinting rules for the hint-locked-desk-no-key;
	otherwise:
		abide by the hinting rules for the hint-locked-desk-hex;

Activating the hint-locked-desk:
	if the blue flip phone is not handled:
		activate;
	otherwise:
		deactivate;

The hint-computer is a hint topic. Understand "computer", "faraji's/my/their computer" as the hint-computer. The printed name is "computer".

Hinting the hint-computer:
	if the computer is not seen:
		rule succeeds with result "According to Margaret, Faraji's computer is behind the front desk.";
	otherwise if the thumb drive is not handled:
		rule succeeds with result "Don't forget to examine the computer.";

Activating the hint-computer:
	if the office is visited and the thumb drive is not handled:	
		activate;
	otherwise:
		deactivate;

The hint-locked-desk-no-key is a hint topic. It is progressive. It is unlisted. The progression is {"Oops, I guess the key is locked in the desk.", "Maybe there's another key.", "Or maybe there's a way in without a key.", "Why not give the desk a once-over?"}.

The hint-hex-wrench is a hint topic. Understand "hex/allen/wrench/key/tool" as the hint-hex-wrench. The printed name is "hex wrench".

Hinting the hint-hex-wrench:
	if the player does not know hex-screws:
		make no decision;
	otherwise if the player does not know hex-wrench-lost:
		rule succeeds with result "It looks like Faraji needs a hex wrench to disassemble the desk.";
	otherwise if the player does not know vent-screws:
		rule succeeds with result "Margaret mentioned that the hex wrench fell into the heating vent behind her desk.";
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

The hint-screwdriver-endgame is an unlisted progressive hint topic. The progression is {"Daniels seems to have given Faraji something. Maybe they should look at it.", "It's a watch.", "Now, who wanted a watch?", "Dave at the pawn shop wanted his watch back.", "Faraji should return the watch to Dave.", "Well, Dave was grateful, if not generous.", "Faraji could use that gift card to buy a screwdriver."}.

Hinting the hint-screwdriver:
	[ relevant facts: vent-screws, margaret-no-screwdriver, screwdriver-in-laundromat, break-in-to-laundromat, screwdriver is seen ]
	if the player does not know vent-screws:
		go on;
	if the player does not know margaret-no-screwdriver:
		rule succeeds with result "Faraji needs a screwdriver to open the vent. Maybe they can ask Margaret for one.";
	otherwise if inside-the-dumpster is visited:
		abide by the hinting rules for the hint-screwdriver-endgame;
	otherwise if enigma lake town hall is visited:
		rule succeeds with result "Maybe there's a screwdriver in Enigma Lake.";
	otherwise if the featureless hyperplane is visited:
		rule succeeds with result "Maybe there's a screwdriver somewhere in hyperspace. That would be strange, but convenient.";
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

The hint-get-back-in is a hint topic. Understand "escape/back/lot" as the hint-get-back-in. The printed name is "escape back lot". It is progressive. The progression is {"Faraji is locked out of the building. Maybe they can get out of the back lot another way?", "Perhaps there's a secret exit in the dumpster?", "LOL. No, there's no secret exit in the dumpster.", "What might one do to get through a door they can't or shouldn't open?", "Faraji has two options: wait around for Margaret to come back out, or...", "KNOCK ON BOSH BACK DOOR."}.

Activating rule for the hint-get-back-in:
	if the player knows escape-back-lot:
		deactivate;
	if the bosh back door is locked and the location is the back lot:
		activate;
	otherwise:
		deactivate;

hint-enter-laundromat is a hint topic. Understand "laundromat", "how/to/enter/the/laundromat" as the hint-enter-laundromat. The printed name is "how to enter the laundromat".

Activating the hint-enter-laundromat:
	if the laundromat back room is unvisited and the player knows laundromat-front-door-is-locked:
		activate;
	otherwise:
		deactivate;

hint-try-laundromat-back-door is an unlisted progressive hint topic. The progression is {"Faraji could try the front door of the laundromat.", "Faraji could try the back door of the laundromat.", "It's in the back lot."}.

hint-enter-laundromat-hyper is an unlisted progressive hint topic. The progression is {"If the back door is locked, Faraji will need another way to get in.", "Faraji will need to find a special item to get into the laundromat.", "Faraji needs to find the astral lenses."}.

hint-enter-laundromat-lenses is an unlisted progressive hint topic. The progression is {"I wonder what there is to see in the back lot that Faraji didn't see before.", "Faraji should wear the astral lenses in the back lot."}.

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
				abide by the hinting rules for the hint-enter-laundromat-lenses;
		otherwise:
			go on;

hint-klimp is a hint topic. Understand "chief/huffton/klimp" as the hint-klimp. The printed name is "Chief Klimp".

hint-klimp-lenses is an unlisted progressive hint topic. The progression is {"Faraji should explore Klimp's office. They might find something interesting.", "Faraji should examine the shelves in Klimp's office.", "Faraji should examine the astral lenses."}.
		
Hinting the hint-klimp:
	if Chief Klimp is in the Room of Stuff:
		rule succeeds with result "Chief Klimp is not in the office yet.";
	otherwise if BOSH Chief's office is unvisited:
		rule succeeds with result "Chief Klimp is in the office. Faraji should probably go see him.";
	otherwise if the astral lenses are not handled:
		abide by the hinting rules for the hint-klimp-lenses;
	otherwise:
		rule succeeds with result "Chief Klimp is a great source of knowledge about all sorts of useless things.";

hint-moira is a hint topic. Understand "moira/zin" as the hint-moira. The printed name is "Moira Zin".

Hinting the hint-moira:
	rule succeeds with result "Moira Zin is a field agent. She's the most competent person in the building, and she knows it. She is very proud of her book collection.";

hint-strange-glow is a hint topic. Understand "strange/glow" as the hint-strange-glow. The printed name is "strange glow".

hint-touch-the-glow is an unlisted progressive hint topic. The progression is {"So the glow is coming from the drum of the washing machine.", "I guess we're hoping the glow will do something interesting.", "I don't suppose singing to it will help.", "Maybe Faraji should enter it."}.

singing is an action applying to nothing. Understand "sing" as singing.

Report singing:
	say "Faraji sings a little tune. Nothing notable happens.";

hint-move-the-crates is an unlisted progressive hint topic. The progression is {"Faraji should find a way to move the crates.", "Faraji could use the handtruck from the front room.", "They just need to move the handtruck to the back basement."}.

Activating the hint-strange-glow:
	if the back basement is visited:
		if the Featureless hyperplane is visited:
			deactivate;
		activate;
	deactivate;

Hinting the hint-strange-glow:
	if the broken washing machine is nowhere:
		abide by the hinting rules for the hint-move-the-crates;
	otherwise:
		abide by the hinting rules for the hint-touch-the-glow; 

hint-darkness-laundromat is a progressive hint topic. Understand "help/Im/stuck/in/darkness" as the hint-darkness-laundromat. The printed name is "help! I'm stuck in darkness". The progression is {"Faraji should wear the astral lenses."}.

Activating the hint-darkness-laundromat:
	if the location is the back basement and in darkness:
		activate;
	otherwise:
		deactivate;

hint-handtruck is a hint topic. Understand "handtruck", "hand/truck" as the hint-handtruck. The printed name is "handtruck".

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

hint-featureless-hyperplane is a hint topic. Understand "featureless/hyperplane", "hyperspace" as the hint-featureless-hyperplane. The printed name is "featureless hyperplane".

Activating the hint-featureless-hyperplane:
	if the Featureless hyperplane is visited and Field office reception is unvisited:
		activate;
	deactivate;

The hint-find-the-pillar is an unlisted progressive hint topic. Understand "ethereal/pillar" as the hint-find-the-pillar. The printed name is "pillar". The progression is {"Faraji should probably explore the featureless hyperplane.", "Follow the directions toward the distant structure."}.

The hint-find-the-compass is an unlisted progressive hint topic. The progression is {"Faraji seems to have lost the mystic compass. They should probably find it.", "[compass location hint]"}.

To say compass location hint:
	if the mystic compass is in the Featureless Hyperplane:
		say "The mystic compass is right here";
	otherwise if the mystic compass is nowhere:
		say "The mystic compass is at the Ethereal Pillar on the Featureless Hyperplane";
	otherwise:
		say "The mystic compass is in [the location of the mystic compass]";

The hint-find-the-stair is an unlisted progressive hint topic. The progression is {"What does Doris mean by 'All you need is love : love : love'?", "What does the line of symbols, 'o p q d b', mean?", "What does the compass readout, '[symbols for convert entry 1 of hyperplane coords to base five] : [symbols for convert entry 2 of hyperplane coords to base five] : [symbols for convert entry 3 of hyperplane coords to base five]', mean?", "Ever play tennis? What does 'love' mean?", "'Love' means 0 in tennis.", "'All you need is 0 : 0 : 0?'", "Where has Faraji seen something like X : X : X", "On the mystic compass!", "The compass shows Faraji's coordinates, (south/north, east/west, back/forth).", "The line of symbols 'o p q d b' tells us what digit is bigger than another. Instead of 'o p q d b', we could say '0 1 2 3 4'.", "The compass readout '[symbols for convert entry 1 of hyperplane coords to base five] : [symbols for convert entry 2 of hyperplane coords to base five] : [symbols for convert entry 3 of hyperplane coords to base five]' tells us Faraji's location in base five, if you're into that math stuff.", "Faraji should move around until they make the compass say 'o o o'.", "Faraji needs to go south until the first coordinate is 'o'.", "Faraji needs to go east until the second coordinate is 'o'.", "Faraji needs to go back until the third coordinate is 'o'."}.

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

The hint-field-office is a progressive hint topic. Understand "field/office" as the hint-field-office. The printed name is "field office". The progression is {"Talk to Doris."}.

Activating the hint-field-office:
	if field office reception is visited and the location is in hyperspace:
		activate;
	otherwise:
		deactivate;

The hint-new-bikers-of-troy is a progressive hint topic. Understand "new/bikers/of/troy" as the hint-new-bikers-of-troy. The printed name is "New Bikers of Troy". The progression is {"Faraji needs to find a book.", "The book may or may not be titled 'New Bikers of Troy'.", "It might be anywhere, hyperspace or elsewhere.", "Who has books?", "Faraji should check Minerva's office.", "Minerva will allow Faraji to borrow a book.", "If the book is not in Minerva's office, maybe Faraji needs to get out of hyperspace.", "Faraji should ask Doris about how to get out of hyperspace.", "Now that Faraji is in Moira's office, why don't they check out the bookshelves?", "Maybe the book isn't named 'New Bikers of Troy' exactly.", "Are there any books you've seen with similar names?", "How about anagrams?", "Faraji needs the book 'Tribes of New York' from Moira's library."}.

Activating the hint-new-bikers-of-troy:
	if about the mission is exhausted and Tribes of New York is not delivered:
		activate;
	deactivate;

hint-utility-closet-dark is a progressive hint topic. 
Understand "in/the/dark" as the hint-utility-closet-dark.
The printed name is "in the dark". The progression is {"How can Faraji see in the dark?", "Maybe Faraji could do the same thing they did last time.", "Faraji should wear the astral lenses."}.

Activating the hint-utility-closet-dark:
	if the location is the utility closet and the utility closet is dark and the astral lenses are not worn and the closet door is closed:
		activate;
	otherwise:
		deactivate;

hint-utility-closet-trapped is a progressive hint topic. 
Understand "trapped/in/the/utility/closet", "trapped" as the hint-utility-closet-trapped. The printed name is "trapped in the utility closet". The progression is {"Faraji should knock on the door.", "If Faraji can't see the door, they should put on the astral lenses.", "If Faraji dropped the lenses somewhere, oops. But there's another way to get out.", "Make some noise.", "Shout!"}.	

Activating the hint-utility-closet-trapped:
	if the location is the utility closet and the astral lenses are worn and the closet door is locked:
		activate;
	otherwise:
		deactivate;

The hint-thumb-drive is progressive hint topic. Understand "USB/flash/memory/thumb/drive" as the hint-thumb-drive. The printed name is "thumb drive". The progression is {"Where might Faraji find a thumb drive?", "Thumb drives are usually found near computers.", "Faraji should take a look at the computers in the BOSH office.", "Faraji should look at their broken computer in the front office."}.

Activating the hint-thumb-drive:
	if the thumb drive is not handled and Doris is seen:
		activate;
	otherwise:
		deactivate;

hint-enigma-lake is a progressive hint topic. Understand "enigma/lake" as the hint-enigma-lake. The printed name is "Enigma Lake". The progression is {"The town of Enigma Lake is an amazing place with lots of things to see!", "Well, maybe not that amazing, but it's more interesting than the Featureless Hyperplane.", "Faraji should explore the town if they want to find Daniels, the missing agent.", "There are probably hidden places to find, as well."}.

Activating the hint-enigma-lake:
	if the location is in ELR:
		activate;
	otherwise:
		deactivate;

hint-work-schedule is a progressive hint topic. Understand "work/schedule" as the hint-work-schedule. The printed name is "work schedule". The progression is {"It looks like a list of names assigned to days.", "What use is that when the town is about to be flooded?", "Maybe one of the names is significant.", "Remember the name 'Bill Thompson'."}.

Activating the hint-work-schedule:
	if the work schedule is seen and the copper key is not handled:
		activate;
	otherwise:
		deactivate;

hint-backpack is a progressive hint topic. Understand "backpack", "back/pack/rucksack/napsack" as the hint-backpack. The printed name is "backpack". The progression is {"Faraji might look inside.", "Ah, a key to a gym locker. Faraji better take it.", "Has Faraji examined the backpack?", "Better remember the initials 'WGT'"}.
	
Activating the hint-backpack:
	if the backpack is seen and the copper key is not handled:
		activate;
	otherwise:
		deactivate;

hint-get-into-skillet is a progressive hint topic. Understand "get/into/henry's/hot/skillet" as the hint-get-into-skillet. The printed name is "get into Henry's". 
The progression is {"Faraji could try knocking on the door.", "Okay then. Two options: Faraji finds a key, or finds another entrance.", "Faraji will need to search a good portion of the town to find a key.", "The key is not inside a building.", "But it is inside something.", "The key is inside the glove compartment, inside the abandoned truck, at the northeastern end of town."}.

Activating hint-get-into-skillet:
	if the player knows skillet-door-locked and the skillet door is locked:
		activate;
	otherwise:
		deactivate;

hint-floor-waxer is a progressive hint topic. Understand "what/use/is/the/floor/waxer" as the hint-floor-waxer. The printed name is "what use is the floor waxer". The progression is {"Has Faraji tried turning on the floor waxer?", "And then turning it off again?", "What about pushing it around?", "Finally, maybe Faraji could push it out of the room.", "No? Well then, maybe it's really not useful."}.

activating hint-floor-waxer:
	if the location is Rolle's Department Store:
		activate;
	deactivate;

hint-threaded-socket is a progressive hint topic. Understand "threaded/socket" as the hint-threaded-socket. The printed name is "threaded socket". The progression is {"You're probably wondering what goes in the threaded socket.", "You'll know it when you see it."}.

Activating hint-threaded-socket:
	if the threaded socket is seen and the rusty astral resonator is not in the threaded socket:
		activate;
	otherwise:
		deactivate;


hint-wires is a progressive hint topic. Understand "wires", "wire" as the hint-wires. The printed name is "wires". The progression is {"I wonder what was connected to the wires before.", "Faraji might look on the roof for a clue.", "It looks like the wires run from the rooftop aerial. Too bad there's no TV to hook up.", "What could Faraji connect to the wires instead?", "Faraji should have a close look at the aerial.", "It looks like there's a strange socket attached to the aerial.", "Maybe it needs power.", "Perhaps Faraji could use the wires to supply power to the aerial.", "Faraji should find a power source to connect to the wires.", "Has Faraji had a look at the abandoned truck in the northeastern part of town?", "Faraji should look under the hood of the truck.", "Maybe a battery?", "It doesn't seem like the truck battery will work.", "Faraji should look for a clean battery.", "How about from Faraji's car? It's parked right outside the BOSH offices.", "Faraji needs to get back to Enigma Lake and Henry's.", "Then they can connect the battery to the wires.", "ATTACH BATTERY TO WIRES"}.
	
Activating hint-wires:
	if the wires are seen and the clean battery is not hooked up:
		activate;
	deactivate;

hint-getting-back-to-BOSH is a progressive hint topic. Understand "get/back/to/bosh", "get back" as the hint-getting-back-to-BOSH. The printed name is "get back to BOSH". The progression is {"Does Faraji have any way of getting out of Enigma Lake?", "Faraji can use the recall button to return to the hyperspace field office.", "Then they can use the auxiliary portal to return to BOSH."}.

Activating the hint-getting-back-to-BOSH:
	if the location is in ELR:
		activate;
	otherwise:
		deactivate;

the hint-rusty-resonator is a hint topic. 
Understand "rusty/astral/resonator" as hint-rusty-resonator when Astral Secrets is read.
Understand "strange/rusty/metal/metallic/cylindrical/cylinder/object" as hint-rusty-resonator.
The printed name is "[rusty astral resonator]".
The progression is {"Has Faraji had a look at the [rusty astral resonator]?", "Is it reminiscent of anything?", "If not, Faraji should look around some more.", "The [rusty astral resonator] has a threaded base, like a light bulb. That's probably good for mounting.", "Faraji should around for a place to screw in a threaded base like that.", "The socket in the workshed won't fit. Maybe Faraji should look elsewhere.", "Check the roof of Henry's Hot Skillet.", "There's a strange socket attached to the aerial.", "PUT RUSTY RESONATOR IN SOCKET"}.

hinting the hint-rusty-resonator:
	if Astral Secrets is not read:
		rule succeeds with result "Maybe Faraji can find something to tell them what this thing is.";
	otherwise if not mounted-shiny-resonator and not mounted-makeshift-resonator:
		now hint-rusty-resonator is progressive;
		rule succeeds with result "What the heck is an astral resonator?";
	otherwise if mounted-shiny-resonator and mounted-makeshift-resonator:
		now hint-rusty-resonator is progressive;
		rule succeeds with result "Faraji should mount [the rusty astral resonator] somewhere, like they did with the other two resonators.";
	otherwise if mounted-makeshift-resonator:
		now hint-rusty-resonator is progressive;
		rule succeeds with result "Faraji should mount [the rusty astral resonator] somewhere, like they did with the makeshift resonator.";
	otherwise:
		now hint-rusty-resonator is progressive;
		rule succeeds with result "Faraji should mount [the rusty astral resonator] somewhere, like they did with the shiny resonator.";

Activating the hint-rusty-resonator:
	if the rusty astral resonator is seen and not mounted-rusty-resonator:
		activate;
	deactivate;
	
the hint-shiny-resonator is a hint topic. 
Understand "shiny/astral/resonator" as hint-shiny-resonator when Astral Secrets is read.
Understand "strange/shiny/metal/metallic/cylindrical/cylinder/object" as hint-shiny-resonator.
The printed name is "[shiny astral resonator]".
The progression is {"Has Faraji had a look at the [shiny astral resonator]?", "Is it reminiscent of anything?", "If not, Faraji should look around some more.", "The [shiny astral resonator] has two metal chains, each with a metal clamp. That seems like it might be hooked up somewhere", "Faraji should around for a place to attach something like that.", "Check the roof of the radio station.", "There's a strange platform attached to the tower.", "PUT SHINY RESONATOR ON PLATFORM"}.

hinting the hint-shiny-resonator when the hint-shiny-resonator is not progressive:
	if Astral Secrets is not read:
		rule succeeds with result "Maybe Faraji can find something to tell them what this thing is.";
	otherwise if not mounted-rusty-resonator and not mounted-makeshift-resonator:
		now hint-shiny-resonator is progressive;
		rule succeeds with result "What the heck is an astral resonator?";
	otherwise if mounted-rusty-resonator and mounted-makeshift-resonator:
		now hint-shiny-resonator is progressive;
		rule succeeds with result "Faraji should mount [the shiny astral resonator] somewhere, like they did with the other two resonators.";
	otherwise if mounted-makeshift-resonator:
		now hint-shiny-resonator is progressive;
		rule succeeds with result "Faraji should mount [the shiny astral resonator] somewhere, like they did with the makeshift resonator.";
	otherwise:
		now hint-shiny-resonator is progressive;
		rule succeeds with result "Faraji should mount [the shiny astral resonator] somewhere, like they did with the rusty resonator.";

Activating the hint-shiny-resonator:
	if the shiny astral resonator is seen and not mounted-shiny-resonator:
		activate;
	deactivate;

The hint-power-shiny-resonator is a progressive hint topic. Understand "power/shiny/resonator" as the hint-power-shiny-resonator. The printed name is "power shiny resonator". The progression is {"[The shiny astral resonator] is on the platform, but it's not doing anything.", "The resonator needs power.", "Notice the metal cabinet next to the broadcast tower.", "Faraji should open the cabinet.", "Faraji will need the bolt cutters to open the cabinet.", "The bolt cutters are in the truck bed."}.

Activating the hint-power-shiny-resonator:
	if mounted-shiny-resonator and the power switch is switched off:
		activate;
	deactivate;

The hint-bookstore-shelves is a progressive hint topic. Understand "bookstore/shelves/shelf/bookshelf/bookshelves", "reading room shelves/shelf/bookshelf/bookshelves" as the hint-bookstore-shelves. The printed name is "bookstore shelves". The progression is {"You're probably wondering what the point of the bookstore shelves is.", "There isn't any point. Can't a thing exist just for its own sake?"}.

Activating the hint-bookstore-shelves:
	if the location is the reading room:
		activate;
	otherwise:
		deactivate;

The hint-bookstore-basement is a progressive hint topic. Understand "bookstore/basement", "reading room basement" as the hint-bookstore-basement. The printed name is "bookstore basement". The progression is {"What's up with the walls in the basement?", "They're old and crumbling, and there's a breeze.", "Maybe there's something behind the walls.", "How would Faraji get through the walls?", "Faraji should probably look for a tool to break through the walls.", "Go find a sledgehammer.", "Once you have the sledgehammer, you can break through the walls.", "HIT WALLS WITH SLEDGEHAMMER"}.

Activating the hint-bookstore-basement:
	if the bookstore basement is visited and the bricked-up-hole is unrevealed:
		activate;
	deactivate;

The hint-fire-station is a progressive hint topic. Understand "fire/station" as the hint-fire-station. The printed name is "fire station". The progression is {"Faraji may have noticed the garage door is locked. Is there another way in?", "Faraji should try going through an adjoining building.", "That would be either the bookstore or the Horton House.", "Faraji should explore the Horton House parlor as thoroughly as they can.", "Faraji should wear the astral lenses.", "Faraji should follow the astral tunnel."}.

Activating the hint-fire-station:
	if the garage door is seen and fire station 1 is unvisited:
		activate;
	deactivate;

The hint-doll-fly is a hint topic. Understand "doll-fly/doll/fly" as the hint-doll-fly. 
The hint-doll-fly has a text called the secret name.
The hint-doll-fly has a text called the secret first name.
The hint-doll-fly has a text called the secret last name.
Understand the secret name property as describing the hint-doll-fly when the doll-fly is named.
Understand the secret first name property as describing the hint-doll-fly when the doll-fly is named.
Understand the secret last name property as describing the hint-doll-fly when the doll-fly is named.
The printed name of the hint-doll-fly is "[if the doll-fly is named][secret name of the doll-fly][otherwise]doll-fly[end if]".

The hint-doll-fly-first is an unlisted progressive hint topic. The progression is {"What the hell was that thing?", "Perhaps Faraji should go find where it went."}.

The hint-doll-fly-second is an unlisted progressive hint topic. The progression is {"Good, now Faraji knows where it went.", "But how can Faraji get past it?"}.

The hint-doll-fly-third is an unlisted progressive hint topic. The progression is {"Apparently the doll-fly is named [doll-fly]. I wonder if that's helpful.", "Is there any place Faraji has seen names like that before?", "[if the Book of Weird Names is not handled]Faraji should go back to the Horton family parlor and look around.[otherwise]Faraji should look at the Book of Weird Names.[end if]"}.

The hint-doll-fly-fourth is an unlisted progressive hint topic. The progression is {"Faraji should try reading the Book of Weird Names.", "Any ideas?", "LOOK UP [doll-fly] IN BOOK OF WEIRD NAMES"}.

The hint-doll-fly-fifth is an unlisted progressive hint topic. The progression is {"When Faraji looked in the book, they found the phrase '[incantation of the doll-fly]'. What could that mean?", "Faraji should try saying it.", "SAY [incantation of the doll-fly]"}.

hinting the hint-doll-fly:
	if the doll-fly is not seen:
		abide by the hinting rules for the hint-doll-fly-first;
	otherwise if the doll-fly is not named:
		abide by the hinting rules for the hint-doll-fly-second;
	otherwise if the Book of Weird Names is not read:
		abide by the hinting rules for the hint-doll-fly-third;
	otherwise if doll-fly-looked-up is false:
		abide by the hinting rules for the hint-doll-fly-fourth;
	otherwise:
		abide by the hinting rules for the hint-doll-fly-fifth;

Activating the hint-doll-fly:
	if the doll-fly is in the First Utilitarian Church of Enigma Lake:
		activate;
	deactivate;

The hint-extension-cord is a progressive hint topic. Understand "extension/cord" as the hint-extension-cord. The printed name is "extension cord". The progression is {"What do people use extension cords for?", "There's an electrical outlet in the church.", "When working with the extension cord, remember the two ends can be in different rooms.", "There's no need to unplug the cord once it's plugged into the church outlet.", "Two different things can be plugged into the extension cord. One is the table lamp in the department store.", "The other you'll know when you have it."}.

Activating the hint-extension-cord:
	if the extension cord is seen and not mounted-makeshift-resonator:
		activate;
	deactivate;

The hint-bible is a progressive hint topic. Understand "what/is/the/Book/of/Utilitarianism", "bible" as the hint-bible. The printed name is "what is the Book of Utilitarianism". The progression is {"I wonder if any of this stuff is important.", "Is there a passage that would be useful if it came true?", "What about the passage about the cursèd word?", "The cursèd word is '[cursed word].'", "Who might Faraji say that to?", "Faraji should try saying the cursèd word to the group of lizard people."}.

hinting the hint-bible:
	if the Book of Utilitarianism is not read:
		rule succeeds with result "Faraji should probably read the Book of Utilitarianism.";
	otherwise:
		now hint-bible is progressive;

Activating the hint-bible:
	if the Book of Utilitarianism is seen and the group of lizard people is somewhere:
		activate;
	deactivate;

The hint-lizard-people is a hint topic. Understand "lizard/people" as the hint-lizard-people. The printed name is "lizard people". 

The hint-lizard-people-second is an unlisted progressive hint topic. The progression is {"Annoying, aren't they?", "Faraji should probably try staying away from them.", "But that's not always possible.", "And what's the significance of the shiny object they're carrying?", "How can Faraji get it?", "Faraji should try talking to them.", "No, that doesn't work.", "You need to wait for something else to happen."}. 

The hint-lizard-people-third is an unlisted progressive hint topic. The progression is {"Has Faraji read anything about the lizard people?", "Faraji should read the Book of Utilitarianism.", "Read until you find the passage about the cursèd word.", "The cursèd word is '[cursed word] '", "Faraji should try saying the cursèd word to the group of lizard people.", "SAY [cursed word]"}.

hinting the hint-lizard-people:
	if the group of lizard people is not seen:
		rule succeeds with result "Who are those shadowy figures in the distance?";
	otherwise if the cursed word is "":
		abide by the hinting rules for the hint-lizard-people-second;
	otherwise:
		abide by the hinting rules for the hint-lizard-people-third;

Activating the hint-lizard-people:
	if the group of lizard people is seen and the lizard people are somewhere:
		activate;
	deactivate;

The hint-wooden-frame is a progressive hint topic. Understand "wooden/frame" as the hint-wooden-frame. The printed name is "wooden frame". 
The progression is {"What is the wooden frame for?", "The wooden frame looks like it's meant to hold specific things. But what?", "Have you read the Witnessing of Hezekiah? Find it and read it first.", "The Witnessing of Hezekiah mentions a frame formed 'from the wood of the ash tree'.", "Hezekiah also mentions 'a sacred artifact, a resonator'.", "Faraji can't proceed further if they don't know what 'a resonator' is. There is a book in town that can help.", "Perhaps, by 'a resonator', Hezekiah means an astral resonator.", "Hezekiah also mentions 'the resonant instrument', 'the ghostly light', and 'the astral focus'. What might those be?", "When the proper elements are put in the frame, the astral resonator will be complete.", "Faraji must then tap it with the Rod of Hezekiah."}.

[ The hint-wooden-frame-witnessing is an unlisted progressive hint topic.
The progression is {"The Witnessing of Hezekiah mentions a frame formed 'from the wood of the ash tree'.", "Hezekiah also mentions 'a sacred artifact, a resonator'.", "Faraji can't proceed further if they don't know what 'a resonator' is."}.

The hint-wooden-frame-resonator is an unlisted progressive hint topic.
The progression is {"Perhaps, by 'a resonator', Hezekiah means an astral resonator.", "Hezekiah also mentions 'the resonant origin', 'the ghostly light', and 'the astral focus'. What might those be?"}.

hinting the hint-wooden-frame:
	if the Witnessing of Hezekiah is not read:
		rule succeeds with result "The wooden frame looks like it's meant to hold specific things. But what?";
	otherwise if Astral Secrets is not read:
		abide by the hinting rules for the hint-wooden-frame-witnessing;
	otherwise:
		abide by the hinting rules for the hint-wooden-frame-resonator; ]

Activating the hint-wooden-frame:
	if the wooden frame is seen and the wooden frame is somewhere:
		activate;
	deactivate;

The hint-resonant-origin is a progressive hint topic. Understand "resonant/instrument" as the hint-resonant-origin. The printed name is "resonant instrument". The progression is {"What might the resonant instrument be?", "What resonates?", "Maybe Faraji should look around the town some more.", "The tuning fork in the music store is a source of resonance.", "Faraji should try inserting the tuning fork into the wooden frame."}.

Activating the hint-resonant-origin:
	if the hint-wooden-frame is exhausted and the makeshift astral resonator is nowhere and the tuning fork is not in the wooden frame:
		activate;
	deactivate;

The hint-ghostly-light is a progressive hint topic. Understand "ghostly/light" as the hint-ghostly-light. The printed name is "ghostly light". The progression is {"What might the ghostly light be?", "What light sources has Faraji seen?", "Look around the town for a light source.", "The light bulb in the workshed is a source of light (if it's screwed into something).", "The table lamp in the department store is a source of light.", "Faraji should try inserting one of the light sources into the wooden frame."}.

Activating the hint-ghostly-light:
	if the hint-wooden-frame is exhausted and the makeshift astral resonator is nowhere and the table lamp is not in the wooden frame:
		activate;
	deactivate;

The hint-astral-focus is a progressive hint topic. Understand "astral/focus" as the hint-astral-focus. The printed name is "astral focus". The progression is {"What might the astral focus be?", "Does Faraji know of any things having to do with focus?", "Lenses are used to focus light.", "Faraji should try inserting the astral lenses into the wooden frame."}.

Activating the hint-astral-focus:
	if the hint-wooden-frame is exhausted and the makeshift astral resonator is nowhere and the pair of astral lenses is not in the wooden frame:
		activate;
	deactivate;

The hint-makeshift-astral-resonator is a hint topic. 
Understand "makeshift/astral/resonator" as the hint-makeshift-astral-resonator when Astral Secrets is read.
The printed name is "[makeshift astral resonator]".

Activating the hint-makeshift-astral-resonator:
	if the makeshift astral resonator is somewhere and not mounted-makeshift-resonator:
		activate;
	deactivate;

The hint-makeshift-astral-resonator-witnessing is an unlisted progressive hint topic. The progression is {"Now that Faraji has the [makeshift astral resonator], what should they do with it?", "Maybe there is something that will tell Faraji what to do with it.", "The information may be cryptic in nature.", "Faraji should look for a book.", "It is in the wardrobe, upstairs in the Horton House."}.

The hint-makeshift-astral-resonator-mounting is an unlisted progressive hint topic. The progression is {"Faraji must 'ascend the ladder'. Where has Faraji seen a ladder?", "There are two ladders in the town.", "One, portable, Faraji found in the fire station.", "The other is in the church, attached to the wall.", "Faraji should try going up from the church, into the steeple.", "What can Faraji do with a tripod with a telescope mounted on it?", "Faraji could look through the telescope.", "Or they could take the telescope off the tripod.", "What can you do with an empty tripod?", "Faraji should try mounting the [makeshift astral resonator] on the tripod.", "Then the resonator needs a source of power.", "Try plugging it into the extension cord, which is plugged into the wall."}.

hinting the hint-makeshift-astral-resonator:
	if the Witnessing of Hezekiah is not read and the Witnessing of Hezekiah is not seen:
		abide by the hinting rules for the hint-makeshift-astral-resonator-witnessing;					
	otherwise if the Witnessing of Hezekiah is not read:
		rule succeeds with result "Faraji should read the Witnessing of Hezekiah.";
	otherwise:
		abide by the hinting rules for the hint-makeshift-astral-resonator-mounting;

The dark basement is a progressive hint topic. Understand "dark/basement" as the dark basement. The printed name is "dark basement". The progression is {"There are two ways to light a dark room.", "One can wear the astral lenses to see in the dark.", "One can use a light source."}.

Activating the dark basement:
	if the church basement is witnessed in darkness and the church basement is unvisited:
		activate;
	deactivate;

Volume 1 - Read the Book of Utilitarianism

The hint-read-the-book-of-utilitarianism is a hint topic. Understand "read/the/book/of/utilitarianism" as the hint-read-the-book-of-utilitarianism. The printed name is "read the Book of Utilitarianism". 

Activating the hint-read-the-book-of-utilitarianism:
	if the Book of Utilitarianism is not successfully read and the Book of Utilitarianism is unsuccessfully read:
		activate;
	deactivate;

Hinting the hint-read-the-book-of-utilitarianism:
	if hint-read-bou-initial is active:
		abide by the hinting rules for the hint-read-bou-initial;
	otherwise if hint-read-bou-find-lamp is active:
		abide by the hinting rules for the hint-read-bou-find-lamp;
	otherwise if hint-read-bou-find-light-bulb is active:
		abide by the hinting rules for the hint-read-bou-find-light-bulb;
	otherwise if hint-read-bou-find-extension-cord is active:
		abide by the hinting rules for the hint-read-bou-find-extension-cord;
	otherwise if hint-read-bou-plug-in-extension-cord is active:
		abide by the hinting rules for the hint-read-bou-plug-in-extension-cord;
	otherwise if hint-read-bou-plug-in-lamp is active:
		abide by the hinting rules for the hint-read-bou-plug-in-lamp;
	otherwise if hint-read-bou-power-lamp is active:
		abide by the hinting rules for the hint-read-bou-power-lamp;
	otherwise if hint-read-bou-turn-on-breaker is active:
		abide by the hinting rules for the hint-read-bou-turn-on-breaker;
	otherwise:
		rule succeeds with result "Faraji should go to the basement and read the Book of Utilitarianism.";

The hint-read-bou-initial is an unlisted progressive hint topic. The progression is {"Faraji can't read the Book of Utilitarianism in the dark, or with the astral lenses. They should find a light source."}.

Activating the hint-read-bou-initial:
	if the hint-read-bou-initial is exhausted:
		deactivate;
	activate;

The hint-read-bou-find-lamp is an unlisted hint topic.

Activating the hint-read-bou-find-lamp:
	if the table lamp is not handled:
		activate;
	deactivate;

Hinting the hint-read-bou-find-lamp:
	abide by the hinting rules for the hint-read-bou-find-lamp-progressive;

The hint-read-bou-find-lamp-progressive is an unlisted progressive hint topic. The progression is {"Finding a light source to read the Book of Utilitarianism: Faraji should look around town more.", "Finding a light source to read the Book of Utilitarianism: There is a table lamp in the department store, south of the town hall."}.

The hint-read-bou-find-light-bulb is an unlisted progressive hint topic. The progression is {"Finding a light source to read the Book of Utilitarianism: A lamp without a bulb isn't very useful.", "Finding a light source to read the Book of Utilitarianism: Faraji should find a light bulb.", "Finding a light source to read the Book of Utilitarianism: Faraji should look around town more.", "Finding a light source to read the Book of Utilitarianism: There is a light bulb in the workshed on the lake shore. It is screwed into a cord hanging from the ceiling."}.

Activating the hint-read-bou-find-light-bulb:
	if the light bulb is not handled:
		activate;
	deactivate;

The hint-read-bou-find-extension-cord is an unlisted progressive hint topic. The progression is {"Finding a light source to read the Book of Utilitarianism: If the table lamp is plugged into the electrical outlet, the cord is too short to reach the basement.", "Finding a light source to read the Book of Utilitarianism: Faraji needs to find an extension cord.", "Finding a light source to read the Book of Utilitarianism: Faraji should look around town more.", "Finding a light source to read the Book of Utilitarianism: There is an extension cord in the basement of the bookstore."}.

Activating the hint-read-bou-find-extension-cord:
	if the extension cord is not handled or the table lamp is plugged into the electrical outlet:
		activate;
	deactivate;
		
The hint-read-bou-plug-in-extension-cord is an unlisted progressive hint topic. The progression is {"Finding a light source to read the Book of Utilitarianism: Faraji should plug the extension cord into the electrical outlet."}.

Activating the hint-read-bou-plug-in-extension-cord:
	if the extension cord is handled and the plug-end is not plugged into the electrical outlet:
		activate;
	deactivate;

The hint-read-bou-plug-in-lamp is an unlisted progressive hint topic. The progression is {"Finding a light source to read the Book of Utilitarianism: Faraji should plug the table lamp into the extension cord."}.

Activating the hint-read-bou-plug-in-lamp:
	if the table lamp is handled and the table lamp is not plugged into the socket-end:
		activate;
	deactivate;

The hint-read-bou-power-lamp is an unlisted progressive hint topic. The progression is {"Finding a light source to read the Book of Utilitarianism: Faraji should turn on the table lamp."}.

Activating the hint-read-bou-power-lamp:
	if the table lamp is not switched on:
		activate;
	deactivate;

The hint-read-bou-turn-on-breaker is an unlisted progressive hint topic. The progression is {"Finding a light source to read the Book of Utilitarianism: Maybe the building doesn't have power.", "Finding a light source to read the Book of Utilitarianism: Perhaps there is a switch somewhere, but where?", "Finding a light source to read the Book of Utilitarianism: Maybe it's hidden.", "Finding a light source to read the Book of Utilitarianism: Faraji should look around the building for a likely hiding place.", "Finding a light source to read the Book of Utilitarianism: Faraji should look behind the tapestry in the vestry.", "FLIP SWITCH"}.

Activating the hint-read-bou-turn-on-breaker:
	if the table lamp is not powered:
		activate;
	deactivate;

The hint-horton-house-enter is a progressive hint topic. Understand "enter/the/horton/house" as the hint-horton-house-enter. The printed name is "enter the Horton House". The progression is {"The front door is locked. Faraji could try another entrance.", "There is no obvious other entrance.", "Faraji could look for a key.", "Faraji should look around the town for a key.", "The key is locked in the gymnasium somewhere."}.

Activating the hint-horton-house-enter:
	if the old wooden door is locked and the Horton House is unvisited and the old wooden door is tried:
		activate;
	deactivate;

The hint-horton-house-graveyard is a progressive hint topic. Understand "horton/house/graveyard" as the hint-horton-house-graveyard. The printed name is "Horton graveyard". The progression is {"There must be something to do here.", "Look around carefully.", "EXAMINE HOLES", "The large hole looks interesting.", "The large hole is too deep to climb into unaided (and presumably to climb back out of).", "Faraji needs a ladder to get down there.", "Faraji should look around town for a ladder.", "Faraji should look in the fire station."}.

Activating the hint-horton-house-graveyard:
	if the Horton graveyard is visited and the large grave is unvisited:
		activate;
	deactivate;

The hint-hutz-help is a hint topic. Understand "getting/help/from/Hutz" as the hint-hutz-help. The printed name is "getting help from Hutz".

Activating the hint-hutz-help:
	if Help-me is exhausted and Now-can-you-help-me is not exhausted:
		activate;
	deactivate;

Hinting the hint-hutz-help:
	if hint-hutz-what-to-do is active:
		abide by the hinting rules for the hint-hutz-what-to-do;
	otherwise if hint-hutz-get-coffee is active:
		abide by the hinting rules for the hint-hutz-get-coffee;
	otherwise if hint-hutz-get-hot-coffee is active:
		abide by the hinting rules for the hint-hutz-get-hot-coffee;
	otherwise:
		rule succeeds with result "Faraji should ask Hutz if he can now help them.";

The hint-hutz-what-to-do is an unlisted progressive hint topic. The progression is {"Hutz has suddenly become unhelpful.", "He says he can't focus.", "Faraji should find a way to help him focus.", "What helps people focus?", "Coffee helps people focus."}.

Activating the hint-hutz-what-to-do:
	if hint-hutz-what-to-do is exhausted:
		deactivate;
	activate;

The hint-hutz-get-coffee is an unlisted progressive hint topic. The progression is {"Faraji already knows where to get coffee.", "Faraji needs to go back to Minerva's office and get the coffee.", "Faraji should use the recall button to return to the hyperspace field office.", "Faraji can then get the coffee and bring it to Hutz."}.

Activating the hint-hutz-get-coffee:
	if hint-hutz-what-to-do is exhausted and player does not know hutz-needs-hot-coffee:
		activate;
	deactivate;

The hint-hutz-get-hot-coffee is an unlisted progressive hint topic. The progression is {"Hutz will apparently only drink really hot coffee.", "It takes too long to get coffee from Minerva's office to Hutz's shack.", "Perhaps there's a way to get to the shack in less time.", "Faraji should pay attention to the mystic compass.", "It pings when Faraji is in the Town Hall, and when they're outside the shack.", "Faraji should study the compass in those places.", "What could the numbers mean?", "Faraji should examine the control panel on the Portal to the Past.", "Faraji should enter the numbers from outside the shack into the control panel.", "Faraji can then travel directly to the shack and give Hutz the hot coffee."}.

Activating the hint-hutz-get-hot-coffee:
	if player knows hutz-needs-hot-coffee and Hutz is not satiated:
		activate;
	deactivate;

The hint-dowsing-rod is a progressive hint topic. Understand "dowsing/rod" as the hint-dowsing-rod. The printed name is "dowsing rod". The progression is {"A dowsing rod is a tool used to find underground water and other buried things.", "The user holds the rod and walks around until the rod vibrates.", "Faraji should watch carefully for the rod to vibrate.", "The rod will vibrate on its own when it's over the right spot.", "Faraji should try carrying the dowsing rod around the town.", "Perhaps somewhere in the graveyard."}.

Activating the hint-dowsing-rod:
	if the wooden frame is handled:
		deactivate;
	if the dowsing rod is handled:
		activate;
	deactivate;

The hint-find-the-portal is a progressive hint topic. The printed name is "Now what?". Understand "now/what" as the hint-find-the-portal. The progression is {"'Below the obelisk, something has woken.' What could that mean?", "Can Faraji get below the obelisk?", "How about going to the park to check?"}.

Activating the hint-find-the-portal:
	if portal opened is true and the old root cellar is unvisited:
		activate;
	deactivate;

The hint-root-cellar is a progressive hint topic. Understand "root/cellar" as the hint-root-cellar. The printed name is "root cellar". The progression is {"Faraji should talk to Daniels.", "When he asks, Faraji should give him the recall button.", "Then Faraji should press the button."}.

Activating the hint-root-cellar:
	if the location is the old root cellar and lizard people are not in the location:
		activate;
	deactivate;

The hint-defeat-the-lizard-people is a progressive hint topic. Understand "defeat/the/lizard/people" as the hint-defeat-the-lizard-people. The printed name is "defeat the lizard people". The progression is {"Now that Daniels has cast the first potato, it looks like we have a battle on our hands.", "Presumably it will be won by throwing potatoes?", "Faraji should try throwing a potato at the lizard people.", "It won't always hit.", "Faraji can only hit the lizard people when they're distracted by Daniels.", "The lizard people can only hit Faraji when Faraji is distracted doing something else, or when they stand around doing nothing.", "Faraji can DODGE to avoid attacks.", "An attack is usually coming when the lizard people pick up a root vegetable.", "The lizard people will also launch a special attack approximately once every 10 turns, which will hurt Faraji.", "It seems hopeless for Faraji to damage the lizard people quickly enough to win the battle.", "Did Faraji notice the green woven basket that they can't reach?", "Maybe Daniels can open it.", "Faraji should ask Daniels to open the basket.", "Now Faraji should ask Daniels to throw the rutabaga to them.", "Faraji should throw the rutabaga at the lizard people, once they're distracted by Daniels."}.

Activating the hint-defeat-the-lizard-people:
	if the lizard people are in the old root cellar and the old root cellar is visited:
		activate;
	deactivate;

The hint-answer-the-phone-finally is a progressive hint topic. Understand "finally/answer/the/phone" as the hint-answer-the-phone-finally. The printed name is "answer the phone finally". The progression is {"Faraji still needs to answer the phone.", "What is this thing Daniels gave us? A wristwatch?", "Maybe it's the pawn shop owner's watch.", "Faraji should go to the pawn shop and give the watch to the owner.", "What can Faraji do with a gift card for $5?", "Faraji should go to the conveinence store and buy something.", "Like a screwdriver, maybe.", "Faraji should go to the front office and open the vent with the screwdriver.", "Faraji should use the hex wrench to open the desk.", "Faraji should answer the phone. There! Was that so hard?"}.

Activating the hint-answer-the-phone-finally:
	if the blue flip phone is not handled and the inside-the-dumpster is visited:
		activate;
	deactivate;

The hint-doris-thumb-drive is a progressive hint topic. Understand "thumbdrive/thumb/drive" as the hint-doris-thumb-drive. The printed name is "thumb drive". The progression is {"Doris really needs that thumb drive.", "Faraji should find it.", "Where might one keep a thumb drive?", "Faraji should check their old computer in the front office.", "You can ask Doris how to get back home."}.

Activating the hint-doris-thumb-drive:
	if Doris is seen and the thumb drive is not handled:
		activate;
	deactivate;

The hint-getting-into-the-gym is a progressive hint topic. Understand "getting/into/the/gym/gymnasium" as the hint-getting-into-the-gym. The printed name is "getting into the gym". The progression is {"You've probably noticed the gym is locked. Is there another way in?", "It's not a key.", "Faraji should look around the town for a way to get into the gym.", "Faraji should look in the bookstore basement.", "Once Faraji is in the sewer tunnels, use the astral lenses to look for a tunnel."}.

Activating the hint-getting-into-the-gym:
	if the gym door is tried and the public gymnasium is unvisited:
		activate;
	deactivate;

The hint-open-locker is a progressive hint topic. Understand "open/locker" as the hint-open-locker. The printed name is "open locker". The progression is {"There is a bank of 100 lockers in the gym basement. They are all locked.", "Faraji can find a key in the backpack behind the information desk in the town hall.", "But which locker should Faraji open?", "Faraji should read the work schedule on the information desk in the town hall, and examine the backpack.", "That should answer the question of who owns the backpack.", "The name is William Thompson.", "Faraji should look up William Thompson in the membership book in the gymnasium.", "That will tell you which locker Faraji should open."}.

Activating the hint-open-locker:
	if the gym basement is visited and the copper key is not handled:
		activate;
	deactivate;

hint-easy-money is a progressive hint topic. Understand "money" as hint-easy-money. The printed name is "money". The progression is {"Maybe Faraji could find some money.", "Maybe someone in the BOSH office has some money.", "Maybe Faraji can pawn something for money.", "There is no way to get any money, at least not yet."}.

Activating hint-easy-money:
	if the player knows store-sells-screwdrivers and featureless hyperplane is not visited:
		activate;
	deactivate;

[ Volume 2 - Not for release

all-hinting is an action applying to nothing. Understand "all hints" as all-hinting.

Carry out all-hinting:
	now listing all hints is true;
	say "Hints about the following topics are available:[line break]";
	repeat with item running through listed hint topics:
		let the current hint be the text produced by the hinting rules for the item;
		if the rule succeeded and current hint is last hint of item:
			say "* [item][line break]";
		otherwise if the rule succeeded:
			say "* [bold type][item][roman type][line break]";
	now listing all hints is false;
	
Carry out asking for hints about:
	let current hint be the text produced by the hinting rules for the noun;
	if the rule succeeded:
		say "[current hint][line break]";	
		now the last hint of the noun is current hint;
		if current hint is not listed in the history of the noun:
			add current hint to the history of the noun;
	otherwise:
		say "There is no hint for that right now."; ]

BOSH Hints ends here.