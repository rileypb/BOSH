BOSH Hints by Philip Riley begins here.

Include Text Capture by Eric Eve.

A hint topic is a kind of thing. It is privately-named.
A hint topic has number called the hint level. The hint level is usually 0. 
A hint topic can be listed or unlisted. A hint topic is usually listed.
A hint topic can be progressive or non-progressive. A hint topic is usually non-progressive.
A hint topic has a list of texts called the progression. The progression of a hint topic is usually {}.
A hint topic has a text called the last hint. The last hint of a hint topic is usually "".

asking for hints about is an action out of world applying to one thing. Understand "hint [any hint topic]" as asking for hints about. 

asking for bogus hints about is an action out of world applying to one topic. Understand "hint [text]" as asking for bogus hints about.

Check asking for bogus hints about:
	say "There is no hint for that right now." instead;

hinting is an object based rulebook producing texts. The hinting rules have default success.

hinting rules have outcomes go on (no outcome).
[ hinting rules have outcomes level up (success), no leveling (success), and go on (no outcome). ]

activating is an object based rulebook. The activating rules have outcomes activate (success) and deactivate (failure). The activating rules have default no outcome.

Activating a hint topic (called HT):
	activate;

Listing all hints is a truth state that varies. Listing all hints is false.

Hint depth is a number that varies. Hint depth is 0.

To list all hints:
	increment hint depth;
	now listing all hints is true;
	say "Hints about the following topics are available:[line break]";
	repeat with item running through listed hint topics:
		follow the activating rules for the item;
		if the rule succeeded:
			let the current hint be the text produced by the hinting rules for the item;
			if the rule succeeded and current hint is last hint of item:
				say "* [item][line break]";
			otherwise if the rule succeeded:
				say "* [bold type][item][roman type][line break]";
	say "(Topics in bold have new hints available.)";
	now listing all hints is false;
	decrement hint depth.

Listing hints is an action out of world. Understand "list hints" as listing hints.

Carry out listing hints:
	list all hints.

Carry out asking for hints about:
	follow the activating rules for the noun;
	if the rule succeeded:
		let current hint be the text produced by the hinting rules for the noun;
		if the rule succeeded:
			say current hint;	
			lb;
			now the last hint of the noun is current hint;
		otherwise:
			say "There is no hint for that right now.";
	otherwise:
		say "There is no hint for that right now.";

hinting:
    rule fails;

hinting a progressive hint topic (called HT):
	if the hint level of HT is less than the number of entries in the progression of HT:
		let result be the substituted form of "[entry (hint level of HT + 1) in the progression of the HT]";
		if listing all hints is false:
			increment the hint level of HT;
		rule succeeds with result result;
	otherwise:
		rule succeeds with result "[entry (number of entries in the progression of HT) in the progression of HT]";
	

The hint-ringing-phone is a hint topic. Understand "ringing/ring/phone" as the hint-ringing-phone. The printed name is "ringing phone".

The hint-find-ringing-phone is a hint topic. It is unlisted. It is progressive. The progression is {"The phone is ringing. Faraji should probably answer it.", "Faraji will need to find the phone before they can answer it.", "Follow the sound of the ringing phone.", "The phone is in Faraji's office, in the desk.", "Perhaps Faraji should try opening the desk."}.

Hinting the hint-ringing-phone:
	if player does not know desk-locked:
		abide by the hinting rules for the hint-find-ringing-phone;
	otherwise:
		rule succeeds with result "It would seem that the phone is locked in Faraji's desk.";

Activating the hint-ringing-phone:
	if the blue flipphone is not handled:
		activate;
	otherwise:
		deactivate;


The hint-locked-desk is a hint topic. Understand "locked/desk", "faraji's/my/their desk" as the hint-locked-desk. The printed name is "locked desk".

Hinting the hint-locked-desk:
	if the player does not know desk-locked or the blue flipphone is handled:
		make no decision;
	if player does not know key-is-lost:
		rule succeeds with result "The desk is locked. Faraji should probably unlock it.";
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
	if Chief Klimp is nowhere:
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

BOSH Hints ends here.