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

The hint-find-ringing-phone is a hint topic. It is unlisted. It is progressive. The progression is {"The phone is ringing. You should probably answer it.", "You'll need to find the phone before you can answer it.", "Follow the sound of the ringing phone.", "The phone is in your office, in the desk.", "Perhaps you should try opening the desk."}.

Hinting the hint-ringing-phone:
	if player does not know desk-locked:
		abide by the hinting rules for the hint-find-ringing-phone;
	otherwise:
		rule succeeds with result "It would seem that the phone is locked in your desk.";


The hint-locked-desk is a hint topic. Understand "locked/desk", "faraji's/my/their desk" as the hint-locked-desk. The printed name is "locked desk".

Hinting the hint-locked-desk:
	if the player does not know desk-locked or the blue flipphone is handled:
		make no decision;
	if player does not know key-is-lost:
		rule succeeds with result "The desk is locked. You should probably unlock it.";
	otherwise if player does not know hex-screws:
		abide by the hinting rules for the hint-locked-desk-no-key;
	otherwise:
		rule succeeds with result  "Maybe you could take the desk apart to get the key out.";

The hint-locked-desk-no-key is a hint topic. Understand "key locked in desk" as the hint-locked-desk-no-key. The printed name is "key locked in desk". It is progressive. It is unlisted. The progression is {"Oops, I guess the key is locked in the desk.", "Maybe there's another key.", "Or maybe there's a way in without a key.", "Why not give the desk a once-over?"}.

The hint-hex-wrench is a hint topic. Understand "hex/allen/-- wrench/key/tool", "hex/allen" as the hint-hex-wrench. The printed name is "hex wrench".

Hinting the hint-hex-wrench:
	if the player does not know hex-screws:
		make no decision;
	otherwise if the player does not know vent-screws:
		rule succeeds with result "It looks like you need a hex wrench to disassemble the desk.";
	otherwise if the red screwdriver is not handled:
		rule succeeds with result "Hmm. Better find a screwdriver.";
	
The hint-screwdriver is a hint topic. Understand "screwdriver" as the hint-screwdriver. The printed name is "screwdriver".

Hinting the hint-screwdriver:
	[ relevant facts: vent-screws, margaret-no-screwdriver, screwdriver-in-laundromat, break-in-to-laundromat, screwdriver is seen ]
	if the player does not know vent-screws:
		go on;
	if the player does not know margaret-no-screwdriver:
		rule succeeds with result "You need a screwdriver to open the vent. Maybe you can ask Margaret for one.";
	otherwise:
		let hints be a list of texts;
		if the player knows break-in-to-laundromat:
			add "could break into the laundromat to get a screwdriver" to hints;
		if the red screwdriver is seen:
			add "could buy the red screwdriver at the convenience store" to hints;
		if hints is empty:
			rule succeeds with result "If Margaret doesn't have one, maybe you could ask around.";
		otherwise:
			if the number of entries in hints is 1:
				rule succeeds with result "You [entry 1 of hints].";
			otherwise:
				rule succeeds with result "You [entry 1 of hints], or you [entry 2 of hints].";

The hint-margaret is a hint topic. Understand "margaret/chao" as the hint-margaret. The printed name is "Margaret".

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

The hint-get-back-in is a hint topic. Understand "escape back lot" as the hint-get-back-in. The printed name is "escape back lot". It is progressive. The progression is {"You're locked out of the building. Maybe you can get out of the back lot another way?", "Perhaps there's a secret exit in the dumpster?", "LOL. No, there's no secret exit in the dumpster.", "What might you do to get through a door you can't or shouldn't open?", "You have two options: wait around for Margaret to come back out, or...", "KNOCK ON WHITE METAL DOOR."}.

Activating rule for the hint-get-back-in:
	if the player knows escape-back-lot:
		deactivate;
	if the bosh back door is locked and the location is the back lot:
		activate;
	otherwise:
		deactivate;


BOSH Hints ends here.