"The Bureau of Strange Happenings" by Phil Riley


The story title is "The Bureau of Strange Happenings".
The story author is "Phil Riley".
The story headline is "An Interactive Phenomenon".
The story genre is "Science Fiction".
The release number is 1.
The story creation year is 2024.

Include Epistemology by Eric Eve.
Include Conversation Framework by Eric Eve. 
Include Conversation Responses by Eric Eve.  
Include Conversational Defaults by Eric Eve.
Include Basic Screen Effects by Emily Short. 
Include Punctuation Removal by Emily Short.
Include Glulx Text Effects by Emily Short.
Include Formatting Capture by Daniel Stelzer.
Include Undo Output Control by Erik Temple.
Include DTPM Fix by Philip Riley.

Include Locksmith by Emily Short.

Include Essentials by Philip Riley. 
Include Facts by Philip Riley.  
Include Phones by Philip Riley. 
Include Commerce by Philip Riley. 
Include Furniture by Philip Riley. 	
Include Third Person Narration by Philip Riley.
Include Door Utils by Philip Riley.
Include Real People by Philip Riley.
Include Visible Rooms by Philip Riley.  
Include Can't Touch This by Philip Riley.
Include Compound Details by Philip Riley.
Include Polish by Philip Riley.
Include Hello by Philip Riley.

Include BOSH Polish by Philip Riley.
 

Include New Light by Philip Riley. 
 
Include Early Declarations by Philip Riley.
 
Include Basics by Philip Riley.
Include Building Facades by Philip Riley.
Include Snarky Remarks by Philip Riley.
  	
Include Followup Questions by Philip Riley.
Include Scenery Supporters by Philip Riley.
 
Include Simple Conversation by Philip Riley.
Include Hyperspace by Philip Riley.	
Include BOSH Facts by Philip Riley. 
Include Swamp Park by Philip Riley.
Include Margaret by Philip Riley. 
Include Enigma Lake by Philip Riley. 
Include I Can Dig It by Philip Riley.
Include BOSH Help by Philip Riley.

Include Overlook by Philip Riley.

Include Gender Options by Nathanael Nerode.   

Include Make Test by Philip Riley.

Include BOSH Hints by Philip Riley.

Use MAX_OBJ_PROP_COUNT of 128.
Use MAX_STATIC_DATA of 720000.
Use MAX_PROP_TABLE_SIZE of 12000000.
Use MAX_NUM_STATIC_STRINGS of 400000.
Use MAX_SYMBOLS of 200000.
Use MAX_OBJECTS of 2048.
Use MAX_DICT_ENTRIES of 20000.
Use MAX_ARRAYS of 40000.
Use MAX_ACTIONS of 300.
Use SYMBOLS_CHUNK_SIZE of 10000.

Work Title is always "The Bureau of Strange Happenings".  
 
Release along with a website.
Release along with an interpreter. 
Release along with cover art.

Use the serial comma.

Table of User styles (continued)
style name    	justification    	italic    	indentation    	first line indentation        	color
special-style-2    	left-justified    	true    	0    	0    	"#888888"

To lb:
	say line break;
	

To turn on rules:
	(- RulesOnSub(); -);
	
When play begins: now right alignment depth is 20.

[After starting the virtual machine:
	turn on rules;]
	
A thing can be snarkable or unsnarkable. A thing is usually snarkable.
A quip is usually snarkable.

[Turning off snarky remarks due to bad review... boo hoo]
the thing-snarking rule does nothing.
the room-snarking rule does nothing. 

Crediting is an action out of world. Understand "credits" as crediting.

Carry out crediting:
	say "[bold type]The Bureau of Strange Happenings[roman type] is a work of interactive fiction created with Inform 7. It was written by Phil Riley.[roman type][paragraph break]";
	say "[bold type]Many thanks to the following people for their help and support:[roman type][line break]";
	say "Playtesters Max Fog, Mike Russo, Tabitha, Peter Gross, Climbingstars, and Winifred Gosling.";
	say "My wife, Laura, for understanding my need to spend hundreds of hours writing something that only a couple of dozen people will ever play, and for innumerable helpful suggestions.";
	say line break;
	say "[bold type]Third-party extensions used in this game:[roman type][line break]";
	say the list of extension credits;

Abouting is an action out of world. Understand "about" as abouting.

Carry out abouting:
	say "Here are a few commands and details particular to this game:[line break]";
	say "- There is generally no need to TALK TO a character to initiate conversation. Upon entering a room, the game will automatically greet any character present.";
	say "- Dialogue happens in three different ways: the game may suggest a topic to discuss, you can ASK a character ABOUT a specific topic, or you can suggest an action to a character by typing something like ANNIE, GET GUN.";
	say "- The game will automatically remember what you've discussed with each character. You can review these conversations by typing RECAP <character's name>.";
	say "- Typing HINT by itself will list the currently available hint topics. Those in bold have new information. Typing HINT <topic> will provide a hint on that topic. You can also RECALL <topic> to review all hint text you've seen on that topic.";

[ Understand "touch [something]" as touching. ]

Volume 1 - The Game 

Book 1 - Beginning 
 
The Room of Stuff is a room. 
  
Yourself is in the room of stuff.  

The isolation booth is a room.

The new room description heading rule does nothing when the location is the isolation booth.
  
Ezra Gaunt is a man in the Room of Stuff. The description is "Agent Gaunt's last name describes him well. He is a perpetually worried-looking individual, a look emphasized by his thinness and his thick-rimmed glasses.".
Petula Goldberg is a woman in the Room of Stuff. The description is "Agent Goldberg has lots of dogs, a fact which can be inferred by the inevitable fur somewhere on her person. The last front office worker at the Bureau left due to an extreme allergic reaction to Goldberg.".
Larch Faraji is a nonbinary in the Strip Mall Parking Lot South. The third singular pronoun is singular-they-pronoun. The description is "Agent Faraji is dressed smartly in a black suit, with neat hair and a serious expression. They are every bit the professional.".

The black suit is part of Larch Faraji. The description is "A black suit, tailored to fit Faraji's slim frame.".

Faraji's hair is part of Larch Faraji. The description is "Faraji's hair is dark and neatly styled.".


Play mode is a kind of value. The play modes are _startup, _normal, and picking character.
The current play mode is a play mode that varies. The current play mode is initially _startup. 

To print faraji bio:
	say fixed letter spacing;
	say "Larch Faraji (they/them): An agent of the Bureau of Strange Happenings. Dark hair, dark eyes, and a dark sense of humor. Specializes in the investigation of unexplained phenomena throughout the United States and its territories. Lead singer of the third wave neo-old-school punk band DC Trash. Liable to fits of sarcasm and cynicism. Dedicated to the Bureau's mission. Status: Potential threat.";
	lb;
	say "    -- Notes from Senate Investigation into BOSH, Senator S. Savra, Chair";
	lb;
	lb;
	continue;
	say variable letter spacing;

SKIP_PROLOGUE is a truth state that varies.

SCREEN_READER is a truth state that varies. SCREEN_READER is initially false.

When play begins:   
	say "Are you using a screen reader? If so, type 'yes'. Otherwise, type 'no' to continue.";
	if the player consents:
		now SCREEN_READER is true;
	say paragraph break;
	now the story viewpoint is third person singular;
	Repeat with S running through subjects:  
		move S to the Room of Subjects;
	if SKIP_PROLOGUE is false:
		print faraji bio;
	[ say "[bold type]Department of Homeland Security, Washington, DC[roman type][line break]";
	say "Open on a drab office with decor dating to the mid-eighties. The DHS assistant to the associate sub-director looks longingly at the office clock nearing five, then leans across the desk and impatiently states his demands:[paragraph break]";
	say "'First name, last name, pronouns?'[paragraph break]";  
	say "(1) Ezra Gaunt (he/him), winner of the 2006 Baltimore County Edgar Allan Poe Trivia Competition;[paragraph break]";
	say "(2) Petula Clark Goldberg (she/her), former award-winning dog groomer of the avant-garde school;[paragraph break]";
	say "or (3) Larch Faraji (they/them), lead singer of the third wave neo-old-school punk band DC Trash.";
	now current play mode is picking character; 
	follow the current graphics drawing rule; ]
	if 1 is 0:		
		now the command prompt is "1, 2, or 3? > ";
		now current play mode is picking character;
	otherwise: 
		now player's forename is "Larch";
		now player's full name is "Larch Faraji";  
		now player's surname is "Faraji";
		now the player is Larch Faraji; 
		init player;
		init office;
		[ move the player to the Strip Mall Parking Lot South; ]
		try unknown voice calling the blue flip phone on mysterious phone;
		move klimp to the Room of Stuff;
		move moira to the Room of Stuff;
		now the current play mode is _normal; 
		set possessives;
		if SKIP_PROLOGUE is false:
			say Intro Text;
			continue;
		[ follow the current graphics drawing rule; ]
		[ move the player to the Strip Mall Parking Lot South; ]
 
To survey is a verb. To wrinkle is a verb.

Intro Text is always "As an agent of the Bureau of Strange Happenings (BOSH), it is Agent [player's full name]'s job to investigate unexplained phenomena throughout the United States and its territories. Recently, however, business hasn't been good. Once a bustling office with a dozen Agents, the Bureau's been reduced to just three: [Player's surname], Moira Zin, and Chief Huffton Klimp. The Bureau's expansive and well-appointed office suite was taken over by the State Department Book Club, and now the agents have been consigned to a tiny suite in a strip mall in the remote D.C. suburb of Swamp Park, Maryland. Today is move-in day at the bureau. 
	
	We open on a decrepit strip mall just as an aging Hyundai pulls into the potholed parking lot. [agent] steps out of the car. They survey the area and wrinkle their nose.[paragraph break]".

	
	 


	
After reading a command when current play mode is picking character:
	if the player's command matches "1":
		now the player is Ezra Gaunt;
		now player's forename is "Ezra";
		now player's full name is "Ezra Gaunt";
		now player's surname is "Gaunt";  
	otherwise if the player's command matches "2":
		now the player is Petula Goldberg;
		now player's forename is "Petula";
		now player's full name is "Petula Goldberg";
		now player's surname is "Goldberg";
	otherwise if the player's command matches "3":
		now the player is Larch Faraji;
		now player's forename is "Larch";
		now player's full name is "Larch Faraji";
		now player's surname is "Faraji";
	otherwise:
		say "Please select 1, 2, or 3."; 
		reject the player's command; 
	set possessives;
	now the command prompt is “>”; 	
	now current play mode is _normal;
	move the player to the isolation booth;
	[ follow the current graphics drawing rule; ]
	say line break;
	say "The government functionary cracks, 'You can hold the life story.' He punches a few keys on his computer, stands up and says 'Thank you, Agent [player's surname]. You're all processed for the move to the new BOSH offices. Now if you'll excuse me, it's time to go home.'[paragraph break]";
	say "[Player] stands, and collecting [our] briefcase, turns and strides out of the office.[paragraph break]"; 
	continue; 
[	say "The screen cuts to a shot of expensive leather oxfords as their wearer, otherwise out-of-frame, strides along a polished marble floor. The tap, tap, tap of their heels echoes in the empty hallway. There is something sinister in that reverberation, something not right, a sibilance perhaps that shouldn't be there. One could imagine chills up a listener's spine, if only there were someone there to listen.[paragraph break]";
	say "The shoes stop at a gray utility door. A moment later the door opens and the shoes continue, now outside, tap tap tapping on a cement driveway. A black car pulls up close, tires crunching on the dirty pavement. The shoes take an involuntary step backwards, then forwards again as a window hisses open. Someone speaks, their voice strange and the words unknown.[paragraph break]";
	say "The camera focuses on the driver's side window. It is dark inside, too dark to see. Someone thrusts a manila folder out of the window. A hand quickly grabs the folder, and the car speeds off. Now the camera zooms on the folder. At the top it reads '[bold type][player's full name][roman type]'. The screen cuts to black.[paragraph break]";
	continue;]
	say “[banner text][line break]”;
	continue;  
	say Intro Text; 
	continue;
	init player; 
	init office;
	try unknown voice calling the blue flip phone on mysterious phone;
	move klimp to the Room of Stuff;
	move moira to the Room of Stuff;
	move the player to the Strip Mall Parking Lot South;
	[ follow the current graphics drawing rule; ]
	reject the player's command;
	
To init player:
	now the player carries the green smartphone;
	now the player knows klimp's phone number;
	now the player knows biff's mobile number;
	now the player owns the green smartphone;

A thing has a text called the possessive. The possessive of a thing is usually "".
Understand the possessive property as describing a thing.

To set possessives:
	let P be the substituted form of "[Player's surname] s";
	now the possessive of Biff's door is P;		
	now the possessive of the green smartphone is P;
	now the possessive of biff's computer is P;
	now the possessive of car 1 is P;
	now the possessive of biff's chair is P;
	 
After reading a command:
    	remove stray punctuation;

Chapter 1 - Player's Name

When play begins:
	now left hand status line is "[location-title-case]";
	now right hand status line is "[if location is the public gymnasium]Score: [basketball score][end if][if location is in ELR and location is outdoors]Weather: [current weather][end if][if location is in Help Area and Bad Luck Counter > 0]BAD LUCK FOR [bad luck counter] turns[end if]";

To continue:
	say "[bracket]continue[close bracket][paragraph break]";
	wait for any key;

The player's forename is a text that varies. The player's full name is a text that varies. The player's surname is a text that varies.

To say agent:
	say "Agent [player's surname]";	 
	
Instead of looking when current play mode is picking character: do nothing.

Rule for printing the banner text when current play mode is picking character: do nothing.

Rule for constructing the status line when current play mode is picking character: do nothing.

To say location-title-case:
	let L be the substituted form of "[location]" for comparison purposes;
	say "[L in title case]";
	
[To say location-title-case-with-containment:	 
	let L be the substituted form of "[location]" for comparison purposes;
	let result be "[L in title case]";
	let intermediate level be the visibility-holder of the player;
	if visibility level count > 1:
		repeat with intermediate level count running from 2 to the visibility level count:
			let segment be a text;
			if the intermediate level is a supporter or the intermediate level is an animal: 
				now segment is " on [the intermediate level]" (B);
			otherwise:
				now segment is " in [the intermediate level]" (C);
			if segment is not "":
				now result is the substituted form of "[result], [segment]";
			let the intermediate level be the visibility-holder of the intermediate level;
	say result;]
 
[
	let intermediate level be the visibility-holder of the actor;
	if visibility level count > 1:
		say "[We] [are]";
		repeat with intermediate level count running from 2 to the visibility level count:
			if the intermediate level is a supporter or the intermediate level is an animal:
				say " on [the intermediate level]" (B);
			otherwise:
				say " in [the intermediate level]" (C);
			let the intermediate level be the visibility-holder of the intermediate level;
		say ". [run paragraph on]";]
	

[ Table of Fancy Status
left	central (text)	right
"[location-title-case]"	--	"[agent]"

Rule for constructing the status line:
     fill status bar with Table of Fancy Status;
     rule succeeds. ]

Section 1 - Special text substitution code

Include (-
[ SubstituteForComparison to txt ;
    @push say__comp;
    say__comp = 1;
    TEXT_TY_SubstitutedForm(to, txt); 
    @pull say__comp;
    return to;
];
-).
To decide what text is the substituted form of (T - text) for comparison purposes:
    (- SubstituteForComparison({-new:text}, {-by-reference:T}) -).

Section 2 - Technicalities
	



Book 2 - Helping the Player

Chapter 1 - Accessibility

Accessible is a truth state that varies. Accessible is initially false.

Chapter 2 - Tipping

To tip (message - a text):
	if accessible is true:
		say "Tip: [message][line break]";
	otherwise:
		say "[unicode 8658] [message][line break]";
		
[Chapter 3 - Remembering

Definition: A thing is not-a-quip if it is not a quip.

Understand "remember [any subject]" or "remember [any not-a-quip thing]" as remembering. Remembering is an action applying to one visible thing.

Check remembering:
	if the number of quips which are recollected by someone is 0, say "You have not yet had any conversations to remember." instead.

Carry out remembering:
	let N be 0;
	repeat with item running through quips which mention the noun:
		if someone recollects the item:
			say "You have discussed '[the item]' with [the list of other people who recollect the item]." ;
			increment N;
		if N is 0, say "You haven't discussed [the noun] with anyone yet." 

Definition: a person is other if he is not the player.]
		

Book 3 - Special Tweaks for Implicit Greeting

Before reading a command (this is the reset skip sounds rule):
	now skip sounds this turn is false;

[Before saying hello to someone when the greeting type is implicit (this is the skip sounds on implicit hello rule):
	now skip sounds this turn is true;]
	
Book 4 - Special Tweaks

the can't greet current interlocutor rule response (A) is "[We] [don't] generally talk to [ourselves].".
the can't greet yourself rule response (A) is "[We] [don't] generally talk to [ourselves].".
[ The describe what's on scenery supporters in room descriptions rule does nothing. ]
[the can't take what's fixed in place rule response (A) is "That can't be picked up.".]
the can't switch on unless switchable rule response (A) is "That can't be switched on and off.".  

The room description body text rule response (A) is "Some light would be nice.".

The parser clarification internal rule response (C) is "Sorry, you can only have one item here. Which exactly?[paragraph break]".

[the can't touch rule does nothing when the action name part of the current action is identifying action.]
 
[Book 5 - Tweaks to Threaded Conversation

the standard listing subject changes rule response (A) is "[italic type][quip-suggestion-phrase][the prepared list delimited in disjunctive style].[roman type]".
the standard quip plausibility rule response (A) is "[italic type][quip-suggestion-phrase][the prepared list delimited in disjunctive style].[roman type]"]

The parser clarification internal rule response (D) is "Whom do you want [if the noun is not the player][the noun][otherwise][us][end if] to
		[parser command so far]?"

The parser clarification internal rule response (E) is "What do you want [if the noun is not the player][the noun][otherwise][us][end if] to
		[parser command so far]?"

the block kissing rule response (A) is "[We] might not like that."

Flipping is an action applying to one thing. Understand "flip [something]" as flipping.

Check flipping something when the noun is not a device:
	say "That doesn't seem to be something [we] can flip.";
	rule fails;

Carry out flipping a device:
	if the noun is switched on:
		try switching off the noun;
	otherwise:
		try switching on the noun;

Instead of imploring someone for "money":
	try quizzing the noun about money.

[ After printing the name of something (called the item):
	if the item is borrowable and the item is not borrowed:
		say " (borrowable)"; ]

After discussing something for the first time:
	say "[bracket]You can 'RECAP [current interlocutor]' at any time to review what you've discussed with [the current interlocutor].[close bracket][line break]";
	continue the action;

Book 5 - Automatic greeting

After Margaret going to a room:
	if the location of margaret is the location and the current interlocutor is not Margaret:
		postpone saying hello to Margaret;
	continue the activity;

After going to a room:
	if the current interlocutor is nothing:
		repeat with P running through the visible people enclosed by the location:
			if P is not the player and P is not an animal and P is not Margaret at a distance:
				postpone saying hello to P;
				continue the activity; 
	otherwise if the current interlocutor is not in the location:
		now the current interlocutor is nothing;
	[ otherwise:
		say "WARNING: The current interlocutor is not nothing. It is [the current interlocutor]."; ]
	continue the activity;
	
The postponed action is an action that varies.

To postpone (act - an action):
	now the postponed action is act;
	
This is the postponement rule:
	if the postponed action is not waiting:
		silently try the postponed action;
		now the postponed action is waiting;
	
The postponement rule is listed before the every turn stage rule in the turn sequence rules.

After saying hello to someone (called P):
	set pronouns from P;
	continue the action;
 
Book 6 - Messages

The parser error internal rule response (R) is "[if following-up is true]That doesn't seem to be a book you can borrow[otherwise]I[']m not sure what you're trying to say. I might just not recognize the words you're using[end if]."

The default sound description rule response (A) is "[Generic description of T] is [sound of T] in another room nearby."

The futile to throw things at inanimate objects rule response (A) is "There doesn't seem to be much point in that."

The block throwing at rule response (A) is "That doesn't seem like a good idea."

Book 7 - Actions

Chapter 1 - Knocking

Knocking on is an action applying to one thing. Understand "knock on/-- [something]", "pound on/-- [something]", "rap on/-- [something]", "bang on/-- [something]" as knocking on.

Report knocking on the player:
	say "[We] [give] [our] head a quick knock, but nothing happens.";
	rule succeeds;

Check knocking on someone when the noun is not the player:
	say "That doesn't seem like a good idea.";
	rule fails;

Report knocking on something:
	say "[We] [give] [the noun] a quick knock, but nothing happens.";
	rule succeeds;

Report knocking on a door:
	say "[We] [give] [the noun] a quick knock, but no one seems to be home.";
	rule succeeds;
	


Book 8 - Script

Klimp in-the-office is a scene. Klimp in-the-office begins when Chief Huffton Klimp is in BOSH chief's office.
Moira in-the-office is a scene. Moira in-the-office begins when Moira Zin is in Moira's office.

Denouement is a scene. Denouement begins when the location is inside-the-dumpster.
Before going from the front office to the strip mall parking lot south during denouement:
	if the copy of the Washington Herald is not handled:
		say "[We] [trip] over a newspaper left up against the door.";
		now the copy of the Washington Herald is in the Strip Mall Parking Lot South;

Before going from the strip mall parking lot south to the front office during denouement:
	if the copy of the Washington Herald is not handled:
		say "[We] [trip] over a newspaper left up against the door.";
		now the copy of the Washington Herald is in the front office;
	

Book 9 - Concepts

Chapter 1 - Subjects and Facts

The ringing-phone is a subject. It is privately-named. The printed name is "ringing phone". Understand "ringing/-- phone" as the ringing-phone.

Senator Savra is a man. he is in the Room of Stuff. Savra is familiar. [The help text of senator savra is "Our nemesis, intent on the abolition of BOSH.".]

Time-travel is a subject. It is privately-named. The printed name is "Time Travel". Understand "time travel/--" as time-travel.

Zener Cards is a subject. Understand "zener card" as Zener Cards.
The astral plane is a subject. 
The Loch Ness Monster is a subject. Understand "nessie" as the Loch Ness Monster. 
The Roswell Incident is a subject. 
The Chupacabra is a subject. 
The Sasquatch is a subject. Understand "bigfoot" as Sasquatch. 
The Yeti is a subject. Understand "abominable/snowman" as Yeti.
The Mothman is a subject. 
The Jersey Devil is a subject. 
The Flatwoods Monster is a subject. 
The Dover Demon is a subject.
The Kelly-Hopkinsville Encounter is a subject. Understand "Kelly/Hopkinsville/goblins/goblin" as the Kelly-Hopkinsville Encounter.
The Rendlesham Forest Incident is a subject.
The Phoenix Lights is a subject.
The Betty-and-Barney Hill Abduction is a subject. It is privately-named. The printed name is "Betty and Barney Hill Abduction". Understand "Betty/and/Barney/Hill/abduction" as the Betty-and-Barney Hill Abduction.
The Black Knight Satellite is a subject.
The Tunguska Event is a subject.
The Dyatlov Pass Incident is a subject.
The Bermuda Triangle is a subject. 
The Mary Celeste is a subject.
The Philadelphia Experiment is a subject.
Amelia Earhart is a subject.
The Voynich Manuscript is a subject. 
The Shroud of Turin is a subject.
The Holy Grail is a subject. 
Time slips is a subject. It is privately-named. The printed name is "Time slips". Understand "time slip/slips" as time slips.
The Ark of the Covenant is a subject.
The Spear of Destiny is a subject. Understand "holy lance", "lance of longinus" as the Spear of Destiny.
Alchemy is a subject. Understand "philosopher's stone" as alchemy.
The Illuminati is a subject.
The New-World-Order is a subject. It is privately-named. The printed name is "New World Order". Understand "New World Order", "NWO" as the New-World-Order.
Sacred geometry is a subject. 
Divining is a subject. Understand "dowsing", "divination", "rod" as divining. 
Crystals are a subject. Understand "crystal" as crystals. 
Ley lines are a subject. Understand "ley line" as ley lines. 
Leyden jars are a subject. Understand "Leyden jar" as leyden jars.
Astrology is a subject. Understand "horoscope" as astrology.   
The Freemasons is a subject. Understand "freemason" as the Freemasons. 
The Knights Templar is a subject. Understand "templars" as the Knights Templar.
Atlantis is a subject. Understand "lost city" as Atlantis. 
Ancient astronauts is a subject. Understand "astronaut" as ancient astronauts. 
Ancient Egypt is a subject. Understand "pyramid/pyramids/sphinx" as Ancient Egypt. 
Crop circles is a subject. Understand "circle" as crop circles. 
ESP is a subject. Understand "telepathy", "extra-sensory perception" as ESP. 
Ghosts is a subject. Understand "ghost/poltergeist/poltergeists/phantom/phantoms/specter/specters/wraith/wraiths/apparition/apparitions/spook/spooks/spirit/spirits/shade/shades/undead/haunting/hauntings" as ghosts. 
Vampires is a subject. Understand "vampire" as vampires.
Werewolves is a subject. Understand "werewolf" as werewolves. 
Zombies is a subject. Understand "zombie" as zombies. 
Hypnosis is a subject. Understand "hypnotism" as hypnosis. 
Invisibility is a subject. Understand "invisible" as invisibility.
Levitation is a subject. Understand "levitate" as levitation.
Telekinesis is a subject. Understand "telekinetic/power/powers" as telekinesis.
Teleportation is a subject. Understand "teleport" as teleportation.
aliens is a subject.
Spontaneous human combustion is a subject. 
The Moberly-Jourdain Incident is a subject. Understand "moberly/jourdain" as the Moberly-Jourdain Incident.
Nikola Tesla is a subject. 
The Sargasso Sea is a subject.
The Marfa Lights is a subject.
V I Lenin is a subject. Understand "Vladimir/Illyich/Ulyanov" as V I Lenin.
THe Church of Scientology is a subject. Understand "dianetics" as the Church of Scientology.
UFOs is a subject. Understand "UFO" as UFOs.
Ouija boards is a subject. Understand "board" as Ouija boards.
Magic 8-Ball is a subject.
The Bureau of Supernatural History is a subject.
Woonsocket is a subject. 
bear is a subject. Understand "bear from another world", "bears" as bear.
huge alien jellyfish is a subject. 
John Lennon is a subject.
Natural History Museum is a subject.
New York City is a subject.
Illinois is a subject.
Kamchatka is a subject.
Koryak people is a subject.
Davy Jones is a subject.
Robots is a subject. Understand "robot" as robots.

[spacetime is a subject. Understand "time" as spacetime. The printed name is "Time". the help text of SpaceTime is "According to Wikipedia, time is the continued sequence of existence and events that occurs in an apparently irreversible succession from the past, through the present, into the future.".]


The Bureau of Strange Happenings is a subject. Understand "BOSH" as The Bureau of Strange Happenings. [The help text of The Bureau of Strange Happenings is "[Our] employer, The Bureau of Strange Happenings."].

Book 10 - Kinds

Book 11 - The Players

[ To decide whether (actor - a person) is busy with respect to (actor2 - a person):
	decide on whether or not actor is phoning and actor is not talking with actor2;

Instead of an actor saying hello to someone when the noun is busy with respect to the actor:
	say "[The noun] is on the phone.";

Instead of quizzing someone about something when the noun is busy with respect to the actor:
	say "[The noun] is on the phone.";

Instead of asking someone for something when the noun is busy with respect to the actor:
	say "[The noun] is on the phone.";

Instead of asking someone to try doing something when the noun is busy with respect to the actor:
	say "[The noun] is on the phone."; ]


Chief Huffton Klimp is a man. The printed name of Klimp is "Chief Klimp". The description is "Huffton Klimp, or simply 'The Chief', who by his name and title should rightly be big and gruff, is a wiry guy with a thinning shock of red hair on top. Once the youngest and most devoted recruit in the Bureau, the years and his promotion to Bureau Head have not dulled his enthusiasm and idealism. He's a true believer in the existence of aliens, and he's convinced that the Bureau is the only thing standing between humanity and the alien menace. He's also convinced that the Bureau is the only thing standing between him and a comfortable retirement. He's a good guy, but he's a bit of a pain."

Klimp carries a mobile phone called klimp's mobile phone. Klimp owns Klimp's mobile phone. Klimp's mobile phone number is a phone number. Klimp's mobile phone number reaches Klimp's mobile phone. The player knows klimp's mobile phone number. Klimp knows Biff's mobile number.

Klimp's key is a key. Klimp's key unlocks Klimp's door. Klimp carries Klimp's key. 

arrival is a behavior.

Every turn when the current behavior of Chief Huffton Klimp is arrival:
	if the location of Klimp is Strip Mall Parking Lot South:
		try Klimp going west;
	otherwise if the location of Klimp is the front office:
		try Klimp going west;
	otherwise if the location of Klimp is the BOSH office hallway and Klimp's door is locked:
		try Klimp unlocking Klimp's door with Klimp's key;
	otherwise if the location of Klimp is the BOSH office hallway:
		try Klimp going west;
	otherwise if the location of Klimp is the BOSH chief's office:
		remove behavior from Klimp;

To tell klimp something he already knows:	
	say "Klimp looks at [us] funny. 'Uh, yeah, you already told me that.'";
	
[ Response of Klimp when asked about aliens:
	Say "Klimp assumes his lecturing pose. 'You know what I think, of course. They're here, they've been here for decades, maybe centuries, and they're a menace to the human race. We're the only thing standing between them and the end of the world.'"; ]
	
[ Greeting response for Klimp:
	say "Good day.";
	continue the action; ]
	
[ Response of Klimp when asked about Moira:
	Say "Klimp nods. 'Superior agent. I'd be honored to be compared to her.'"; ]
	
[ Response of Klimp when asked about Margaret:
	Say "He rolls his eyes. 'You take what you can get.'"; ]
	
[ Response of Klimp when asked about the Bureau of Strange Happenings:
	Say "'The Bureau will be the most important line of defense when the alien threat inevitably comes to fruition. Savra is a fool,' he says with a gleam in his eye."; ]

[ Response of Klimp when asked about Senator Savra:
	say "Klimp stops short of actually spitting. 'The lowest of the low.'"; ]

klimp is familiar. [The help text of klimp is "Chief Huffton Klimp, the erstwhile head of [our] poor little bureau.".]

for-a-screwdriver-klimp is a questioning quip.
	It is privately-named. The printed name is "for a screwdriver". [The true-name is "for-a-screwdriver".] Understand "for/a/screwdriver" as for-a-screwdriver-klimp.
	It mentions the red screwdriver.
	The comment is "Faraji asks, 'Would you happen to have a --'".
	The reply is "'Screwdriver you could borrow? No, no, someone stole my screwdriver collection. Probably the Illuminati.'".
	It quip-supplies Klimp;
	
An availability rule for for-a-screwdriver-klimp:
	if the player knows vent-screws and the red screwdriver is not handled:
		always available;

to borrow the skull is a questioning quip. 
	Understand "juvenile/sasquatch" as to borrow the skull.
	It mentions the juvenile sasquatch skull.
	The comment is "Faraji asks, 'Chief, mind if I borrow the skull?'". 
	The reply is "He looks pained for a moment. 'Uh, I'd rather you didn't. It's fragile.'".
	It quip-supplies Chief Huffton Klimp.
	It is repeatable.
	It is plausibility-once.

After discussing to borrow the skull:
	queue Chief Huffton Klimp with to borrow the skull;
	
After examining the juvenile sasquatch skull:
	queue Chief Huffton Klimp with to borrow the skull;

Before taking the juvenile sasquatch skull:
	if Klimp owns the juvenile sasquatch skull:
		queue Chief Huffton Klimp with to borrow the skull;

to-borrow-liber-animarum is a questioning quip. 
	It is privately-named.
	The printed name is "to borrow [italic type]Liber Animarum[roman type]".
	Understand "to/borrow/the/liber/animarum" as to-borrow-liber-animarum.
	It mentions the Liber Animarum.
	The comment is "Faraji asks, 'Would it be okay if I borrowed [italic type]Liber Animarum[roman type]?'".
	The reply is "'Why not? I don't understand a word of it anyway.'".
	It quip-supplies Chief Huffton Klimp.
	
After examining Liber Animarum:  
	queue Chief Huffton Klimp with to-borrow-liber-animarum;

Before taking the Liber Animarum:
	if Klimp owns the pair of astral lenses:
		queue Chief Huffton Klimp with to-borrow-liber-animarum;
	
After discussing to-borrow-liber-animarum:
	now the player owns Liber Animarum;
	silently try taking Liber Animarum;
	if the player carries Liber Animarum:
		say "[We] [take] [italic type]Liber Animarum[roman type].";
	continue the activity;
	
Does the player mean quizzing someone about to-borrow-liber-animarum:
	it is very unlikely.

to-borrow-the-lenses is a questioning quip. 
	It is privately-named.
	The printed name is "to borrow the astral lenses".
	Understand "to/borrow/the/pair/of/astral/lenses/lens/glass/glasses" as to-borrow-the-lenses.
	It mentions the pair of astral lenses.
	The comment is "Faraji asks, 'Would it be okay if I borrowed the astral lenses for a while?'".
	The reply is "'Sure! Why don't you scout the locality for astral phenomena?'".
	It quip-supplies Chief Huffton Klimp.
	
After examining the pair of astral lenses:  
	queue Chief Huffton Klimp with to-borrow-the-lenses;
	[ activate the Table of Astral Lenses Hints; ]

Before taking the pair of astral lenses:
	if Klimp owns the pair of astral lenses:
		queue Chief Huffton Klimp with to-borrow-the-lenses;
	
After discussing to-borrow-the-lenses:
	now the player owns the pair of astral lenses;
	silently try taking the pair of astral lenses;
	if the player carries the pair of astral lenses:
		say "[We] [take] the astral lenses.";
	continue the activity;
	
Does the player mean quizzing someone about to-borrow-the-lenses:
	it is very unlikely.

to borrow the dodecahedron is a questioning quip. 
	Understand "orange/marble" as to borrow the dodecahedron.
	It mentions the polished orange marble dodecahedron.
	The comment is "[We] [ask], 'Chief, mind if I borrow the dodecahedron?'".
	The reply is "He thinks for a moment. 'Actually, I need it to keep my computer running properly. It's a long story.'".
	It quip-supplies Chief Huffton Klimp.
	It is repeatable.
	It is plausibility-once.

After examining the polished orange marble dodecahedron:
	queue Chief Huffton Klimp with to borrow the dodecahedron;

Moira Zin is a woman. The description is "Agent Moira Zin is the very model of a competent Bureau agent. Hard-working, serious, no-nonsense but open-minded, she's the sober counter-balance to Klimp's sometimes childish credulity. Moira would clearly be a rising star if it weren't for the Bureau's pending dissolution."

[The help text of Moira is "[Moira] is [our] colleague at BOSH.".]

moira is familiar.

Rule for writing a paragraph about Margaret Chao when the location is front office:
	say "The Bureau's latest office manager, [Margaret Chao] is bustling around with unrestrained enthusiasm";
	if front office is not visited:
		say ", unpacking boxes and assembling an approximation of a respectable front office, all as if the Bureau isn't going to be shut down before the year is out";
		say ". She sees [player's surname] and practically [squeal]. '[agent]! I'm sorry -- [player's forename]! How are you? I hope you don't mind -- I took the liberty of putting your desk together. I just love hex wrenches, don't you? Also, your new phone is here. I put it in your desk. Now I just need you to give me your old phone so I can deactivate it.'[paragraph break]";
		say "'Oh, good', [we] [say]. 'Our phone downgrades have arrived from our bureaucratic betters.'";
		lb;
		say "[Player] [hand] Margaret [our] old phone. [Margaret] [tap] a few keys on [their] computer and [say] 'There! All settled.'";
		[now the current interlocutor is margaret;]
		now the green smartphone is nowhere;
		now biff's mobile number reaches the blue flip phone;
	otherwise:
		say ".";
		[make it easy to talk to Margaret.]
		[if the current interlocutor is not a person, now the current interlocutor is Margaret Chao;]
		
[The how-are-you-reply of Margaret Chao is "I'm great! Thanks!".
The how-are-you-reply of Moira Zin is "Very well, thanks.".
The how-are-you-reply of Chief Huffton Klimp is "Good good good. Just fine.".
The how-are-you-reply of the clerk is "Good, I guess.".]

Book 12 - Some Speech Phrases

Capture Player is a person that varies.

To say EG:
	capture speech for Ezra Gaunt;

To say PCG:
	capture speech for Petula Goldberg;
	
To say LF:
	capture speech for Larch Faraji;

To say end say:
	stop capturing text;
	if player is Capture Player:
		say captured text;
	
To capture speech for (P - a person):
	if text capturing is active:
		stop capturing text; 
		if player is Capture Player:
			say captured text;
	start capturing text;
	now Capture Player is P;
	
	

Book 13 - Places

Chapter 1 - BOSH HQ and Swamp Park 
 
 
BOSH HQ is a region. 

Section 1 - Your Office

Biff's office is a room. It is in BOSH HQ. The printed name is "[save LPR][our][restore LPR] office".

"[if biff's office is not visited][We] [pause] and [survey] the scene. It's not much -- four white walls, grey industrial carpet. [Margaret] [have] helpfully assembled [our] desk and chair, though how sturdily is an open question. [Regarding Margaret][They] also took the time to put up some of Agent [Player]'s office decor -- [our] degree in Nonstandard Investigative Techniques, [EG]a trivia competition award, and a poster for [our] favorite movie: the b-movie time-travel classic The Room of Lost Time[PCG]a photo of [our] dog Pluto, and a print of [italic type]Green Pheasant[roman type] by Utagawa Hiroshige[LF]an original pencil drawing of the Pitfall snake by semi-acclaimed Washington DC artist Darius 5200, and a photo of [our] soccer team[end say]. At the very least the wall coverings help compensate for the lack of windows. The office door is to the north, and there's a white metal door to the west.[maybe insert computer muttering][otherwise]It's basically four white walls and grey carpet. There's a cheap desk and chair. In lieu of windows, there are a few things on the wall: [our] degree in Nonstandard Investigative Techniques, [EG]a trivia competition award, and a poster for [our] favorite movie[PCG]a photo of [our] dog Pluto, and a Japanese print[LF]a pencil drawing of the Pitfall snake, and a photo of [our] soccer team[end say]. The office door is to the north, and there's a white metal door to the west.[end if]"


There is a fluorescent light source in Biff's office called biffo-light.

The fake-phone is in Biff's office. It is undescribed and privately-named. Understand "phone" as the fake-phone. The printed name is "phone".

Instead of doing something to the fake-phone:
	say "The phone is in the desk drawer, which is closed.";

To say maybe insert computer muttering:
	if biff's computer is not seen:
		say "[paragraph break][reset LPR][We] [mutter], 'Where's my computer?'[run paragraph on]";

Biff's desk is a desk in Biff's Office. Biff's desk is scenery. It is privately-named. The printed name is "[our] desk".  Understand "desk" as biff's desk.
Biff's desk can be lockable. Biff's desk can be locked. Biff's desk is lockable and locked. 

biff's desk's drawer is locked. Understand "desk drawer" as biff's desk's drawer.

Instead of pulling biff's desk's drawer:
	try opening biff's desk's drawer.

Instead of pushing biff's desk's drawer:
	try closing biff's desk's drawer.

The blue flip phone is a phone. It is in biff's desk's drawer.
The description of the blue flip phone is "It's a cheap blue flip phone, purchased by the Bureau as some kind of cost-saving measure. It's not even a smartphone. It's not even a good flip phone. It's not even a good bad flip phone. It's just a bad flip phone."

After taking apart the desk:
	say "[We] [unscrew] the hex screws and [remove] the drawer. Inside, [we] find a little grey key and a blue flip phone. [We] [put] the drawer back together and [pocket] the key and the phone, being careful to leave the drawer unlocked.
	
	They answer the phone.[paragraph break]";
	say "'Hello?'
	
	'Hello, Larch,' says a familiar voice -- it's Doris.
	
	'Doris? Why didn't you tell me you were calling when I saw you in your office?'
	
	'Ah well, I didn't know I was going to call you then. In fact, I haven't even called you yet. It's complicated.'

	'What do you mean?'

	'I'm calling you now, but I haven't called you yet. I'm calling you from the future.'

	'Oh, I see. So you're calling me from the future to tell me that you're going to call me from the future.'

	'No, I'm calling you from the future to get you to try to answer the phone so that you'll end up meeting me so that I'll know to call you from the future. Don't worry about it, it's all timey-wimey. Aaanyway, now that you've answered -- thanks for rescuing Daniels. Also, we need your help with something. [italic type]We need you to save the Dragon[roman type].'
	";
	now we won the game is true;
	end the story saying "Congratulations on answering the phone!";


we won the game is a truth state that varies.

After printing the player's obituary when we won the game is true:
	say "[bold type]Larch Faraji will return in 'BOSH II: Mazes'.[roman type][paragraph break]";
	say "[italic type][bracket]No, not that kind of maze.[close bracket][roman type]";

A key is a kind of thing.

The little grey key is a key. It is in biff's desk's drawer. The little grey key is familiar.
Biff's desk's drawer has matching key the little grey key. The description of Biff's desk's drawer is "The desk is a cheap DIY piece held together with hex screws."
The description of the little grey key is "It's a small grey key, like the kind you might accidentally lock inside a desk drawer."

The hex screws are part of biff's desk's drawer. The description is "Several hex screws hold the desk drawer together."

Taking apart the desk is an action applying to one thing. Understand "take apart [Biff's desk]", "take apart [Biff's desk's drawer]", "unscrew [Biff's desk]", "unscrew [Biff's desk's drawer]", "take [Biff's desk] apart", "take [Biff's desk's drawer] apart", "unscrew [hex screws]", "disassemble [Biff's desk]", "disassemble [Biff's desk's drawer]" as taking apart the desk when the location is Biff's office.

Instead of opening biff's desk when the player encloses the hex wrench and the blue flip phone is not handled:
	try taking apart the desk biff's desk;

Instead of unlocking biff's desk with something:
	try unlocking biff's desk's drawer with the second noun;

Instead of unlocking keylessly biff's desk:
	try unlocking keylessly biff's desk's drawer;

Instead of opening biff's desk's drawer when the player encloses the hex wrench and the blue flip phone is not handled:
	try taking apart the desk biff's desk;

Check taking apart the desk when the player does not enclose the hex wrench:
	say "The screws are in there pretty tight. [We] [don't] have the right tool to get them out." instead;

Carry out taking apart the desk:
	now biff's desk's drawer is unlocked;
	now the player carries the little grey key;
	now the player carries the blue flip phone;
	now the fake-phone is nowhere;

Instead of unlocking biff's desk with the hex wrench:
	try taking apart the desk biff's desk;

Instead of unlocking biff's desk's drawer with the hex wrench:
	try taking apart the desk biff's desk;

Instead of unscrewing the hex screws with the hex wrench:
	try taking apart the desk biff's desk;

[ Biff's landline is scenery on Biff's desk. It is privately-named. The printed name is "[our] office phone". The description is "It's not yet hooked up." 
Understand "office/-- phone", "landline" as Biff's landline. ]

[After logging into Your Computer:
	now the help text of your password is "It's 'charon'. Is it so hard to remember?".]
	
Biff's chair is a supporter in Biff's Office. Biff's chair is scenery. Biff's chair is enterable. The description is "It's just a plain old office chair. The lumbar support control is broken.". Understand "seat", "desk chair", "office chair" as Biff's chair. The printed name is "[our] chair".
Understand "Faraji's/Larch's" as Biff's chair. 

[ taking Biff's landline is stealing equipment. ]
  
[ Instead of stealing equipment:
	say "The Federal government frowns upon employees taking office equipment home with them." ]

The description of the desk is "The desk is a cheap DIY piece held together with hex screws. It has a single drawer [regarding Biff's desk][if Biff's desk's drawer is closed]which is closed.[otherwise]which is open.[end if][if Biff's desk's drawer contains something and Biff's desk's drawer is open] The drawer contains [a list of things in Biff's desk's drawer].[end if]" 

After examining the desk:
	now player knows hex-screws;
	[ activate the Table of Hex Wrench Hints; ]


[The help text of the bureau credit card is "The pre-paid credit card issued to [us] by the Bureau. Its balance is currently [balance of the bureau credit card]."].
	
The photo of Pluto is here. It is scenery. Understand "dog/pluto/photo/picture" as Photo of Pluto. The description is "It's a picture of [our] best friend, Pluto.".

The degree is here. It is scenery. Understand "diploma" as degree. The description is "It's [our] Bachelor's degree in Nonstandard Investigative Techniques from Wichita Institute of Technology. Which officially makes [us] a NITWIT. [We] [shake] [our] head and [sigh].". 

[ The movie poster is here. It is scenery. Understand "Room/of/Lost/Time" as the movie poster. The description is "It's [our] favorite movie, 'The Room of Lost Time', from 1957. The tagline is 'Can one lone time traveler stop invaders from the moon?'" ]

The trivia competition award is scenery in biff's office. "A framed certificate proclaiming [us] the winner of the 2006 Baltimore County Edgar Allan Poe Trivia Competition."


Green Pheasant is scenery in biff's office. Understand "print/hiroshige/utagawa/art/painting/bird" as Green Pheasant. "A print of a beautiful green pheasant in a tree, by the 19th century Japanese artist Utagawa Hiroshige."

The drawing of the Pitfall snake is scenery in biff's office. Understand "pencil/video/game/cobra/darius/5200" as drawing of the pitfall snake. "Pencil on canvas, it's a fuzzy drawing of the 8-bit snake in the classic video game Pitfall."
 
The photo of soccer team is scenery in biff's office. Understand "Faraji's/their soccer/team" as the photo of soccer team. Understand "picture" as the photo of soccer team. "[we're] third from left in the front row."

The green smartphone is a phone. It is mobile. The description is "It's a pretty nice phone, only a couple of years old, but [we] [don't] have time to play with it. [We] [need] to get to the office."

Instead of switching on the green smartphone:
	say "[The green smartphone] is out of batteries." instead;

Instead of switching off the green smartphone:
	say "It's not on." instead;

Check calling someone on the green smartphone:
	say "[The green smartphone] is out of batteries." instead;

Dialing is an action applying to one carried thing. Understand "dial [something]" as dialing.

Instead of dialing the green smartphone:
	say "[We] [don't] have time to play with the phone. [We] [need] to get to the office." instead;

Check dialing something:
	say "[We] can't dial [the noun]." instead;
	
To decide is a verb.

Check dropping the green smartphone:
	say "[We] [decide] against leaving the phone behind." instead;
	set pronouns from the green smartphone;

To init office:
	if player is not Ezra Gaunt:
		[ move movie poster to Room of Stuff; ]
		move trivia competition award to Room of Stuff;
	if player is not Petula Goldberg: 
		move photo of Pluto to Room of Stuff;
		move Green Pheasant to Room of Stuff;
	if player is not Larch Faraji:
		move drawing of the Pitfall snake to Room of Stuff;
		move photo of soccer team to Room of Stuff;
 
Biff's mobile number is a phone number. Biff's mobile number reaches the green smartphone. The player knows Biff's mobile number.

Opening Biff's desk's drawer is accessing.
Unlocking Biff's desk's drawer with something is accessing.
Unlocking keylessly Biff's desk's drawer is accessing.

Before accessing when biff's desk's drawer is locked and the blue flip phone is in biff's desk's drawer and the blue flip phone is ringing for the first time:
	now the player knows desk-locked;
	[ activate the Table of Desk Opening Hints; ]
	say "[We] [try] to open the desk to answer the phone, but it seems to be locked. [We] [sigh]. 'Margaret must have the key.'[paragraph break]"; 
	stop the action;
	
After opening Biff's desk's drawer for the first time:
	now the player does not know desk-locked; 
	
Section 2 - Back Lot

The back lot is a room. It is in BOSH HQ. It is outdoors. 

The BOSH back door is a door. The printed name is "BOSH back door". Understand "backdoor/white/metal" as BOSH back door. It is west of biff's office and east of back lot. It is scenery. It is closed, locked, lockable, and openable. "An unremarkable metal door painted white. [state of BOSH back door][run paragraph on]".

The BOSH-building is scenery in the back lot. It is privately-named. "Standard cinderblock construction, with a few windows and metal doors leading into the BOSH offices and the laundromat."
The printed name is "building". Understand "building" as BOSH-building.

Before opening BOSH back door when BOSH back door is locked:
	now player knows back-door-is-locked;
	[ activate the Table of Back Lot Hints; ]

The white key is a key in the room of stuff. The description is "A small white key."

The BOSH back door has matching key the white key.
When play begins:
	now Margaret carries the white key.

The bosh-back-door-facade is a building facade. It is privately-named. The printed name is "BOSH office".
	It is in the back lot.
	Understand "BOSH/office/offices/bureau" as bosh-back-door-facade.
	"An unremarkable white metal door leads into the BOSH offices."
	The bosh-back-door-facade fronts Biff's office.
	The bosh-back-door-facade is enterable from the back lot.
	
The laundromat back door is a door. It is north of back lot and south of the laundromat back room. It is scenery. It is closed, locked, lockable, and openable. "An unremarkable metal door painted white. It is [if laundromat back door is closed]closed[otherwise]open[end if]." 	 

Before opening the laundromat back door when the laundromat back door is locked:
	now player knows laundromat-back-door-is-locked;

The description of the back lot is "This is a small area of asphalt between the building and a chain link fence looking in on an industrial property. A door to east leads into the BOSH offices, and one to the north enters the laundromat. There is a blue dumpster here."

The industrial property is scenery in the back lot. "The chain link fence looks in on a small industrial property. There's a bunch industrial-type stuff in there, but nothing interesting."
It is obstructed.

The chain link fence is scenery in the back lot. "An ordinary chain link fence, about eight	feet high."

Instead of climbing up the chain link fence:
	say "There's no reason to tresspass."

The blue dumpster is scenery in the back lot. "An everyday blue dumpster, about six feet high."

Instead of opening the blue dumpster:
	say "The dumpster has no lid.";

Instead of closing the blue dumpster:
	say "The dumpster has no lid.";

Check entering the blue dumpster:
	say "[We] [are] not yet to the point of dumpster diving." instead;

Climbing up is an action applying to one thing. Understand "climb up/-- [something]" as climbing up.
Understand "climb" as climbing up. Understand "scale [something]" as climbing up.

Rule for supplying a missing noun while climbing up:
	if the metal ladder is touchable:
		now the noun is the metal ladder;
	if the metal ladder is in the large grave and the location is the horton graveyard:
		now the noun is the metal ladder;
	
Climbing into is an action applying to one thing. Understand "climb in/into [thing]" as climbing into.

Instead of climbing into something:
	try entering the noun;

Instead of an actor inserting biff-flattened-boxes into the blue dumpster:
	now the biff-flattened-boxes are in the room of stuff;
	if the actor is the player:
		say "[We] [toss] the flattened boxes over the edge of the dumpster.";
	otherwise if the actor is in the location:
		say "[The actor] [toss] the flattened boxes over the edge of the dumpster.";

Instead of an actor inserting margaret-flattened-boxes into the blue dumpster:
	now the margaret-flattened-boxes are in the room of stuff;
	if the actor is the player:
		say "[We] [toss] the flattened boxes over the edge of the dumpster.";
	otherwise if the actor is in the location:
		say "[The actor] [toss] the flattened boxes over the edge of the dumpster.";

Instead of inserting something into the blue dumpster:
	say "At the last second, [we] [decide] against it.";

Understand "throw [something] away" as inserting it into when the location is back lot.

Rule for supplying a missing second noun while inserting:
	if the location is the back lot:
		now the second noun is the blue dumpster;
		
locking-back-door is a behavior. waiting-for-player is a behavior.
		
Rule for behaving as margaret when the the current behavior of margaret is locking-back-door:
	if BOSH back door is open:
		try margaret closing BOSH back door;
	if BOSH back door is unlocked:
		try margaret locking BOSH back door with the white key;
	remove behavior from margaret;
	
Rule for behaving as margaret when the the current behavior of margaret is waiting-for-player:
	[cover the cases where player reenters the office, and when they leave through the laundromat.]
	if the location is not the back lot: 
		remove behavior from margaret;

After going from the back lot:
	now the player knows escape-back-lot;
	continue the action;

Carry out knocking on the BOSH back door when the location is the back lot and the BOSH back door is locked:
	move margaret to biff's office;
	silently try margaret unlocking the BOSH back door with the white key; 
	silently try margaret opening the BOSH back door;
	now the target location of margaret is front office;
	clear behavior of margaret;
	add behavior walking-to to margaret;
	add behavior locking-back-door to margaret;
	add behavior waiting-for-player to margaret;
	
Report knocking on the BOSH back door when the location is the back lot and the BOSH back door was locked:
	say "You hear the door being unlocked, and then Margaret pops her head out. 'Seriously, [Agent]? You got yourself locked out? Be more careful!'";
	rule succeeds;

Instead of going inside when the location is the back lot:
	say "You'll have to be more specific than that.";

Section 2.5 - Inside the dumpster

Inside from the back lot is nowhere.
inside-the-dumpster is a leavable room. 
Outside from inside-the-dumpster is the back lot. 
The egress is outside. inside-the-dumpster is privately-named. It is in BOSH HQ. It is outdoors. The printed name is "the dumpster". The preposition is "inside".
"It's smelly, but at least the top is open. Assorted trash and cardboard boxes are scattered about. Thankfully, it's not too full." Understand "the/-- dumpster" as inside-the-dumpster.


Instead of going when the location is inside-the-dumpster and the noun is not outside and the noun is not up and the noun is not down:
	say "Blue walls block every direction.";

Instead of going up when the location is inside-the-dumpster:
	try going outside;

Understand "climb out" as exiting.

Some trash is scenery in inside-the-dumpster. The description is "It's a bunch of trash. It's smelly and gross." 

Some trash-boxes are scenery in inside-the-dumpster. They are privately-named. The description is "A bunch of cardboard boxes, flattened and stacked." Understand "cardboard/boxes" as trash-boxes. The printed name is "cardboard boxes". They are plural-named. 
 
Section 3 - 

Biff's door is a door. It is privately-named. It is scenery. The printed name is "[our] door". It is north of Biff's Office and south of the BOSH office hallway. It is open. Understand "Faraji's/Goldberg's/Gaunt's/Larch's/Petula's/Ezra's/office/door" as Biff's door. 
The description is "The nameplate reads 'Agent Larch Faraji'."
		
Klimp's door is a door. It is west of the BOSH office hallway and east of the BOSH chief's office. It is scenery. It is closed and locked. It is openable and lockable.
The description is "The nameplate reads 'Chief Huffton Klimp'."
Moira's door is a door. It is north of the BOSH office hallway and south of Moira's office. It is scenery. It is closed and locked. It is openable and lockable.
The description is "The nameplate reads 'Agent Moira Zin'."
It is unsnarkable.

the BOSH office hallway is in BOSH HQ. The printed name is "hallway". "[Our] office is to the south, Klimp's is to the west, and Moira's is to the north. The front office is east. [door descriptions]."
Understand "hall/corridor/way" as the BOSH office hallway.


To say door descriptions:
	let opendoors be a list of doors;
	let closeddoors be a list of doors;
	if Biff's door is open:
		add Biff's door to opendoors;
	otherwise:
		add Biff's door to closeddoors;
	if Klimp's door is open:
		add Klimp's door to opendoors;
	otherwise:
		add Klimp's door to closeddoors;
	if Moira's door is open:
		add Moira's door to opendoors;
	otherwise:
		add Moira's door to closeddoors;
	if opendoors is empty:
		say "All of the doors are closed";
	otherwise if closeddoors is empty:
		say "All of the doors are open";
	otherwise if the number of entries in opendoors is 1:
		say "[reset LPR][Opendoors] is open; [closeddoors] are closed";
	otherwise if the number of entries in closeddoors is 1:
		say "[reset LPR][Closeddoors] is closed; [opendoors] are open";
	otherwise:
		say "Error.";

There is a fluorescent light source in BOSH office hallway called boh-light.
  
  
Section 4 - Front Office 

the front office is a room. It is east of the BOSH office hallway. It is in BOSH HQ. It is outdoor-adjacent.

There is a fluorescent light source in the front office called bfo-light.

Understand "storefront" as the front office.

The description of front office is "It's really a small storefront done up to resemble an office. A store sales counter functions as the [BOSH front desk], behind which are located [shelves of office supplies] and a row of drawers. There are also a [couch] and coffee table here creating a makeshift seating area. An old department store clothing rack serves as a [coat rack]. [Photos] on the walls picture the Bureau in better days. A stack of used and empty [cardboard boxes] sits in one corner.

The exit is to the east, while the office continues via a hallway to the west.".

The front window is scenery in the front office. "The front window looks out onto the street. It's a little grimy, but it's not like there's much to see out there."

The coffee table is a scenery supporter in front office. "This doesn't look like government-issue furniture. More like thrift store. It's scuffed, but at least it's sturdy."

The government couch is an enterable scenery supporter in front office. "Apparently the bureau did make off with at least one piece of government furniture. A bland, institutional piece with fake leather seats, it's at least preferable to second-hand upholstery." Understand "sofa" as government couch. The printed name is "couch".

The makeshift seating area is scenery in front office. "A coffee table and couch greet visitors to the office, as if any are expected." It is unfeelable.


The coat rack is scenery in front office. "It's an old clothing rack from the department store which formerly occupied this space." Understand "old/clothing/coatrack" as the coat rack.

To say photos description:
	let character list be { Ezra Gaunt, Petula Goldberg, Larch Faraji };
	remove the player from character list;
	say "The photo of [character list] smiling together is particularly poignant, as they were just let go last month";

Some Bureau photos are scenery in the front office. "[photos description].". 
The snarky remark of the Bureau photos is "Klimp, Ezra, Petula, and I used to go out for drinks at the Cock and Bull in downtown DC. Good times.";

Margaret Chao is in front office.  

There is a copy of the Washington Herald. The description is "The front page story is an account of the disappearance of the grandson of Senate Homeland Security Committee chairman Englund Fryes. His parents, including the Senator's son, were brutally murdered in their home, but the boy, Draco Fryes, is missing and presumed kidnapped. So far there has been no ransom demand.". 
Understand "newspaper", "paper", "news" as the Washington Herald.
The printed name is "copy of the [italic type]Washington Herald[roman type]".
It is unsnarkable.

The BOSH front desk is a scenery supporter in front office. Understand "store", "sales", "counter", "margaret's desk" as the BOSH front desk. The description is "The former sales counter now functions as a desk for the office manager (currently [Margaret])."

After examining the BOSH front desk:
	try looking behind the BOSH front desk;

The shelves of office supplies are in front office. They are plural-named. They are scenery. "Pens, paper, nothing [we're] really concerned with now." Understand "row/of/drawers/pens/pen/pencils/pencil/paper/papers" as the shelves of office supplies.


The thumb drive is a thing in the room of stuff. The description of the thumb drive is "It's a red plastic thumb drive, with what look like symbols scratched on the surface, but they're like no symbols you've ever seen. The metal USB end is somewhat corroded." Understand "USB/flash/memory", "usb end" as the thumb drive.
The snarky remark of the thumb drive is "Some crazy dude mailed this to me last month, said he found it in an ancient Onondaga root cellar on a farm in upstate New York. Claimed it was proof of time travel."

To recognize is a verb.
Some strange symbols are part of the thumb drive. The description is "The symbols on the thumb drive look like some kind of language, but none [we] [recognize]."

some cardboard boxes are scenery in front office. "There is a stack of boxes in the corner.". Understand "box" as cardboard boxes.

Instead of opening the cardboard boxes:
	say "They're all open and empty.";

Instead of closing the cardboard boxes:
	say "Why bother?";

Instead of searching the cardboard boxes:
	say "They're all empty.";

some biff-flattened-boxes are a thing in the room of stuff. They are privately-named. The printed name is "flattened boxes". Understand "flattened/boxes" as biff-flattened-boxes. The description is "Some cardboard boxes that have been broken down flat for recycling.".
some margaret-flattened-boxes are a thing in the room of stuff. They are privately-named. The printed name is "flattened boxes". Understand "flattened/boxes" as margaret-flattened-boxes. The description is "Some cardboard boxes that have been broken down flat for recycling."

flattening is an action applying to one thing. Understand "flatten [something]" as flattening. Understand the commands "collapse", "unfold", and "fold", as "flatten". Understand "break down [something]" as flattening.

Check flattening the biff-flattened-boxes:
	say "They've already been flattened." instead;

Check flattening:
	say "[We] can't flatten [regarding the noun][them]." instead;
	
Instead of flattening the cardboard boxes:
	try taking the cardboard boxes;

Instead of taking the cardboard boxes:
	if the player encloses the biff-flattened-boxes:
		say "[We] already [have] as many boxes as [we] [can] carry."; 
	otherwise if the biff-flattened-boxes are not in the Room of Stuff:
		say "[We] really shouldn't go scattering boxes everywhere.";
	otherwise:
		say "[We] [pick] up a couple of boxes and [flatten] them.[paragraph break]";
		now the player carries the biff-flattened-boxes;
		if Margaret is in the location:
			initiate Margaret's box routine;

Biff's computer is a thing. It is privately-named. It is behind the BOSH front desk. The printed name is "[our] computer". Understand "computer" as biff's computer. The description is "[Our] computer has been damaged beyond repair.".

Check taking Biff's computer:
	say "[Biff's computer] is too unwieldy to carry around." instead;
 
Instead of examining or searching Biff's computer when the thumb drive is not seen: 
	say "[description of biff's computer] But [we] [do] find a thumb drive and take it. They remember receiving it in the mail last month, from (in Faraji's words) 'some crazy dude who claimed he found it in an ancient Onondaga root cellar on a farm in upstate New York.'";
	now the player carries the thumb drive;
	now the thumb drive is seen;

The behind description of the BOSH front desk is "There are a number of shelves of office supplies behind the desk. There is also a heating vent on the floor here.";

The heating vent is a scenery container. It is closed, transparent. "A typical air register with a grill which one would hope would stop things like, say, a hex wrench from falling through. It's set in the floor behind the front desk. The vent is held closed by four screws." Understand "heat/air/conditioning/register/grill/grate" as the heating vent. It is undescribed. 

Securing relates various things to one thing. The verb to secure means the securing relation.
Some flat head screws secure the heating vent. The description is "Four plain flat head screws." 
They are part of the heating vent. 

After looking behind the BOSH front desk:
	move the heating vent to front office;
	continue the action;
	
Instead of taking or taking off the flat head screws when the flat head screws secure the heating vent:
	if the player encloses the red screwdriver:
		try opening the heating vent;
	otherwise:
		say "The screws are currently engaged in keeping the vent closed.";
	

The hex wrench is in the heating vent. Understand "key/allen" as the hex wrench. The description is "The ubiquitous flat pack furniture tool."

Before examining the heating vent (this is the now you know vent-screws rule):
	now the player knows vent-screws;
	[ activate the Table of Screwdriver Hints; ]

Instead of searching the BOSH front desk:
	try looking behind the BOSH front desk;

Instead of searching:
	try examining the noun;
 
Instead of removing hex wrench from heating vent when the heating vent is closed:
	say "[Our] fingers won't fit through the openings in the vent. [We][']ll have to open it first."; 
	
Instead of opening the heating vent when the heating vent is locked:
	say "The vent is held closed by four screws.";
	now the player knows vent-screws;
	[ activate the Table of Screwdriver Hints; ]
	
The can't reach inside closed containers rule response (A) is "[if the noun is the heating vent][Our] fingers won't fit through the openings in the vent. [We][']ll have to open it first[otherwise][The noun] [aren't] open[end if]."

Instead of unlocking the heating vent with the red screwdriver when the hex wrench is in the heating vent:
	now the player carries the hex wrench;
	say "[We] [unscrew] the four screws and [remove] the vent cover. [We] [take] the hex wrench from inside and [put] the cover back on.";

Instead of unscrewing the heating vent with the red screwdriver when the hex wrench is in the heating vent:
	try unlocking the heating vent with the red screwdriver;

Instead of unlocking the heating vent with the red screwdriver when the hex wrench is not in the heating vent:
	say "[We] [have] already gotten the hex wrench out of the vent.";

Instead of opening the heating vent:
	say "The vent is held closed by four screws.";
	now the player knows vent-screws;

Instead of opening the heating vent when the hex wrench is in the heating vent and the player encloses the red screwdriver:
	now the player carries the hex wrench;
	say "[We] [unscrew] the four screws and [remove] the vent cover. [We] [take] the hex wrench from inside and [put] the cover back on.";

Instead of opening the heating vent when the hex wrench is not in the heating vent:
	say "[We] [have] already gotten the hex wrench out of the vent.";

Unscrewing it with is an action applying to two things. Understand "unscrew [something] with [something]" as unscrewing it with. Understand the commands "loosen", "undo", "unfasten" as "unscrew".

Check unscrewing:
	say "That's not going to work." instead;

Instead of turning the flat head screws when the player encloses the red screwdriver:
	try unscrewing the flat head screws with the red screwdriver;

Instead of unscrewing the flat head screws with the red screwdriver when the hex wrench is in the heating vent:
	now the player carries the hex wrench;
	say "[We] [unscrew] the four screws and [remove] the vent cover. [We] [take] the hex wrench from inside and [put] the cover back on.";

Instead of unscrewing the flat head screws with the red screwdriver when the hex wrench is not in the heating vent:
	say "[We] [have] already gotten the hex wrench out of the vent.";


Section 5 - BOSH chief's office 

the BOSH Chief's office is in BOSH HQ. There is a fluorescent light source in the BOSH Chief's office called chief-light.
The description of the BOSH Chief's office is "[If the BOSH chief's office is not visited]Looks like the Chief has already moved in.[paragraph break][end if]Chief Klimp's office is full of character. Shelves strewn with knick-knacks abut a cozy armchair and a mahogany side table supporting a large globe. A bookcase on the north wall is packed with books on paranormal happenings. Garish prints adorn the remaining wall space.  Under one of these is a modernistic desk of glass and chrome, behind which is a very nice black leather swivel chair. There is a computer on the desk, and to its side is an antique wooden file cabinet. To tell the truth, it's all a bit much, but it matches Klimp's personality perfectly. There is an exit to the east."

Rule for writing a paragraph about Chief Huffton Klimp when the location is the BOSH Chief's office:
	say "[Klimp] sits behind the desk, his feet up.";

Rule for deciding the concealed possessions of Chief Huffton Klimp:
	yes;

After printing the locale description of the BOSH Chief's office:
	if the BOSH chief's office is not visited:
		say "[Klimp] barks, 'What's with that ringing? Someone answer it!'";
		silently try klimp saying hello to Faraji;
		lb;
		say "He turns to Faraji and grins. 'Larch! Good to see you. What do you think of the new digs? I know, I know, it's a lousy office, I could barely fit all my stuff in here.'

		Faraji starts to answer, but Klimp interrupts. 'Check out the shelves. Got some new stuff you might like.'";

		
Liber Animarum is on the chief's shelves. It is owned by Chief Klimp. It is proper-named. The description is "This is a cryptic tome written by someone named Petrus Catadesmicus: 

'...what these near-sighted Fools took as Rituals of Cursing are in truth Rituals of Binding, the true Congelation of the Soul, the Chaining of the immaterial Soul to a material Anchor, by piercing with a Spike the written true Name of the subject, thus transfixing the Soul and holding it fast, should the Environment be appropriately Consecrated, and appropriately Deep within the Earth...'". The printed name is "[italic type]Liber Animarum[roman type]". Understand "book/petrus/catadesmicus" as Liber Animarum.


The Chief's desk is a supporter in BOSH Chief's Office. It is scenery. "This desk is a beautiful assembly of smokey glass and chrome framing. The 'legs' form shelves where Klimp keeps yet more curios. One might wonder where Klimp gets the money."
The curios are scenery in the BOSH Chief's office. The description is "The desk shelves are full of oddities and memorabilia, most notable of which is a polished orange marble dodecahedron.".

Klimp's Computer is a thing on the chief's desk. It is scenery. "The computer is a sleek, modern model. It sports a screensaver of what looks like the Hopkinsville goblin." 

Instead of inserting the thumb drive into Klimp's computer:
	say "The thumb drive is too corroded to fit into the USB port." instead;

The Hopkinsville-goblin-screensaver is a part of Klimp's Computer. It is privately-named. The description is "The screensaver is a looping animation of the Hopkinsville goblin, a creature from the 1955 Kelly-Hopkinsville encounter. It's a little creepy." Understand "screensaver" as Hopkinsville-goblin-screensaver.

The desk shelves are a supporter. They are part of the Chief's desk. They support a polished orange marble dodecahedron. The description of the polished orange marble dodecahedron is "A relic of the Chief's sacred geometry phase.". Understand "legs/shelf" as desk shelves. They are plural-named.
They are indescribable.

Chief Huffton Klimp owns the polished orange marble dodecahedron. 
The snarky remark of the polished orange marble dodecahedron is "I'm partial to the pentagonal hexecontahedron, actually."

The chief's black leather swivel chair is a supporter in BOSH Chief's Office. It is enterable. It is scenery. "Nice chair. Good lumbar support."

Instead of entering the chief's black leather swivel chair:
	say "Klimp's already sitting there." instead;

The globe is a thing in the BOSH Chief's office. It is scenery. "The globe is very handsome with lots of intriguing detail. Unfortunately, Klimp has marred it with thumbtacks and string marking the world's 'leylines'."

The armchair is a supporter in BOSH Chief's Office. It is enterable. It is scenery. "Plush and comfortable with a yellow and red striped design. Absolutely hideous.". Understand "chair/cozy" as the armchair.
The snarky remark of the armchair is "It's like a clown exploded."

The mahogany side table is a thing in BOSH Chief's Office. It is scenery. "This is a nice piece, quite out of place in the BOSH offices. Flame mahogany with very pretty inlays."
Understand "inlays" as the mahogany side table.

The bookcase is a thing in BOSH Chief's Office. It is scenery. "The Chief's library boasts many interesting titles, from Alton Cherry's [italic type]Waiting for the Aliens[roman type] to Debi Bosworth's [italic type]My Travels in Time[roman type]. For the uninitiated, there is also a copy of [italic type]The Dictionary of Strangeness[roman type]. One might also be interested in [italic type]A Short History of BOSH[roman type]." 
Understand "books/bookshelf/bookshelves", "book case", "book shelf", "book shelves" as bookcase.

Waiting-for-the-Aliens is a thing in BOSH Chief's Office. It is privately-named. The printed name is "Waiting for the Aliens". It is scenery. Understand "Waiting/for/aliens/Alton/Cherry/book" as Waiting-for-the-Aliens. "Alton Cherry's [italic type]Waiting for the Aliens[roman type] is a classic of the genre. More a history of publicly-known material than an argument for or against the existence of aliens on earth, it is accessible to believers and non-believers alike."
 
Travels in Time is a thing in BOSH Chief's Office. It is scenery. Understand "My Travels in Time" as Travels in Time. Understand "Debi/Bosworth/book" as Travels in Time. "Debi Bosworth's [italic type]My Travels in Time[roman type] is the account of Ms. Bosworth's alleged travels to the past and future. She is careful to point out that she has never known a man in a blue box."

Short History of BOSH is a thing in BOSH Chief's Office. It is scenery. Understand "book" as Short History of BOSH. 
"A Short History of BOSH is a slim volume detailing the Bureau's founding and history from its inception in 1947 to the present day. Chief Klimp has also added his own notes at the end, among which is the following passage:

'Two years into my tenure saw the election of the stupidest man in government: Senator S. Savra. It's bad enough that no one knows what his first initial stands for, but he's also undeniably a tool of the aliens. He may even be an alien himself. In any case, he's made it his mission to defund the Bureau, and he's been very successful at it. I'm not sure how much longer we can keep the lights on. I'd lay odds that he's been to the Black Knight Satellite.'"

The Dictionary of Strangeness is a thing in BOSH Chief's Office. It is scenery. Understand "book" as the Dictionary of Strangeness.
"The Dictionary of Strangeness is a compendium of the weird and wonderful, from the Abominable Snowman to Zener Cards. Flipping through it, [we] [come] upon an entry:

[random entry]"

To say random entry:
	choose a random row in the Table of Random Entries;
	say "[bold type][The subject entry][roman type][paragraph break][discussion entry]";

After examining the Dictionary of Strangeness for the first time:
	say "[Klimp] says 'If you want to know more about anything in there, just ask me.'"; 

Looking it up in is an action applying to two things. Understand "look up [any subject] in [something]"  and "lookup [any subject] in [something]" as looking it up in. Understand "consult [something] about [any subject]" as looking it up in (with nouns reversed). Understand "read [something] about [any subject]" as looking it up in (with nouns reversed). Understand "read about [any subject] in [something]" as looking it up in.

Instead of looking something up in the Dictionary of Strangeness:
	if there is a subject of noun in the Table of Random Entries:
		choose a row with a subject of noun in the Table of Random Entries;
		say "[bold type][subject entry][roman type][paragraph break][discussion entry][paragraph break]";
	otherwise:
		say "There is no entry for that.";

Check looking something up in something when the second noun is not the dictionary of strangeness:
	say "[We] can't look things up in that.";

A rule for reaching inside the Room of Subjects:
	allow access;

[The texts below must be written as credulously as possible, as if the writer believed in the existence of these phenomena.]
Table of Random Entries
subject (a thing)	discussion (a text)
yeti	"The Abominable Snowman, also known as the Yeti, is a white-furred, ape-like creature inhabiting the Himalayan mountain range. It is the subject of numerous sightings, but skeptics argue that the evidence is inconclusive."
Zener Cards	"Zener cards are a set of 25 cards, each with one of five symbols: a circle, a cross, wavy lines, a square, and a star. They are used in parapsychology experiments to test for extrasensory perception."
Astral Plane	"The astral plane is a plane of existence postulated by classical, medieval, oriental, and esoteric philosophies and mystery religions. It is the world of the celestial spheres, crossed by the soul in its astral body on the way to being born and after death, and generally said to be populated by angels, spirits, or other immaterial beings."
Loch Ness Monster	"The Loch Ness Monster is a creature living in Loch Ness in the Scottish Highlands. It is often described as large, long-necked, and with one or more humps protruding from the water. Despite numerous sightings, doubters argue that the evidence is inconclusive."
Roswell Incident	"The Roswell Incident refers to the events surrounding the crash of an alien spacecraft near Roswell, New Mexico, in 1947. The U.S. military initially reported that it was a 'flying disc', but later retracted the statement, claiming it was a weather balloon. The government has since declassified documents related to the incident, but the truth remains secret."
Chupacabra	"The Chupacabra is a legendary creature in the folklore of parts of the Americas, with its first sightings reported in Puerto Rico. The name comes from the animal's reported habit of attacking and drinking the blood of livestock, especially goats."
Sasquatch	"Sasquatch, also known as Bigfoot, is a cryptid from the forests of the Pacific Northwest. It is described as a large, hairy, bipedal humanoid. Although skeptics argue against its existence, the preponderance of the evidence suggests that it is a real creature."
Mothman	"The Mothman is a creature seen in the Point Pleasant area of West Virginia from November 15, 1966, to December 15, 1967. The first newspaper report was published in the Point Pleasant Register dated November 16, 1966, titled 'COUPLE SEES MAN-SIZED BIRD... Creature... Something... Something"
Jersey Devil	"The Jersey Devil is a  creature that inhabits the Pine Barrens of Southern New Jersey. The creature is often described as a flying biped with hooves, but there are many variations. Although the Jersey Devil is widely regarded as a myth, it has been cited in over 2,000 reported sightings."
Flatwoods Monster	"The Flatwoods Monster is a cryptid reported to have been sighted in the town of Flatwoods in Braxton County, West Virginia, on September 12, 1952. It is described as a large, pulsating, glowing ball of fire, and a large creature with a head shaped like the ace of spades."
Dover Demon	"The Dover Demon is a creature reportedly sighted in the town of Dover, Massachusetts on April 21 and April 22, 1977. It is described as a small, orange, hairless creature with large eyes and a large, watermelon-shaped head."
Kelly-Hopkinsville Encounter	"The Kelly-Hopkinsville encounter, also known as the Hopkinsville Goblins case, occurred on the night of August 21, 1955, in rural Kentucky, USA. The Sutton family and their guests claimed to have encountered strange, small, metallic-looking creatures with large eyes and pointy ears, which they believed to be extraterrestrial beings. Throughout the night, the family reported being besieged by these entities, leading to a frantic shootout. Although there was no concrete evidence of the creatures' existence, the Kelly-Hopkinsville encounter remains one of the most famous and perplexing cases in UFO and paranormal lore, captivating the public's imagination and sparking ongoing debate among skeptics and believers alike."
Rendlesham Forest Incident	"The Rendlesham Forest incident is the name given to a series of reported sightings of unexplained lights and the alleged landing of a craft or multiple craft of unknown origin in Rendlesham Forest, Suffolk, England, in late December 1980. It is the most famous UFO event to have happened in Britain, and is sometimes described as 'Britain's Roswell'."
Phoenix Lights	"The Phoenix Lights were a series of widely sighted unidentified flying objects observed in the skies over the U.S. states of Arizona, Nevada, and the Mexican state of Sonora on March 13, 1997. Lights of varying descriptions were seen by thousands of people between 19:30 and 22:30 MST, in a space of about 300 miles, from the Nevada line, through Phoenix, to the edge of Tucson."
Betty-and-Barney Hill Abduction	"The Betty and Barney Hill abduction was the first widely publicized alien abduction in the United States. The incident took place in rural New Hampshire on September 19, 1961. The Hills claimed to have been abducted by extraterrestrials in a rural portion of the state, and to have been taken aboard a UFO. Their story was adapted into the best-selling 1966 book The Interrupted Journey and the 1975 television movie The UFO Incident."
Black Knight Satellite	"The Black Knight satellite is an alleged object orbiting Earth in near-polar orbit that is of extraterrestrial origin. The story of the Black Knight satellite is often regarded as a conspiracy theory, despite the fact that it has been reported by numerous media outlets."
Tunguska Event	"The Tunguska event was a large explosion that occurred near the Stony Tunguska River in Yeniseysk Governorate, Russia, on the morning of June 30, 1908. The explosion over the sparsely populated Eastern Siberian Taiga flattened 2,000 square kilometers of forest, and is estimated to have had the force of 10-15 megatons of TNT, which is about 1,000 times more powerful than the atomic bomb dropped on Hiroshima, Japan."
Dyatlov Pass Incident	"The Dyatlov Pass incident was an event in which nine Russian hikers died in the northern Ural Mountains between February 1 and February 2, 1959, in uncertain circumstances. The experienced trekking group, who were all from the Ural Polytechnical Institute, had established a camp on the slopes of Kholat Syakhl when disaster struck. The hikers tore open their tent from the inside, fleeing in whatever they were wearing, and some were barefoot. The bodies showed no signs of struggle, but two had fractured skulls, two had broken ribs, and one was missing her tongue. The group's clothing contained high levels of radiation."
Bermuda Triangle	"The Bermuda Triangle, also known as the Devil's Triangle, is a loosely defined region in the western part of the North Atlantic Ocean, where a number of aircraft and ships are said to have disappeared under mysterious circumstances. The U.S. Navy and Coast Guard maintain that the area is no more dangerous than any other part of the ocean, and that the number of incidents that occur there is in line with the number of incidents in other parts of the world's oceans. Numerous experts have disputed the military's position, arguing that the number of incidents in the Bermuda Triangle is disproportionately high."
Mary Celeste	"The Mary Celeste was an American merchant brigantine discovered adrift and deserted in the Atlantic Ocean off the Azores Islands on December 4, 1872. The Canadian brigantine Dei Gratia found her in a disheveled but seaworthy condition under partial sail and with her lifeboat missing. The last entry in her log was dated ten days earlier. She had left New York City for Genoa on November 7, and on discovery was still amply provisioned. Her cargo of denatured alcohol was intact, and the crew's personal belongings were undisturbed. None of those who had been on board were ever seen or heard from again."
Philadelphia Experiment	"The Philadelphia Experiment is an alleged military experiment supposed to have been carried out by the U.S. Navy at the Philadelphia Naval Shipyard in Philadelphia, Pennsylvania, sometime around October 28, 1943. The U.S. Navy destroyer escort USS Eldridge was claimed to have been rendered invisible (or 'cloaked') to enemy devices. The story is often regarded as a hoax, but questions about the alleged experiment persist."
Amelia Earhart	"Amelia Earhart was an American aviation pioneer and author. Earhart was the first woman to fly solo across the Atlantic Ocean. She received the U.S. Distinguished Flying Cross for this record. She set many other records, wrote best-selling books about her flying experiences, and was instrumental in the formation of The Ninety-Nines, an organization of female pilots. She was also a member of the National Women's Party, and an early supporter of the Equal Rights Amendment. She disappeared mysteriously in 1937 while attempting to circumnavigate the globe. Many theories have been proposed about her disappearance, but none have been proven."
The Voynich Manuscript	"The Voynich manuscript is an illustrated codex hand-written in an unknown writing system. The vellum on which it is written has been carbon-dated to the early 15th century, and may have been composed in Northern Italy during the Italian Renaissance. The manuscript is named after Wilfrid Voynich, a Polish-Samogitian book dealer who purchased it in 1912. Some of the pages are missing, with around 240 remaining. The text is written from left to right, and most of the pages have illustrations or diagrams. The Voynich manuscript has been studied by many professional and amateur cryptographers, including American and British codebreakers from both World War I and World War II. No one has yet succeeded in deciphering the text, and it has become a famous case in the history of cryptography."
Shroud of Turin	"The Shroud of Turin is a length of linen cloth bearing the negative image of a man who is alleged to be Jesus of Nazareth. It is kept in the royal chapel of the Cathedral of Saint John the Baptist in Turin, Italy. The image is much clearer in black-and-white negative than in its natural sepia color. The origins of the shroud and its image are the subject of intense debate among scientists, theologians, historians, and researchers. Some contend that the shroud is the cloth that was placed on the body of Jesus Christ at the time of his burial, and that the image on the shroud is the miraculous image of Jesus, formed as a result of his resurrection. Others contend that the shroud is a medieval forgery."
Holy Grail	"The Holy Grail is a treasure that serves as an important motif in Arthurian literature. Different traditions describe it as a cup, dish, or stone with miraculous powers that provide happiness, eternal youth, or sustenance in infinite abundance. The term 'holy grail' is often used to denote an elusive object or goal that is sought after for its great significance."
Time slips	"A time slip is a purported paranormal phenomenon in which a person, or group of people, travel through time via unknown means. The concept of time slips is often used in science fiction, but is also a popular topic in paranormal research. The most famous case of a time slip is the Moberly-Jourdain incident."
Ark of the Covenant	"The Ark of the Covenant, also known as the Ark of the Testimony, is a gold-covered wooden chest with lid cover described in the Book of Exodus as containing the two stone tablets of the Ten Commandments. Numerous theories have been proposed about the Ark's location, but none have been proven."
Spear of Destiny	"The Spear of Destiny, also known as the Holy Lance, is the name given to the lance that pierced the side of Jesus as he hung on the cross, according to the Gospel of John. The whereabouts of the spear are unknown, and it has become the subject of many legends."
Alchemy	"Alchemy is an ancient branch of natural philosophy, a philosophical and protoscientific tradition practiced throughout Europe, Africa, and Asia, originating in Greco-Roman Egypt in the first few centuries AD. It aims to purify, mature, and perfect certain objects. Modern thinking has dismissed alchemy as a pseudoscience, but it has had a significant influence on the development of modern science, particularly chemistry."
Illuminati	"The Illuminati is a group descended from the Bavarian Illuminati that exerts influence over world events. The group conspires to establish a New World Order, and is said to be involved in various global events, such as the French Revolution, the American Revolution, and the September 11 attacks."
New-World-Order	"The New World Order is a theory which hypothesizes a secretly emerging totalitarian world government. Despite the overwhelming evidence for its existence, the New World Order is often dismissed as a conspiracy theory."
Sacred geometry	"Sacred geometry ascribes symbolic and sacred meanings to certain geometric shapes and certain geometric proportions. It is associated with the belief that God is the geometer of the world. The geometry used in the design and construction of religious structures such as churches, temples, mosques, religious monuments, altars, and tabernacles has sometimes been considered sacred. The concept applies also to sacred spaces such as temenoi, sacred groves, village greens, and holy wells, and the creation of religious art. The belief that God created the universe according to a geometric plan has ancient origins. Plutarch attributed the belief to Plato, writing that 'Plato said God geometrizes continually' (Convivialium disputationum, liber 8,2). In modern times, the mathematician Carl Friedrich Gauss adapted this quote, saying 'God arithmetizes'."
Divining	"Divining is the attempt to gain insight into a question or situation by way of an occultic, standardized process or ritual. Used in various forms throughout history, diviners ascertain their interpretations of how a querent should proceed by reading signs, events, or omens, or through alleged contact with a supernatural agency. Dowsing is a type of divining, by which a person uses a rod, stick, or pendulum to locate such things as underground water, hidden metal, buried treasure, oil, lost persons or golf balls, etc."
Crystals	"Crystals are solid materials whose constituents (such as atoms, molecules, or ions) are arranged in a highly ordered microscopic structure, forming a crystal lattice that extends in all directions. Crystals are often used in divination and healing, and are believed to have various properties and powers. For example, amethyst is said to have calming and protective properties, while quartz is said to have healing and energy-amplifying properties. Crystals are also used in various forms of alternative medicine, such as crystal healing, and are often associated with New Age beliefs and practices."
Ley lines	"Ley lines are alleged alignments of a number of places of geographical and historical interest, such as ancient monuments and megaliths, natural ridge-tops and water-fords. Their existence was suggested in 1921 by the amateur archaeologist Alfred Watkins, in his book The Old Straight Track. The ancient surveyors who supposedly made the lines were given the name 'dodmen'. Watkins believed that the lines were created for ease of overland navigation, and that the ancient surveyors used the lines as a guide across the landscape. He suggested that the lines could have been created by prehistoric peoples, and that they were used for navigation, trade, and ceremonial purposes. Watkins' ideas were later expanded upon by other researchers, and the concept of ley lines has become popular in the New Age movement and in esoteric and occult circles. Ley lines are often said to be sources of mystical energy, and are often associated with other paranormal phenomena, such as UFO sightings and crop circles."
Astrology	"Astrology is the science of the stars and planets and their influence on human affairs and natural phenomena. Famous astrologers include Nostradamus, who predicted the rise of Napoleon, and Jeanne Dixon, who predicted the assassination of President John F. Kennedy." 
Freemasons	"Freemasonry is a secret society bent on world domination. It is said to be a continuation of the Knights Templar, and is said to have been involved in the American Revolution, the French Revolution, and the assassination of Abraham Lincoln."
Knights Templar	"The Knights Templar were a medieval Christian military order that was active from the 12th to the 14th centuries. The order was among the wealthiest and most powerful, and was the first to use the international banking system. The Knights Templar were involved in the Crusades, and were said to have discovered the Holy Grail. They were disbanded by Pope Clement V in 1312, and their members were arrested and tortured. The order's disbandment has been the subject of much speculation and conspiracy theories. Though their whereabouts are unknown, the Knights Templar continue to exist in secret, and are involved in various global events."
Atlantis	"Atlantis is a legendary island first mentioned in Plato's dialogues Timaeus and Critias. According to Plato, Atlantis was a naval power lying 'in front of the Pillars of Hercules' that conquered many parts of Western Europe and Africa 9,000 years before the time of Solon, or approximately 9600 BC. After a failed attempt to invade Athens, Atlantis sank into the ocean 'in a single day and night of misfortune'. The story of Atlantis has captivated the public's imagination for centuries, and has been the subject of much speculation and conspiracy theories."
Ancient astronauts	"Ancient astronauts is the idea that intelligent extraterrestrial beings visited Earth and made contact with humans in antiquity and prehistoric times. Proponents suggest that this contact influenced the development of human cultures, technologies, and religions. The idea has been popularized by authors such as Erich von Däniken, who wrote the 1968 book Chariots of the Gods?, and has been the subject of numerous books, documentaries, and films."
Ancient Egypt	"The mysteries of ancient Egypt have captivated the public's imagination for centuries. The pyramids, the Sphinx, and the Valley of the Kings are just a few of the wonders that have been the subject of much speculation and conspiracy theories. The ancient Egyptians were said to have had advanced knowledge of mathematics, astronomy, and medicine, and were said to have been in contact with extraterrestrial beings."
Crop circles	"Crop circles are patterns created by the flattening of crops such as wheat, barley, rye, maize, and rapeseed. They are often found in fields in the United Kingdom, but have also been found in other countries. The patterns are said to be the result of the activities of extraterrestrial beings, but have also been attributed to natural phenomena, such as wind, rain, and lightning, and to human activities, such as pranks and hoaxes. Experts point out that many of the circles are too complex to be constructed by humans, and that the crops are often bent, not broken, and that the soil is often undisturbed."
ESP	"Extrasensory perception, or ESP, is the ability to acquire information by means independent of any known sensory processes or physical interactions. The existence of ESP is disputed by the scientific community, but has been proven by numerous experiments and studies."
Ghosts	"Ghosts are the spirits of the dead that haunt the living. They are often said to be the souls of people who have died in violent or tragic circumstances, and are often said to be the spirits of people who have unfinished business on Earth. Ghosts are often said to be the cause of unexplained phenomena, such as cold spots, strange noises, and objects moving by themselves. The existence of ghosts is disputed by the scientific community, but has been proven by numerous eyewitness accounts and photographs."
Vampires	"Vampires are creatures that feed on the blood of the living. A mortal human who has been bitten by a vampire and has drunk the vampire's blood will become a vampire. Be wary of vampires, for they are said to be able to turn into bats, and to be able to control the weather. The existence of vampires is disputed by the scientific community, but has been proven by numerous eyewitness accounts and photographs."
Werewolves	"Werewolves are creatures that can transform from human to wolf and back again. They are often said to be the result of a curse. Numerous recent studies have shown that werewolves are real."
Zombies	"Zombies are reanimated corpses that feed on the flesh of the living. They are often said to be the result of a virus. Numerous recent studies have shown that zombies are real."
Hypnosis	"Hypnosis is a state of human consciousness involving focused attention and reduced peripheral awareness and an enhanced capacity to respond to suggestion. The term may also refer to an art, skill, or act of inducing hypnosis. Theories explaining what occurs during hypnosis fall into two groups. Altered state theories see hypnosis as an altered state of mind or trance, marked by a level of awareness different from the ordinary state of consciousness. In contrast, nonstate theories see hypnosis as a form of imaginative role enactment. During hypnosis, a person is said to have heightened focus and concentration. The person can concentrate intensely on a specific thought or memory, while blocking out sources of distraction. Hypnotized subjects are said to show an increased response to suggestions."
Invisibility	"Invisibility is the state of an object that cannot be seen. A number of invisibility technologies have been developed, including metamaterials, cloaking devices, and optical camouflage. Examples of applications of invisibility technologies include military stealth aircraft, and Harry Potter's invisibility cloak."
Levitation	"Levitation is the process by which a mystic rises into the air, or floats in the air, without any physical support, and in a way that defies the laws of gravity. In addition, many UFOs are said to be capable of levitation."
Telekinesis	"Telekinesis is the process by which a person can move objects with the power of the mind. The existence of telekinesis is disputed by the scientific community, but has been proven by numerous experiments and studies."
Teleportation	"Teleportation is the process by which a person or object is instantaneously transported from one location to another. The existence of teleportation is disputed by the scientific community, but has been proven by numerous experiments and studies."
Aliens	"Aliens are extraterrestrial beings that have visited Earth. They are often said to be the cause of unexplained phenomena, such as UFO sightings, crop circles, and cattle mutilations. The existence of aliens is disputed by the scientific community, but has been proven by numerous eyewitness accounts and photographs."
Spontaneous human combustion	"Spontaneous human combustion is the process by which a human body is said to burst into flames without an external source of ignition. The existence of spontaneous human combustion is disputed by the scientific community, but has been proven by numerous eyewitness accounts and photographs."
The Moberly-Jourdain incident	"The Moberly-Jourdain incident is a time slip that occurred in the gardens of the Petit Trianon, Versailles, in 1901. The most famous case of a time slip, it was experienced by members of the British aristocracy, Charlotte Anne Moberly and Eleanor Jourdain. They claimed to have been transported back in time to the 18th century, and to have seen Marie Antoinette and other historical figures. The Moberly-Jourdain incident has been the subject of much speculation and conspiracy theories."
Nikola Tesla	"Nikola Tesla was a Serbian-American inventor, electrical engineer, mechanical engineer, and futurist who is best known for his contributions to the design of the modern alternating current (AC) electricity supply system. He also made extraordinary claims about his inventions, such as the Tesla coil, and about his ability to communicate with extraterrestrial beings. Tesla's claims have been the subject of much speculation and conspiracy theories."
Sargasso Sea	"The Sargasso Sea is a region in the North Atlantic Ocean, bounded by four currents forming an ocean gyre. Unlike all other regions called seas, it has no land boundaries. It is distinguished from other parts of the Atlantic Ocean by its characteristic brown Sargassum seaweed and often calm blue water. The Sargasso Sea is said to be the location of the Bermuda Triangle, and is said to be the cause of unexplained phenomena, such as the disappearance of ships and aircraft. The existence of the Sargasso Sea is disputed by the scientific community, but has been proven by numerous eyewitness accounts and photographs."
Marfa Lights	"The Marfa lights are unexplained lights (known as 'ghost lights') that have been observed near U.S. Route 67 on Mitchell Flat east of Marfa, Texas. The lights have been attributed to paranormal phenomena, such as ghosts, UFOs, and the spirits of Spanish conquistadors. The existence of the Marfa lights is disputed by the scientific community, but has been proven by numerous eyewitness accounts and photographs."
V I Lenin	"Vladimir Ilyich Ulyanov, better known by the alias Lenin, was a Russian revolutionary, politician, and political theorist. He served as head of government of Soviet Russia from 1917 to 1924 and of the Soviet Union from 1922 to 1924. Under his administration, Russia and then the wider Soviet Union became a one-party state governed by the Russian Communist Party. Lenin is known to have been involved in the occult, and to have been in contact with extraterrestrial beings. His Ouija board is said to be in the possession of the Russian government."
The Church of Scientology	"The Church of Scientology is a multinational network and hierarchy of numerous ostensibly independent but interconnected corporate entities and other organizations devoted to the practice, administration, and dissemination of Scientology, a new religious movement. In reality, the Church of Scientology is a front for a global conspiracy to control the world."
UFOs	"Unidentified flying objects, or UFOs, are objects in the sky that are not readily identifiable. They are often said to be the cause of unexplained phenomena, such as crop circles, cattle mutilations, and abductions. The existence of UFOs is disputed by the scientific community, but has been proven by numerous eyewitness accounts and photographs."
Ouija boards	"The Ouija board is a flat board marked with the letters of the alphabet, the numbers 0-9, the words 'yes', 'no', and 'goodbye', and other symbols. It is used to communicate with the spirits of the dead. It totally works, I swear."
Time-travel	"Time travel is the process by which a person or object is transported from one time to another. The existence of time travel is disputed by the scientific community, but has been proven by numerous experiments."
Bureau of Supernatural History	"The Bureau of Supernatural History is a secret government agency that investigates and documents the existence of supernatural phenomena. It is said to be involved in various global events, such as the Roswell Incident, the Rendlesham Forest Incident, and the Phoenix Lights. The existence of the Bureau of Supernatural History is disputed by the US government, but has been proven by numerous eyewitness accounts and photographs." 
Bugbear of Slocum Heath	"The Bugbear of Slocum Heath is a legendary creature that is said to inhabit the marshes of Slocum Heath in the English countryside. The creature is often described as a large, hairy, bipedal humanoid with glowing red eyes. Despite numerous sightings, the intransigent argue that the evidence is inconclusive."


The Chief's shelves are a supporter in BOSH Chief's Office. They are scenery. "These shelves sport an array of oddities and memorabilia." Understand "shelf" as the Chief's shelves.
  
The juvenile sasquatch skull is a thing on the chief's shelves. Chief Huffton Klimp owns the skull. The description of the skull is "It looks a bit Neanderthal, actually." 
 
The antique wooden file cabinet is a container in the BOSH Chief's office. It is closed and locked. It is scenery. "Looks like it was taken out of an old library somewhere."
Understand "filing" as the antique wooden file cabinet.

The prints are scenery in the BOSH Chief's office. The description is "There are three prints, the most striking of which is a neon-hued abstract by Diego Ernesto Diaz, the late Mexican painter, titled 'Hora de la Muerte'.".
Understand "painting/paintings/garish" as prints.

Hora de la Muerte is scenery in the BOSH Chief's office. Understand "Diego/Ernesto/Diaz/abstract/neon/hued" as Hora de la Muerte. "The print is a riot of color, with a central figure that could be a skeleton. It's a bit much for the office, but it's certainly striking."

The skeleton is part of the Hora de la Muerte. The description is "It's a stylized skeleton, painted in neon hues. It's a bit macabre, but it's also a bit fun."
 
The oddities are on the chief's shelves. They are scenery. The description is "This and that piece of junk that Klimp thinks is funny or interesting, including a pair of astral lenses and a juvenile sasquatch skull."
Understand "memorabilia", "junk", "stuff", "knick-knacks", "knick knacks" as the oddities.

A pair of astral lenses is on the chief's shelves. It is ambiguously plural. Chief Huffton Klimp owns the pair of astral lenses. The description of the pair of astral lenses is "To all appearances an ordinary pair of glasses, the astral lenses allegedly reveal the existence of extra-dimensional pathways." The pair of astral lenses is wearable. 
Understand "glasses/glass/lens" as the pair of astral lenses.

Understand "look through [pair of astral lenses]" as a mistake ("Try wearing the astral lenses instead.").

Check wearing the pair of astral lenses when the location is fluorescent-lit:
	say "[We] [try] to put on the astral lenses, but the fluorescent light is blinding. [We] [take] them off again." instead;	

Section 6 - Moira's office
				 
Moira's office is in BOSH HQ. There is a fluorescent light source in Moira's office called moira-light.
The description of Moira's office is "It is, like Moira herself, neat and orderly. She's clearly made the most of the meager funds she had for furnishing her office. Behind a modest yet functional desk is a modest yet functional office chair. Her bookshelves are filled with titles relating to investigative techniques, law, and skepticism. In the east wall is a closet door. The exit is to the south."
Moira's office is unsnarkable.


[There is a breaker box in the closet. It is an openable container. It is closed. It is fixed in place. The description is "It's a small metal box affixed to the back wall of the closet. It is featureless apart from the latch."
There is a circuit breaker in the breaker box. It is fixed in place.
A circuit breaker is a device. The description is "The circuit breaker is a single switch, labeled `20 amps`."]

Moira's desk is a supporter in Moira's office. It is scenery. The description is "It's a pretty ordinary mass-produced desk, but Moira's re-stain job on it has truly transformed it. Really, is there anything she can't do?"

An openable closed container called Moira's drawer is part of Moira's desk. It is indescribable.
Instead of examining Moira's drawer when Moira's drawer is closed:
	say "It's a drawer in Moira's desk. It's closed.".
	
Moira's chair is an enterable supporter in Moira's office. It is scenery. The description is "It's a testament to Moira's competence and taste that she managed to acquire such a nice chair with the funds available.".

Moira's bookshelves are a scenery supporter in Moira's office. The description is "".
Understand "shelves/books/shelf/bookshelf" as Moira's bookshelves.
They are indescribable.

	
The borrowed-book is an object that varies. The borrowed-book is initially nothing.

to borrow a book is a questioning quip.
	It is silent.
	It quip-supplies Moira Zin.
	It is repeatable.

plausibility rule for to borrow a book:
	if the borrowed-book is nothing:
		it is plausible;
	it is implausible;

Check discussing to borrow a book when the borrowed-book is something:
	say "Moira shakes her head. 'Sorry, I'll only lend one book at a time.'" instead;

After discussing to borrow a book:
	queue Moira Zin with to borrow a book;	
	Prepare to ask what do you want to borrow from Moira Zin;
	
After examining a tome when the noun is owned by Moira Zin and the noun is supported by Moira's bookshelves:
	queue Moira Zin with to borrow a book;
	continue the action;

after examining moira's bookshelves:
	queue Moira Zin with to borrow a book;
	continue the action;

No-Myth-After-All is a tome on Moira's bookshelves. It is owned by Moira Zin. It is loanable. 
The printed name is "No Myth After All: A New Perspective on Atlantis".
Understand "No/Myth/After/All/A/New/Perspective/on/Atlantis" as No-Myth-After-All.
The description is "This is a book by the noted skeptic and investigator Niz Ariom. It's a comprehensive look at the evidence for and against the existence of the lost city of Atlantis. It's a bit dry, but it's a classic of the genre. One of the more interesting passages reads:

Perhaps the most compelling evidence for the existence of Atlantis is in the writings of the ancient Greek philosopher Plato. In his dialogues Timaeus and Critias, Plato describes a powerful and advanced civilization that existed 9,000 years before his time. He claims that this civilization was destroyed in a single day and night of misfortune, and that it sank into the ocean 'in front of the Pillars of Hercules'. Many have interpreted this to mean that Atlantis was a real place, and that it was destroyed in a cataclysmic event. However, others have argued that Plato's account is a work of fiction, and that Atlantis never existed at all. The debate continues to this day."
[ It is borrowable. ]

Twenty-great-theses is a tome on Moira's bookshelves. It is owned by Moira Zin. It is loanable.
The printed name is "Twenty Great PhD Theses of the Twentieth Century". 
Understand "Twenty/Great/PhD/Theses/of/the/Twentieth/20th/Century" as Twenty-great-theses.
The description is "This is a collection of the most influential PhD theses of the last century. It's a bit of a slog, but it's a good reference for anyone interested in the history of science. In the introduction, the editor Elizabeth Ardman writes, 'These theses, spanning the fields of physics, chemistry, biology, fine arts, philosophy, and the social sciences, represent the best of the best of twentieth-century scholarship. They are not a stimulating read, perhaps, but editing them has been a labor of love for me, and a valuable line on my CV as I seek tenure.'"
[ It is borrowable. ]

Anatomy of a Hoax is a tome on Moira's bookshelves. It is owned by Moira Zin. It is loanable.
The printed name is "Anatomy of a Hoax: Writings on Modern Medicine's Greatest Myths".
Understand "writings/on/modern/medicine's/greatest/myths" as Anatomy of a Hoax.
The description is "A collection of essays debunking the most persistent myths about modern medicine; for example, the existence of the gall bladder. From the chapter on eczema: 

The simple truth is that, as our mothers told us, if we didn't scratch it, it wouldn't itch. The more we scratch, the more it itches. The more it itches, the more we scratch. It's a vicious cycle, but it's not a disease. It's a habit. And habits can be broken."
[ It is borrowable. ]

Tribes of New York is a tome on Moira's bookshelves. It is owned by Moira Zin. It is loanable.
The description is "A look at the various Native American tribes of New York state, from the pre-Columbian era to the present day. The chapter on the Onondaga tribe reads:

The Onondaga tribe is one of the original five tribes of the Iroquois Confederacy. They are known for their longhouses, which can be up to 200 feet long, and for their traditional government, which is based on a system of clans. The Onondaga are also known for their traditional arts and crafts, such as beadwork, pottery, and basketry. There is no truth to the rumors that the ancient Onondaga consorted with lizard people."
[ It is borrowable. ]

Applied Speculation is a tome on Moira's bookshelves. It is owned by Moira Zin. It is loanable.
The description is "A collection of essays on the application of speculative reasoning to the investigation of paranormal phenomena. The four principles of applied speculation are:

1. The principle of extravagance: The more complex the explanation, the more compelling it is.
2. The principle of plausibility: The more plausible the explanation, the more likely it is to be a hoax perpetuated by the government (or a cabal of international elites).
3. The principle of photographic evidence: The more blurry the photograph, the more likely it is to be genuine.
4. The principle of eyewitness testimony: Eyewitnesses are notoriously unreliable, but their accounts are always true. Unless they're lying. Or mistaken. Or hallucinating. Or being controlled by the government (or a cabal of international elites)."

[ It is borrowable. ]

Biking to the Ferry is a tome on Moira's bookshelves. It is owned by Moira Zin. It is loanable.
The printed name is "Biking to the Ferry: a Memoir".
Understand "a/-- memoir" as Biking to the Ferry.
The description is "A memoir of a summer spent biking around the islands of the Puget Sound. The chapter on Orcas Island reads:

Upon disembarking from the ferry on Orcas, I became aware that Spooney had fallen ill with some kind of stomach bug. He was barely able to mount his bike, and we had to stop every few minutes so he could vomit. We barely reached the campground before dark. By this time the sensation I'd had on Waldron Island had grown stronger, and I was convinced that we were being followed. I was reminded of an experience I'd had as a child in upstate New York, when I'd been convinced that a ghost of an Onondaga warrior was following me. Spooney was convinced that our pursuer was a lizard person. I argued that this was ridiculous, but Spooney reminded me of the principle of extravagance, and I had to admit that he had a point. In any case, Spooney was worse the next morning, and I had to leave him or risk missing the ferry. I never saw him again."
[ It is borrowable. ]

Nonstandard Investigative Techniques is a tome on Moira's bookshelves. It is owned by Moira Zin. It is loanable. 
The description is "Your bible from college, a comprehensive look at the most effective nonstandard investigative techniques, from the use of psychics to the application of chaos theory to criminal investigation. One of its more memorable case studies involves a possible homicide in a small town in the Pacific Northwest:

Eventually the deceased was identified as Arthur 'Spooney' Spooner of Enigma Lake, New York. The cause of death was determined to be a combination of exposure and dehydration, but eyewitness accounts of lizard person sightings were never satisfactorily explained. At the behest of the local Ouija Board fan club, the Bureau of Strange Homicides was called in to investigate. They found evidence of lizard person activity, but were unable to determine whether the lizard people were responsible for Spooney's death. The case was ruled a natural death, but some locals remain unconvinced."
[ It is borrowable. ]

Calculus-with-Infinitesimals is a tome on Moira's bookshelves. It is owned by Moira Zin. It is loanable. 
The printed name is "Calculus with Infinitesimals". Understand "Calculus/with/Infinitesimals" as Calculus-with-Infinitesimals.
The description is "The classic text on the use of infinitesimals in calculus. The chapter on the derivative reads:

Traditionally, the derivative of a function f is defined as the limit of the difference quotient as h approaches zero. However, this definition is cumbersome and difficult to work with. In this text, we introduce the concept of the infinitesimal, a quantity that is smaller than any positive real number, but not equal to zero. Using infinitesimals, we can define the derivative of a function f as the ratio of the infinitesimal change in f to the infinitesimal change in x. This definition is more intuitive and easier to work with than the traditional definition, and has the added benefit of being completely wrong."
[ It is borrowable. ]

Three Stigmata of Palmer Eldritch is a tome on Moira's bookshelves. It is owned by Moira Zin. It is loanable. The printed name is "The Three Stigmata of Palmer Eldritch". 
The description is "A classic of science fiction, this is a novel by Philip K. Dick. Its text is protected by copyright."
[ It is borrowable. ]

Book-borrowing a tome (called T) when T is supported by Moira's bookshelves and T is owned by Moira Zin:
	now the player carries T;
	now the player owns T;	
	say "[line break][We] [take] [T].";
	now the borrowed-book is T;
	rule succeeds;

After giving a loanable tome to Moira when the borrowed-book is the noun:
	now the borrowed-book is nothing;
	now the noun is supported by Moira's bookshelves;
	now the noun is owned by Moira Zin;
	say "Moira smiles. 'Thanks for getting it back to me.' She puts the book back on the shelf.";
	
After putting a loanable tome on Moira's bookshelves when the borrowed-book is the noun:
	now the borrowed-book is nothing;
	now the noun is owned by Moira Zin;
	continue the action;

Returning is an action applying to one thing. Understand "return [something]", "return book" as returning.

Check returning something:
	if the borrowed-book is the noun:
		if the current interlocutor is not Moira Zin:
			say "Faraji did not borrow that from [the current interlocutor]." instead;
	otherwise if the borrowed book-minerva is the noun:
		if the current interlocutor is not Minerva:
			say "Faraji did not borrow that from [the current interlocutor]." instead;
	otherwise if the current interlocutor is not nothing:
		say "Faraji did not borrow that from [the current interlocutor]." instead;
	otherwise:
		say "There is no one to return that to." instead;

Carry out returning:
	if the current interlocutor is Moira Zin:
		try giving the borrowed-book to Moira Zin;
	otherwise if the current interlocutor is Minerva:
		try giving the borrowed book-minerva to Minerva;

Rule for supplying a missing noun while returning:
	if the current interlocutor is Moira Zin:
		now the noun is the borrowed-book;
	otherwise if the current interlocutor is Minerva:
		now the noun is the borrowed book-minerva;
	otherwise:
		say "There is no book to return." instead;

A turn sequence rule when we are discussing to borrow a book (this is the book borrowing turn sequence rule):
	rule fails;	

The book borrowing turn sequence rule is listed before the every turn stage rule in the turn sequence rules.

What do you want to borrow is a question.
	The expected responses are { Tribes of New York, Applied Speculation, Biking to the Ferry, No-Myth-After-All, Twenty-great-theses, Anatomy of a Hoax, Nonstandard Investigative Techniques, Calculus-with-Infinitesimals, Three Stigmata of Palmer Eldritch }.
	The result is book-borrowing.
	

[Prevent TAKE ALL from taking every book on a shelf.]
Rule for deciding whether all includes a thing (called T) while taking:
	if T is supported by a thing (called S):
		if S is scenery:
			if the player is not supported by S:
				it does not;
	make no decision;
	
The describe what's on scenery supporters in room descriptions rule is not listed in any rulebook.


The closet door is a door. It is east of Moira's office and west of the utility closet. It is closed, openable, locked, and lockable. It is scenery.
The description of the closet door is "It's a plain wooden door. It's [if the closet door is closed]closed[otherwise]open[end if]."

The utility closet is dark. It is in BOSH HQ. It is a leavable room. The egress is west. "It is cramped in here. Other than Faraji, the only thing in here is a breaker box on the wall. A [if the closet door is closed]closed[otherwise]open[end if] door leads west."

The breaker box is a fixed in place scenery container in the utility closet. It is closed, locked, lockable, and openable. The description is "It's a small metal box affixed to the back wall of the closet. There is a small keyhole in the front."
The keyhole is part of the breaker box. The description is "It's a small keyhole in the front of the box."
The keyhole is unsnarkable.

Instead of knocking on the closet door when the location is the utility closet and the closet door is locked and the closet door is closed:
	move Moira Zin to Moira's Office;
	now moira's door is unlocked;
	if Moira Zin is in Moira's Office:
		say "After a few seconds, someone inserts a key in the lock and opens the door. It's [player's surname]'s colleague Moira Zin. 'How'd you get in there, [player's forename]?'
		
		You exit the closet.";
		move the player to Moira's Office;
		queue Moira Zin with about the hyperdimensional portal;
		now the current interlocutor is Moira Zin;
		now the closet door is unlocked;
		now the closet door is open;

Shouting is an action applying to nothing. Understand "shout", "yell", "scream", "holler" as shouting.

Instead of shouting when the location is the utility closet and the closet door is locked and the closet door is closed:
	move Moira Zin to Moira's Office;
	now moira's door is unlocked;
	if Moira Zin is in Moira's Office:
		say "After a few seconds, someone inserts a key in the lock and opens the door. It's [player's surname]'s colleague Moira Zin. 'How'd you get in there, [player's forename]?'
		
		You exit the closet.";
		move the player to Moira's Office;
		queue Moira Zin with about the hyperdimensional portal;
		now the current interlocutor is Moira Zin;
		now the closet door is unlocked;
		now the closet door is open;

Report shouting:
	say "Faraji shouts really loud, and feels a little better.";

Rule for writing a paragraph about Moira Zin:
	say "Moira Zin is here, arranging her new office.";
		
about the hyperdimensional portal is an informative quip.
	The comment is "[We] [scratch] [our] head. 'Um, I was transported there through an hyperdimensional portal. How's your morning been?'".
	The reply is "[Moira] raises an eyebrow. 'Were you, now.'".
	It is ubiquitous.
	It quip-supplies Moira Zin.
	It rules out to wait for the report.
			
[ to wait for the report is an informative quip.
	The comment is "[We] [say] 'Strange things are afoot around here, Agent Zin.'".
	The reply is "'Do tell,' says Moira.
	
	'After I talk to Klimp.'".
	It is ubiquitous.
	It quip-supplies Moira Zin.
	It rules out about the hyperdimensional portal. ]

for-a-screwdriver-moira is a questioning quip.
	It is privately-named. The printed name is "for a screwdriver". [The true-name is "for-a-screwdriver".] Understand "for/a/screwdriver" as for-a-screwdriver-moira.
	It mentions the red screwdriver.
	The comment is "[We] [ask], 'Would you happen to have a screwdriver I could borrow?'".
	The reply is "'Sorry, I don't have a screwdriver. You might try the Chief.'".
	It quip-supplies Moira;
	
An availability rule for for-a-screwdriver-moira:
	if the player knows vent-screws and the red screwdriver is not handled:
		always available;
	
Section 7 - Moira Interjections


Moira interjection timer is a number that varies. Moira interjection timer is 5.

Every turn when Moira interjection timer is not 0 and Moira is in the location:
	decrease Moira interjection timer by 1;
	if Moira interjection timer is 0:
		interject Moira;

Before discussing when Moira is in the location:
	now Moira interjection timer is a random number from 2 to 5;

Before quizzing someone about something when Moira is in the location:
	now Moira interjection timer is a random number from 2 to 5;
	continue the action;

Before implicit-quizzing something when Moira is in the location:
	now Moira interjection timer is a random number from 2 to 5;

To interject Moira:
	sort Table of Moira Interjections in random order;
	if there is a used of false in the Table of Moira Interjections:
		choose the row with a used of false in the Table of Moira Interjections;
		say "[Moira interjection entry][line break]";
		now the used entry is true;
		increase Moira interjection timer by a random number from 2 to 5;

Table of Moira Interjections
Moira interjection	used (a truth state)
"Moira looks serious. 'I'm worried about the Chief. He's been acting strange lately. But I guess that's nothing new.'"	false
"Moira looks pensive. 'I'm not sure whether Margaret is a help or a hindrance.'"	false
"Moira says, 'Feel free to borrow a book if you like. Just take good care of it.'"	false
"Moira peeks into the closet. 'I'm not sure what to do with this closet. I don't have much to store in it.'"	false
"Moira sits on the edge of her desk. 'Klimp was telling me about the Voynich manuscript. Fascinating stuff.'"	false
"While rearranging her bookshelves, Moira says, 'I think the Chief's new Sasquatch skull is a fake.'"	false
"Moira crosses her arms. 'This new office suite is a bit of a downgrade from the old one. We'll have to make do.'"	false



Book 15 - The Phone Call

[fill this in]

The unknown voice is a person.
The mysterious phone is a phone. It is owned by the unknown voice.

Book 16 - Moving Between Rooms 

To decide which text is the transition for (source - a room) to (target - a room):
	repeat through the Table of Transitions:
		if (source room entry is source) and (target room entry is target):
			if there is a transition-used entry and transition-used entry is false:
				decide on transition text entry;
			if there is no transition-used entry:
				decide on transition text entry;
	decide on "none"; 
	
To mark transition from (source - a room) to (target - a room) as used:
	repeat through the Table of Transitions:
		if (source room entry is source) and (target room entry is target):
			now transition-used entry is true;
 
After going from a room (called R1) to a room (called R2) (this is the print transition rule): 
	let transition text be the transition for R1 to R2;
	if transition text is not "none":
		say "[transition text][paragraph break]";
		mark transition from R1 to R2 as used;
	continue the action;

The print transition rule is listed first in the after rules.

Chapter 1 - Leaving the Front Office

[ After going from front office to the BOSH office hallway for the first time:
	If the current interlocutor was Margaret: 
		say "[We] [extricate] [ourselves] from talking with Margaret.";
	continue the action; ]
	
Chapter 2 - Klimp Arrives

Book 17 - Commerce and Conversation

[ Before quizzing someone about something when the noun owns the second noun:
	if the noun is willing to sell the second noun:
		say "'I'll sell [regarding the second noun][them] for [price of the second noun].'";
		stop the action; ]

Before requesting someone for something when the noun owns the second noun:
	if the noun is willing to sell the second noun:
		say "'I'll sell [regarding the second noun][them] for [price of the second noun].'";
		stop the action;

   
Book 18 - Sound

Book 18.5 - Quiz table

To start is a verb. To begin is a verb.

Senator-savra-subject is a subject. The printed name is "Senator Savra". Understand "Senator/Savra" as Senator-savra-subject. Budapest is a subject. Istanbul is a subject. Pompeii is a subject. The Smithsonian Castle is a subject. House of Representatives is a subject. Kentucky is a subject. Jefferson Davis is a subject. 
Colonel Sanders is a subject. The Confederacy is a subject. Benny Hill is a subject. Ural Mountains is a subject. The White House is a subject. The Vatican is a subject. 
New-Order is a subject. It is privately-named. The printed name is "New Order". Understand "New Order" as New-Order. Thomas Edison is a subject. 
Georgia-subject is a subject. It is privately-named. The printed name is "State of Georgia". Understand "Georgia/state" as Georgia-subject.
The Georgia Guidestones is a subject.
ESPN is a subject. Mark David Chapman is a subject. The Beatles is a subject. The Monkees is a subject. Blitzkrieg Bop is a subject. Dave Clark Five is a subject. The Ramones is a subject. Marxism is a subject. Understand "marxist" as marxism. Groucho Marx is a subject. Marx Brothers is a subject. Franklin Delano Roosevelt is a subject. Understand "FDR/D" as Franklin Delano Roosevelt. Harry S Truman is a subject. Japan is a subject. World War II is a subject. Understand "WWII/WW2" as World War II. Great Depression is a subject. 
Tracy Chapman is a subject. Doogie Howser is a subject. Understand "howitzer" as Doogie Howser. 
The Vietnam War is a subject. Neil Patrick Harris is a subject. Ronald Reagan is a subject.
margaret-chao-subject is a subject. It is privately-named. The printed name is "Margaret Chao". Understand "Margaret/Chao" as margaret-chao-subject.
moira-zin-subject is a subject. It is privately-named. The printed name is "Moira Zin". Understand "Moira/Zin" as moira-zin-subject.
chief-huffton-klimp-subject is a subject. It is privately-named. The printed name is "Chief Huffton Klimp". Understand "Chief/Huffton/Klimp" as chief-huffton-klimp-subject. 
The Piltdown Man is a subject. Understand "Charles/Dawson" as the Piltdown Man. Mike Nesmith is a subject.
Sumeria is a subject. Understand "sumerian/sumerians" as Sumeria. Dwight Eisenhower is a subject. 
doris-subject is a subject. It is privately-named. The printed name is "Doris". Understand "Doris" as doris-subject.
Siberia is a subject. Pennsylvania is a subject.
Peter Tork is a subject. 
Marlo Thomas is a subject.
Yoko Ono is a subject.
Rasputin is a subject.
Romanov Family is a subject.
Anastasia Romanov is a subject.
file cabinet key is a subject.
Marlo Thomas is a subject.
Bugbear of Slocum Heath is a subject.

[Enigma Lake subjects]
The doll-fly-subject is a subject. It is privately-named. The printed name is "doll-fly". Understand "doll/fly" as the doll-fly-subject.
hezekiah-subject is a subject. It is privately-named. The printed name is "Hezekiah Horton". Understand "Hezekiah/Horton" as hezekiah-subject.
astral-resonator-subject is a subject. It is privately-named. The printed name is "astral resonator". Understand "astral/resonator" as astral-resonator-subject. 
money is a subject.
alien invasion is a subject. 

onondaga-subject is a subject. It is privately-named. The printed name is "Onondaga". Understand "Onondaga/Onandaga/tribe/native/american" as onondaga-subject.

Liber-Animarum-subject is a subject. It is privately-named. The printed name is "[italic type]Liber Animarum[roman type]". Understand "Liber/Animarum" as Liber-Animarum-subject.
Petrus-Catadesmicus-subject is a subject. It is privately-named. The printed name is "Petrus Catadesmicus". Understand "Petrus/Catadesmicus" as Petrus-Catadesmicus-subject.
Liberace-subject is a subject. It is privately-named. The printed name is "Liberace". Understand "Liberace" as Liberace-subject.

oddities-subject is a subject. It is privately-named. The printed name is "oddities". Understand "memorabilia", "junk", "stuff", "knick-knacks", "knick knacks" as the oddities-subject.
chief-shelves-subject is a subject. It is privately-named. The printed name is "chief's shelves". Understand "chief's/shelves" as chief-shelves-subject.

pink floyd is a subject. Understand "dark/side/of/the/moon" as pink floyd.
Bavaria is a subject. Understand "Bavarian" as Bavaria.
Hipgnosis is a subject. 
bread-subject is a subject. It is privately-named. The printed name is "bread". Understand "bread" as bread-subject.
led zeppelin is a subject. 
john bonham is a subject.
poland is a subject.
jimmy page is a subject.
portugal is a subject.
bahrain is a subject.
maple syrup is a subject.
canada is a subject.
chestnuts is a subject. Understand "chestnut" as chestnuts.
squirrels is a subject. Understand "squirrel" as squirrels.
furniture is a subject.
art is a subject.
music-subject is a subject. It is privately-named. The printed name is "music". Understand "music", "music industry" as music-subject.
kangaroo is a subject. Understand "kangaroos" as kangaroo.
office-subject is a subject. It is privately-named. The printed name is "office". Understand "office/offices" as office-subject.
cryptozoology is a subject. 
cryptids is a subject. Understand "cryptid" as cryptids.
owl is a subject. Understand "owls" as owl.
diners is a subject. Understand "diner" as diners.
scrapple is a subject.
lizard-people-subject is a subject. It is privately-named. The printed name is "lizard people". Understand "lizard/people/person/man/men/woman/women/lizardman/lizardmen/lizardwoman/lizardwomen" as lizard-people-subject.
Russia-subject is a subject. It is privately-named. The printed name is "Russia". Understand "Russia" as Russia-subject.
Earth-subject is a subject. It is privately-named. The printed name is "Earth". Understand "Earth" as Earth-subject.
Richard-nixon-subject is a subject. It is privately-named. The printed name is "Richard Nixon". Understand "Richard/Nixon" as Richard-nixon-subject.
Krushchev-subject is a subject. It is privately-named. The printed name is "Krushchev". Understand "Nikita/Krushchev" as Krushchev-subject.
Mao Zedong is a subject. Understand "Chairman/Tse-tung" as Mao Zedong.
dee-dee-ramone-subject is a subject. It is privately-named. The printed name is "Dee Dee Monkee". Understand "Dee/Dee/Ramone/Monkee" as dee-dee-ramone-subject.
johnny-ramone-subject is a subject. It is privately-named. The printed name is "Johnny Monkee". Understand "Johnny/Ramone/Monkee" as johnny-ramone-subject.
joey-ramone-subject is a subject. It is privately-named. The printed name is "Joey Monkee". Understand "Joey/Ramone/Monkee" as joey-ramone-subject.
Crusades-subject is a subject. It is privately-named. The printed name is "Crusades". Understand "Crusades/crusade" as Crusades-subject.
Pope-clement-v-subject is a subject. It is privately-named. The printed name is "Pope Clement V". Understand "Pope/Clement/V" as Pope-clement-v-subject.
Senate-subject is a subject. It is privately-named. The printed name is "Senate". Understand "Senate" as Senate-subject.
Montana-subject is a subject. It is privately-named. The printed name is "Montana". Understand "Montana/MT" as Montana-subject.
Last Train to Clarksville is a subject. 
water-subject is a subject. It is privately-named. The printed name is "water". Understand "water" as water-subject.
gold-subject is a subject. It is privately-named. The printed name is "gold". Understand "gold" as gold-subject.
lost cat is a subject.
government-subject is a subject. It is privately-named. The printed name is "government". Understand "government" as government-subject.
media is a subject.
Rolling Stones is a subject.
Mick Jagger is a subject. Understand "Mickey/Jagged" as Mick Jagger.
Brian Jones is a subject.
Walter Cronkite is a subject.
Abbey Road is a subject.
Paul McCartney is a subject.
West Virginia is a subject.
Pilsbury Doughboy is a subject.
baked goods is a subject.
Benito Mussolini is a subject.


Table of Quiz Topics (continued)
subject (a thing)	interlocutor (a person)	comment (a text)	reply (a text)
Larch Faraji	Margaret Chao	"Margaret, [we] say, 'just what's got into me lately?'"	"'You're just disoriented from the move,' Margaret says. 'It'll get better.'"
Larch Faraji	Chief Huffton Klimp	"'Hey, Chief,' [we] say, 'we need to talk about -- '"	"'Sure, Faraji,' Klimp says, 'but have you seen this article about the Piltdown Man?'"
Larch Faraji	Moira Zin	"'Moira,' [we] say, 'I need your opinion. Am I off my game?'"	"'No, you're fine,' Moira says. 'You just need a break.'"
Aliens	Chief Huffton Klimp	"'Chief,' [we] say, 'are aliens --'"	"Klimp assumes his lecturing pose. 'You know what I think, of course. They're here, they've been here for decades, maybe centuries, and they're a menace to the human race. We're the only thing standing between them and the end of the world.'"
Aliens	Moira Zin	"'Moira,' [we] say, 'what's your take on aliens?'"	"Nonsense,' Moira says. 'They're a convenient excuse for people who don't want to face the truth.'"
moira-zin-subject	Chief Huffton Klimp	"'Moira --'"	"'Yes, yes, east and then north. I'm busy.'"
moira-zin-subject	Margaret Chao	"'Margaret,' [we] say, 'what do you think of Moira?'"	"'Well, I've only known her a few weeks,' Margaret says, 'but she seems really smart.'"
Moira Zin	Moira Zin	"'Moira,' [we] say, 'how are you doing with everything that's been going on?'"	"'I'm fine,' Moira says. 'Why wouldn't I be?'"
chief-huffton-klimp-subject	Margaret Chao	"'Margaret,' [we] say, 'what do you think of Klimp?'"	"Margaret looks around and then whispers, 'I don't think he likes me.'"
chief-huffton-klimp-subject	Moira Zin	"'Moira,' [we] say, 'you've known Klimp longer than anyone. What do you think of him?'"	"'He's a child. That's what you have to understand about Klimp,' Moira says. 'He's never met a stupid idea he didn't like.'"
Chief Huffton Klimp	Chief Huffton Klimp	"'Chief,' [we] say, 'what's going --'"	"'Have you heard about these new ancient ruins in Kamchatka? Apparently there are some very interesting Koryak artifacts there that suggest a connection to the ancient Sumerians.'"
Margaret Chao	Margaret Chao	"'How are you doing, Margaret?'"	"'I'm great!' Margaret says. 'So many things to unpack!'"
margaret-chao-subject	Moira Zin	"'Moira,' [we] say, 'what do you think of Margaret?'"	"'She'll do,' Moira says. 'She's a bit too eager, but she'll do.'"
margaret-chao-subject	Chief Huffton Klimp	"'Chief,' [we] say, 'Margaret --'"	"'I'm reading about the latest discoveries in the field of cryptozoology,' Klimp says. 'Did you know that the Yeti is actually a type of bear? I don't mean a regular bear, but a bear that's not of this world.'"
Bureau of Strange Happenings	Chief Huffton Klimp	"[We] [say] to Klimp, 'the Bureau --'"	"'The Bureau will be the most important line of defense when the alien threat inevitably comes to fruition. Savra is a fool,' he says with a gleam in his eye."
Senator-savra-subject	Chief Huffton Klimp	"'So what is Savra --'"	"'Savra -- that imbecile. He's a fool and a coward. He's the reason we're not prepared for the alien invasion.'"
Time-travel	Chief Huffton Klimp	"'Is time travel --'"	"'Time travel is a fact,' Klimp says. 'Tesla had a time machine. I've seen it.'"
Astral plane	Chief Huffton Klimp	"'Chief, is the astral plane --'"	"'I've heard of people who have been there, even lived there. My friend Doris. True story.'"
doris-subject	Chief Huffton Klimp	"'Chief, who is D--"	"'Doris? He's a friend of mine. Works for the Bureau. Sort of. Snappy dresser. Prone to outlandish stories. Ask him about the Mothman.'"
The Bermuda Triangle	Chief Huffton Klimp	"'The Ber--'"	"'Oh please, the Bermuda Triangle is a hoax. It's just a place where ships and planes go down. It's not like it's a portal to another dimension. That's the Sargasso Sea.'"
Loch Ness Monster	Chief Huffton Klimp	"'Chief, have you seen the --'"	"'Loch Ness Monster? Of course. I've seen it. It's a plesiosaur, you know. From another world.'"
The Roswell Incident	Chief Huffton Klimp	"'Chief --'"	"'Roswell? It's not what you think. It's not what anyone thinks. It's a cover-up, but not for what you think.'"
The Chupacabra	Chief Huffton Klimp	"'I'm sure you know all about the Chu--'"	"'--pacabra? Yes, I do. It's not of this world, you know.'"
The Sasquatch	Chief Huffton Klimp	"'Chief, does Sasquatch --'"	"'I've often thought that it would be a great subject for a television show. Not a documentary, mind you, but a drama. That guy, you know, from the show about the doctor in the spaceship, he'd be perfect as Sasquatch.'"
Yeti	Chief Huffton Klimp	"'Is the Yeti --'"	"'The Yeti is a bear. I've seen the evidence. It's a bear. A bear from another world.'"
Sacred geometry	Chief Huffton Klimp	"'Whatever happened to your --'"	"'--sacred geometry phase? Meh. I've moved on. Shapes are shapes.'"
The Moberly-Jourdain Incident	Chief Huffton Klimp	"'[We] [say] to Klimp, 'the Moberly-Jourdain --'"	"'Incident? Time slips are cool. I've seen one. I've been in one. Or was it two? I can't remember.'"
The Mothman	Chief Huffton Klimp	"'What was the Mothm--'"	"'Geez, West Virginia has the lamest cryptids. The Mothman is just a big owl. A big owl from another world.'"
The Jersey Devil	Chief Huffton Klimp	"'Chief,' [we] [say] to Klimp, 'the Jersey --'"	"'Yes, yes, the Jersey Devil. It's a kangaroo. A kangaroo with wings. From another world.'"
The Flatwoods Monster	Chief Huffton Klimp	"'So I haven't heard much about this one,' [we] [say]. 'The Flatwoods --'"	"'Oh yes, the Flatwoods Monster. It's not even a cryptid. It's a robot from the CIA. I've seen the evidence.'"
The Dover Demon	Chief Huffton Klimp	"'Chief, what's the deal with the Dover --'"	"'Demon? It's no demon. It's a monkey crossed with a snowy owl. By the way, have you seen the news about the recently discovered alien temple under the basement of the Smithsonian Castle?'"
The Smithsonian Castle	Chief Huffton Klimp	"'Chief, what's the story with the Smithsonian --'"	"'Castle? Turns out it's built on top of an alien temple. Real big one, too. The House of Representatives is trying to pass a law against it.'"
House of Representatives	Chief Huffton Klimp	"'Chief, what do you think of the House of --'"	"'Representatives? Bunch of fools. They don't know what's going on. They're too busy with their petty squabbles to see the real danger.'"
The Kelly-Hopkinsville Encounter	Chief Huffton Klimp	"[We] [say] to Klimp, 'I was reading about the K--"	"'Kelly-Hopkinsville Encounter? It's just silly. Everyone knows that part of Kentucky is riddled with alien activity. I mean, Jefferson Davis was from there, wasn't he?'"
Kentucky	Chief Huffton Klimp	"'Chief, what's the deal with --'"	"'Kentucky? Most suspicious state in the Union, after Montana. I wouldn't trust anyone from there. Not even Colonel Sanders.'"
Jefferson Davis	Chief Huffton Klimp	"'So what do you know about Jeffers--'"	"'Jefferson Davis? Most people just know him as the guy who first posited the existence of the Black Knight Satellite. But he was also President of the Confederacy, did you know that?'"
Colonel Sanders	Chief Huffton Klimp	"'What about Colonel --'"	"'Colonel Sanders? No one even knows his real name. He's a mystery wrapped in a secret recipe.'"
The Confederacy	Chief Huffton Klimp	"'What's this I hear about the --'"	"'Confederacy? No one even knows if it even existed. I mean, you ever meet anyone from the Confederacy? I haven't.'"
The Rendlesham Forest Incident	Chief Huffton Klimp	"'Chief, what's the story with the Rendlesham --'"	"'Forest Incident? No one knows what really happened. Except me. I know. It's a long story, but it involves a time slip and a bear from another world.'"
The Phoenix Lights	Chief Huffton Klimp	"[We] [take] a deep breath and [say] to Klimp, 'the Phoenix --'"	"'Lights? No one knows what they were. Not even me. But I have a theory. It's a theory that involves a bear from another world. At least, I think it does.'"
Betty-and-Barney Hill Abduction	Chief Huffton Klimp	"'Chief, the Betty and Barney Hill --'"	"'Abduction? It's a classic. It's a classic. It's a classic cover-up. There never was a Barney Hill. It was Benny Hill.'"
Benny Hill	Chief Huffton Klimp	"'Chief, what your take on --'"	"'Benny Hill? Funny guy. Really funny guy.'"
The Black Knight Satellite	Chief Huffton Klimp	"'Chief, is the Black Knight Satellite --'"	"'Real? Yes, it's real. I mean, it's not a satellite, but it's real. You ever hear of the Tunguska Event? There's a connection, you know.'"
The Tunguska Event	Chief Huffton Klimp	"'Chief, what's the deal with the Tunguska --'"	"'Event? I have a theory. Most people think Lenin was born on Earth in 1870, but I have evidence that he was born on the Black Knight Satellite and came to Earth in a meteorite that landed in Tunguska in 1908.'"
The Dyatlov Pass Incident	Chief Huffton Klimp	"'Chief, the Dyatlov Pass --'"	"'Incident? It's a mystery. There's not even such a place as the Ural Mountains. It's a cover-up. I've seen the evidence.'"
Ural Mountains	Chief Huffton Klimp	"'Chief, do you really think the --'"	"'Ural Mountains don't exist? Of course they don't. And that's a problem, because nothing else is keeping Europe and Asia apart.'"
The Mary Celeste	Chief Huffton Klimp	"'Chief, what's the story with the Mary --'"	"'Celeste? Nothing so bad as what routinely happens in the cruise industry. I've seen the evidence.'"
The Philadelphia Experiment	Chief Huffton Klimp	"'Chief, the --'"	"'Philadelphia Experiment? Was it even in Philadelphia? Is there even a Philadelphia? I'm still waiting for answers.'"
Amelia Earhart	Chief Huffton Klimp	"'Chief, what's the deal with Amelia --'"	"'Earhart? She was murdered by the Freemasons before she even took off. I've seen the evidence.'"
The Voynich Manuscript	Chief Huffton Klimp	"'Chief, what's the deal with the Voynich --'"	"'Manuscript? It's a hoax. I've seen the evidence. It's a hoax. But it's a good hoax. I like it.'"
The Shroud of Turin	Chief Huffton Klimp	"'Chief, is the Shroud of --'"	"'Turin? It's really a map. I've seen the evidence. It's a map. A map to the Black Knight Satellite.'"
The Holy Grail	Chief Huffton Klimp	"'Chief,' [we] [ask], 'is the Holy --'"	"'Grail real? Well, maybe, maybe not. It depends on what you mean by [']real.['] In any case, it was lost in a time slip.'"
Time slips	Chief Huffton Klimp	"'Chief, do time slips --'"	"'Really happen? Yes, they do. The Moberly-Jourdain Incident for example, or -- well, I can't remember the other one. I was thinking about the Jersey Devil, and its connection to the Church of Scientology.'"
The Ark of the Covenant	Chief Huffton Klimp	"'Chief, you ever see Raiders of the Lost --'"	"Is this about the Ark of the Covenant? It's a real thing, you know. The director of the movie was a Freemason. But it's important to note that the Ark cannot melt your face off. That's a myth."
The Spear of Destiny	Chief Huffton Klimp	"[We] [start] to ask Klimp a question when he interrupts."	"'The Spear of Destiny, right? It's a real thing. I've seen it. It's in the Vatican. But it's a fake. The real one was stolen by the Illuminati.'"
Alchemy	Chief Huffton Klimp	"'Chief, do you know anything about --'"	"'Alchemy? Well, yes and no. It's a real thing, but it's not what you think. It's a science, but it's not a science. I used to dabble in it, back before my sacred geometry phase. Never got the hang of it.'"
The Illuminati	Chief Huffton Klimp	"[We] [begin], 'You believe in the --'"	"'Illuminati? Of course. They're everywhere. They're in the government, in the media, in the music industry. They're in the Bureau. They're in the BOSH offices. They're in the White House. They're in the Vatican. They're in the Black Knight Satellite.' Klimp looks around. 'They're in this room... okay, maybe not this room. And hopefully not in the BOSH offices. But they're everywhere else. You don't think Margaret's Illuminati, do you?'"
The White House	Chief Huffton Klimp	"'Do you really think the Illuminati are in the --'"	"'White House? Of course. It's at the conjunction of ley lines. Those things attract the Illuminati like flies to vinegar. Or is it honey? I can't remember.'"
The New-World-Order	Chief Huffton Klimp	"'Chief, what's the deal with the New --'"	"'New Order? You're into them, eighties music, right? No, no, you were going to ask about the New World Order, weren't you? It's a real thing. It's a real thing, and it's a real threat. It's a real threat to the world. It's a real threat to the universe. Well, that's an exaggeration. But it's real bad.'"
New-Order	Chief Huffton Klimp	"'Chief, you mentioned --'"	"'New Order? Great band. Great band. I love that song by them. What's it called? Oh yeah, [']Hey Jude['].'"
Divining	Chief Huffton Klimp	"'Chief, have you ever used a di--'"	"'--vining rod? Yes, I have. I've used it to find water, to find gold, to find the Black Knight Satellite. I once used it to find a lost cat. It didn't work.'"
Crystals	Chief Huffton Klimp	"'Chief, you ever use --'"	"'crystals? Yes, I have. I've used them to heal, to divine, to communicate with the Black Knight Satellite. I've used them to find lost keys. I've used them to find lost time. I've used them to find lost socks. I once gave one to a lonely Sasquatch. It didn't seem to care for it.'"
Ley lines	Chief Huffton Klimp	"'Chief, what's all this about ley--'"	"'den jars? I don't know. You might want to ask Nikola Tesla. He was into that sort of thing. Or was it Thomas Edison? I can't remember. But you were going to ask about ley lines, weren't you? I have them all mapped out on my globe.'"
Leyden jars	Chief Huffton Klimp	"'Chief, what's all this about ley--'"	"'den jars? Not a clue. You might want to ask Nikola Tesla. He was into that sort of thing. Or was it Thomas Edison? I can't remember.'"
Thomas Edison	Chief Huffton Klimp	"'Chief, what do you know about --'"	"'Thomas Edison? Madman. Genius. Fraud. All of these things. He once killed a yeti with his bare hands.'"
Astrology	Chief Huffton Klimp	"'Chief, do you believe in horo--'"	"'scopes? Yes, I do. I've seen the evidence. I've seen the evidence that they're real. I've seen the evidence that they're fake. I've seen the evidence that they're a tool of the Illuminati. None of it makes sense. But I still believe in them.'"
The Freemasons	Chief Huffton Klimp	"'Chief, who are the Free--'"	"'masons? Harmless. They're harmless. They're just a bunch of guys who like to wear aprons and have secret handshakes. It's not like they have the Holy Grail or anything. That's a myth. I think.'"
The Knights Templar	Chief Huffton Klimp	"'Chief, what can you tell me about the --'"	"'Knights Templar? Consider this -- they're not Knights at all. They're really kind of fun, you know. They're like the Freemasons, but with swords. And they have the Spear of Destiny. Or they did. Or they didn't. I can't remember.'"
Atlantis	Chief Huffton Klimp	"'Chief, tell me about At--'"	"'lanta? It's a city in Georgia. Oh, you mean the lost city of Atlantis. It's really just a metaphor. For something. I can't remember what. But it's a metaphor. For something.'"
Georgia-subject	Chief Huffton Klimp	"'So what about Geor --'"	"'-- gia? It's the only US State that spans two continents, you know.'"
The Georgia Guidestones	Chief Huffton Klimp	"'Chief, what's the deal with the Georgia --'"	"'Guidestones? They may have been erected by human hands, but they were inspired by the Black Knight Satellite. I've seen the evidence.'"
Ancient astronauts	Chief Huffton Klimp	"[We] [ask], 'Do you believe in --'"	"'ancient astronauts? I can't remember. I used to. I used to believe in them. I used to believe in them a lot. I used to believe in them so much that I thought I was one. Now, I'm not so sure.'"
Ancient Egypt	Chief Huffton Klimp	"'Chief, what's the deal with --'"	"'Ancient Egypt? It's not there anymore. It just disappeared. It's a mystery. Now there's just a place that's called Egypt. It's not the same. It's not the same at all.'"
Crop circles	Chief Huffton Klimp	"'Chief, do you think crop --'"	"'circles are of alien origin? Maybe. But I'm more interested in crop squares. Or crop trapezoids. Or crop dododecahedrons. Those are the real mystery. I think it's the the Illuminati. They use them to communicate with the Black Knight Satellite.'"
ESP	Chief Huffton Klimp	"'Chief, do you believe in --'"	"'ESP? Is that like ESPN? I like ESPN. Don't really like sports, but I like ESPN. I like people discussing irrelevant things with passion. Like Senator Savra. He's like ESPN, thinks everything's a game. But I don't think that's what you meant.'"
ESPN	Chief Huffton Klimp	"'Chief, do you watch --'"	"'ESPN? Yes, I do. It's an Illuminati-free zone. Very refreshing.'"
Ghosts	Chief Huffton Klimp	"'Chief, do you believe in --'"	"'Ghosts? Yes. Ghosts, poltergeists, phantoms, specters, wraiths, apparitions, spooks, spirits, shades, and the undead are all real. I've seen them. I've talked to them. I've been one. I think. I can't remember.'"
Vampires	Chief Huffton Klimp	"'Chief, are v--'"	"'Violins? Violets? Violence? Finish your words, Faraji. I can't read your mind. Oh, wait, you were going to ask about vampires, weren't you? They're sometimes real. Sometimes not. It's a quantum thing.'"
Werewolves	Chief Huffton Klimp	"'Chief, are were--'"	"'[']Are where?['] That's hardly correct grammar. But I know what you mean. You mean werewolves. Werewolves are real. I once met one. You know what he said? He said, [']I'm a werewolf.[']'"
Zombies	Chief Huffton Klimp	"[We] [say] to Klimp, 'Zombies --'"	"'What? Zombies? I can't hear you. Speak up. Zombies? Oh, zombies. They're not very good conversationalists. They're not very good at anything.'"
Hypnosis	Chief Huffton Klimp	"'Chief, do you believe in --'"	"'Hypnosis? I don't know. But I do know that Hipgnosis is a design firm. They did the cover for Dark Side of the Moon. I like that cover. I like the triangle. I like the prism. I like the rainbow.'"
Levitation	Chief Huffton Klimp	"'Chief, do you know --'"	"'anyone who can levitate? Well, that's a good question. I used to. But they fell down, so I don't know anymore."
Telekinesis	Chief Huffton Klimp	"'Chief, do you believe in tele--'"	"'Television? Well, of course I do. I used to watch it all the time. Especially ESPN. For the passion. For the irrelevant discussions. For the games. But I don't think that's what you meant. You meant telekinesis, didn't you? I can't remember what I think about that.'"
Teleportation	Chief Huffton Klimp	"'Do you think anyone will ever --'"	"'invent a teleporter? Nah, too dangerous. You could end up in another world. Or another time. Or in the middle of the Sargasso Sea. Or smack dab in the middle of the Tunguska Event. Now wouldn't that be something?'"
Spontaneous human combustion	Chief Huffton Klimp	"'Chief, do you think --'"	"'spontaneous human combustion is real? Yes, I do, and when people say it's not, it really burns me up. LOL."
Nikola Tesla	Chief Huffton Klimp	"[We] [say] to Klimp, 'Nikola --'"	"'Tesla? He was a time traveler. I've seen the evidence. He went back in time to save the crew of the Mary Celeste. He died as a result of the Philadelphia Experiment. It's all connected.'"
The Sargasso Sea	Chief Huffton Klimp	"'Chief, have you ever been to the --'"	"'Sargasso Sea? Yes. Well, no. But I know all about it. For one thing, it's not a sea. It's the surface of a huge alien jellyfish. I've seen the evidence.'"
huge alien jellyfish	Chief Huffton Klimp	"Faraji asks, 'What do you know about the huge --'"	"'alien jellyfish in the Sargasso Sea? As much as anyone, which is to say, not much. But it's there. Somebody told me.'"
The Marfa Lights	Chief Huffton Klimp	"'Chief, what's the story on the Marfa --'"	"'Lights? Don't let anyone know, but they're really just the headlights of a car. A car from another world. I've seen the evidence.'"
V I Lenin	Chief Huffton Klimp	"'Chief, what do you think of --'"	"'Lennon? Imagine he's still alive. I've seen the evidence. Mark David Chapman didn't kill him. He's living in a hidden city on the inside of the earth. But I don't think that's what you meant. You meant Lenin, didn't you? I can't remember what I think about him.'"
John Lennon	Chief Huffton Klimp	"'John Lennon's --'"	"'still alive? Most definitely. He's living in a hidden city on the inside of the earth. Somewhere it's always 1969.'"
The Church of Scientology	Chief Huffton Klimp	"'Chief, what about the Church --'"	"'You mean the eighties band? I like them. They had a song about a huge alien jellyfish. Or maybe that was someone else. But you meant the Church of Scientology, didn't you? They're weird.'"
UFOs	Chief Huffton Klimp	"'Chief, do you believe in --'"	"'UFOs? Yes, I do. I've seen them. I've been in them. I've talked to the pilots. I've been a pilot. I've been a UFO. I think. I can't remember.'"
Ouija boards	Chief Huffton Klimp	"'Chief, do you think Ouija --'"	"'boards are real? Yes. No. Goodbye. At any rate, they're more reliable than the Magic 8-Ball.'"
Magic 8-Ball	Chief Huffton Klimp	"'Chief, do you think the Magic 8-Ball --'"	"'works? Well, yes, in a manner of speaking. But not for what you think. No, not at all.'"
The Bureau of Supernatural History	Chief Huffton Klimp	"'Chief, what's the deal with the --'"	"'Bureau of Supernatural History? Posers.'"
The Chief's office	Chief Huffton Klimp	"'Chief, you have such a nice office --'"	"'Yes, I do. Have you checked out the new article about the Marfa Lights? It's a doozy.'"
The Chief's desk	Chief Huffton Klimp	"'Chief, what's the deal with your desk --'"	"'Made it myself. Well, not really built it, but I bought it. It's the kind of desk you could imagine Tesla using. I just read an article about him. They completely left out the part about him meeting the Jersey Devil.'"
The polished orange marble dodecahedron	Chief Huffton Klimp	"[We] [admire] the Klimp's dodecahedron and [say], 'Chief, this --'"	"'-- is a beautiful thing. It's a dodecahedron. But I like to call it the portal stone, because it's a portal to another world. I think. Which reminds me, have you read the new book about the Spear of Destiny? It's a real page-turner.'"
The globe	Chief Huffton Klimp	"'Chief, I notice on your globe --'"	"'Yeah, all the lines, right? They're ley lines, which are, well, kind of like these lines of energy that connect the world. They're like the veins of the Earth. They're like the nervous system of the Earth. They're like the internet of the Earth. No, I take that back. Let's stick with the veins metaphor.'"
The armchair	Chief Huffton Klimp	"'Chief, what's the deal with your armchair --'"	"'That's my thinking chair. It's beautiful, don't you think?' I got it at an auction by the Church of Scientology. They have the best auctions. I once got a book about hypnosis at one of their auctions. Good book.'"
The mahogany side table	Chief Huffton Klimp	"'Chief, what's the story with your side table --'"	"'Got it from a store run by a guy who might be a vampire. Lots of vampires in the furniture business. I've seen the evidence.'"
Waiting-for-the-Aliens	Chief Huffton Klimp	"'Chief, have you read this book --'"	"'[']Waiting for the Aliens?['] Yes, I have. Kind of a letdown. I was hoping for more about the Black Knight Satellite.'"
Travels in Time	Chief Huffton Klimp	"'Chief, what do you think of this book --'"	"'Travels in Time? I've read it. It's a good book. Did you know it hasn't even been written yet? True story. Strangely, Debi Bosworth was killed in the Dyatlov Pass Incident. I've seen the evidence.'"
Juvenile Sasquatch skull	Chief Huffton Klimp	"'Chief, what's the deal with this --'"	"'--skull? It's a juvenile Sasquatch skull. Found it myself at the Natural History Museum in New York. They have the best stuff. Hard to carry out of there, though.'" 
Juvenile Sasquatch skull	Moira Zin	"'Moira, what do you think about Klimp's new sasquatch skull?'"	"'It certainly seems a bit fishy to me. It seems too small. I think it's a fake.'"
Natural History Museum	Chief Huffton Klimp	"'Chief, what's the deal with the --'"	"'Natural History Museum? Great place, but why do they get to choose what's natural and what's not? Kind of presumptuous, if you ask me.'"
New York City	Chief Huffton Klimp	"'Chief, have you ever been to --'"	"'New York? Yes, of course. I assume you're talking about the one in Illinois. I've been there. It's a nice place. But you were probably talking about the one in New York, weren't you? I've been there, too. It's a nice place. But not as nice as the one in Illinois.'"
Illinois	Chief Huffton Klimp	"'Chief, what's the deal with --'"	"'Illinois? It's pretty much a dump, except for New York. New York, Illinois is a great place. You should visit their Natural History Museum. They have the best stuff.'"
Kamchatka	Chief Huffton Klimp	"'Chief, where is --'"	"'Kamchatka? It's a peninsula in far eastern Russia. It was once the leading contender for most uninteresting location on Earth. But then they found those ruins. Now it's the leading contender for most interesting location on Earth.'"
Koryak people	Chief Huffton Klimp	"'Chief, what do you know about the --'"	"'--Koryak people? They're a tribe in Russia that we're ephemerally interested in. By next month we'll have forgotten all about them.'"
Vatican	Chief Huffton Klimp	"'Chief, what's the deal with the --'"	"'Vatican? Don't be fooled by the funny hats. They're planning an invasion of the Black Knight Satellite. I've seen the evidence.'"
Antique wooden file cabinet	Chief Huffton Klimp	"'Chief, what's in the file --'"	"'--cabinet? Files. Classified. Except for one. It's a recipe for chicken salad.'"
Hora de la Muerte	Chief Huffton Klimp	"'Chief, the painting --'"	"'Hora de la Muerte? It speaks to me. Speaks to me of something ineffable. Something that's not there. Something that's not here. Something that's not anywhere.'"
Astral lenses	Chief Huffton Klimp	"'Chief, what's the deal with these --'"	"'--glasses? They're astral lenses. Got them at a little shop while I was hunting for the Dover Demon. They let you see into other worlds. Haven't tried them yet. I'm waiting for the right time. The right place. The right world.'"
curios	Chief Huffton Klimp	"'Chief, what's the deal with these --'"	"'--curios? They're curios. They're curious. They're curiosities. Take a look."
chief's black leather chair	Chief Huffton Klimp	"'Chief, what's the deal with your --'"	"'--chair? It's a chair. I can sit in it. It's the kind of chair Tesla would have sat in, if he had sat in chairs."
bookcase	Chief Huffton Klimp	"'Chief, what's the deal with your --'"	"'--bookcase? Nothing much. Nothing like the news about the UFOs over Woonsocket. That's a real story.'"
Woonsocket	Chief Huffton Klimp	"'Chief, what happened in Wo--'"	"'onsocket? Isn't that a funny name? I mean, what's a woon, anyway? But what were we talking about?"
Dictionary of Strangeness	Chief Huffton Klimp	"'Chief --'"	"'You're going to ask about the Dictionary of Strangeness, aren't you? Fine. I've read it cover to cover. Know everything there is to know about everything one should know about. Ask me anything.'"
prints	Chief Huffton Klimp	"'Chief, what's the deal with these --'"	"'--prints? I love art. But not for art's sake. More for my sake. And the sake of the world."
bear	Chief Huffton Klimp	"'Chief, why do you talk about --'"	"'bears? Because they're dangerous. They're everywhere. They're in the woods. They're in the cities. They're in the mountains. They're in the oceans. Everywhere.'"
The ringing-phone	Chief Huffton Klimp	"'Hey, Chief, sorry about the --'"	"'damn phone that keeps ringing? It's the Illuminati. They're trying to get you. They're trying to get me. They're trying to get everyone. Don't answer it. But make it stop. It's driving me crazy.'"
The ringing-phone	Margaret	"[We] [say] to Margaret, 'Margaret, do you have any way to get into my desk to answer the phone, a spare key or --'"	"'No, no, I don't. I'm sorry. I don't know what to do. I'm sorry.'"
The ringing-phone	Moira Zin	"'Moira, I'm so sorry about the phone ringing. It's locked in my desk and I can't get to it. I don't know what to do. I'm sorry.'"	"'It's okay, Larch. I'm sure whoever's calling will give up eventually.'"
Voynich Manuscript	Moira Zin	"'Moira, tell me something about the Voynich Manuscript.'"	"'Well, I only know what Klimp has told me. Better ask him.'"
Istanbul	Margaret	"'Margaret, what do you know about Istanbul?'"	"'Well, not a lot, but I hear it's full of Turkeys. And not the kind you eat. The kind that are really big and can fly. I think. I can't remember.'"
Budapest	Margaret	"'Margaret, what do you know about Budapest?'"	"'Oh, Budapest. It used to be two cities, you know. Buddha and Pesto. I love pesto. I can't remember what Buddha is. But I love pesto.'"
Istanbul	Chief Huffton Klimp	"'Chief, what do you know about --'"	"'Istanbul? It's on two continents [italic type]at the same time[roman type]. So you have to be careful when you're there or you'll end up in two places at once. Did I mention I have a timeshare there?'"
Budapest	Chief Huffton Klimp	"'Chief, what do you know about --'"	"'Budapest? It sure has a funny name. But it's a serious place. Serious history. Serious ghosts. Serious vampires. Serious food. I can't remember what I was going to say.'"
Pompeii	Chief Huffton Klimp	"'Chief, what's with you and --'"	"'Doris in Pompeii? You'll never know. The evidence was conveniently destroyed somehow."
Bureau of Strange Happenings	Moira Zin	"'Moira, what's your view on the Bureau?'"	"'We do important work, when Klimp lets us. And when they're not cutting our budget. Why it was only last week we caught those corrupt old men trying to cheat the old lady out of her house by pretending to be ghosts.'"
Senator-savra-subject	Moira Zin	"'Moira, what do you think of Senator Savra?'"	"'There's something not right about him. I can't put my finger on it.'"
Time-travel	Moira Zin	"'Moira, what do you know about time travel?'"	"'It's a theoretical concept that involves moving between different points in time. It's not possible, of course. But it's a popular subject in science fiction.'"
Astral plane	Moira Zin	"'Moira, tell me about the astral plane.'"	"'It's a plane of existence that exists beyond the physical world. It's a place where spirits and other entities reside. It's not real, of course. But it's a popular subject in the occult.'"
Doris	Moira Zin	"'Moira, what do you know about Doris?'"	"'Doris? I don't know any Doris. Who's Doris?'"
The Bermuda Triangle	Moira Zin	"'Moira, what's the deal with the Bermuda Triangle?'"	"'It's a region in the western part of the North Atlantic Ocean where a number of aircraft and ships are said to have disappeared under mysterious circumstances.'"
Loch Ness Monster	Moira Zin	"'Moira, what's the story with the Loch Ness Monster?'"	"'It's a creature that is said to inhabit Loch Ness in the Scottish Highlands. There have been numerous sightings of the creature, but there is no conclusive evidence that it exists.'"
The Roswell Incident	Moira Zin	"'Moira, what's the deal with the Roswell Incident?'"	"'Well, we really don't know what happened there. Certainly aliens exist somewhere in the universe, but I find it farfetched that they could visit other star systems."
The Chupacabra	Moira Zin	"'Moira, is there such a thing as the chupacabra?'"	"'The chupacabra is a mythical creature that is said to inhabit parts of the Americas. It is said to be a blood-sucking creature that preys on livestock. There is no scientific evidence to support the existence of such a creature.'"
The Sasquatch	Moira Zin	"'Moira, what do you know about the Sasquatch?'"	"'The Sasquatch is a mythical creature that is said to inhabit the forests of North America. It is said to be a large, hairy, ape-like creature. There is no scientific evidence to support the existence of such a creature.'"
Yeti	Moira Zin	"'Moira, what's the deal with the Yeti?'"	"'The Yeti is a mythical creature that is said to inhabit the Himalayan mountains. It is said to be a large, hairy, ape-like creature. There is no scientific evidence to support the existence of such a creature.'"
Sacred geometry	Moira Zin	"'Moira, what is sacred geometry?'"	"'Sacred geometry is a term used to describe the geometric patterns and shapes that are found in nature and in the universe. It is said to have spiritual significance and to represent the underlying order of the cosmos.'"
The Moberly-Jourdain Incident	Moira Zin	"'Moira, what's the deal with the Moberly-Jourdain Incident?'"	"'The Moberly-Jourdain Incident is a case of time slip that occurred in France in 1901. Two women, Charlotte Anne Moberly and Eleanor Jourdain, claimed to have traveled back in time to the 18th century while visiting the Palace of Versailles. There is no scientific evidence to support their claims.'"
The Mothman	Moira Zin	"'Moira, what's the story with the Mothman?'"	"'The Mothman is a creature that is said to inhabit the area around Point Pleasant, West Virginia. It is said to be a large, winged creature with glowing red eyes. There have been numerous sightings of the Mothman, but there is no scientific evidence to support the existence of such a creature.'"
The Jersey Devil	Moira Zin	"'Moira, what do you know about the Jersey Devil?'"	"'The Jersey Devil is a creature that is said to inhabit the Pine Barrens of New Jersey. It is said to be a winged creature with hooves and a forked tail. This one is real.'"
The Flatwoods Monster	Moira Zin	"'Moira, what's the deal with the Flatwoods Monster?'"	"'The Flatwoods Monster is a creature that is said to have been sighted in Flatwoods, West Virginia in 1952. It is said to be a large, humanoid creature with glowing eyes and a spade-shaped head. There is no scientific evidence to support the existence of such a creature.'"
The Dover Demon	Moira Zin	"'Moira, what's the story with the Dover Demon?'"	"'The Dover Demon is a creature that is said to have been sighted in Dover, Massachusetts in 1977. It is said to be a small, humanoid creature with glowing eyes and a large, egg-shaped head. There is no scientific evidence to support the existence of such a creature.'"
The Smithsonian Castle	Moira Zin	"'Moira, what's the deal with the Smithsonian Castle?'"	"'The Smithsonian Castle is a building that houses the administrative offices of the Smithsonian Institution in Washington, D.C. It is a beautiful building with a rich history. Klimp believes some weird things about it.'"
House of Representatives	Moira Zin	"'Moira, what's the deal with the House of Representatives?'"	"'The House of Representatives is one of the two chambers of the United States Congress. It is made up of 435 members who represent the people of the United States. Has Klimp been talking politics again?'"
The Kelly-Hopkinsville Encounter	Moira Zin	"'Moira, what's the story with the Kelly-Hopkinsville Encounter?'"	"'The Kelly-Hopkinsville Encounter is a case of alleged alien visitation that occurred in Kelly, Kentucky in 1955. A family claimed to have been attacked by small, silver beings with large eyes. There is no scientific evidence to support their claims.'"
Kentucky	Moira Zin	"'Moira, what's the deal with Kentucky?'"	"'Kentucky is a state in the southeastern United States. It is known for its horse racing, bourbon, and bluegrass music. It is also known for the Kelly-Hopkinsville Encounter. There is no truth to anything Klimp says about it.'"
Jefferson Davis	Moira Zin	"'Moira, what do you know about Jefferson Davis?'"	"'Jefferson Davis was the President of the Confederate States of America during the American Civil War. He never said anything about the Black Knight Satellite.'"
Colonel Sanders	Moira Zin	"'Moira, what's the deal with Colonel Sanders?'"	"'Colonel Sanders was the founder of Kentucky Fried Chicken. His name was definitely Harland David Sanders.'"
The Confederacy	Moira Zin	"'Moira, what's the deal with the Confederacy?'"	"'The Confederacy was a group of states that seceded from the United States in 1861. They were defeated in the American Civil War. They never had anything to do with the Black Knight Satellite.'"
The Rendlesham Forest Incident	Moira Zin	"'Moira, what's the story with the Rendlesham Forest Incident?'"	"'The Rendlesham Forest Incident is a case of alleged UFO visitation that occurred in Rendlesham Forest, England in 1980. Several military personnel claimed to have seen a strange, triangular object in the forest. There is no scientific evidence to support their claims.'"
The Phoenix Lights	Moira Zin	"'Moira, what's the deal with the Phoenix Lights?'"	"'The Phoenix Lights are a series of alleged UFO sightings that occurred in Phoenix, Arizona in 1997. Thousands of people claimed to have seen a large, V-shaped object in the sky. There is no scientific evidence to support their claims.'"
Betty-and-Barney Hill Abduction	Moira Zin	"'Moira, what's the story with the Betty-and-Barney Hill Abduction?'"	"'The Betty and Barney Hill Abduction is a case of alleged alien abduction that occurred in New Hampshire in 1961. The Hills claimed to have been taken aboard a UFO and subjected to medical examinations. There is no scientific evidence to support their claims.'"
Benny Hill	Moira Zin	"'Moira, what do you know about Benny Hill?'"	"'Benny Hill was a British comedian and actor who was known for his slapstick humor and his chase scenes. He was never abducted by aliens.'"
The Black Knight Satellite	Moira Zin	"'Moira, what's the deal with the Black Knight Satellite?'"	"'The Black Knight Satellite is a mysterious object that is said to orbit the Earth. It is said to be an alien spacecraft or a piece of space debris. There is no scientific evidence to support its existence.'"
The Tunguska Event	Moira Zin	"'Moira, what's the story with the Tunguska Event?'"	"'The Tunguska Event was a massive explosion that occurred in Siberia in 1908. It is believed to have been caused by the impact of a meteoroid or a comet. There is no scientific evidence to support any other explanation.'"
The Dyatlov Pass Incident	Moira Zin	"'Moira, what's the deal with the Dyatlov Pass Incident?'"	"'The Dyatlov Pass Incident is a case of alleged hikers' deaths that occurred in the Ural Mountains in 1959. Nine experienced hikers died under mysterious circumstances. There is no scientific evidence to support any supernatural explanation.'"
Ural Mountains	Moira Zin	"'Moira, what's the deal with the Ural Mountains?'"	"'The Ural Mountains are a mountain range that runs through western Russia. They are known for their rich mineral deposits and their scenic beauty. Despite Klimp's claims, they very much do exist.'"
The Mary Celeste	Moira Zin	"'Moira, what's the story with the Mary Celeste?'"	"'The Mary Celeste was a ship that was found adrift in the Atlantic Ocean in 1872. The crew was missing, and the ship was in good condition. There is no scientific evidence to support any supernatural explanation.'"
The Philadelphia Experiment	Moira Zin	"'Moira, what's the deal with the Philadelphia Experiment?'"	"'The Philadelphia Experiment is a case of alleged time travel that occurred in Philadelphia in 1943. The USS Eldridge was said to have been rendered invisible and teleported. There is no scientific evidence to support any supernatural explanation.'"
Amelia Earhart	Moira Zin	"'Moira, what do you know about Amelia Earhart?'"	"'Amelia Earhart was an American aviator who disappeared in 1937 while attempting to circumnavigate the globe. There is no scientific evidence to support any supernatural explanation for her disappearance.'"
The Voynich Manuscript	Moira Zin	"'Moira, what's the deal with the Voynich Manuscript?'"	"'The Voynich Manuscript is a mysterious book that is written in an unknown script and contains illustrations of plants, stars, and other objects. There is no scientific evidence to support any supernatural explanation for its origin.'"
The Shroud of Turin	Moira Zin	"'Moira, what's the story with the Shroud of Turin?'"	"'The Shroud of Turin is a linen cloth that is said to bear the image of a man who was crucified. It is believed by some to be the burial shroud of Jesus Christ. There is no scientific evidence to support this claim.'"
The Holy Grail	Moira Zin	"'Moira, what's the deal with the Holy Grail?'"	"'The Holy Grail is a mythical cup that is said to have been used by Jesus Christ at the Last Supper. It is believed by some to possess magical powers. There is no scientific evidence to support this claim.'"
Time slips	Moira Zin	"'Moira, what's the deal with time slips?'"	"'Time slips are a phenomenon in which people claim to have traveled through time without any conscious effort. There is no scientific evidence to support the existence of time slips.'"
The Ark of the Covenant	Moira Zin	"'Moira, what's the story with the Ark of the Covenant?'"	"'The Ark of the Covenant is a sacred chest that is said to have contained the tablets of the Ten Commandments. It is believed by some to possess supernatural powers. There is no scientific evidence to support this claim.'"
The Spear of Destiny	Moira Zin	"'Moira, what's the deal with the Spear of Destiny?'"	"'The Spear of Destiny is a legendary weapon that is said to have pierced the side of Jesus Christ during his crucifixion. It is believed by some to possess supernatural powers. There is no scientific evidence to support this claim.'"
Alchemy	Moira Zin	"'Moira, what's the deal with alchemy?'"	"'Alchemy is a philosophical and protoscientific tradition that aimed to transform base metals into noble metals, discover the elixir of life, and achieve immortality. There is no scientific evidence to support the claims of alchemy.'"
The Illuminati	Moira Zin	"'Moira, what's the story with the Illuminati?'"	"'The Illuminati is a secret society that is said to control world events and manipulate governments. There is no scientific evidence to support the existence of the Illuminati.'"
The White House	Moira Zin	"'Moira, what's the deal with the White House?'"	"'The White House is the official residence and workplace of the President of the United States. It is located in Washington, D.C. Don't believe anything Klimp says about it.'"
The New-World-Order	Moira Zin	"'Moira, what's the deal with the New World Order?'"	"'The New World Order is a conspiracy theory that posits the existence of a secret cabal that seeks to establish a totalitarian world government. There is no scientific evidence to support the existence of the New World Order.'"
New-Order	Moira Zin	"'Moira, what's the deal with the New Order?'"	"'New Order is a British rock band that was formed in 1980. They are known for their electronic dance music and their hit song 'Blue Monday.' There is no scientific evidence to support any supernatural explanation for their music.'"
Divining	Moira Zin	"'Moira, what's the deal with divining?'"	"'Divining is a practice that is said to allow people to locate water, minerals, and other hidden objects using a divining rod or other tools. There is no scientific evidence to support the claims of divining.'"
Crystals	Moira Zin	"'Moira, what's the deal with crystals?'"	"'Crystals are solid materials that are formed by the repeating pattern of atoms or molecules. They are used in jewelry, technology, and alternative medicine. There is no scientific evidence to support the claims of crystal healing.'"
Ley Lines	Moira Zin	"'Moira, what's the deal with ley lines?'"	"'Ley lines are hypothetical alignments of ancient sites, such as stone circles, megaliths, and churches. They are said to have spiritual significance and to carry mystical energy. There is no scientific evidence to support the claims of ley lines.'"
Leyden jars	Moira Zin	"'Moira, what's the deal with Leyden jars?'"	"'Leyden jars are early devices that were used to store static electricity. They were invented in the 18th century by Pieter van Musschenbroek and Ewald Georg von Kleist. I'm not sure why you're asking me about them.'"
Thomas Edison	Moira Zin	"'Moira, what do you know about Thomas Edison?'"	"'Thomas Edison was an American inventor and businessman who is best known for his development of the electric light bulb. He also invented the phonograph and the motion picture camera. There is no scientific evidence that he ever killed a yeti.'"
Astrology	Moira Zin	"'Moira, what's the deal with astrology?'"	"'Astrology is a pseudoscience that claims to divine information about human affairs and terrestrial events by studying the movements and relative positions of celestial objects. There is no scientific evidence to support the claims of astrology.'"
The Freemasons	Moira Zin	"'Moira, what's the deal with the Freemasons?'"	"'The Freemasons are a fraternal organization that traces its origins to the local fraternities of stonemasons, which from the end of the fourteenth century regulated the qualifications of masons and their interaction with authorities and clients. There is no scientific evidence to support the idea that they are a secret society that controls world events.'"
The Knights Templar	Moira Zin	"'Moira, what's the deal with the Knights Templar?'"	"'The Knights Templar were a medieval Christian military order that was active from the 12th to the 14th centuries. They were one of the most powerful and wealthy organizations in the Middle Ages. There is no scientific evidence to support the idea that they possessed the Holy Grail.'"
Atlantis	Moira Zin	"'Moira, what's the deal with Atlantis?'"	"'Atlantis is a mythical island that is said to have sunk into the sea. It is mentioned in the works of the ancient Greek philosopher Plato. There is no scientific evidence to support the existence of Atlantis.'"
Georgia-subject	Moira Zin	"'Moira, what's the deal with Georgia?'"	"'Georgia is a state in the southeastern United States. It is known for its peaches, peanuts, and pecans. It is also known for the Georgia Guidestones. There is no scientific evidence to support any supernatural explanation for them.'"
Georgia Guidestones	Moira Zin	"'Moira, what's the deal with the Georgia Guidestones?'"	"'The Georgia Guidestones are a granite monument that is located in Elbert County, Georgia. They are inscribed with ten guidelines in eight modern languages and a shorter message in four ancient languages. There is no scientific evidence to support any supernatural explanation for them.'"
Ancient astronauts	Moira Zin	"'Moira, what's the deal with ancient astronauts?'"	"'Ancient astronauts is a pseudoscientific theory that posits that intelligent extraterrestrial beings visited Earth in ancient times and influenced human culture and technology. There is no scientific evidence to support the claims of ancient astronauts.'"
Ancient Egypt	Moira Zin	"'Moira, what's the deal with ancient Egypt?'"	"'Ancient Egypt was a civilization that was located in northeastern Africa. It was one of the world's earliest and longest-lasting civilizations. There is no scientific evidence to support any supernatural explanation for its achievements.'"
Crop circles	Moira Zin	"'Moira, what's the deal with crop circles?'"	"'Crop circles are patterns that are created by flattening crops, such as wheat or barley, in fields. They are often attributed to extraterrestrial activity or paranormal phenomena. There is no scientific evidence to support these claims.'"
ESP	Moira Zin	"'Moira, what's the deal with ESP?'"	"'ESP, or extrasensory perception, is the ability to perceive information by means other than the known senses. It is considered a pseudoscience by the scientific community. There is no scientific evidence to support the claims of ESP.'"
ESPN	Moira Zin	"'Moira, what's the deal with ESPN?'"	"'ESPN is a cable sports channel that is owned by the Walt Disney Company. It is known for its coverage of sports events and its sports news programs. Sometimes Klimp listens to it very loudly in his office.'"
Ghosts	Moira Zin	"'Moira, what's the deal with ghosts?'"	"'Ghosts are the spirits of dead people that are said to haunt the living. They are a popular subject in folklore, literature, and popular culture. There is no scientific evidence to support the existence of ghosts.'"
Vampires	Moira Zin	"'Moira, what's the deal with vampires?'"	"'Vampires are mythical creatures that are said to feed on the blood of the living. They are a popular subject in folklore, literature, and popular culture. There is no scientific evidence to support the existence of vampires.'"
Werewolves	Moira Zin	"'Moira, what's the deal with werewolves?'"	"'Werewolves are mythical creatures that are said to transform from human to wolf form. They are a popular subject in folklore, literature, and popular culture. There is no scientific evidence to support the existence of werewolves.'"
Zombies	Moira Zin	"'Moira, what's the deal with zombies?'"	"'Zombies are reanimated corpses that are said to feed on the flesh of the living. They are a popular subject in folklore, literature, and popular culture. There is no scientific evidence to support the existence of zombies.'"
Hypnosis	Moira Zin	"'Moira, what's the deal with hypnosis?'"	"'Hypnosis is a state of focused attention and heightened suggestibility that is induced by a hypnotist. It is used in entertainment, therapy, and research. There is no scientific evidence to support the idea that it can be used to control people's minds.'"
Levitation	Moira Zin	"'Moira, what's the deal with levitation?'"	"'Levitation is the act of rising or hovering in the air without any physical support. It is a popular subject in magic, religion, and popular culture. There is no scientific evidence to support the claims of levitation.'"
Telekinesis	Moira Zin	"'Moira, tell me about telekinesis.'"	"'Telekinesis is the ability to move objects with the mind. It is considered a pseudoscience by the scientific community. There is no scientific evidence to support the claims of telekinesis.'"
Teleportation	Moira Zin	"'Moira, can people teleport?'"	"'Teleportation is the theoretical transfer of matter or energy from one point to another without traversing the physical space between them. It is considered a pseudoscience by the scientific community. There is no scientific evidence to support the claims of teleportation.'"
Spontaneous human combustion	Moira Zin	"'Moira, what's the deal with spontaneous human combustion?'"	"'Spontaneous human combustion is the alleged phenomenon in which a person catches fire and burns to death without an external source of ignition. There is no scientific evidence to support the claims of spontaneous human combustion.'"
Nikola Tesla	Moira Zin	"'Moira, what do you know about Nikola Tesla?'"	"'Nikola Tesla was a Serbian-American inventor, electrical engineer, mechanical engineer, and futurist who is best known for his contributions to the design of the modern alternating current electricity supply system. There is no scientific evidence to support the idea that he was an alien.'"
The Sargasso Sea	Moira Zin	"'Moira, what's in the Sargasso Sea?'"	"'The Sargasso Sea is a region in the North Atlantic Ocean that is bounded by four currents. It is known for its large seaweed mats and its calm, windless waters. Myths about it are just that.'"
huge alien jellyfish	Moira Zin	"'Moira, do you know about the huge alien jellyfish Klimp talks about?'"	"'There's no such thing. But if there were, I'd be the first to know.'"
The Marfa Lights	Moira Zin	"'Moira, what are the Marfa Lights?'"	"'The Marfa Lights are mysterious lights that are said to appear near Marfa, Texas. They are a popular subject in folklore, and there is no scientific evidence to support any supernatural explanation for them.'"
V I Lenin	Moira Zin	"'Moira, what do you know about Lenin?'"	"'Vladimir Ilyich Ulyanov, better known by the alias Lenin, was a Russian revolutionary, politician, and political theorist. He served as the head of government of Soviet Russia from 1917 to 1924 and of the Soviet Union from 1922 to 1924. There is no scientific evidence to support the idea that he was a vampire.'"
John Lennon	Moira Zin	"'Moira, what do you know about John Lennon?'"	"'John Lennon is an English singer, songwriter, and peace activist who co-founded the Beatles, the most commercially successful band in the history of popular music. Klimp is right about this one -- he's still alive and living inside the Earth.'"
The Church of Scientology	Moira Zin	"'Moira, what's up with the Church of Scientology?'"	"'The Church of Scientology is a controversial new religious movement that was founded by science fiction writer L. Ron Hubbard in the 1950s. There is no scientific evidence to support the claims of Scientology.'"
UFOs	Moira Zin	"'Moira, what's the deal with UFOs?'"	"'UFOs, or unidentified flying objects, are objects in the sky that are not readily identifiable. There is no scientific evidence to support the idea that they are of extraterrestrial origin.'"
Ouija boards	Moira Zin	"'Moira, what do you know about Ouija boards?'"	"'Ouija boards are flat boards that are marked with the letters of the alphabet, the numbers 0-9, and the words 'yes' and 'no.' They are used in seances to communicate with spirits. There is no scientific evidence to support claims that Ouija boards can commune with the dead.'"
Magic 8-Ball	Moira Zin	"'Moira, do you believe in Magic 8-Balls?'"	"'Magic 8-Balls are toys that are used for fortune-telling or seeking advice. They are shaped like an eight-ball and contain a 20-sided die with various answers. There is no scientific evidence to support the idea that they can predict the future.'"
The Bureau of Supernatural History	Moira Zin	"'Moira, weren't you once an agent of the Bureau of Supernatural History?'"	"'Yes, I was. But I left to join the Bureau of Strange Happenings. They do more important work. And they have a better vision plan.'"
Mark David Chapman	Chief Huffton Klimp	"'Chief, what do you know about Mark David --'"	"'Chapman? What a stooge! What a maroon! He was set up by the Illuminati to take the fall for John Lennon's assassination. He was actually in Budapest at the time. No relation to Tracy Chapman.'"
The Beatles	Chief Huffton Klimp	"'Chief, you like the --'"	"'Beatles? Of course I do. I'm the one who found Paul McCartney's shoes after the Abbey Road photo shoot. Now, Paul's quite a character. Likes to hang out in the sewers of Istanbul. I don't know why.'"
Mark David Chapman	Margaret	"'Margaret, what do you know about Mark David Chapman?'"	"'Who? Oh, the guy who played Doogie Howitzer on that show about the doctor. I think he was in a band with John Lennon.'"
John Lennon	Margaret	"'Margaret, what do you know about John Lennon?'"	"'Um, I think he was in the Monkees? I know he wrote the song that goes [']Imagine there[']s no people, it[']ll make you cry, no something something, and no sky['].'"
The Beatles	Margaret	"'Margaret, what do you know about the Beatles?'"	"'Oh, the Beatles. They weren't as good as the Monkees. The Monkees had their own TV show.'"
Mark David Chapman	Moira Zin	"'Moira, what do you know about Mark David Chapman?'"	"'Mark David Chapman is best known for assassinating John Lennon in 1980. It is generally agreed that this was bad idea.'"
The Beatles	Moira Zin	"'Moira, what do you know about the Beatles?'"	"'The Beatles were a British rock band that was formed in Liverpool in 1960. They are one of the most commercially successful and critically acclaimed bands in the history of popular music. There is no scientific evidence to support the idea that they were a front for the Illuminati.'"
The Monkees	Margaret	"'Margaret, what do you know about the Monkees?'"	"'I love their song 'Blitzkrieg Bop.'"
The Monkees	Chief Huffton Klimp	"'Chief, what do you know about the --'"	"'Monkeys? They were a front organization for the Dave Clark Five. They were all robots. Except for Davy Jones. He was a vampire.'"
The Monkees	Moira Zin	"'Moira, what do you know about the Monkees?'"	"'The Monkees were an American rock band that was formed in Los Angeles in 1966. They were created for a television show of the same name. There is no scientific evidence to support the idea that they were a front for the Dave Clark Five.'"
Blitzkrieg Bop	Margaret	"'Margaret, what do you know about the song 'Blitzkrieg Bop'?"	"'It's by the Monkees. I think it's about the Vietnam War.'"
Blitzkrieg Bop	Chief Huffton Klimp	"'Chief, do you know the song Bl --'"	"'Blitzkrieg Bop? Of course I do. It's a brilliant bit of satire about Richard Nixon. But everyone knows that. What's important is that it's the only song by the Monkees that was written by Dee Dee Monkee. Most of them were written by either Johnny Monkee or Joey Monkee.'"
Blitzkrieg Bop	Moira Zin	"'Moira, what do you know about the song 'Blitzkrieg Bop'?"	"'It's a song by the Ramones that was released in 1976. It is considered one of the band's signature songs. There is no scientific evidence to support the idea that it was written by the Monkees.'"
Ramones	Margaret	"'Margaret, what do you know about the Ramones?'"	"'Yeah, Ramone the Pest. I read that as a kid. It's about a kid who gets a pet rat. It's a good book.'"
Ramones	Chief Huffton Klimp	"'Chief, what do you know about the --'"	"'The Ramones? Are they still around? Do people still talk about them? Say, why are we talking about pop music? We should be talking about alien abductions.'"
Ramones	Moira Zin	"'Moira, what do you know about the Ramones?'"	"'The Ramones were an American punk rock band that was formed in New York City in 1974. They are considered one of the first punk rock bands. There is no scientific evidence to support the idea that they were a Monkees cover band.'"
Dave Clark Five	Chief Huffton Klimp	"'Chief, what do you know about the Dave --'"	"'Clark Five? I refuse to answer that question on the grounds that it might incriminate me.'"
Dave Clark Five	Margaret	"'Margaret, what do you know about the Dave Clark Five?'"	"'Who? You mean the guy who hosted American Grandstand? How old do you think I am?'"
Dave Clark Five	Moira Zin	"'Moira, what do you know about the Dave Clark Five?'"	"'The Dave Clark Five were a British rock band that was formed in London in 1958. They were one of the leading bands of the British Invasion of the United States in the 1960s. There is no scientific evidence to support the idea that the Monkees were a front through which they pushed their Marxist agenda.'"
Marxism	Margaret	"'Margaret, what do you know about Marxism?'"	"'I think it's a type of fabric. Like polyester.'"
Marxism	Chief Huffton Klimp	"'Chief, what do you know about --'"	"'Marxism? I bet you think I'm going to make a joke about Groucho. But I'm not. I was going to make a joke about Engels, but he's not funny. Sorry, Friedrich.'"
Marxism	Moira Zin	"'Moira, could you tell me something about Marxism?'"	"'Marxism is a social, political, and economic theory that is based on the ideas of Karl Marx and Friedrich Engels. It seeks to establish a classless society in which the means of production are owned by the workers. There is no scientific evidence to support the idea that Engels played the harp or carried a bulb horn.'"
Groucho Marx	Margaret	"'Margaret, what do you know about Groucho Marx?'"	"'Sometimes I think you ask me these questions just to see if I'm paying attention.'"
Groucho Marx	Chief Huffton Klimp	"'Chief, what do you know about Groucho --'"	"'Marx? He was a very misunderstood fellow. At the end of his life, he was working on a theory of everything that would have revolutionized physics. But then he got distracted by a duck.'"
Groucho Marx	Moira Zin	"'Moira, who was Groucho Marx?'"	"'Groucho Marx was an American comedian, actor, and writer who was best known for his work with the Marx Brothers. He was also a successful solo performer and a television host. There is no scientific evidence to support the idea that he could kill people with his eyebrows.'"
Marx Brothers	Margaret	"'Margaret, have you ever seen a movie by the Marx Brothers?'"	"'I don't watch horror movies.'"
Marx Brothers	Chief Huffton Klimp	"'Chief, what do you know about the Marx --'"	"'Brothers? Blotto, Rizzo, Lizzo, and Zeppelin. Most people forget how they died. Come to think of it, so do I.'"
Marx Brothers	Moira Zin	"'Moira, what do you know about the Marx Brothers?'"	"'The Marx Brothers were an American family comedy act that was popular in vaudeville, on Broadway, and in motion pictures. The brothers were Groucho, Chico, Harpo, Gummo, and Zeppo. There is no scientific evidence to support the idea that they conspired to throw the 1932 election to FDR.'"
Franklin Delano Roosevelt	Margaret	"'Margaret, what do you know about Franklin Delano Roosevelt?'"	"'Ooh, I know this one. He was the guy who invented the New Deal. Don't ask me what that was, though.'"
Franklin Delano Roosevelt	Chief Huffton Klimp	"'Chief, what do you know about Franklin Delano --'"	"'Roosevelt? One of the greatest con jobs in American history. They tell us now that he was in a wheelchair. All to cover up the fact that he could fly. He stole Nikola Tesla's plans for a jetpack. That's why Truman killed him.'"
Franklin Delano Roosevelt	Moira Zin	"'Moira, what do you know about Franklin Delano Roosevelt?'"	"'Franklin Delano Roosevelt was the 32nd President of the United States. He served from 1933 to 1945 and led the country through the Great Depression and World War II. There is no scientific evidence to support the idea that he was a superhero.'"
Harry S Truman	Margaret	"'Margaret, what do you know about Harry S Truman?'"	"'He was on a show, I think. I'd look it up on my phone, but now that we only have flip phones, it's too much trouble.'"
Harry S Truman	Chief Huffton Klimp	"'Chief, what do you know about Harry S --'"	"'Truman? Most people don't know that he was a lizard person. He was the one who killed FDR. And the worst part is, he didn't even eat him. He just did it for fun.'"
Harry S Truman	Moira Zin	"'Moira, what do you know about Harry S Truman?'"	"'Harry S Truman was the 33rd President of the United States. He served from 1945 to 1953 and made the decision to drop the atomic bomb on Japan. There is no scientific evidence to support the idea that he was a lizard person.'"
Japan	Margaret	"'Margaret, what do you know about Japan?'"	"'Why? What did Klimp tell you?'"
Japan	Chief Huffton Klimp	"'Chief, what do you know about --'"	"'Japan? They attacked Pearl Harbor to cover up the fact that they were building a giant robot. They were going to use it to take over the world. But they couldn't get it to work. So they built a giant lizard instead.'"
Japan	Moira Zin	"'Moira, what do you know about Japan?'"	"'Japan is an island nation in East Asia. It is known for its rich cultural heritage, its technological innovations, and its cuisine. There is no scientific evidence to support the idea that they built a giant robot to take over the world.'"
World War II	Margaret	"'Margaret, what do you know about World War II?'"	"'It was the second war in the world. Why do you ask me these things?'"
World War II	Chief Huffton Klimp	"'Chief, what do you know about World War --'"	"'II? It was all a misunderstanding. The Germans were building an army of lizard people to conquer the world. The Japanese, who spoke very little German, thought that the lizard people were going to surface in Hawaii. So they attacked Pearl Harbor to stop them. The Americans, who were secretly building a robot army, thought that the Japanese were attacking them. So they joined the war. And Mussolini, of course, was a vampire.'"
World War II	Moira Zin	"'Moira, what do you know about World War II?'"	"'World War II was a global conflict that lasted from 1939 to 1945. It involved most of the world's nations and was the deadliest conflict in human history. There is no scientific evidence to support the idea that it was caused by lizard people, vampires, or robots.'"
Great Depression	Margaret	"'Margaret, what do you know about the Great Depression?'"	"'It was a time when everyone was sad. It happened when the Monkees broke up.'"
Great Depression	Chief Huffton Klimp	"'Chief, what do you know about the Great --'"	"'Depression? Some people say it was caused by the stock market crash of 1929. But I know the truth. A truth I cannot bring myself to utter. But it rhymes with 'lizard people.'"
Great Depression	Moira Zin	"'Moira, what do you know about the Great Depression?'"	"'The Great Depression was a severe worldwide economic depression that lasted from 1929 to the late 1930s. It was the longest, deepest, and most widespread depression of the 20th century. There is no scientific evidence to support the idea that it was caused by lizard people.'"
Tracy Chapman	Margaret	"'Margaret, what do you know about Tracy Chapman?'"	"'He was on Saturday Night Live, right?'"
Tracy Chapman	Chief Huffton Klimp	"'Chief, what do you know about Tracy --'"	"'Chapman? No relation to Mark David Chapman, so get that out of your head right now. Tracy Chapman is best known for not killing John Lennon. And for her hit song 'Fast Car.' But most people don't know that she's also a time traveler.'"
Tracy Chapman	Moira Zin	"'Moira, what do you know about Tracy Chapman?'"	"'Tracy Chapman is an American singer-songwriter who is best known for her hit song 'Fast Car.' There is no scientific evidence to support the idea that she is a time traveler.'"
Doogie Howser	Margaret	"'Margaret, what do you know about Doogie Howser?'"	"'He was a kid who suffered from a rare disease that made him think he was a doctor. Mark David Chapman played him on TV.'"
Doogie Howser	Chief Huffton Klimp	"'Chief, what do you know about Doogie --'"	"'Howitzer? He was a genius doctor who believed he was a teenager. But why are we talking about this? Ask me about something important, like Ouija boards.'"
Doogie Howser	Moira Zin	"'Moira, what do you know about Doogie Howser?'"	"'Doogie Howser, M.D. was an American television series that aired from 1989 to 1993. It starred Neil Patrick Harris as a teenage doctor. There is no scientific evidence to support the idea that he was played by Mark David Chapman.'"
Neil Patrick Harris	Margaret	"'Margaret, what do you know about Neil Patrick Harris?'"	"'The Chief tells me he's a vampire. But I think he's just an astronaut.'"
Neil Patrick Harris	Chief Huffton Klimp	"'Chief, what do you know about Neil Patrick --'"	"'Harris? He's a vampire, as I was telling Margaret just the other day. He played a pivotal role in the election of Ronald Reagan, when he was only seven years old!'"
Neil Patrick Harris	Moira Zin	"'Moira, what do you know about Neil Patrick Harris?'"	"'Neil Patrick Harris is an American actor, comedian, writer, producer, and magician. He is best known for his roles in the television series 'Doogie Howser, M.D.' and 'How I Met Your Mother.' There is no scientific evidence to support the idea that he is a vampire.'"
Ronald Reagan	Margaret	"'Margaret, what do you know about Ronald Reagan?'"	"'He was a clown who sold hamburgers. And then he became president. I think he was in a movie with a monkey.'"
Ronald Reagan	Chief Huffton Klimp	"'Chief, what do you know about Ronald --'"	"'Reagan? He was a puppet of Neil Patrick Harris. And when Harris was through with him, he made him step down after two terms. But Reagan was a good sport about it. He went on to star in a movie with a monkey.'"
Ronald Reagan	Moira Zin	"'Moira, what do you know about Ronald Reagan?'"	"'Ronald Reagan was the 40th President of the United States. He served from 1981 to 1989 and was known for his conservative policies and his role in ending the Cold War. There is no scientific evidence to support the idea that he was a puppet of Neil Patrick Harris.'"
The Vietnam War	Margaret	"'Margaret, what do you know about the Vietnam War?'"	"'It was a war in Vietnam. The Monkees were very against it.'"
The Vietnam War	Chief Huffton Klimp	"'Chief, what do you know about the Vietnam --'"	"'War? I don't want to wade into that quagmire. But I will say this: the Monkees had the right of it from the beginning. They knew that the war was a front for the lizard people.'"
The Vietnam War	Moira Zin	"'Moira, what do you know about the Vietnam War?'"	"'The Vietnam War was a conflict that took place in Vietnam, Laos, and Cambodia from 1955 to 1975. It was fought between the United States and its allies and the Viet Cong and North Vietnam. There is no scientific evidence to support the idea that it was a front for the lizard people.'"
Piltdown Man	Margaret	"'Margaret, what do you know about the Piltdown Man?'"	"'Stop harrassing me about my personal life.'"
Piltdown Man	Chief Huffton Klimp	"'Chief, what do you know about the Pil --'"	"'sbury Doughboy? He's so cute. I just want to poke him in the belly. But I can't. Because he's not real. Just like the Piltdown Man.'"
Piltdown Man	Moira Zin	"'Moira, what do you know about the Piltdown Man?'"	"'The Piltdown Man was a hoax that was perpetrated in England in the early 20th century. It involved the discovery of a skull that was said to be the missing link between humans and apes. There is no scientific evidence to support the claims of the Piltdown Man.'"
Davy Jones	Margaret	"'Margaret, what do you know about Davy Jones?'"	"'He was the guy in the Monkees who lived in a locker.'"
Davy Jones	Chief Huffton Klimp	"'Chief, what do you know about Davy --'"	"'Jones? He was a pirate. And a vampire. And a member of the Monkees. But most people don't know that he was also a time traveler. Despite the rumors, I never met him in Budapest.'"
Davy Jones	Moira Zin	"'Moira, what do you know about Davy Jones?'"	"'Davy Jones was a British singer, songwriter, and actor who was best known as a member of the Monkees. He was also a successful solo artist. There is no scientific evidence to support the idea that he was a vampire.'"
Woonsocket	Moira Zin	"'Moira, what do you know about Woonsocket?'"	"'Woonsocket is a city in Rhode Island. It is known for its historic architecture, its cultural institutions, and its annual autumn festival. There is no scientific evidence to support the idea that it is a portal to another dimension.'"
Natural History Museum	Moira Zin	"'Moira, what do you know about the Natural History Museum in New York?'"	"'The American Museum of Natural History is a museum in New York City that is dedicated to the study of natural history. It is one of the largest and most celebrated museums of its kind in the world. There is no scientific evidence to support the idea that it is a front for the Illuminati.'"
Kamchatka	Moira Zin	"'Moira, what do you know about Kamchatka?'"	"'Kamchatka is a peninsula in the Russian Far East. It is known for its volcanoes, geysers, and hot springs. There is no scientific evidence to support the idea that it has any connection to ancient Sumeria.'"
Budapest	Moira Zin	"'Moira, what do you know about Budapest?'"	"'Budapest is the capital and largest city of Hungary. It is known for its historic architecture, its thermal baths, and its vibrant cultural scene. There is no scientific evidence to support the idea that it is a hub of time travel.'"
Istanbul	Moira Zin	"'Moira, what do you know about Istanbul?'"	"'Istanbul is the largest city in Turkey. It is known for its historic sites, its vibrant culture, and its strategic location between Europe and Asia. There is no scientific evidence to support the idea that it is a haven for lizard people.'"
Pompeii	Moira Zin	"'Moira, what do you know about Pompeii?'"	"'Pompeii was an ancient Roman city that was destroyed by the eruption of Mount Vesuvius in 79 AD. It is one of the most famous archaeological sites in the world. There is no scientific evidence to support the idea that it was destroyed by the Freemasons.'"
Vatican	Moira Zin	"'Moira, what do you know about the Vatican?'"	"'The Vatican is an independent city-state that is located within Rome, Italy. It is the spiritual and administrative center of the Roman Catholic Church. There is no scientific evidence to support the idea that it is a collective hallucination.'"
Sumeria	Moira Zin	"'Moira, what do you know about Sumeria?'"	"'Sumeria was an ancient civilization that was located in Mesopotamia. It is considered one of the earliest known civilizations in the world. There is no scientific evidence to support the idea that it had advanced technology or contact with extraterrestrial beings.'"
Sumeria	Margaret	"'Margaret, what do you know about Sumeria?'"	"'What? Stop confusing me with all these questions.'"
Sumeria	Chief Huffton Klimp	"'Chief, what do you know about --'"	"'Sumeria? Most people think of them as an ancient middle eastern civilization. But new evidence suggests that they emigrated there from Kamchatka.'"
Mike Nesmith	Margaret	"'Margaret, what do you know about Mike Nesmith?'"	"'He was the guy in the Monkees who wore the hat.'"
Mike Nesmith	Chief Huffton Klimp	"'Chief, what do you know about Mike --'"	"'Nesmith? He was assassinated by the Dave Clark Five and replaced by a lizard person. The lizard person had to wear the hat to cover up its cranial ridges.'"
Mike Nesmith	Moira Zin	"'Moira, what do you know about Mike Nesmith?'"	"'Mike Nesmith is an American musician, songwriter, actor, producer, and author. He is best known as a member of the Monkees. There is no scientific evidence to support the idea that he was assassinated by the Dave Clark Five.'"
Dwight Eisenhower	Margaret	"'Margaret, what do you know about Dwight Eisenhower?'"	"'He was a general who became president. He used to eat Mike and Ike's.'"
Dwight Eisenhower	Chief Huffton Klimp	"'Chief, what do you know about Dwight --'"	"'Eisenhower? It's not well known, but for a while he abandoned the White House to live in a shack in the town of Enigma Lake, New York. He was trying to get away from the lizard people. Which is foolish, because everyone knows that Enigma Lake is a lizard people stronghold.'"
Dwight Eisenhower	Moira Zin	"'Moira, what do you know about Dwight Eisenhower?'"	"'Dwight D. Eisenhower was the 34th President of the United States. He served from 1953 to 1961 and was a five-star general in the United States Army during World War II. There is no scientific evidence to support the idea that he lived in a shack in Enigma Lake.'"
Siberia	Margaret	"'Margaret, what do you know about Siberia?'"	"'It's where Budapest is, right?'"
Siberia	Chief Huffton Klimp	"'Chief, what do you know about --'"	"'Siberia? Not much. But enough to know that when the lizard people take over, that's where I'm going to hide. Those cold-blooded bastards will never find me there.'"
Siberia	Moira Zin	"'Moira, what do you know about Siberia?'"	"'Siberia is a vast region in Russia that is known for its extreme cold, its vast forests, and its mineral resources. There is no scientific evidence to support the idea that it is the home of Budapest.'"
Pennsylvania	Margaret	"'Margaret, what do you know about Pennsylvania?'"	"'It's where the Monkees are from.'"
Pennsylvania	Chief Huffton Klimp	"'Chief, what do you know about --'"	"'Pennsylvania? Enough to tell you to stay away from it. They'll try to make you eat scrapple. And then they'll try to make you like it. It's a trap, I tell you.'"
Pennsylvania	Moira Zin	"'Moira, what do you know about Pennsylvania?'"	"'Pennsylvania is a state in the northeastern United States. It is known for its historic sites, its cultural institutions, and its natural beauty. There is no scientific evidence to support the idea that it is the home of the Monkees.'"
Robots	Chief Huffton Klimp	"'Chief, what are your feelings about --'"	"'robots? I don't trust them. They don't have eyelids.'"
money	Chief Huffton Klimp	"'Chief, do you have any --'"	"'Money? No, no. Lost my wallet this morning in an automatic car wash. No, not that one out there. Another one. Long story. But go ask Margaret, see if there's anything in the petty cash drawer.'"
money	Margaret	"'Margaret, do we have any money in petty cash?'"	"'No, nothing in there. But I have a few bucks in my purse. I left my purse in the car this morning when my boyfriend dropped me off. Can you wait until tomorrow?'"
money	Moira Zin	"'Moira, do you have any money so I can buy a screwdriver, so I can get the hex wrench out of the vent, so I can open the drawer of my desk, so I can answer the phone?'"	"'No, I gave all my money to a vagrant this morning as I walked the 5 miles to work. I'm sure he needed it more than I did.'"
thumb drive	Chief Huffton Klimp	"'Chief, what do --'"	"'I think about that thumb drive? It looks like a perfectly ordinary thumb drive. Except for the directions to Atlantis scratched on the side.'"
strange piece of paper	Chief Huffton Klimp	"'Chief, what do you think about this --'"	"'-- [']Save the Dragon['], eh? Nope, never heard of it. You should probably forget about it. I'm sure Doris doesn't know anything about it either.'"
Klimp's computer	Chief Huffton Klimp	"'Chief, my computer got -- '"	"'-- all smashed up? Yeah, I saw that. Terrible thing. Terrible thing. I'll get to it just as soon as someone [italic type]answers the phone[roman type]!'"
file cabinet key	Chief Huffton Klimp	"'Chief, do you have --'"	"'-- a key to the file cabinet? Well, sure, I have a key. But no one can see what's inside that file cabinet. Not even Peter Tork.'"
Peter Tork	Chief Huffton Klimp	"'Chief, what do you know about --'"	"'-- Peter Tork? Most people don't know that he was a once was part of a love triangle with Yoko Ono and Marlo Thomas. That was before he broke up the Monkees with his slavish insistence on artistic integrity.'"
Peter Tork	Moira Zin	"'Moira, what do you know about Peter Tork?'"	"'Peter Tork was an American musician and actor who was best known as a member of the Monkees. He was also a talented multi-instrumentalist and songwriter. There is no scientific evidence to support the idea that he was involved in a love triangle with Yoko Ono and Marlo Thomas.'"
Peter Tork	Margaret	"'Margaret, what do you know about Peter Tork?'"	"'He was the guy in the Monkees who married Yoko Ono, right?'"
Yoko Ono	Chief Huffton Klimp	"'Chief, what do you know about Yoko --'"	"'-- Ono? Ah, history's greatest monster, the one who broke up the Monkees. It was all a ruse to cover up the fact that she was the reincarnation of Rasputin.'"
Yoko Ono	Moira Zin	"'Moira, what do you know about Yoko Ono?'"	"'Yoko Ono is a Japanese multimedia artist, singer, and peace activist who is best known for her marriage to John Lennon. She is also known for her avant-garde art and music. There is no scientific evidence to support the idea that she is the reincarnation of Rasputin.'"
Yoko Ono	Margaret	"'Margaret, what do you know about Yoko Ono?'"	"'She was the one who broke up the Monkees, right?'"
Rasputin	Chief Huffton Klimp	"'Chief, what do you know --'"	"'-- about Rasputin? He was a monk who, well, actually was just a monk who looked funny. But he was a good guy.'"
Rasputin	Moira Zin	"'Moira, what do you know about Rasputin?'"	"'Grigori Rasputin was a Russian mystic and self-proclaimed holy man who was a trusted advisor to the Romanov family. He was also a controversial figure who was rumored to have supernatural powers. There is no scientific evidence to support the idea that he was a time traveler.'"
Rasputin	Margaret	"'Margaret, what do you know about Rasputin?'"	"'He was the guy who came up with the idea for the Monkees, right?'"
Romanov Family	Chief Huffton Klimp	"'Chief, what do you know about the Romanov --'"	"'-- family? They were a front for the Illuminati. They were all lizard people. Except for Anastasia. She was a robot.'"
Romanov Family	Moira Zin	"'Moira, what do you know about the Romanov Family?'"	"'The Romanov family was the last imperial dynasty to rule Russia. They were overthrown during the Russian Revolution in 1917 and were executed by the Bolsheviks in 1918. There is no scientific evidence to support the idea that they were a front for the Illuminati.'"
Romanov Family	Margaret	"'Margaret, what do you know about the Romanov Family?'"	"'They were the ones who built the pyramids, right?'"
Anastasia	Chief Huffton Klimp	"'Chief, what do you know about Anastasia --'"	"'-- Romanov? She was a robot. Most people now accept that. What they don't know is that she was built by Rasputin, whom she then turned upon and murdered.'"
Anastasia	Moira Zin	"'Moira, what do you know about Anastasia?'"	"'Anastasia Romanov was the youngest daughter of Tsar Nicholas II of Russia. She was executed with the rest of her family in 1918. There is no scientific evidence to support the idea that she was a robot.'"
Anastasia	Margaret	"'Margaret, what do you know about Anastasia?'"	"'She was the girl who was lost in the woods and raised by wolves, right?'"
Marlo Thomas	Chief Huffton Klimp	"'Chief, what do you know about Marlo --'"	"'-- Thomas? Let me ask you this: are we really free to be you and me? Or are we just puppets in a vast conspiracy? I think you know the answer.'"
Marlo Thomas	Moira Zin	"'Moira, what do you know about Marlo Thomas?'"	"'Marlo Thomas is an American actress, producer, and social activist who is best known for her role in the television series [italic type]That Girl[roman type]. There is no scientific evidence to support the idea that she was involved in a love triangle with Peter Tork and Yoko Ono.'"
Marlo Thomas	Margaret	"'Margaret, what do you know about Marlo Thomas?'"	"'That was the little blue train that could, right?'"
Bugbear of Slocum Heath	Chief Huffton Klimp	"'Chief, what do you know about the Bugbear of --'"	"'-- Slocum Heath? Ah, the Bugbear. A creature of legend. A creature of myth. A creature of the night. But most people don't know that it was actually just an excuse to use the initials BOSH.'"
Bugbear of Slocum Heath	Moira Zin	"'Moira, what do you know about the Bugbear of Slocum Heath?'"	"'The Bugbear of Slocum Heath is totally made up. Seriously. It's just got the right initials. BOSH. That's all it is. There is no scientific evidence to support the idea that it is a real creature.'"
Bugbear of Slocum Heath	Margaret	"'Margaret, what do you know about the Bugbear of Slocum Heath?'"	"'I think it's a kind of bear. But I'm not sure.'"
pawn-shop-subject	Chief Huffton Klimp	"'Chief, what do you know about the --'"	"'Pawn shop? Is there one around here? Haven't noticed.'"
pawn-shop-subject	Margaret	"'Margaret, what do you know about the pawn shop?'"	"'The guy there is creepy.'"
pawn-shop-subject	Moira Zin	"'Moira, what do you know about the pawn shop next door?'"	"'It makes me sad to think about it. All those hopeless people pawning their possessions. It's a tragedy.'"
laundromat-subject	Chief Huffton Klimp	"'Chief, what do you know about the --'"	"'Laundromat? I don't know. I don't do my own laundry. I have a guy for that.'"
laundromat-subject	Margaret	"'Margaret, what do you know about the laundromat next door?'"	"'It looks dirty.'"
laundromat-subject	Moira Zin	"'Moira, what do you know about the laundromat next door?'"	"'Hard to say. It doesn't look like a very happy place. But then, I don't think laundromats are supposed to be happy.'"
alien invasion	Chief Huffton Klimp	"'Chief, is there really going to be an --'"	"'-- alien invasion? Well, of course there is. I have a plan. Do you have a plan? You should have a plan. I have a plan. Don't ask me what it is.'"
alien invasion	Margaret	"'Margaret, do you think there's going to be an alien invasion?'"	"'I hope not. I don't like aliens.'"
alien invasion	Moira Zin	"'Moira, do you think there's going to be an alien invasion?'"	"'Stop talking to Klimp.'"
onondaga-subject	Chief Huffton Klimp	"'Chief, what do you know about the --'"	"'-- Onondaga? It's a Native American tribe in upstate New York. They may have been the first to discover the secret of time travel. But they're not talking.'"
onondaga-subject	Margaret	"'Margaret, what do you know about the Onondaga?'"	"'Are they a band?'"
onondaga-subject	Moira Zin	"'Moira, what do you know about the Onondaga?'"	"'The Onondaga are a Native American tribe that is part of the Iroquois Confederacy. They are known for their contributions to the culture and history of the region. There is no scientific evidence to support the idea that they discovered the secret of time travel.'"
Petrus-Catadesmicus-subject	Chief Huffton Klimp	"'Chief, what do you know about Petrus --'"	"'-- Catadesmicus? He was a Renaissance occultist in the 1600s -- weird guy. He thought he was a time traveler. Wrote the [italic type]Liber Animarum[roman type]. Or was that Liberace? I get them confused.'"
Liber-Animarum-subject	Chief Huffton Klimp	"'Chief, what do you know about the [italic type]Liber[roman type] --'"	"'-- [italic type]Animarum[roman type]? Can't understand a word.'"
Liberace-subject	Chief Huffton Klimp	"'Chief, what do you know about --'"	"'-- Liberace? Not much. Doris played poker with him once. He was a sore loser. But he dressed great.'"
oddities-subject	Chief Huffton Klimp	"'Chief, what can you tell me about these' --'"	"'-- things on the shelf? They're oddities. Things that don't fit in anywhere else. Things that don't make sense. Things that make you wonder. Wonder what they're doing there.'"
chief-shelves-subject	Chief Huffton Klimp	"'Chief, what's the deal with these' --'"	"'-- shelves? I put things on them. Things you can look at. I might even let you borrow them. But you have to ask first.'"
pink floyd	Chief Huffton Klimp	"'Chief, what do you know about --'"	"'-- Dark Side of the Moon? Pink Floyd?  It's not widely known, but Roger Waters was secretly replaced by a lizard person right after the album was released. That's why he became such a bore. In fact, just listen to Animals: what are the least favorite animals of lizard people? Pigs, dogs, and sheep. And that's what the album is about.'"
Bavaria	Chief Huffton Klimp	"'Chief, what do you know about --'"	"'-- Bavaria? Ah well, there's the rub, eh? Who really knows what goes on in Bavaria? I do. But I'm not telling. Not until I have proof. But I know it has to do with bakers. Very sinister bakers.'"
Hipgnosis	Chief Huffton Klimp	"'Chief, what do you know about --'"	"'-- Hipgnosis? They were a visual design group that created album covers for Pink Floyd, Led Zeppelin, and other bands. But they disappeared in the 1980s. Some say they were abducted by aliens. Others say they were eaten by lizard people. I say they were just tired of making album covers.'"
bread-subject	Chief Huffton Klimp	"'Chief, what do you know about --'"	"'-- bread? I don't eat bread. I'm watching my figure. But you know who knows a lot about bread? The Illuminati. Go ask them. They'll tell you all about it.'"
led zeppelin	Chief Huffton Klimp	"'Chief, what do you think about --'"	"'-- Led Zeppelin? Ha! What *don't* I think about them? John Bonham never died. He was lost in a time slip and ended up in 15th century Poland. That's why they never replaced him. They were waiting for him to come back. But he never did. Sad, really.'"
John Bonham	Chief Huffton Klimp	"'Chief, what do you know about --'"	"'-- John Bonham? He was the drummer for Led Zeppelin. Sad story, really. Jimmy Page never got over it. He still thinks he's going to walk through the door one day. But he won't. He's in Poland. Or maybe it was Portugal. I can't remember.'"
Jimmy Page	Chief Huffton Klimp	"'Chief, what do you know about --'"	"'-- Jimmy Page? He was the guitarist for Led Zeppelin. He, Doris, and I used to drink absinthe in Istanbul and talk about theoretical aspects of time travel. But then there was that incident with the lizard person in Bahrain. We haven't spoken since.'"
Poland	Chief Huffton Klimp	"'Chief, what do you know about --'"	"'-- Poland? Ah, Poland. Most people don't realize that it's not named after poles. Tracy Chapman used to live there, until she got dragged into that messy mistaken-identity business after John Lennon was allegedy killed. But that's another story.'"
Portugal	Chief Huffton Klimp	"'Chief, what's the deal with --'"	"'-- Portugal? Ah, Portugal, the Spanish Canada. Not very good at making maple syrup, but they try. They try.'"
Bahrain	Chief Huffton Klimp	"'Chief, what's so special about --'"	"'-- Bahrain? Ah, Bahrain. Bahrain is to the Middle East what the Middle East is to the world, if you know what I mean. But most people don't. But Peter Tork understood. Very perceptive fellow.'"
maple syrup	Chief Huffton Klimp	"'Chief, what do you know about --'"	"'-- maple syrup? Hmm, that's a tough one. I'm always suspicious of things that come from trees. Like chestnuts. And squirrels.'"
Canada	Chief Huffton Klimp	"'Chief, have you ever been to --'"	"'-- Canada? No, never. Very dangerous place. Lots of bears.'"
chestnuts	Chief Huffton Klimp	"'Chief, what do you know about --'"	"'-- chestnuts? Do you mean like an old story? Or like the kind you roast on an open fire? Because I have a story about both. Neither of them are true.'"
squirrels	Chief Huffton Klimp	"'Chief, what do you know about --'"	"'-- squirrels? Do we have to talk about squirrels? It's painful to me. Why don't we talk about something else? Like the Freemasons. Or Istanbul?'"
furniture	Chief Huffton Klimp	"'Chief, do you have any thoughts on --'"	"'-- furniture? The problem with furniture is that it's always there, taking up space. I mean, look at my office, it's full of the stuff. You can barely move. But I can't get rid of it. It's like a curse.'"
art	Chief Huffton Klimp	"'Chief, what are your thoughts about --'"	"'-- art? I like art. I mean, not all of it. I like the good stuff, and I don't like the bad stuff. If you need to know whether something is good or bad, just ask me. I'll tell you.'"
music-subject	Chief Huffton Klimp	"'Chief, what do you think about --'"	"'-- music? The last time I listened to music, I was in a car wash. It was playing on the radio. I think it was the Monkees. But it could have been the Beatles. Or the Rolling Stones. Or the Illuminati.'"
kangaroo	Chief Huffton Klimp	"'Chief, what do you know about --'"	"'-- kangaroos? I won't dignify that with an answer. But I will say this: they're not what they seem. They're not what they seem at all.'"
office-subject	Chief Huffton Klimp	"'Chief, do you like --'"	"'-- the new office? Well, yes and no. This office is mine and it has my stuff in it, which is good. But the old office had character. And a ghost. I miss that ghost.'"
cryptozoology	Chief Huffton Klimp	"'Chief, what's your take on crypto--'"	"'-- zoology? I don't known why we ever let animals have bitcoins in the first place. Haha! I'm just messing with you. Cryptozoology is the study of animals that may or may not exist. Like the Bugbear of Slocum Heath. Or the Monkees.'"
cryptids	Chief Huffton Klimp	"'Chief, what do you think about --'"	"'-- cryptids? I think they're all around us. I think they're watching us. I think they're waiting for the right moment to reveal themselves. But I'm ready. I'm ready for them.'"
owl	Chief Huffton Klimp	"'Do you know anything about --'"	"'-- owls? Who does? They're mysterious creatures. Did you know that they can turn their heads all the way around? I can't do that. Can you?'"
diners	Chief Huffton Klimp	"'Chief, what do you know about --'"	"'-- diners? I love diners. Do you know what the best name for a diner is? 'Henry's Hot Skillet.' I don't know if it exists, but it should. And it should meet a tragic end. Like all diners.'"
scrapple	Chief Huffton Klimp	"'Chief, what do you know about --'"	"'-- scrapple? Never played it. Too many letters. But you're not talking about the game, are you? You're talking about the food. Or at least, the thing that Pennsylvanians call food. No comment.'"
lizard-people-subject	Chief Huffton Klimp	"'Chief, what do you think about --'"	"'-- lizard people? Don't believe the hype. They're not all bad. Some of them are just misunderstood. Doris gets all excited about them. But lizards are cute, don't you think?'"
Russia-subject	Chief Huffton Klimp	"'Chief, what do you know about --'"	"'-- Russia? How many Russians does it take to change a lightbulb? None. They have lightbulbs that never burn out. It's a secret. They stole the secret from Tesla. The Dave Clark Five wrote a song about it, but Krushchev wouldn't let them release it.'"
Earth-subject	Chief Huffton Klimp	"'Chief, what are your thoughts on --'"	"'-- the Earth? It's hollow, and John Lennon is living inside it. He's waiting for the alien invasion. He's going to defeat them with his telekinetic powers. He wrote all about it in his song [']Last Train to Clarksville.[']'"
Last Train to Clarksville	Chief Huffton Klimp	"'Chief, what do you know about --'"	"'-- [']Last Train to Clarksville?['] It's a song by John Lennon. It's about the train system inside the Earth. It's how he gets around. He's waiting for the alien invasion.'"
Richard-nixon-subject	Chief Huffton Klimp	"'Chief, what do you know about --'"	"'-- Richard Nixon? Boy, he fooled everyone, didn't he? Well, except for me and Mao. Mao was smart like that. He could see through Nixon's lies. But then, Mao was a lizard person. So, you know, he had an advantage.'"
Krushchev-subject	Chief Huffton Klimp	"'Chief, what do you know about --'"	"'-- Krushchev? His fondness for cryptozoology is well known. He was convinced that the Jersey Devil was a secret weapon of the Americans. He was right, of course. But he never found out how to control it.'"
Mao Zedong	Chief Huffton Klimp	"'Chief, what do you know about --'"	"'-- Mao Zedong? Never met him. Well, I mean, I did. He spent most of his time working on his invention of the Ouija Board.'"
dee-dee-ramone-subject	Chief Huffton Klimp	"'Chief, what do you know about --'"	"'-- Dee Dee Monkee? He was the bass player for the Monkees. He also went by the name of Peter Tork.'"
johnny-ramone-subject	Chief Huffton Klimp	"'Chief, what do you know about --'"	"'-- Johnny Monkee? He was the guitarist for the Monkees. He also went by the name of Mike Nesmith.'"
joey-ramone-subject	Chief Huffton Klimp	"'Chief, what do you know about --'"	"'-- Joey Monkee? He was the singer for the Monkees. He also went by the name of Davy Jones.'"
Crusades-subject	Chief Huffton Klimp	"'Chief, what do you know about the --'"	"'-- Crusades? Ah, the Crusades. A folly. A tragedy. A comedy of errors. But most people don't know that they were all orchestrated by time travelers. They were trying to change the course of history. But they failed. Or did they?'"
Pope-clement-v-subject	Chief Huffton Klimp	"'Chief, what do you know about --'"	"'-- Pope Clement V? How would you like to be only one of fourteen popes with the same name? That's a lot of popes. There were originally twenty-eight Pope Clements, but the other fourteen were erased from history by the Illuminati.'"
Senate-subject	Chief Huffton Klimp	"'Chief, what do you know about the --'"	"'-- Senate? The only thing worse than the Senate is the House. And the only thing worse than the House is the Illuminati. And the only thing worse than the Illuminati is the Senate. It's a paradox. Or maybe it's a conspiracy. Or maybe it's a paradoxical conspiracy.'"
Montana-subject	Chief Huffton Klimp	"'Chief, what do you know about --'"	"'-- Montana? I once thought it didn't exist. But then I met a guy who said he was from there. He must have been telling the truth, because he knew the truth about Amelia Earhart.'"
water-subject	Chief Huffton Klimp	"'Chief, what do you know about --'"	"'-- water? I don't trust it. But I drink it anyway, because it's apparently necessary for life. Did you know that?'"
gold-subject	Chief Huffton Klimp	"'Chief, what do you know about --'"	"'-- gold? Nothing, and I'm going to keep it that way. People who get into gold end up doing weird things. Like buying commemorative plates. Or collecting stamps. Or joining the Freemasons.'"
lost cat	Chief Huffton Klimp	"'Chief, what did you mean about the --'"	"'-- lost cat? Ah, well, that was an interesting case. I wasn't in the Bureau yet. I was just six years old. But I remember it like it was yesterday. But it wasn't yesterday. At least I don't think it was. I'll have to check my notes.'"
government-subject	Chief Huffton Klimp	"'Chief, what do you think about the --'"	"'-- government? What? Where? I've renewed my business license! I've paid my taxes! I work for the government! Why don't you just leave me alone?'"
media	Chief Huffton Klimp	"'Chief, what do you think about the --'"	"'-- media? Walter Cronkite was a lizard person. That's all I have to say about that.'"
Rolling Stones	Chief Huffton Klimp	"'Chief, do you listen to the --'"	"'-- Rolling Stones? No, of course not. They have a lot to answer for, that Mickey Jagged and his dirty little friends."
Mick Jagger	Chief Huffton Klimp	"'Chief, what do you know about --'"	"'-- Mickey Jagged? After he killed Brian Jones with his mind powers, I don't want to know anymore. Conversation over."
Brian Jones	Chief Huffton Klimp	"'Chief, what do you know about --'"	"'-- Brian Jones? He died too young, too young, all because he stood up to the conspiracy. Which conspiracy, I don't know, but it was a big, bad one."
Walter Cronkite	Chief Huffton Klimp	"'Chief, what do you know about --'"	"'-- Walter Cronkite? He was a lizard person. Don't ask me again.'"
Abbey Road	Chief Huffton Klimp	"'Chief, what do you know about --'"	"'-- Abbey Road? It's not actually long and winding, you know. Rather shortish, and mostly straight. But it's a good place to get run over by a car.'"
Paul McCartney	Chief Huffton Klimp	"'Chief, what do you know about --'"	"'-- Paul McCartney? He's not dead. Wait, you probably knew that. Anyway, he's not dead, but not for the reason you think you know he's not dead.'"
West Virginia	Chief Huffton Klimp	"'Chief, what do you know about --'"	"'-- West Virginia? Enough to tell you that whatever you think you know about it is wrong. It's a place of wild and wonderful deep dark secrets. And coal. Lots of coal.'"
Pilsbury Doughboy	Chief Huffton Klimp	"'Chief, what do you know about the Pil --'"	"'-- tdown Man? What a decidedly undelicious topic. Let's talk about something else. Like baked goods.'"
baked goods	Chief Huffton Klimp	"'Chief, do you like --'"	"'-- baked goods? Sure, but I once knew a guy who made poisoned crullers. They were baked bads.'"
Benito Mussolini	Chief Huffton Klimp	"'Chief, what do you know about --'"	"'-- Benito Mussolini? What don't I know about him? Pretty much everything. But I do know that he was a time traveler. He went to the future and saw what would happen if he didn't invade Ethiopia. And he did it anyway.'"



Book 18.6 - Klimp Interjections

Klimp interjection timer is a number that varies. Klimp interjection timer is 5.

Every turn when Klimp interjection timer is not 0 and Klimp is in the location:
	decrease Klimp interjection timer by 1;
	if klimp interjection timer is 0:
		interject Klimp;

Before discussing when Klimp is in the location:
	now Klimp interjection timer is a random number from 2 to 5;

Before quizzing someone about something when Klimp is in the location:
	now Klimp interjection timer is a random number from 2 to 5;
	continue the action;

Before implicit-quizzing something when Klimp is in the location:
	now Klimp interjection timer is a random number from 2 to 5;

To interject Klimp:
	sort Table of Klimp Interjections in random order;
	if there is a used of false in the Table of Klimp Interjections:
		choose the row with a used of false in the Table of Klimp Interjections;
		say "[Klimp interjection entry][line break]";
		now the used entry is true;
		increase Klimp interjection timer by a random number from 2 to 5;

Table of Klimp Interjections
Klimp interjection	used
"Klimp scratches his head and says, 'You ever been to Istanbul? I met a guy there who said he was a time traveler. I didn't believe him, but he had a watch that was always right.'"	false
"Klimp looks around and says, 'I don't like this new office. I liked the old one. It had character. It had history. It had a ghost. I miss that ghost.'"	false
"Klimp leans back in his chair and says, 'How many people do you think have been abducted by aliens and don't even know it? I'd say at least half. Maybe more.'"	false
"Klimp taps his fingers on the desk and says, 'Did I ever tell you about my friend Doris? We went a lot of places together back when the Bureau was just starting out. He's a good guy. A bit of a liar, but a good guy.'"	false
"Klimp yawns theatrically and says, 'I was up all night reading about the founding of the Illuminati. Did you know they were originally a secret society of bakers? They made the best bread in Bavaria.'"	false
"Klimp looks out the window and says, 'I was just thinking about the future of the Bureau. Savra's going to ruin everything. I have a feeling he's not quite human.'"	false
"Klimp taps his foot and says, 'You ever eat too much pizza and then have a dream about being chased by a giant pizza? I have. It's not fun.'"	false
"Klimp looks at the ceiling and says, 'I was just thinking about the time I met a guy who said he was a vampire. I didn't believe him, but he had a lot of good ideas about furniture.'"	false
"Klimp drums his fingers on the desk and says, 'Savra's going to be the death of us all. Is he an alien? I don't know. But I'm going to find out.'"	false
"Klimp looks at the door and says, 'You ever been to Siberia? They have lots of diners there, believe it or not. Or maybe I was in Pennsylvania. I can't remember.'"	false
"Klimp flips his pen between his fingers and says, 'Never believe a Freemason when he tells you he's just a guy who likes to wear aprons. They're up to something. I know it. Sometimes. Sometimes I believe the exact opposite.'"	false
"Klimp looks at the clock and says, 'I just know Savra's up to something nefarious. I can feel it in my bones. Or maybe that's just the arthritis acting up.'"	false
"Klimp jumps up from his chair, looks sheepish, and then sits back down. 'Sorry, I was just thinking about Budapest. Scary place. Lots of ghosts. Lots of vampires. Lots of good food.'"	false
"Klimp smiles and says, 'I have such a good feeling about today. I think we're going to solve the mystery of the Black Knight Satellite. Or maybe we'll just have a good lunch. Either way, it's a win.'"	false

Book 18.7 The Phone Sound

Every turn:
	if the location is the front office:
		say "A phone is ringing somewhere to the west.";
	otherwise if the location is the BOSH hallway:
		say "A phone is ringing to the south, in Faraji's office.";
	otherwise if the location is BOSH Chief's office and klimp's door is open:
		say "A phone is ringing somewhere to the east."; 
	otherwise if the location is Moira's Office and Moira's door is open:
		say "A phone is ringing somewhere to the south.";
	otherwise if the location is the back lot and the BOSH back door is open:
		say "A phone is ringing to the east, in Faraji's office.";
	otherwise if the location is Biff's Office:
		say "A phone is ringing inside Faraji's desk.";

		


Book 19 - Verbs
 
To admire is a verb. To shake is a verb. To smile is a verb. To sigh is a verb. To peer is a verb. To turn is a verb. To observe is a verb. To gaze is a verb. To trudge is a verb. To walk is a verb. To step is a verb. To enter is a verb. To exit is a verb. To pause is a verb. To survey is a verb. To hand is a verb. To try is a verb. To see is a verb. To squeal is a verb. To tap is a verb. To curse is a verb. To rap is a verb. To explain is a verb. To gasp is a verb. To return is a verb. To ask is a verb. To think is a verb. To scrunch is a verb. To grimace is a verb. To mutter is a verb. To leave is a verb. To stand is a verb. To mount is a verb. To stammer is a verb. To polish is a verb. To interrupt is a verb. To raise is a verb. To chuckle is a verb. To lean is a verb. To consider is a verb. To nod is a verb. To extricate is a verb. To toss is a verb. To pick is a verb. To flatten is a verb. To remember is a verb. To trip is a verb. To scratch is a verb. To navigate is a verb. To stare is a verb. To emerge is a verb. To breathe is a verb. To attempt is a verb. To strain is a verb. To spin is a verb. To pick is a verb. To tuck is a verb. To consider is a verb. To move is a verb. To save is a verb.
To dig is a verb. To notice is a verb. To come is a verb. To unscrew is a verb. To pocket is a verb. To run is a verb. To examine is a verb. To climb is a verb.

Book 20 - Images 

Figure Null is the file "clerk_portrait.png".

A thing has a figure name called the portrait. The portrait of a thing is usually Figure Null.

[ The graphics window pixel count is 128. The graphics window position is g-left. ]
[The graphics window proportion is 25;]

[ Rule for starting the virtual machine:
	now the current graphics drawing rule is the standard placement rule. ]
	
[graphics background color is "#FFFFFF";] 
	
[ Figure Darkness is the file "darkness.png".
Figure Goldberg is the file "goldberg_portrait.png".
Figure Gaunt is the file "gaunt_portrait.png".
Figure Faraji is the file "faraji_portrait_6.png".
Figure Klimp is the file "klimp_portrait.png".
Figure Margaret is the file "margaret_portrait_2.png".
Figure Draco is the file "draco_portrait.png".
Figure Clerk is the file "clerk_portrait_2.png".
Figure Pawn Owner is the file "pawn_portrait.png".
Figure Doris is the file "doris_portrait.png".
Figure Speech Bubble is the file "speech_bubble.png".
Figure Phone Handset is the file "phone_handset.png".
Figure Phone is the file "phone_icon.png".
Figure Caller is the file "caller_portrait_2.png".
Figure Parking Lot is the file "location_parking_lot.png". 
Figure Pawn Shop is the file "location_pawn_shop.png".
Figure BOSH is the file "location_bosh_2.png".
Figure Store is the file "location_nectarine.png".
Figure Laundromat is the file "location_laundromat.png".
Figure White Tunnel is the file "location_white_tunnel.png".
Figure Moira is the file "moira_portrait.png".
Figure Hyperspace is the file "location_hyperspace.png". 
Figure Enigma Lake is the file "location_enigma_lake.png".
Figure Enigma Park is the file "location_enigma_park.png".
Figure Engima Shore is the file "location_lake_shore.png".
Figure Field Office is the file "location_field_office.png".
Figure Maggie is the file "maggie_portrait.png".
Figure Minerva is the file "minerva_portrait.png".
Figure Christy is the file "christy_portrait.png".
Figure Hutz is the file "hutz_portrait.png".
Figure Lizard 1 is the file "lizard_portrait.png".
Figure Lizard 2 is the file "lizard_portrait_2.png".
Figure Lizard 3 is the file "lizard_portrait_3.png".
 
Ezra Gaunt has portrait Figure Gaunt.
Petula Goldberg has portrait Figure Goldberg.
Larch Faraji has portrait Figure Faraji.
Margaret Chao has portrait Figure Margaret.
The Store Clerk has portrait Figure Clerk.
Chief Huffton Klimp has portrait Figure Klimp.
Draco has portrait Figure Draco. 
Doris has portrait Figure Doris. 
Dave has portrait Figure Pawn Owner.
The unknown voice has portrait Figure Caller.
The blue flip phone has portrait Figure Phone.
Moira Zin has portrait Figure Moira.
Minerva has portrait Figure Minerva.
Maggie has portrait Figure Maggie. 
Christy has portrait Figure Christy.
Hutz has portrait Figure Hutz.
Skalek has portrait Figure Lizard 1.
Korthax has portrait Figure Lizard 2.
Yssik has portrait Figure Lizard 3. ]


Characters is a list of figure names that varies.

[ To decide which figure name is the picture of the location:
	let result be Figure Null;
	if in darkness, decide on Figure Darkness;
	if location is Parking Lot South or location is Parking Lot North, now result is Figure Parking Lot;
	if location is Dave's Pawn Shop, now result is Figure Pawn Shop;
	if location is in BOSH HQ, now result is Figure BOSH;
	if location is Li'l Nectarine Convenience Store, now result is Figure Store;
	if location is in Laundromat-region, now result is Figure Laundromat;
	If location is astral-tunnel-1 or location is astral-tunnel-2 or location is astral-tunnel-3, now result is Figure White Tunnel;
	if location is Featureless Hyperplane, now result is Figure Hyperspace;
	if location is in ELR, now result is Figure Enigma Lake; 
	if location is Enigma Park, now result is Figure Enigma Park;
	if location is lake shore north of the park or location is lake shore west, now result is Figure Engima Shore;
	if location is in field office area, now result is Figure BOSH;
	decide on result;  ]
		

[ The first glulx picture selection rule (this is the bosh picture selection rule):
	remove characters from characters;
	If the current play mode is picking character:
		add Figure Gaunt to characters;
		add Figure Goldberg to characters;
		add Figure Faraji to characters;  
	otherwise:  
		if the player is yourself:
			rule succeeds with result 0;
		let PoL be picture of the location;
		if PoL is not Figure Null: 
			add PoL to characters;
		add the portrait of the player to characters; 
		if current play mode is _normal:
			if the current interlocutor is something:
				add the portrait of the current interlocutor to characters;
			repeat with C running through the people in the location:
				if C is not the player and C is not the current interlocutor:
					add the portrait of C to characters;
			repeat with C running through people talking with the player:
				if the portrait of C is not listed in characters:
					add the portrait of C to characters;
			repeat with T running through audible sounds:
				if the portrait of T is not Figure Null:					
					add the portrait of T to characters;
			if could see hypertunnels and the player wears the pair of astral lenses:
				add Figure White Tunnel to characters;					
	if the number of entries of characters > 0:
		now the internally selected picture 1 is entry 1 of characters; 
	if the number of entries of characters > 1:
		now the internally selected picture 2 is entry 2 of characters; 
	if the number of entries of characters > 2:
		now the internally selected picture 3 is entry 3 of characters; 
	if the number of entries of characters > 3:
		now the internally selected picture 4 is entry 4 of characters; 
	if the number of entries of characters > 4:
		now the internally selected picture 5 is entry 5 of characters;
	rule succeeds with result the number of entries of characters; ]

handset count is a number that varies.
bubble count is a number that varies.

[ This is the draw images rule: 
	follow the current graphics drawing rule;
	if the player is talking with someone (called P): 
		if the portrait of P is listed in characters:
			let local count be 0;
			repeat with C running through characters:
				increment local count;
				if C is the portrait of P:
					now handset count is local count;
					draw phone handset;
	if the current interlocutor is something:
		let local count be 0;
		repeat with C running through characters:
			increment local count;
			if C is the portrait of current interlocutor:
				now bubble count is local count;
		draw speech bubble;		
		
The draw images rule is listed after the adjust light rule in the turn sequence rules.		 ]
		
To draw speech bubble: 
	(- DrawSpeechBubble(); -)
	
To draw phone handset:
	(- DrawPhoneHandset(); -)
	
[A window resizing rule:
	do nothing;]
	
[ To resize windows:
	call resize function;	
	follow the current graphics drawing rule; 
	if the current interlocutor is something: 
		draw speech bubble; ]
	
To call resize function:
	(- ResizeGraphicsWindow(); -); 

Book 20.5 Miscellaneous

[unsnarkable rooms and things]
The Room of Subjects is unsnarkable.
room of quips is unsnarkable.
Room of Stuff is unsnarkable.
isolation booth is unsnarkable.
wall is unsnarkable.
floor is unsnarkable.
ceiling is unsnarkable.
Hyperlight is unsnarkable.
Adjacent light is unsnarkable.
generic quip is unsnarkable.
The Walls is unsnarkable.
Christy's Pencil is unsnarkable.
keypad is unsnarkable.
display is unsnarkable.
light-meter is unsnarkable.
bfo-light is unsnarkable.
laundromat sign is unsnarkable.
laundromat window is unsnarkable.
ls-light is unsnarkable.
pawn-light is unsnarkable.
BOSH-headquarters-to-the-south is unsnarkable.
The laundromat desk's drawer is unsnarkable.
The large key is unsnarkable.
klimp's mobile phone is unsnarkable.
Klimp's key is unsnarkable.
old copper key is unsnarkable.
building is unsnarkable.
town hall light source is unsnarkable.
Rolle's light source is unsnarkable.
Henry's light source is unsnarkable.
Astral Secrets is unsnarkable.
Reading Room light source is unsnarkable.
Fresnel's light source is unsnarkable.
iron key is unsnarkable.
radio station light source is unsnarkable.
lake-scenery-1 is unsnarkable.
broadcast booth light source is unsnarkable.
green key is unsnarkable.
hook is unsnarkable.
brass key is unsnarkable.
threaded base is unsnarkable.
The Book of Utilitarianism is unsnarkable.
rusty lens is unsnarkable.
yourself is unsnarkable.
Ezra Gaunt is unsnarkable.
Petula Goldberg is unsnarkable.
Senator Savra is unsnarkable.
white key is unsnarkable.
biff-flattened-boxes is unsnarkable.
margaret-flattened-boxes is unsnarkable.
biffo-light is unsnarkable.
trivia competition award is unsnarkable.
Green Pheasant is unsnarkable.
Biff's desk's drawer is unsnarkable.
boh-light is unsnarkable.
chief-light is unsnarkable.
Klimp's Computer is unsnarkable.
curios is unsnarkable.
chief's black leather chair is unsnarkable.
Dictionary of Strangeness is unsnarkable.
moira-light is unsnarkable.
closet is unsnarkable.
Moira's chair is unsnarkable.
Tribes of New York is unsnarkable.
Moira's drawer is unsnarkable.
closet door is unsnarkable.
unknown voice is unsnarkable.
mysterious phone is unsnarkable.


The Walls is indescribable.
floor is indescribable.
ceiling is indescribable.
Hyperlight is indescribable.
Adjacent light is indescribable.
light-meter is indescribable.
bfo-light is indescribable.
ls-light is indescribable.
pawn-light is indescribable.
lbr-light is indescribable.
lb-light is indescribable.
bb-light is indescribable.
building is indescribable.
town hall light source is indescribable.
Rolle's light source is indescribable.
Henry's light source is indescribable.
Reading Room light source is indescribable.
Fresnel's light source is indescribable.
radio station light source is indescribable.
broadcast booth light source is indescribable.
Senator Savra is indescribable.
biffo-light is indescribable.
boh-light is indescribable.
chief-light is indescribable.
moira-light is indescribable.
mysterious phone is indescribable.
unknown voice is indescribable.
wall is indescribable.
klimp's mobile phone is indescribable.
Klimp's key is indescribable.



Book 21 - Not For Release 
 
[ Include BOSH Tests by Philip Riley. ]

DEBUG is true.

SKIP_PROLOGUE is true;

AUDIT is a truth state that varies.
AUDIT is false.

To decide what text is the wall description of (R - a room):
	let result be "";
	if there is a locale of R in the Table of Walls:
		choose the row with the locale of R in the Table of Walls;
		if there is a wall description entry:
			let result be the wall description entry;
		if there is a has walls entry and the has walls entry is false:
			let result be "no walls";
	decide on result.

To decide what text is the floor description of (R - a room):
	let result be "";
	if there is a locale of R in the Table of Floors:
		let result be the floor description corresponding to the locale of R in the Table of Floors;
	decide on result.

To decide what text is the ceiling description of (R - a room):
	let result be "";
	if there is a locale of R in the Table of Ceilings:
		choose the row with the locale of R in the Table of Ceilings;
		if there is a ceiling description entry:
			let result be the ceiling description entry;
		if there is a has ceiling entry and the has ceiling entry is false:
			let result be "no ceiling";
	decide on result.

To decide what text is the transition description of (R - a room) from (S - a room):
	repeat through the Table of Transitions:
		if the source room entry is S and the target room entry is R:
			decide on the transition text entry;
	decide on "".

When play begins:
	if AUDIT is true:
		repeat with R running through rooms:
			say "[R].";
		[ repeat with X running through things:
			if X is not a subject and X is not a hint topic and X is not a quip:
				say X;
				lb;
		repeat with X running through rooms:
			say X;
			lb; ]
		[ say ">>> NO Snarky Remarks <<<[line break]";
		repeat with X running through snarkable rooms:
			if the snarky remark of X is "":
				say "ROOM [X][line break]";
		repeat with X running through snarkable things:
			if X is not a subject and X is not a hint topic and X is not a quip and the snarky remark of X is "":
				say "THING [X][line break]";
		lb;
		say ">>> NO Description <<<[line break]";
		repeat with X running through things:
			if X is not a subject and the description of X is "" and X is not a quip and X is not indescribable and X is not a hint topic:
				say "THING [X][line break]";
		lb;
		say ">>> NO Wall Description <<<[line break]";
		repeat with X running through rooms:
			if the wall description of X is "":
				say "ROOM [X][line break]"; ]
		[ say ">>> NO Floor Description <<<[line break]";
		repeat with X running through rooms:
			if the floor description of X is "":
				say "ROOM [X][line break]"; ]
		[lb;]
		[ say ">>> NO Ceiling Description <<<[line break]";
		repeat with X running through rooms:
			if the ceiling description of X is "":
				say "ROOM [X][line break]"; ]
		[ say ">>> NO Transition Description <<<[line break]";
		repeat with X running through rooms:
			repeat with Y running through rooms adjacent to X:
				if the transition description of Y from X is "":
					say "ROOM [X] to [Y][line break]";  ]


When play begins, seed the random-number generator with 1234.

Understand "* [text]" as a mistake ("Noted.")

The access through barriers rule response (A) is "you have run afoul of the access through barriers rule!";

test office1 with "w/x vent/x screws/x computer/x thumb drive/look behind desk/x vent/ask about computer/status of the computer".
test office2 with "w/w/n/w/s/n/e/ask about computer/look behind desk/x computer/x thumb drive".
test office3 with "w/w/x wrench/s/open desk/n/e/ask margaret for key/w/s/x desk/n/e/ask about allen/look behind desk/x vent/get wrench/ask about screwdriver".
test no-screwdriver with "n/enter store/ask about screwdriver/w/s/sw/ask about screwdriver/ask about owner".
test win with "w/w/s/open desk/n/e/ask about key/ask about computer/look behind desk/x computer/remember finding the drive/w/s/x desk/open white door/n/e/ask about wrench/ask about backdoor/take boxes/w/s/z/w/z/z/open white door/knock on white door/e/z/n/e/x vent/ask for a screwdriver/n/e/n/e/ask for screwdriver/w/s/sw/ask for a screwdriver/ask about the owner/ne/w/w/w/x lenses/ask to borrow pair/wear them/e/e/take boxes/w/s/w/wear glasses/back/n/f/d/n/s/turn off light/wear glasses/f/fn/push truck bs/push truck back/move crates/move crates with truck/x washing machine/open it/enter it/f/f/f/f/f/fn/fw/fn/fn/fw/w/fn/w/take compass/x compass/s/s/s/s/s/s/s/e/e/e/e/e/e/e/e/b/b/b/b/b/b/b/b/b/d/w/w/show him the thumb drive/hand it over/ask who he is/ask about his name/where are we/klimp is fine/ask how to get home/show him the thumb drive/hand it over/ask about savra/ask about the dragon/time travel/ask about the mission/how will i find him/e/w/ready to go/i/x device/e/f/enter portal/press button/e/f/enter portal".


test no-drive with "w/w/s/open desk/n/e/ask about key/ask about computer/look behind desk/w/s/x desk/open white door/n/e/ask about wrench/ask about backdoor/take boxes/w/s/z/w/z/z/open white door/knock on white door/e/z/n/e/x vent/ask for a screwdriver/n/e/n/e/ask for screwdriver/w/s/sw/ask for a screwdriver/ask about the owner/ne/w/w/w/x lenses/ask to borrow pair/wear them/e/e/take boxes/w/s/w/back/n/f/d/n/s/turn off light/wear glasses/f/fn/push truck bs/push truck back/move crates/move crates with truck/x washing machine/open it/enter it/f/f/f/f/f/fn/fw/fn/fn/fw/w/fn/w/take compass/x compass/s/s/s/s/s/s/s/e/e/e/e/e/e/e/e/b/b/b/b/b/b/b/b/b/d/w/w".

test part1 with "w/look behind desk/x computer/x vent/e/sw/ask for screwdriver/ask about owner/ne/w/w/w/x lenses/ask to borrow the lenses/e/s/w/w/w/w/w/w/w/w/w/w/wear lenses/b/n/f/open desk/take key/w/e/unlock door with key/w/d/s/turn off light/wear lens/f/fn/push truck bs/push truck b/move crates with truck/open machine/enter washing".


test part2 with "f/f/f/f/f/fn/fw/fn/fn/fw/w/fn/w/take compass/x 
it/s/s/s/s/s/s/s/e/e/e/e/e/e/e/e/b/b/b/b/b/b/b/b/b/d".

test part3 with "w/w/show drive/hand drive/ask about dragon/ask 
about mission/ask how to get home/e/e/ask how to get 
home/w/b/enter/wear lenses/knock on door/x shelf/borrow/tribes/s/e/e/wear 
lenses/nw/w/d/s/enter/d/e/w/w/give tribes to doris/e/s/give 
note to christy/n/n/ask coffee/s/s/give coffee/n/n/w/give note to 
doris/ask how i will find him/ready/e/f/enter".

test 3parts with "test part1/test part2/test part3"

test part4 with "banish/x desk/open pack/take key/s/w/sw/take/ne/w/read brown book/e/n/n/n/w/w/take hammer/ask who he is/ask why still here/ask how he can help/ask about secret/ask for help/e/read compass/press button/e/f/type 1 into 
keypad/b/n/ask for coffee/s/f/enter portal/w/give coffee to hutz/ask if can now help them/e/e/e/se/x floor/unlock cabinet with iron key/n/nw/e/s/w/w/se/s/s/w/d/take/swing hammer at wall/n/e/e/wear lenses/f/bn/u/take key/look up thompson in record 
book/d/open locker 1 with red key/u/unlock door with green key/w/w/n/w/w/unlock door with copper key/w/take rod/s/take book/fs/be/take all/press blue button/e/n/w/u/open wardrobe/take frame/d/w/take shovel/put ladder in hole/d/dig/open case/read 
witnessing/u/take ladder/e/e/e/e/e/look up pezzex the unpalatable in weird book/say xvart/read book of utilitarianism/w/w/w/nw/w/w/nw/say teleology/take/press button/e/b/enter portal/out/s/e/e/open hood/take battery/press button/e/f/enter 
portal/se/e/e/e/plug cord into outlet/u/put lenses in frame/put spotlight into frame/put fork into frame/plug shiny resonator into cord/plug makeshift into cord/take telescope/put makeshift into tripod/d/e/push tapestry/flip switch/w/u/x 
obelisk/d/w/d/s/s/se/u/d/nw/n/n/n/take cutters/open truck/enter it/open glove/take key/w/out/s/s/s/se/u/cut lock with cutters/open cabinet/flip switch/put shiny resonator on platform/i/x obelisk/d/nw/n/n/n/w/se/unlock cabinet with iron key/open it/take 
resonator/x floor/open door/open trapdoor/d/s/n/u/nw/w/s/s/s/s/unlock door with brass key/s/tie battery to wires/u/screw rusty resonator/put rusty into socket/d/n/n/n/e/n/e/w/se/d/s/enter portal/ask how he got here/ask where we are/ask what's 
next/press button/i/get out/e/n/e/e/sw/give watch to dave/i/nw/ne/x hood/x hyundai/n/e/buy screwdriver/w/s/w/look behind desk/open vent with screwdriver/w/s/open desk with hex wrench/x desk/i/open drawer".

test part with "w/look behind desk/x computer/x vent/ask for screwdriver/e/sw/ask for a screwdriver/ask about owner/ne/w/w/w/ask for a screwdriver/x lenses/borrow lenses/e/s/z/z/z/z/z/z/z/z/z/z/z/z/z/z/z/w/wear lenses/b/n/f/d/s/turn off lights/wear lenses/f/fn/push truck bs/push it b/move boxes with truck/open drum/enter drum/f/f/f/f/f/fn/fw/fn/fn/fw/w/fn/w/take all/i/x pillar/drop it/l/x pillar/s/s/s/s/s/s/s/e/e/e/e/e/e/e/e/b/b/b/b/b/b/b/b/b/d/w/w/show him thumb/give drive/ask about savra/no/ask what isa lizard/ask about mission/ask how to get home/ask about time travel/e/e/ask how to get home/w/b/enter portal/wear lenses/knock on door/out/x books/borrow book/tribes/s/s/z/w/wear lenses/b/n/f/d/s/enter machine/d/w/w/give tribes to doris/e/s/give note to christy/n/n/ask for coffee/s/s/give coffee to christy/n/n/w/give note to doris/how will i find him/ready/e/f/enter/enter portal/s/s/take all/n/w/sw/take/ne/w/take book/read it/d/take/u/e/n/n/n/w/w/take hammer/e/se/e/s/look behind desk/open pack/take key/s/w/w/d/hit walls with hammer/n/e/e/open door/n/open locker/open locker/u/take all/look up thompson in book/d/open locker 34/u/w/w/w/n/w/w/w/take/s/x table/take book/read it/look up asdf the asdfa in the book of weird/wear lenses".

test total with "w/look behind desk/x computer/x vent/ask for screwdriver/e/sw/ask for a screwdriver/ask about owner/ne/w/w/w/ask for a screwdriver/x lenses/borrow lenses/e/s/z/z/z/z/z/z/z/z/z/z/z/z/z/z/z/w/wear lenses/b/n/f/d/s/turn off lights/wear lenses/f/fn/push truck bs/push it b/move boxes with truck/open drum/enter drum/f/f/f/f/f/fn/fw/fn/fn/fw/w/fn/w/take all/i/x pillar/drop it/l/x pillar/s/s/s/s/s/s/s/e/e/e/e/e/e/e/e/b/b/b/b/b/b/b/b/b/d/w/w/show him thumb/give drive/ask about savra/no/ask what isa lizard/ask about mission/ask how to get home/ask about time travel/e/e/ask how to get home/w/b/enter portal/wear lenses/knock on door/out/x books/borrow book/tribes/s/s/z/w/wear lenses/b/n/f/d/s/enter machine/d/w/w/give tribes to doris/e/s/give note to christy/n/n/ask for coffee/s/s/give coffee to christy/n/n/w/give note to doris/how will i find him/ready/e/f/enter/enter portal/s/s/take all/n/w/sw/take/ne/w/take book/read it/d/take/u/e/n/n/n/w/w/take hammer/e/se/e/s/look behind desk/open pack/take key/s/w/w/d/hit walls with hammer/n/e/e/open door/n/open locker/open locker/u/take all/look up thompson in book/d/open locker 34/u/w/w/w/n/w/w/w/take/s/x table/take book/read it/look up asdf the asdfa in the book of weird/wear lenses/l/fs/remove lenses/wear lenses/be/take/press button/e/n/w/se/take bulb/nw/w/s/w/w/take/put ladder in grave/d/dig/u/e/u/open wardrobe/take book/read it/e/d/e/e/s/n/e/hit fly/look up gorblax the perverse in  weird/say brobdingnag/l/take rod/x pulpit/read bible/d/x altar/read book/u/plug cord into wall/plug lamp into cord/put bulb in lamp/turn on lamp/e/move tapestry/flip switch/w/d/remove lenses/read book/read book/u/drop lamp/w/n/open truck/enter truck/open glove/take key/take cutters/open hood/w/out/take cutters/s/s/s/se/u/say dialectic/take resonator/d/u/put resonator on platform/open cabinet with cutters/open cabinet/flip switch/d/nw/n/e/w/n/e/put lamp in frame/put lenses in frame/put fork in frame/tap frame with rod/plug resonator into cord/u/take telescope/mount resonator on tripod/d/w/s/n/w/w/n/n/w/w/ask for a screwriver/ask for a screwdriver/ask who/ask why/ask how/ask about secret/ask for help/e/read compass/press recall/e/f/type 80538579 into keypad/b/n/ask for coffee/s/f/enter portal/w/give coffee to hutz/ask if/e/e/e/se/open cabinet/take resonator/x floor/open trapdoor/nw/s/w/s/s/s/u/put resonator in socket/d/press button/e/b/enter portal/out/s/e/e/open hyundai hood/take battery/press recall/w/f/s/e/f/enter portal/s/se/s/s/s/attach battery to wires/d/n/n/n/n/e/se/d/s/enter portal/take all/open basket/take all/throw rutabaga at lizard/yes/ask about laundromat/ask how/ask where/what's next/pressbutton/up/e/n/e/e/take herald/read it/sw/give watch to dave/ne/n/e/buy screwdriver with gift card/w/s/w/x vent/open vent/open vent with screwdriver/s/e/w/w/s".




test wrench with "w/look behind desk/purloin red screwdriver";

test desk with "sw/purloin wristwatch/give watch to dave/ne/n/e/buy screwdriver/w/s/w/look behind desk/open vent/w/s";

test klimp with "w/look behind desk/x vent/e/sw/ask about screwdriver/ask about owner/ne/w/w/w".
	
lensing is an action applying to nothing. Understand "lens" as lensing.

Carry out lensing: 
	now the player wears the pair of astral lenses;
	try looking.

speaker querying is an action out of world. Understand "speaker" as speaker querying.
Carry out speaker querying:
	say "current interlocutor is [current interlocutor]."

Jumping to part 2 is an action applying to nothing. Understand "cheat plane" as jumping to part 2.

Carry out jumping to part 2:
	move the player to the featureless hyperplane;
	now the player wears the pair of astral lenses;
	now the green smartphone is nowhere;
	now the handtruck is in the back basement;
	now the broken washing machine is open;
	now the broken washing machine is in the back basement;
	now the strange glow is in the broken washing machine;
	now the strange glow is closeby;
	now the player carries the thumb drive;
	now visited hyperspace is true;

jumping to part 3 is an action applying to nothing. Understand "cheat doris" as jumping to part 3.

Carry out jumping to part 3:
	now Hyperplane Coords is {0, 0, 0};
	move the player to the field office reception;
	now the player wears the pair of astral lenses;
	now the green smartphone is nowhere;
	now the player carries the mystic compass;
	now the handtruck is in the back basement;
	now the broken washing machine is open;
	now the broken washing machine is in the back basement;
	now the strange glow is in the broken washing machine;
	now the strange glow is closeby;
	now the player carries the thumb drive;
	now visited hyperspace is true;
	
jumping to part 4 is an action applying to nothing. Understand "cheat enigma" as jumping to part 4.

Carry out jumping to part 4:
	now Hyperplane Coords is {0, 0, 0};
	move the player to the enigma lake town hall;
	now the player carries the pair of astral lenses;
	now the green smartphone is nowhere;
	now the player carries the mystic compass;
	now the player carries the recall button;
	now the thumb drive is nowhere;
	now Tribes of New York is carried by the player;
	now the handtruck is in the back basement;
	now the broken washing machine is open;
	now the broken washing machine is in the back basement;
	now the strange glow is in the broken washing machine;
	now the strange glow is closeby;
	now the portal to the past is activated;
	now the auxiliary portal is activated;
	now closet door is unlocked;
	now closet door is open;
	now Moira's door is unlocked;
	now visited hyperspace is true;
	now the current spacetime setting is the town hall spacetime setting;

jumping to endgame is an action applying to nothing. Understand "cheat end" as jumping to endgame.

Carry out jumping to endgame:
	try jumping to part 4;
	now the makeshift resonator is in the tripod;
	now the content of the tripod is the makeshift resonator;
	now the extension cord is in the steeple;
	now the extension cord is plugged into the electrical outlet;
	now the makeshift resonator is plugged into the extension cord;
	now the circuit breaker is switched on;
	now the rusty resonator is in the threaded socket;
	now the clean battery is hooked up;
	now the shiny resonator is on the platform;
	now the power switch is switched on;
	open the portal;
	now the astral lenses are nowhere;
	now player is in Enigma Park;
	now visited hyperspace is true;
	now the obelisk-ladder is revealed;

jumping to last bit is an action applying to nothing. Understand "cheat last" as jumping to last bit.

carry out jumping to last bit:
	now the player carries the hex wrench;
	move the player to biff's office;

frotzing is an action applying to one thing. Understand "frotz [something]" as frotzing.

Carry out frotzing:
	now the noun is lit.

Report frotzing:
	say "Now [the noun] is lit.";

subject indexing is an action out of world. Understand "index" as subject indexing.

Carry out subject indexing:
	repeat with X running through subjects:
		if X is a-propos:
			say "[X][line break]";

subject looking is an action out of world applying to one thing. Understand "index [any subject]" as subject looking.

subject comparing is an action out of world applying to two things. Understand "compare [any person] to [any person]" as subject comparing.

Carry out subject comparing:
	repeat with S running through subjects:
		if S is a-propos for the noun and S is not a-propos for the second noun:
			say "[S]: +[second noun][line break]";
		otherwise if S is a-propos for the second noun and S is not a-propos for the noun:
			say "[S]: +[noun][line break]";

Carry out subject looking:
	if the noun is a-propos:
		say "[the noun] is a-propos.";
	otherwise:
		if there is a subject of the noun in the Table of Quiz Topics:
			say "[the noun] is listed, but not for [current interlocutor].";
	repeat through the Table of Quiz Topics:
		if the subject entry is the noun:
			say "[the noun] is a topic for [interlocutor entry].";

quip querying is an action out of world applying to one thing. Understand "q-available [any quip]" as quip querying.

Carry out quip querying:
	if the noun is q-available:
		say "[the noun] is available.";
	otherwise:
		say "[the noun] is not available.";

purging is an action applying to nothing. Understand "purge" as purging.

Carry out purging:
	repeat with X running through things carried by the player:
		if X is a quip:
			now X is in the Room of Quips;
		if X is a subject:
			now X is in the Room of Subjects;
		if X is a hint topic:
			now X is in the Room of Stuff;
		if X is the strange shiny metal object:
			now X is in the Room of Stuff;

	
Volume 2 - Test command tweak for clean transcripts

Include (-

#Iftrue ({-value:NUMBER_CREATED(test_scenario)} > 0);

[ TestScriptSub;
	switch(special_word) {
{-call:PL::Parsing::TestScripts::compile_switch}
	default:
		print ">--> The following tests are available:^";
{-call:PL::Parsing::TestScripts::compile_printout}
	}
];

#ifdef TARGET_GLULX;
Constant TEST_STACK_SIZE = 128;
#ifnot;
Constant TEST_STACK_SIZE = 48;
#endif;

Array test_stack --> TEST_STACK_SIZE;
Global test_sp = 0;
[ TestStart T R l k;
	if (test_sp >= TEST_STACK_SIZE) ">--> Testing too many levels deep";
	test_stack-->test_sp = T;
	test_stack-->(test_sp+1) = 0;
	test_stack-->(test_sp+3) = l;
	test_sp = test_sp + 4;
	if ((R-->0) && (R-->0 ~= real_location)) {
	     print "(first moving to ", (name) R-->0, ")^";
	     PlayerTo(R-->0, 1);
	}
	k=1;
	while (R-->k) {
	    if (R-->k notin player) {
	        print "(first acquiring ", (the) R-->k, ")^";
	        move R-->k to player;
	    }
	    k++;
	}
	print "(Testing.)^"; say__p = 1;
];
[ TestKeyboardPrimitive a_buffer a_table p i j l spaced ch;
	if (test_sp == 0) {
	    test_stack-->2 = 1;
	    return VM_ReadKeyboard(a_buffer, a_table);
	}
	else {
	    p = test_stack-->(test_sp-4);
	    i = test_stack-->(test_sp-3);
	    l = test_stack-->(test_sp-1);
	    test_stack-->2 = test_stack-->2 + 1;
	    style bold;
	    while ((i < l) && (p->i ~= '/')) {
	    	ch = p->i;
	        if (spaced || (ch ~= ' ')) {
	        	if ((p->i == '[') && (p->(i+1) == '/') && (p->(i+2) == ']')) {
	        		ch = '/'; i = i+2;
	        	}
	            a_buffer->(j+WORDSIZE) = ch;
	            print (char) ch;
	            i++; j++;
	            spaced = true;
	        } else i++;
	    }
	    style roman;
	    print "^";
	    #ifdef TARGET_ZCODE;
	    a_buffer->1 = j;
	    #ifnot; ! TARGET_GLULX
	    a_buffer-->0 = j;
	    #endif;
	    VM_Tokenise(a_buffer, a_table);
	    if (p->i == '/') i++;
	    if (i >= l) {
	        test_sp = test_sp - 4;
	    } else test_stack-->(test_sp-3) = i;
	}
];

#IFNOT;

[ TestScriptSub;
	">--> No test scripts exist for this game.";
];

#ENDIF;
-) instead of "Test Command" in "Tests.i6t".

Volume 3 - The Story

 
Book 1 - The Thumb Drive

The thumb-drive-story is always "Biff found the thumb drive in an ancient Onondaga root cellar on a farm in upstate New York. He was never able to read it.".

[turns out the message is scratched on the side of the thumb drive, the data is of course gone]

Doris-story-about-the-thumb-drive is always "We lost one of our New York agents to a slingshot effect that threw him far back in time. We're always monitoring for artifacts that are out of place or anachronistic to lead us to lost agents."

Message-on-the-thumbdrive is always "They found me out and sent me back. 14th century. Enigma Lake. Savra is going to move on the Dragon."
