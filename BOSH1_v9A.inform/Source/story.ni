"The Bureau of Strange Happenings" by Phil Riley


The story title is "The Bureau of Strange Happenings".
The story author is "Phil Riley".
The story headline is "An Interactive Phenomenon".
The story genre is "Science Fiction".
The release number is 1.
The story creation year is 2023.

Include Epistemology by Eric Eve.
Include Conversation Framework by Eric Eve. 
Include Conversation Responses by Eric Eve.  
Include Conversational Defaults by Eric Eve.
Include Basic Screen Effects by Emily Short. 
Include Punctuation Removal by Emily Short.
Include Glulx Text Effects by Emily Short.
Include Formatting Capture by Daniel Stelzer.
 
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
 
[ Include Choices by Philip Riley. ]
 
Include New Light by Philip Riley. 
 
Include Early Declarations by Philip Riley.
 
[Include Farseeing by Philip Riley.]
Include Basics by Philip Riley.
Include Building Facades by Philip Riley.
  	
Include Followup Questions by Philip Riley.
 
Include Simple Conversation by Philip Riley.
Include Hyperspace by Philip Riley.	
Include BOSH Facts by Philip Riley. 
[ Include Image Strip by Philip Riley. ]
Include Swamp Park by Philip Riley.
[Include Conversations General by Philip Riley.]
Include Margaret by Philip Riley. 
Include Enigma Lake by Philip Riley. 
Include I Can Dig It by Philip Riley.
Include Snarky Remarks by Philip Riley.

Include Overlook by Philip Riley.

Include Gender Options by Nathanael Nerode.   

Include Make Test by Philip Riley.

Use MAX_OBJ_PROP_COUNT of 128.
Use MAX_STATIC_DATA of 360000.
Use MAX_PROP_TABLE_SIZE of 800000.
Use MAX_NUM_STATIC_STRINGS of 400000.
Use MAX_SYMBOLS of 200000.
Use MAX_OBJECTS of 1024.
Use MAX_DICT_ENTRIES of 20000.

Work Title is always "The Bureau of Strange Happenings".  
 
Release along with a website.
Release along with an interpreter. 
Release along with cover art.

Table of User styles (continued)
style name    	justification    	italic    	indentation    	first line indentation        	color
special-style-2    	left-justified    	true    	0    	0    	"#888888"

To lb:
	say line break;
	

To turn on rules:
	(- RulesOnSub(); -);

[After starting the virtual machine:
	turn on rules;]
	
		

 
Volume 1 - The Game 

Book 1 - Beginning 
 
The Room of Stuff is a room. 
  
Yourself is in the room of stuff.  

The isolation booth is a room.

The new room description heading rule does nothing when the location is the isolation booth.
  
Ezra Gaunt is a man in the Room of Stuff. The description is "Agent Gaunt's last name describes him well. He is a perpetually worried-looking individual, a look emphasized by his thinness and his thick-rimmed glasses.".
Petula Goldberg is a woman in the Room of Stuff. The description is "Agent Goldberg has lots of dogs, a fact which can be inferred by the inevitable fur somewhere on her person. The last front office worker at the Bureau left due to an extreme allergic reaction to Goldberg.".
Larch Faraji is a nonbinary in the Strip Mall Parking Lot South. The third singular pronoun is singular-they-pronoun. The description is "Agent Faraji is dressed smartly in a black suit, with neat hair and a serious expression. Inside, they are a punk rocker, a fact that they are not shy about.". 
 
The snarky remark of Larch Faraji is "Don't talk about me like I'm not here."

Play mode is a kind of value. The play modes are _startup, _normal, and picking character.
The current play mode is a play mode that varies. The current play mode is initially _startup. 

To print faraji bio:
	say fixed letter spacing;
	say "Larch Faraji (they/them): An agent of the Bureau of Strange Happenings. Dark hair, dark eyes, and a dark sense of humor. Specialized in the investigation of unexplained phenomena throughout the United States and its territories. Lead singer of the third wave neo-old-school punk band DC Trash. Liable to fits of sarcasm and cynicism. Dedicated to the Bureau's mission. Status: Potential threat.";
	lb;
	say "    -- Notes from Senate Investigation into BOSH";
	lb;
	lb;
	continue;
	say variable letter spacing;


When play begins:   
	now the story viewpoint is third person singular;
	Repeat with S running through subjects:  
		move S to the Room of Subjects;
	if DEBUG is false:
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
		try unknown voice calling the blue flipphone on mysterious phone;
		move klimp to the Room of Stuff;
		move moira to the Room of Stuff;
		now the current play mode is _normal; 
		set possessives;
		if DEBUG is false:
			say Intro Text;
			continue;
		[ follow the current graphics drawing rule; ]
		[ move the player to the Strip Mall Parking Lot South; ]
 
To survey is a verb. To wrinkle is a verb.

Intro Text is always "As an agent of the Bureau of Strange Happenings (BOSH), it is Agent [player's full name]'s job to investigate unexplained phenomena throughout the United States and its territories. Recently, however, business hasn't been good. Once a bustling office with a dozen Agents, the Bureau's been reduced to just three: [Player's surname], Moira Zin, and Chief Huffton Klimp. The Bureau's expansive and well-appointed office suite was taken over by the State Department Book Club, and now the agents are consigned to a tiny suite in a strip mall in the remote D.C. suburb of Swamp Park, Maryland.

	The reason? The venomous Senator Savra, whose crusade against all things he considers unwholesome is the scourge of Washington. To him, BOSH is nothing more than the devil's megaphone, giving credence to Satan's lies by giving them a hearing. Now Savra is at it again, threatening to cut BOSH entirely from next year's Federal budget.
	
	But for now, today is move-in day at the bureau. 
	
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
	try unknown voice calling the blue flipphone on mysterious phone;
	move klimp to the Room of Stuff;
	move moira to the Room of Stuff;
	move the player to the Strip Mall Parking Lot South;
	[ follow the current graphics drawing rule; ]
	reject the player’s command;
	
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
	now right hand status line is "[if location is the public gymnasium]Score: [basketball score][end if]";

To continue:
	say "[bracket]continue[close bracket][paragraph break]";
	wait for any key;

The player’s forename is a text that varies. The player’s full name is a text that varies. The player's surname is a text that varies.

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
[The describe what's on scenery supporters in room descriptions rule does nothing.]
[the can't take what's fixed in place rule response (A) is "That can't be picked up.".]
the can't switch on unless switchable rule response (A) is "That can't be switched on and off.".  

The room description body text rule response (A) is "Some light would be nice.".

[the can't touch rule does nothing when the action name part of the current action is identifying action.]
 
[Book 5 - Tweaks to Threaded Conversation

the standard listing subject changes rule response (A) is "[italic type][quip-suggestion-phrase][the prepared list delimited in disjunctive style].[roman type]".
the standard quip plausibility rule response (A) is "[italic type][quip-suggestion-phrase][the prepared list delimited in disjunctive style].[roman type]"]

The parser clarification internal rule response (D) is "Whom do you want [us] to
		[parser command so far]?"

The parser clarification internal rule response (E) is "What do you want [us] to
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


Book 5 - Automatic greeting

After going to a room:
	if the current interlocutor is nothing:
		repeat with P running through the people in the location:
			if P is not the player and P is not an animal:
				postpone saying hello to P;
				continue the activity; 
	continue the activity;
	
The postponed action is an action that varies.

To postpone (act - an action):
	now the postponed action is act;
	
This is the postponement rule:
	if the postponed action is not waiting:
		try the postponed action;
		now the postponed action is waiting;
	
The postponement rule is listed before the every turn stage rule in the turn sequence rules.

After saying hello to someone (called P):
	set pronouns from P;
 
Book 6 - Messages

The parser error internal rule response (R) is "[if following-up is true]That doesn't seem to be a book on Moira's shelves[otherwise]I[']m not sure what you're trying to say. I might just not recognize the words you're using[end if]."

The default sound description rule response (A) is "[Generic description of T] is [sound of T] in another room nearby."

		
Book 7 - Actions

Chapter 1 - Knocking

Knocking on is an action applying to one thing. Understand "knock on/-- [something]", "pound on/-- [something]", "rap on/-- [something]" as knocking on.

Report knocking on something:
	say "[We] [give] [the noun] a quick knock, but nothing happens.";
	rule succeeds;

Report knocking on a door:
	say "[We] [give] [the noun] a quick knock, but no one seems to be home.";
	rule succeeds;
	


Book 8 - Script

Klimp in-the-office is a scene. Klimp in-the-office begins when Chief Huffton Klimp is in BOSH chief's office.
Moira in-the-office is a scene. Moira in-the-office begins when Moira Zin is in Moira's office.

Denouement is a scene.	
After printing the locale description when the location is front office for the first time during denouement:
	say "[We] [trip] over a newspaper left up against the door. [We] [pick] it up.";
	now the player carries the copy of the Washington Herald.

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
The Yeti is a subject. Understand "abominable snowman" as Yeti.
The Mothman is a subject. 
The Jersey Devil is a subject. 
The Flatwoods Monster is a subject. 
The Dover Demon is a subject.
The Kelly-Hopkinsville Encounter is a subject. Understand "Kelly/Hopkinsville/goblins" as the Kelly-Hopkinsville Encounter.
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
Time slips is a subject. Understand "slip" as time slips.
The Ark of the Covenant is a subject.
The Spear of Destiny is a subject. Understand "holy lance", "lance of longinus" as the Spear of Destiny.
Alchemy is a subject. Understand "philosopher's stone" as alchemy.
The Illuminati is a subject.
The New World Order is a subject.
Sacred geometry is a subject. 
Divining is a subject. Understand "dowsing", "divination", "rod" as divining. 
Crystals are a subject. Understand "crystal" as crystals. 
Ley lines are a subject. Understand "ley line" as ley lines. 
Leyden jars are a subject. Understand "Leyden jar" as leyden jars.
Astrology is a subject. Understand "horoscope" as astrology.   
The Freemasons is a subject. Understand "freemason" as the Freemasons. 
The Knights Templar is a subject.  
Atlantis is a subject. Understand "lost city" as Atlantis. 
Ancient astronauts is a subject. Understand "astronaut" as ancient astronauts. 
Ancient Egypt is a subject. Understand "pyramid/pyramids/sphinx" as Ancient Egypt. 
Crop circles is a subject. Understand "circle" as crop circles. 
ESP is a subject. Understand "telepathy", "extra-sensory perception" as ESP. 
Ghosts is a subject. Understand "ghost/poltergeist/poltergeists/spirit/spirits/haunting/hauntings" as ghosts. 
Vampires is a subject. Understand "vampire" as vampires.
Werewolves is a subject. Understand "werewolf" as werewolves. 
Zombies is a subject. Understand "zombie" as zombies. 
Hypnosis is a subject. Understand "hypnotism" as hypnosis. 
Invisibility is a subject. Understand "invisible" as invisibility.
Levitation is a subject. Understand "levitate" as levitation.
Telekinesis is a subject. Understand "telekinetic" as telekinesis.
Teleportation is a subject. Understand "teleport" as teleportation.
aliens is a subject. Understand "UFO/UFOs" as aliens.
Spontaneous human combustion is a subject. 
The Moberly-Jourdain Incident is a subject. Understand "moberly/jourdain" as the Moberly-Jourdain Incident.
Nikola Tesla is a subject. 
The Sargasso Sea is a subject.
The Marfa Lights is a subject.
V I Lenin is a subject. Understand "Vladimir/Illyich/Ulyanov" as V I Lenin.
THe Church of Scientology is a subject. Understand "dianetics" as the Church of Scientology.
UFOs is a subject. Understand "UFO" as UFOs.
Ouija boards is a subject. Understand "board" as Ouija boards.
The Bureau of Supernatural History is a subject.
Woonsocket is a subject. 
bear is a subject. Understand "bear from another world" as bear.

[spacetime is a subject. Understand "time" as spacetime. The printed name is "Time". the help text of SpaceTime is "According to Wikipedia, time is the continued sequence of existence and events that occurs in an apparently irreversible succession from the past, through the present, into the future.".]


The Bureau of Strange Happenings is a subject. Understand "BOSH" as The Bureau of Strange Happenings. [The help text of The Bureau of Strange Happenings is "[Our] employer, The Bureau of Strange Happenings."].

Book 10 - Kinds


Book 11 - The Players

To decide whether (actor - a person) is busy with respect to (actor2 - a person):
	decide on whether or not actor is phoning and actor is not talking with actor2;

Instead of an actor saying hello to someone when the noun is busy with respect to the actor:
	say "[The noun] is on the phone.";

Instead of quizzing someone about something when the noun is busy with respect to the actor:
	say "[The noun] is on the phone.";

Instead of asking someone for something when the noun is busy with respect to the actor:
	say "[The noun] is on the phone.";

Instead of asking someone to try doing something when the noun is busy with respect to the actor:
	say "[The noun] is on the phone.";


Chief Huffton Klimp is a man. The printed name of Klimp is "Chief Klimp". The description is "Huffton Klimp, or simply 'The Chief', who by his name and title should rightly be big and gruff, is a wiry guy with a thinning shock of red hair on top. Once the youngest and most devoted recruit in the Bureau, the years and his promotion to Bureau Head have not dulled his enthusiasm and idealism. He's a true believer in the existence of aliens, and he's convinced that the Bureau is the only thing standing between humanity and the alien menace. He's also convinced that the Bureau is the only thing standing between him and a comfortable retirement. He's a good guy, but he's a bit of a pain."

Klimp carries a mobile phone called klimp's mobile phone. Klimp owns Klimp's mobile phone. Klimp's mobile phone number is a phone number. Klimp's mobile phone number reaches Klimp's mobile phone. The player knows klimp's mobile phone number. Klimp knows Biff's mobile number.

Klimp's key is a key. Klimp's key unlocks Klimp's door. Klimp carries Klimp's key. 

arrival is a behavior.

Every turn when the current behavior of Chief Huffton Klimp is arrival:
	if the location of Klimp is Strip Mall Parking Lot South:
		try Klimp going west;
	otherwise if the location of Klimp is the front office:
		try Klimp going west;
	otherwise if the location of Klimp is the BOSH hallway and Klimp's door is locked:
		try Klimp unlocking Klimp's door with Klimp's key;
	otherwise if the location of Klimp is the BOSH hallway:
		try Klimp going west;
	otherwise if the location of Klimp is the BOSH chief's office:
		remove behavior from Klimp;

To tell klimp something he already knows:	
	say "Klimp looks at [us] funny. 'Uh, yeah, you already told me that.'";
	
[ Response of Klimp when asked about aliens:
	Say "Klimp assumes his lecturing pose. 'You know what I think, of course. They're here, they've been here for decades, maybe centuries, and they're a menace to the human race. We're the only thing standing between them and the end of the world.'"; ]
	
Greeting response for Klimp:
	say "Good day.";
	continue the action;
	
[ Response of Klimp when asked about Moira:
	Say "Klimp nods. 'Superior agent. I'd be honored to be compared to her.'"; ]
	
[ Response of Klimp when asked about Margaret:
	Say "He rolls his eyes. 'You take what you can get.'"; ]
	
[ Response of Klimp when asked about the Bureau of Strange Happenings:
	Say "'The Bureau will be the most important line of defense when the alien threat inevitably comes to fruition. Savra is a fool,' he says with a gleam in his eye."; ]

[ Response of Klimp when asked about Senator Savra:
	say "Klimp stops short of actually spitting. 'The lowest of the low.'"; ]

klimp is familiar. [The help text of klimp is "Chief Huffton Klimp, the erstwhile head of [our] poor little bureau.".]

to borrow the skull is a questioning quip. 
	Understand "juvenile/sasquatch" as to borrow the skull.
	It mentions the juvenile sasquatch skull.
	The comment is "[We] [ask], 'Chief, mind if I borrow the skull?'". 
	The reply is "He looks pained for a moment. 'Uh, I'd rather you didn't. It's fragile.'".
	It quip-supplies Chief Huffton Klimp.
	
After examining the juvenile sasquatch skull:
	queue Chief Huffton Klimp with to borrow the skull;

to-borrow-the-lenses is a questioning quip. 
	It is privately-named.
	The printed name is "to borrow the astral lenses".
	Understand "to/borrow/the/pair/of/astral/lenses/lens/glass/glasses" as to-borrow-the-lenses.
	It mentions the pair of astral lenses.
	The comment is "[We] [ask], 'Would it be okay if I borrowed the astral lenses for a while?'".
	The reply is "'Sure! Why don't you scout the locality for astral phenomena?'".
	It quip-supplies Chief Huffton Klimp.
	
After examining the pair of astral lenses:  
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
		now biff's mobile number reaches the blue flipphone;
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

The snarky remark is "Opulent quarters, indeed."

There is a fluorescent light source in Biff's office called biffo-light.

To say maybe insert computer muttering:
	if biff's computer is not seen:
		say "[paragraph break][reset LPR][We] [mutter], 'Where's my computer?'[run paragraph on]";

Biff's desk is a desk in Biff's Office. Biff's desk is scenery. It is privately-named. The printed name is "[our] desk".  Understand "desk" as biff's desk. The snarky remark is "It's suitable for holding all the work I'm avoiding."

biff's desk's drawer is locked. Understand "desk drawer" as biff's desk's drawer.

The blue flipphone is a phone. It is in biff's desk's drawer.
The snarky remark is "You little blue bastard. I hate you."

After answering the blue flipphone:
	say "[We] [answer] the phone. 'Hello?'
	
	'Hello, [agent],' says a mysterious voice. 'Took you long enough to answer. Now listen carefully. The fate of the world is at stake. Savra is going to move on the Dragon.';
	
	'Sure, buddy, but what does that mean?' Faraji asks.
	
	'Oh, right. You're not in the loop. The Dragon is the only hope for peace with the lizard men. Savra has already tried to kill him, but only managed to kill his parents. Now Savra's searching for the Dragon's secret hiding place. You have to stop him.'
	
	The voice continues, 'By the way, how's Klimp? How's the new office?'
	
	Faraji pauses. 'Who is this?' [we] [ask].
	
	'You can call me, I don't know, 'Blue Phone Guy' or something. It doesn't really matter. Now get to work.' The line goes dead.";
	end the story saying "Congratulations on answering the phone!";

[ After printing the player's obituary:
	say "[italic type][bracket]Seriously, is that it?[close bracket][roman type][paragraph break]";
	say "[bold type]Larch Faraji will return in 'BOSH II: The Dragon'.[roman type]"; ]

A key is a kind of thing.

The little grey key is a key. It is in biff's desk's drawer. The little grey key is familiar.
Biff's desk's drawer has matching key the little grey key. The description of Biff's desk's drawer is "The desk is a cheap DIY piece held together with hex screws."
The snarky remark of the little grey key is "And now you'll never get used, little key."

The hex screws are part of biff's desk's drawer. The description is "Several hex screws hold the desk drawer together." The snarky remark is "Hateful little things."

Taking apart the desk is an action applying to one thing. Understand "take apart [Biff's desk]", "take apart [Biff's desk's drawer]", "unscrew [Biff's desk]", "unscrew [Biff's desk's drawer]", "take [Biff's desk] apart", "take [Biff's desk's drawer] apart", "unscrew [hex screws]", "disassemble [Biff's desk]", "disassemble [Biff's desk's drawer]" as taking apart the desk when the location is Biff's office.

Instead of opening biff's desk when the player encloses the hex wrench and the blue flipphone is not handled:
	try taking apart the desk biff's desk;

Instead of opening biff's desk's drawer when the player encloses the hex wrench and the blue flipphone is not handled:
	try taking apart the desk biff's desk;

Check taking apart the desk when the player does not enclose the hex wrench:
	say "The screws are in there pretty tight. [We] [don't] have the right tools to get them out." instead;

Carry out taking apart the desk:
	now biff's desk's drawer is unlocked;
	now the player carries the little grey key;
	now the player carries the blue flipphone;

Report taking apart the desk:
	say "[We] [unscrew] the hex screws and [remove] the drawer. Inside, [we] find a little grey key and a blue flipphone. [We] [put] the drawer back together and [pocket] the key and the phone, being careful to leave the drawer unlocked.";

[ Biff's landline is scenery on Biff's desk. It is privately-named. The printed name is "[our] office phone". The description is "It's not yet hooked up." 
Understand "office/-- phone", "landline" as Biff's landline. ]

[After logging into Your Computer:
	now the help text of your password is "It's 'charon'. Is it so hard to remember?".]
	
Biff's chair is a supporter in Biff's Office. Biff's chair is scenery. Biff's chair is enterable. The description is "It's just a plain old office chair. The lumbar support control is broken.". Understand "seat", "desk chair", "office chair" as Biff's chair. The printed name is "[our] chair".
Understand "Faraji's/Larch's" as Biff's chair. 
The snarky remark is "It's not old, it's vintage."

[ taking Biff's landline is stealing equipment. ]
  
[ Instead of stealing equipment:
	say "The Federal government frowns upon employees taking office equipment home with them." ]

The description of the desk is "The desk is a cheap DIY piece held together with hex screws. It has a single drawer [regarding Biff's desk][if Biff's desk's drawer is closed]which is closed.[otherwise]which is open.[end if][if Biff's desk's drawer contains something and Biff's desk's drawer is open] The drawer contains [a list of things in Biff's desk's drawer].[end if]" 

After examining the desk:
	now player knows hex-screws;

In Biff's desk's drawer is an ID. Biff's desk's drawer is closed. [Your desk's drawer is locked.]

[The help text of the bureau credit card is "The pre-paid credit card issued to [us] by the Bureau. Its balance is currently [balance of the bureau credit card]."].
	
The photo of Pluto is here. It is scenery. Understand "dog/pluto/photo/picture" as Photo of Pluto. The description is "It's a picture of [our] best friend, Pluto.".
The snarky remark is "He's a good dog."

The degree is here. It is scenery. Understand "diploma" as degree. The description is "It's [our] Bachelor's degree in Nonstandard Investigative Techniques from Wichita Institute of Technology. Which officially makes [us] a NITWIT. [We] [shake] [our] head and [sigh].". 
The snarky remark is "It's a real degree, I swear."

[ The movie poster is here. It is scenery. Understand "Room/of/Lost/Time" as the movie poster. The description is "It's [our] favorite movie, 'The Room of Lost Time', from 1957. The tagline is 'Can one lone time traveler stop invaders from the moon?'" ]

The trivia competition award is scenery in biff's office. "A framed certificate proclaiming [us] the winner of the 2006 Baltimore County Edgar Allan Poe Trivia Competition."


Green Pheasant is scenery in biff's office. Understand "print/hiroshige/utagawa/art/painting/bird" as Green Pheasant. "A print of a beautiful green pheasant in a tree, by the 19th century Japanese artist Utagawa Hiroshige."

The drawing of the Pitfall snake is scenery in biff's office. Understand "pencil/video/game/cobra/darius/5200" as drawing of the pitfall snake. "Pencil on canvas, it's a fuzzy drawing of the 8-bit snake in the classic video game Pitfall."
The snarky remark is "Some day it'll be worth something."
 
The photo of soccer team is scenery in biff's office. Understand "Faraji's/their soccer/team" as the photo of soccer team. Understand "picture" as the photo of soccer team. "[we're] third from left in the front row."
The snarky remark is "We were the best team in the league. At least, in our hearts."

The green smartphone is a phone. It is mobile. The description is "It's a pretty nice phone, only a couple of years old, but [we] [don't] have time to play with it. [We] [need] to get to the office."
The snarky remark is "Nice phone." 

Instead of switching on the green smartphone:
	say "[The green smartphone] is out of batteries." instead;

Instead of switching off the green smartphone:
	say "It's not on." instead;

Check calling someone on the green smartphone:
	say "[The green smartphone] is out of batteries." instead;
	
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

Check opening Biff's desk's drawer when biff's desk's drawer is locked and the blue flipphone is in biff's desk's drawer and the blue flipphone is ringing for the first time:
	now the player knows desk-locked;
	say "[We] [try] to open the desk to answer the phone, but it seems to be locked. [We] [sigh]. 'Margaret must have the key.'[paragraph break]" instead; 
	
After opening Biff's desk's drawer for the first time:
	now the player does not know desk-locked; 
	
Section 2 - Back Lot

The back lot is a room. It is in BOSH HQ. It is outdoors. 
The snarky remark is "Let me guess, this is the break room." 

The BOSH back door is a door. The printed name is "white metal door". Understand "backdoor/white/metal" as BOSH back door. It is west of biff's office and east of back lot. It is scenery. It is closed, locked, lockable, and openable. "An unremarkable metal door painted white. [state of BOSH back door][run paragraph on]".
The snarky remark is "[door snark]".

To say door snark:
	if location is biff's office:
		if the back lot is unvisited:
			say "Who knows what exotic vistas lie beyond this door?[run paragraph on]";
		otherwise:
			say "I've been outside. You ever see 'Silo'?[run paragraph on]";
	otherwise:
		say "The door to paradise. I'm sorry, I mean my office.[run paragraph on]";

Before opening BOSH back door when BOSH back door is locked:
	now player knows back-door-is-locked;

The white key is a key in the room of stuff.

The BOSH back door has matching key the white key.
When play begins:
	now Margaret carries the white key.
	
The laundromat back door is a door. It is north of back lot and south of the laundromat back room. It is scenery. It is closed, locked, lockable, and openable. "An unremarkable metal door painted white. It is closed.". 	 
The snarky remark is "Open up; I need to do my laundry."

The description of the back lot is "This is a small area of asphalt between the building and a chain link fence looking in on an industrial property. A door to east leads into the BOSH offices, and one to the north enters the laundromat. There is a blue dumpster here."

The industrial property is scenery in the back lot. "The chain link fence looks in on a small industrial property. There's a bunch industrial-type stuff in there, but nothing interesting."
The snarky remark is "So far the vistas in Swamp Park are a little underwhelming."

The chain link fence is scenery in the back lot. "An ordinary chain link fence, about eight	feet high."
The snarky remark is "Are we keeping them out, or are they keeping us in?"

The blue dumpster is scenery in the back lot. "An everyday blue dumpster, about six feet high."
The snarky remark is "Oh, this is where I left my dignity."

Check entering the blue dumpster:
	say "[We] [are] not yet at the point of dumpster diving." instead;
	
Climbing into is an action applying to one thing. Understand "climb into [thing]" as climbing into.

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

Carry out knocking on the BOSH back door when the location is the back lot and the BOSH back door is locked:
	move margaret to biff's office;
	try margaret unlocking the BOSH back door with the white key; 
	try margaret opening the BOSH back door;
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
"It's smelly, but at least the top is open." Understand "the/-- dumpster" as inside-the-dumpster.

The snarky remark is "I'll get that guy Daniels for this."

Instead of going when the location is inside-the-dumpster and the noun is not outside:
	say "Blue walls block every direction.";

 
Section 3 - Hallway

Biff's door is a door. It is privately-named. It is scenery. The printed name is "[our] door". It is north of Biff's Office and south of the BOSH office hallway. It is open. Understand "Faraji's/Goldberg's/Gaunt's/Larch's/Petula's/Ezra's/office/door" as Biff's door. 
		
Klimp's door is a door. It is west of the BOSH office hallway and east of the BOSH chief's office. It is scenery. It is closed and locked. It is openable and lockable.
Moira's door is a door. It is north of the BOSH office hallway and south of Moira's office. It is scenery. It is closed and locked. It is openable and lockable.

the BOSH office hallway is in BOSH HQ. The printed name is "hallway". "[Our] office is to the south, Klimp's is to the west, and Moira's is to the north. The front office is east. [door descriptions]."

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

the front office is a room. It is east of the hallway. It is in BOSH HQ. It is outdoor-adjacent.
The snarky remark is "This place just screams 'government efficiency'."

There is a fluorescent light source in the front office called bfo-light.

Understand "storefront" as the front office.

The description of front office is "It's really a small storefront done up to resemble an office. A store sales counter serves as a front desk, behind which are located shelves of office supplies and a row of drawers. There are also a couch and coffee table here creating a makeshift seating area. An old department store clothing rack serves as a coatrack. Photos on the walls picture the Bureau in better days. A stack of used and empty cardboard boxes sits in one corner.

The exit is to the east, while the office continues via a hallway to the west.".

The front window is scenery in the front office. "The front window looks out onto the street. It's a little grimy, but it's not like there's much to see out there."
The snarky remark is "Look, I can write my name in the dirt."

The coffee table is a scenery supporter in front office. "This doesn't look like government-issue furniture. More like thrift store. It's scuffed, but at least it's sturdy."
The snarky remark is "The rings are the mark of quality."

The couch is an enterable scenery supporter in front office. "Apparently the bureau did make off with at least one piece of government furniture. A bland, institutional piece with fake leather seats, it's at least preferable to second-hand upholstery." Understand "sofa" as couch.
The snarky remark of the couch is "There goes the department budget for the month."

The makeshift seating area is scenery in front office. "A coffee table and couch greet visitors to the office, as if any are expected." It is unfeelable.

The coatrack is scenery in front office. "It's an old clothing rack from the department store which formerly occupied this space." Understand "old/clothing/rack/coat" as the coatrack.
The snarky remark of the coatrack is "I wonder what's on sale today?"

To say photos description:
	let character list be { Ezra Gaunt, Petula Goldberg, Larch Faraji };
	remove the player from character list;
	say "The photo of [character list] smiling together is particularly poignant, as they were just let go last month";

Some Bureau photos are scenery in the front office. "[photos description].". 
The snarky remark of the Bureau photos is "Klimp, Ezra, Petula, and I used to go out for drinks at the Cock and Bull in downtown DC. Good times.";

Margaret Chao is in front office.  

There is a copy of the Washington Herald. The description is "The front page story is an account of the disappearance of the grandson of Senate Homeland Security Committee chairman Englund Fryes. His parents, including the Senator's son, were brutally murdered in their home, but the boy, Draco Fryes, is missing and presumed kidnapped. So far there has been no ransom demand.". 
Understand "newspaper", "paper", "news" as the Washington Herald.

The BOSH front desk is a scenery supporter in front office. Understand "store", "sales", "counter", "margaret's desk" as the BOSH front desk. The description is "The former sales counter now functions as a desk for the office manager (currently [Margaret]). Behind it are a number of shelves holding office supplies."
The snarky remark of the BOSH front desk is "I wonder if they'll let us keep the cash register."

The shelves of office supplies are in front office. They are plural-named. They are scenery. "Pens, paper, nothing [we're] really concerned with now." Understand "row/of/drawers/pens/pen/pencils/pencil/paper/papers" as the shelves of office supplies.

The thumb drive is a thing in the room of stuff. The description of the thumb drive is "It's a red plastic thumb drive, with what look like symbols scratched on the surface, but they're like no symbols you've ever seen. The metal USB end is somewhat corroded." Understand "USB/flash/memory" as the thumb drive.
The snarky remark of the thumb drive is "Some crazy dude mailed this to me last month, said he found it in an ancient Onandaga root cellar on a farm in upstate New York. Claimed it was proof of time travel."

To recognize is a verb.
Some strange symbols are part of the thumb drive. The description is "They look like some kind of language, but none [we] [recognize]."

some cardboard boxes are scenery in front office. "There is a stack of boxes in the corner.". Understand "box" as cardboard boxes.
The snarky remark of the cardboard boxes is "There's something satisfying about flattening boxes."

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
The snarky remark of Biff's computer is "It doesn't run much worse than it did before."

Check taking Biff's computer:
	say "[Biff's computer] is too unwieldy to carry around." instead;
 
Instead of examining or searching Biff's computer when the thumb drive is not seen: 
	say "[description of biff's computer] But [we] [do] find a thumb drive and take it.";
	now the player carries the thumb drive;
	now the thumb drive is seen;

The behind description of the BOSH front desk is "There are a number of shelves of office supplies behind the desk. There is also a heating vent on the floor here.";

The heating vent is a scenery container. It is openable, closed, lockable, transparent and locked. "A typical air register with a grill which one would hope would stop things like, say, a hex wrench from falling through. It's set in the floor behind the front desk. The vent is held closed by four screws." Understand "heat/air/conditioning/register/grill" as the heating vent. It is undescribed. 
The snarky remark of the heating vent is "[if player knows hex-screws and player knows key-is-lost and hex wrench is in heating vent]It gets better and better[otherwise if hex wrench is in heating vent]I hope we don't need that hex wrench[otherwise]Stupid vent, stupid screws[end if]."

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
	now the player knows vent-screws.
 
Instead of removing hex wrench from heating vent when the heating vent is closed:
	say "[Our] fingers won't fit through the openings in the vent. [We]'ll have to open it first."; 
	
Instead of opening the heating vent when the heating vent is locked:
	say "The vent is held closed by four screws.";
	now the player knows vent-screws.
	
The can't reach inside closed containers rule response (A) is "[if the noun is the heating vent][Our] fingers won't fit through the openings in the vent. [We]'ll have to open it first[otherwise][The noun] [aren't] open[end if]."

Instead of unlocking the heating vent with the red screwdriver when the hex wrench is in the heating vent:
	now the player carries the hex wrench;
	say "[We] [unscrew] the four screws and [remove] the vent cover. [We] [take] the hex wrench from inside and [put] the cover back on.";

Instead of unlocking the heating vent with the red screwdriver when the hex wrench is not in the heating vent:
	say "[We] [have] already gotten the hex wrench out of the vent.";

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
		say "[Klimp] says 'What's with that ringing? Someone answer it!'".		

The snarky remark of the BOSH Chief's office is "It's like a museum of bad taste."

The Chief's desk is a supporter in BOSH Chief's Office. It is scenery. "This desk is a beautiful assembly of smokey glass and chrome framing. The 'legs' form shelves where Klimp keeps yet more curios. One might wonder where Klimp gets the money."
The snarky remark of the Chief's desk is "Most of us just want a surface to keep our stuff off the floor."
The curios are scenery in the BOSH Chief's office. The description is "The desk shelves are full of oddities and memorabilia, most notable of which is a polished orange marble dodecahedron.".

Klimp's Computer is a thing on the chief's desk. It is scenery. "The computer is a sleek, modern model. It sports a screen saver of what looks like the Hopkinsville goblin."

The desk shelves are a supporter. They are part of the Chief's desk. They support a polished orange marble dodecahedron. The description of the polished orange marble dodecahedron is "A relic of the Chief's sacred geometry phase.". Understand "legs" as desk shelves. 

Chief Huffton Klimp owns the polished orange marble dodecahedron. 
The snarky remark of the polished orange marble dodecahedron is "I'm partial to Catalan solids, actually."

The chief's black leather swivel chair is a supporter in BOSH Chief's Office. It is enterable. It is scenery. "Nice chair. Good lumbar support."

The globe is a thing in the BOSH Chief's office. It is scenery. "The globe is very handsome with lots of intriguing detail. Unfortunately, Klimp has marred it with thumbtacks and string marking the world's 'leylines'."
The snarky remark of the globe is "This is what happens when you let Klimp play with the office supplies."

The armchair is a supporter in BOSH Chief's Office. It is enterable. It is scenery. "Plush and comfortable with a yellow and red striped design. Absolutely hideous.". Understand "chair" as the armchair.
The snarky remark of the armchair is "It's like a clown exploded."

The mahogany side table is a thing in BOSH Chief's Office. It is scenery. "This is a nice piece, quite out of place in the BOSH offices. Flame mahogany with very pretty inlays."
The snarky remark of the mahogany side table is "Even Klimp gets it right sometimes."

The bookcase is a thing in BOSH Chief's Office. It is scenery. "The Chief's library boasts many interesting titles, from Alton Cherry's [italic type]Waiting for the Aliens[roman type] to Debi Bosworth's [italic type]My Travels in Time[roman type]. For the uninitiated, there is also a copy of [italic type]The Dictionary of Strangeness[roman type]." 
Understand "books/bookshelf/bookshelves", "book case", "book shelf", "book shelves" as bookcase.
The snarky remark of the bookcase is "So many books, so little sense."

Waiting-for-the-Aliens is a thing in BOSH Chief's Office. It is privately-named. The printed name is "Waiting for the Aliens". It is scenery. Understand "Waiting/for/aliens/Alton/Cherry/book" as Waiting-for-the-Aliens. "Alton Cherry's [italic type]Waiting for the Aliens[roman type] is a classic of the genre. More a history of publicly-known material than an argument for or against the existence of aliens on earth, it is accessible to believers and non-believers alike."
The snarky remark of Waiting-for-the-Aliens is "I'm waiting for the sequel, 'Waiting for the Aliens to Leave'."
 
Travels in Time is a thing in BOSH Chief's Office. It is scenery. Understand "My Travels in Time" as Travels in Time. Understand "Debi/Bosworth/book" as Travels in Time. "Debi Bosworth's [italic type]My Travels in Time[roman type] is the account of Ms. Bosworth's alleged travels to the past and future. She is careful to point out that she has never known a man in a blue box."
The snarky remark of Travels in Time is "Glad to see the Chief is keeping up with the classics."

The Dictionary of Strangeness is a thing in BOSH Chief's Office. It is scenery. Understand "book" as the Dictionary of Strangeness.
"The Dictionary of Strangeness is a compendium of the weird and wonderful, from the Abominable Snowman to Zener Cards. Flipping through it, [we] [come] upon an entry:

[random entry]"

To say random entry:
	choose a random row in the Table of Random Entries;
	say "[bold type][The subject entry][roman type][paragraph break][discussion entry]";

After examining the Dictionary of Strangeness for the first time:
	say "[Klimp] says 'If you want to know more about anything in there, just ask me.'"; 

Looking it up in is an action applying to two things. Understand "look up [any subject] in [something]", "look [any subject] up in [something]" as looking it up in. Understand "consult [something] about [any subject]" as looking it up in (with nouns reversed). Understand "read [something] about [any subject]" as looking it up in (with nouns reversed). Understand "read about [any subject] in [something]" as looking it up in.

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
New World Order	"The New World Order is a theory which hypothesizes a secretly emerging totalitarian world government. Despite the overwhelming evidence for its existence, the New World Order is often dismissed as a conspiracy theory."
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


The Chief's shelves are a supporter in BOSH Chief's Office. They are scenery. "These shelves sport an array of oddities and memorabilia."
  
The juvenile sasquatch skull is a thing on the chief's shelves. Chief Huffton Klimp owns the skull. The description of the skull is "It looks a bit Neanderthal, actually." 
The snarky remark of the skull is "Cryptozoology is a science, right?"
 
The antique wooden file cabinet is a container in the BOSH Chief's office. It is closed and locked. It is scenery. "Looks like it was taken out of an old library somewhere."

The prints are scenery in the BOSH Chief's office. The description is "There are three prints, the most striking of which is a neon-hued abstract by Diego Ernesto Diaz, the late Mexican painter, titled 'Hora de la Muerte'.".
Understand "painting/paintings" as prints.
The snarky remark of the prints is "The Chief's taste in art is as good as his taste in armchairs."

Hora de la Muerte is scenery in the BOSH Chief's office. Understand "Diego/Ernesto/Diaz/abstract/neon/hued" as Hora de la Muerte. "The print is a riot of color, with a central figure that could be a skeleton. It's a bit much for the office, but it's certainly striking."

The skeleton is part of the Hora de la Muerte. The description is "It's a stylized skeleton, painted in neon hues. It's a bit macabre, but it's also a bit fun."
 
The oddities are on the chief's shelves. They are scenery. The description is "This and that piece of junk that Klimp thinks is funny or interesting, including a pair of astral lenses and a juvenile sasquatch skull."
Understand "memorabilia", "junk", "stuff", "knick-knacks", "knick knacks" as the oddities.

A pair of astral lenses is on the chief's shelves. It is ambiguously plural. Chief Huffton Klimp owns the pair of astral lenses. The description of the pair of astral lenses is "To all appearances an ordinary pair of glasses, the astral lenses allegedly reveal the existence of extra-dimensional pathways." The pair of astral lenses is wearable. 
Understand "glasses/lens/glass" as the pair of astral lenses.
The snarky remark of the pair of astral lenses is "These are useful for navigating the TARDIS."

Check wearing the pair of astral lenses when the location is fluorescent-lit:
	say "[We] [try] to put on the astral lenses, but the fluorescent light is blinding. [We] [take] them off again." instead;	

Section 6 - Moira's office
				 
Moira's office is in BOSH HQ. There is a fluorescent light source in Moira's office called moira-light.
"It is, like Moira herself, neat and orderly. She's clearly made the most of the meager funds she had for furnishing her office. Behind a modest yet functional desk is a modest yet functional office chair. Her bookshelves are filled with titles relating to investigative techniques, law, and skepticism. In the east wall is a closet door. The exit is to the south."
The snarky remark of Moira Zin is "The problem with Moira is that she's too good at her job. Slow down and let the rest of us catch up, will you?"

There is a closet in Moira's office. The closet is a container. It is openable and closed. It is lockable and locked. It is scenery.
[There is a breaker box in the closet. It is an openable container. It is closed. It is fixed in place. The description is "It's a small metal box affixed to the back wall of the closet. It is featureless apart from the latch."
There is a circuit breaker in the breaker box. It is fixed in place.
A circuit breaker is a device. The description is "The circuit breaker is a single switch, labeled `20 amps`."]

Moira's desk is a supporter in Moira's office. It is scenery. The description is "It's a pretty ordinary mass-produced desk, but Moira's re-stain job on it has truly transformed it. Really, is there anything she can't do?"
The snarky remark of Moira's desk is "She should have been an interior decorator."

An openable container called Moira's drawer is part of Moira's desk. 
	
Moira's chair is an enterable supporter in Moira's office. It is scenery. The description is "It's a testament to Moira's competence and taste that she managed to acquire such a nice chair with the funds available.".

Moira's bookshelves are a scenery supporter in Moira's office. The description is "".
Understand "shelves/books/shelf/bookshelf" as Moira's bookshelves.
The snarky remark of Moira's bookshelves is "I wonder if she has a book on how to be so good at everything."


	
The borrowed book is an object that varies. The borrowed book is initially nothing.

to borrow a book is a questioning quip.
	It is silent.
	It quip-supplies Moira Zin.
	It is repeatable.

plausibility rule for to borrow a book:
	if the borrowed book is nothing:
		it is plausible;
	it is implausible;

Check discussing to borrow a book when the borrowed book is something:
	say "Moira shakes her head. 'Sorry, I'll only lend one book at a time.'" instead;

After discussing to borrow a book:
	queue Moira Zin with to borrow a book;	
	Prepare to ask what do you want to borrow from Moira Zin;
	
After examining a tome when the noun is owned by Moira Zin and the noun is supported by Moira's bookshelves:
	queue Moira Zin with to borrow a book;

after examining moira's bookshelves:
	queue Moira Zin with to borrow a book;

No-Myth-After-All is a tome on Moira's bookshelves. It is owned by Moira Zin. It is loanable. 
The printed name is "No Myth After All: A New Perspective on Atlantis".
Understand "No/Myth/After/All/A/New/Perspective/on/Atlantis" as No-Myth-After-All.
The description is "This is a book by the noted skeptic and investigator Niz Ariom. It's a comprehensive look at the evidence for and against the existence of the lost city of Atlantis. It's a bit dry, but it's a classic of the genre."
The snarky remark of No-Myth-After-All is "Anyone who can make Atlantis boring is a genius."

Twenty-great-theses is a tome on Moira's bookshelves. It is owned by Moira Zin. It is loanable.
The printed name is "Twenty Great PhD Theses of the Twentieth Century". 
Understand "Twenty/Great/PhD/Theses/of/the/Twentieth/20th/Century" as Twenty-great-theses.
The description is "This is a collection of the most influential PhD theses of the last century. It's a bit of a slog, but it's a good reference for anyone interested in the history of science."
The snarky remark of Twenty-great-theses is "Less fun than it sounds."

Anatomy of a Hoax is a tome on Moira's bookshelves. It is owned by Moira Zin. It is loanable.
The printed name is "Anatomy of a Hoax: Writings on Modern Medicine's Greatest Myths".
Understand "writings/on/modern/medicine's/greatest/myths" as Anatomy of a Hoax.
The description is "A collection of essays debunking the most persistent myths about modern medicine; for example, the existence of the gall bladder."
The snarky remark of Anatomy of a Hoax is "Appendix A: The appendix."

Tribes of New York is a tome on Moira's bookshelves. It is owned by Moira Zin. It is loanable.
The description is "A look at the various Native American tribes of New York state, from the pre-Columbian era to the present day."

Applied Speculation is a tome on Moira's bookshelves. It is owned by Moira Zin. It is loanable.
The description is "A collection of essays on the application of speculative reasoning to the investigation of paranormal phenomena."
The snarky remark of Applied Speculation is "Who needs evidence?"

Biking to the Ferry is a tome on Moira's bookshelves. It is owned by Moira Zin. It is loanable.
The printed name is "Biking to the Ferry: a Memoir".
Understand "a/-- memoir" as Biking to the Ferry.
The description is "A memoir of a summer spent biking around the islands of the Puget Sound."
The snarky remark of Biking to the Ferry is "How many times can one person fall off a bike?"

Nonstandard Investigative Techniques is a tome on Moira's bookshelves. It is owned by Moira Zin. It is loanable. 
The description is "Your bible from college, a comprehensive look at the most effective nonstandard investigative techniques, from the use of psychics to the application of chaos theory to criminal investigation."
The snarky remark of Nonstandard Investigative Techniques is "And just look at me now."

Calculus-with-Infinitesimals is a tome on Moira's bookshelves. It is owned by Moira Zin. It is loanable. 
The printed name is "Calculus with Infinitesimals". Understand "Calculus/with/Infinitesimals" as Calculus-with-Infinitesimals.
The description is "The classic text on the use of infinitesimals in calculus."
The snarky remark of Calculus-with-Infinitesimals is "A truly useful text."

Three Stigmata of Palmer Eldritch is a tome on Moira's bookshelves. It is owned by Moira Zin. It is loanable. The printed name is "The Three Stigmata of Palmer Eldritch". 
The description is "A classic of science fiction, this is a novel by Philip K. Dick."
The snarky remark is "Haven't read it. I'm saving it for when I need a mental health break."

Book-borrowing a tome (called T) when T is supported by Moira's bookshelves and T is owned by Moira Zin:
	now the player carries T;
	now the player owns T;	
	say "[We] [take] [T].";
	now the borrowed book is T;
	rule succeeds;

After giving a loanable tome to Moira when the borrowed book is the noun:
	now the borrowed book is nothing;
	now the noun is supported by Moira's bookshelves;
	now the noun is owned by Moira Zin;
	say "Moira smiles. 'Thanks for getting it back to me.' She puts the book back on the shelf.";
	
After putting a loanable tome on Moira's bookshelves when the borrowed book is the noun:
	now the borrowed book is nothing;
	now the noun is owned by Moira Zin;
	continue the action;

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

The utility closet is dark. It is in BOSH HQ. It is a leavable room. The egress is west. "It is cramped in here. Other than Faraji, the only thing in here is a breaker box on the wall."
The snarky remark of the utility closet is "I guess I should be glad that this isn't my office."

The breaker box is a fixed in place container in the utility closet. It is closed, locked, lockable, and openable. The description is "It's a small metal box affixed to the back wall of the closet. There is a small keyhole in the front."
The keyhole is part of the breaker box. The description is "It's a small keyhole in the front of the box."

Instead of knocking on the closet door when the location is the utility closet and the closet door is locked and the closet door is closed:
	move Moira Zin to Moira's Office;
	now moira's door is unlocked;
	if Moira Zin is in Moira's Office:
		say "After a few seconds, someone inserts a key in the lock and opens the door. It's [player's surname]'s colleague Moira Zin. 'How'd you get in there, [player's forename]?'
		
		You exit the closet.";
		move the player to Moira's Office;
		queue Moira Zin with about the hyperdimensional portal;
		queue Moira Zin with to wait for the report;
		now the current interlocutor is Moira Zin;
		now the closet door is unlocked;
		now the closet door is open;

Rule for writing a paragraph about Moira Zin:
	say "Moira Zin is here, arranging her new office.";
		
about the hyperdimensional portal is an informative quip.
	The comment is "[We] [scratch] [our] head. 'Um, I was transported there through an hyperdimensional portal. How's your morning been?'".
	The reply is "[Moira] raises an eyebrow. 'Well, I suggest you let the Chief know.'".
	It is ubiquitous.
	It quip-supplies Moira Zin.
	It rules out to wait for the report.
			
to wait for the report is an informative quip.
	The comment is "[We] [say] 'Strange things are afoot around here, Agent Zin.'".
	The reply is "'Do tell,' says Moira.
	
	'After I talk to Klimp.'".
	It is ubiquitous.
	It quip-supplies Moira Zin.
	It rules out about the hyperdimensional portal.
	
	

Book 15 - The Phone Call

[fill this in]

The unknown voice is a person.
The mysterious phone is a phone. It is owned by the unknown voice.

Book 16 - Moving Between Rooms 

 
 



To decide which text is the transition for (source - a room) to (target - a room):
	repeat through the Table of Transitions:
		if (source room entry is source) and (target room entry is target):
			if there is a used entry and used entry is false:
				decide on transition text entry;
			if there is no used entry:
				decide on transition text entry;
	decide on "none"; 
	
To mark transition from (source - a room) to (target - a room) as used:
	repeat through the Table of Transitions:
		if (source room entry is source) and (target room entry is target):
			now used entry is true;
 
After going from a room (called R1) to a room (called R2): 
	let transition text be the transition for R1 to R2;
	if transition text is not "none":
		say "[transition text][paragraph break]";
		mark transition from R1 to R2 as used;
	continue the action;

Chapter 1 - Leaving the Front Office

[ After going from front office to the BOSH office hallway for the first time:
	If the current interlocutor was Margaret: 
		say "[We] [extricate] [ourselves] from talking with Margaret.";
	continue the action; ]
	
Chapter 2 - Klimp Arrives

Book 17 - Commerce and Conversation

Before quizzing someone about something when the noun owns the second noun:
	if the noun is willing to sell the second noun:
		say "'I'll sell [regarding the second noun][them] for [price of the second noun].'";
		stop the action;

Before requesting someone for something when the noun owns the second noun:
	if the noun is willing to sell the second noun:
		say "'I'll sell [regarding the second noun][them] for [price of the second noun].'";
		stop the action;

   
Book 18 - Sound

Book 18.5 - Quiz table

To start is a verb. To begin is a verb.

Table of Quiz Topics (continued)
subject (a thing)	interlocutor (a person)	comment (a text)	reply (a text)
Larch Faraji	Margaret Chao	"Margaret, [we] say, 'just what's got into me lately?'"	"'You're just disoriented from the move,' Margaret says. 'It'll get better.'"
Larch Faraji	Chief Huffton Klimp	"'Hey, Chief,' [we] say, 'we need to talk about -- '"	"'Sure, Faraji,' Klimp says, 'but have you seen this article about the Piltdown Man?'"
Larch Faraji	Moira Zin	"'Moira,' [we] say, 'I need your opinion. Am I off my game?'"	"'No, you're fine,' Moira says. 'You just need a break.'"
Aliens	Chief Huffton Klimp	"'Chief,' [we] say, 'are aliens --'"	"Klimp assumes his lecturing pose. 'You know what I think, of course. They're here, they've been here for decades, maybe centuries, and they're a menace to the human race. We're the only thing standing between them and the end of the world.'"
Aliens	Moira Zin	"'Moira,' [we] say, 'what's your take on aliens?'"	"Nonsense,' Moira says. 'They're a convenient excuse for people who don't want to face the truth.'"
Moira Zin	Chief Huffton Klimp	"'Moira --'"	"'Yes, yes, east and then north. I'm busy.'"
Moira Zin	Margaret Chao	"'Margaret,' [we] say, 'what do you think of Moira?'"	"'Well, I've only known her a few weeks,' Margaret says, 'but she seems really smart.'"
Moira Zin	Moira Zin	"'Moira,' [we] say, 'how are you doing with everything that's been going on?'"	"'I'm fine,' Moira says. 'Why wouldn't I be?'"
Chief Huffton Klimp	Margaret Chao	"'Margaret,' [we] say, 'what do you think of Klimp?'"	"Margaret looks around and then whispers, 'I don't think he likes me.'"
Chief Huffton Klimp	Moira Zin	"'Moira,' [we] say, 'you've known Klimp longer than anyone. What do you think of him?'"	"'He's a child. That's what you have to understand about Klimp,' Moira says. 'He's never met a stupid idea he didn't like.'"
Chief Huffton Klimp	Chief Huffton Klimp	"'Chief,' [we] say, 'what's going --'"	"'Have you heard about these new ancient ruins in Kamchatka? Apparently there are some very interesting Koryak artifacts there that suggest a connection to the ancient Sumerians.'"
Margaret Chao	Margaret Chao	"'How are you doing, Margaret?'"	"'I'm great!' Margaret says. 'So many things to unpack!'"
Margaret Chao	Moira Zin	"'Moira,' [we] say, 'what do you think of Margaret?'"	"'She'll do,' Moira says. 'She's a bit too eager, but she'll do.'"
Margaret Chao	Chief Huffton Klimp	"'Chief,' [we] say, 'Margaret --'"	"'I'm reading about the latest discoveries in the field of cryptozoology,' Klimp says. 'Did you know that the Yeti is actually a type of bear? I don't mean a regular bear, but a bear that's not of this world.'"
Bureau of Strange Happenings	Chief Huffton Klimp	"[We] [say] to Klimp, 'the Bureau --'"	"'The Bureau will be the most important line of defense when the alien threat inevitably comes to fruition. Savra is a fool,' he says with a gleam in his eye."
Senator Savra	Chief Huffton Klimp	"'So what is Savra --'"	"'Savra -- that imbecile. He's a fool and a coward. He's the reason we're not prepared for the alien invasion.'"
Time-travel	Chief Huffton Klimp	"'Is time travel --'"	"'Time travel is a fact,' Klimp says. 'Tesla had a time machine. I've seen it.'"
Astral plane	Chief Huffton Klimp	"'Chief, is the astral plane --'"	"'I've heard of people who have been there, even lived there. My friend Doris. True story.'"
Doris	Chief Huffton Klimp	"'Chief, who is D--"	"'Doris? He's a friend of mine. Works for the Bureau. Sort of. Snappy dresser. Prone to outlandish stories. Ask him about the Mothman.'"
The Bermuda Triangle	Chief Huffton Klimp	"'The Ber--'"	"'Oh please, the Bermuda Triangle is a hoax. It's just a place where ships and planes go down. It's not like it's a portal to another dimension. That's the Sargasso Sea.'"
Loch Ness Monster	Chief Huffton Klimp	"'Chief, have you seen the --'"	"'Loch Ness Monster? Of course. I've seen it. It's a plesiosaur, you know. From another world.'"
The Roswell Incident	Chief Huffton Klimp	"'Chief --'"	"'Roswell? It's not what you think. It's not what anyone thinks. It's a cover-up, but not for what you think.'"
The Chupacabra	Chief Huffton Klimp	"'I'm sure you know all about the Chu--'"	"'--pacabra? Yes, I do. It's not of this world, you know.'"
The Sasquatch	Chief Huffton Klimp	"'Chief, does Sasquatch --'"	"'I've often thought that it would be a great subject for a television show. Not a documentary, mind you, but a drama. That guy, you know, from the show about the doctor in the spaceship, he'd be perfect as Sasquatch.'"
Yeti	Chief Huffton Klimp	"'Is the Yeti --'"	"'The Yeti is a bear. I've seen the evidence. It's a bear. A bear from another world.'"
Sacred geometry	Chief Huffton Klimp	"'Whatever happened to your --'"	"'--sacred geometry phase? Meh. I've moved on. Shapes are shapes.'"
The Moberly-Jourdain Incident	Chief Huffton Klimp	"'[We] [say] to Klimp, 'the Moberly-Jourdain --'"	"'Incident? Time slips are cool. I've seen one. I've been in one. Or was it two? I can't remember."
The Mothman	Chief Huffton Klimp	"'What was the Mothm--'"	"'Geez, West Virginia has the lamest cryptids. The Mothman is just a big owl. A big owl from another world.'"
The Jersey Devil	Chief Huffton Klimp	"'Chief,' [we] [say] to Klimp, 'the Jersey --'"	"Yes, yes, the Jersey Devil. It's a kangaroo. A kangaroo with wings. From another world."
The Flatwoods Monster	Chief Huffton Klimp	"'So I haven't heard much about this one,' [we] [say]. 'The Flatwoods --'"	"'Oh yes, the Flatwoods Monster. It's not even a cryptid. It's a robot from the CIA. I've seen the evidence.'"
The Dover Demon	Chief Huffton Klimp	"'Chief, what's the deal with the Dover --'"	"'Demon? It's no demon. It's a monkey crossed with a snowy owl. By the way, have you seen the news about the recently discovered alien temple under the basement of the Smithsonian Castle?'"
The Kelly-Hopkinsville Encounter	Chief Huffton Klimp	"[We] [say] to Klimp, 'I was reading about the K--"	"'Kelly-Hopkinsville Encounter? It's just silly. Everyone knows that part of Kentucky is riddled with alien activity. I mean, Jefferson Davis was from there, wasn't he?'"
The Rendlesham Forest Incident	Chief Huffton Klimp	"'Chief, what's the story with the Rendlesham --'"	"'Forest Incident? No one knows what really happened. Except me. I know. It's a long story, but it involves a time slip and a bear from another world.'"
The Phoenix Lights	Chief Huffton Klimp	"[We] [take] a deep breath and [say] to Klimp, 'the Phoenix --'"	"'Lights? No one knows what they were. Not even me. But I have a theory. It's a theory that involves a bear from another world. At least, I think it does.'"
Betty-and-Barney Hill Abduction	Chief Huffton Klimp	"'Chief, the Betty and Barney Hill --'"	"'Abduction? It's a classic. It's a classic. It's a classic cover-up. There never was a Barney Hill. It was Benny Hill.'"
The Black Knight Satellite	Chief Huffton Klimp	"'Chief, is the Black Knight Satellite --'"	"'Real? Yes, it's real. I mean, it's not a satellite, but it's real. You ever hear of the Tunguska Event? There's a connection, you know.'"
The Tunguska Event	Chief Huffton Klimp	"'Chief, what's the deal with the Tunguska --'"	"'Event? I have a theory. Most people think Lenin was born on Earth in 1870, but I have evidence that he was born on the Black Knight Satellite and came to Earth in a meteorite that landed in Tunguska in 1908.'"
The Dyatlov Pass Incident	Chief Huffton Klimp	"'Chief, the Dyatlov Pass --'"	"'Incident? It's a mystery. There's not even such a place as the Ural Mountains. It's a cover-up. I've seen the evidence.'"
The Mary Celeste	Chief Huffton Klimp	"'Chief, what's the story with the Mary --'"	"'Celeste? Nothing so bad as what routinely happens in the cruise industry. I've seen the evidence.'"
The Philadelphia Experiment	Chief Huffton Klimp	"'Chief, the --'"	"'Philadelphia Experiment? Was it even in Philadelphia? Is there even a Philadelphia? I'm still waiting for answers.'"
Amelia Earhart	Chief Huffton Klimp	"'Chief, what's the deal with Amelia --'"	"'Earhart? She was murdered by the Freemasons before she even took off. I've seen the evidence.'"
The Voynich Manuscript	Chief Huffton Klimp	"'Chief, what's the deal with the Voynich --'"	"'Manuscript? It's a hoax. I've seen the evidence. It's a hoax. But it's a good hoax. I like it.'"
The Shroud of Turin	Chief Huffton Klimp	"'Chief, is the Shroud of --'"	"'Turin? It's really a map. I've seen the evidence. It's a map. A map to the Black Knight Satellite.'"
The Holy Grail	Chief Huffton Klimp	"'Chief,' [we] [ask], 'is the Holy --'"	"'Grail real? Well, maybe, maybe not. It depends on what you mean by [']real.['] In any case, it was lost in a time slip."
Time slips	Chief Huffton Klimp	"'Chief, do time slips --'"	"'Really happen? Yes, they do. The Mobley-Jourdain Incident for example, or -- well, I can't remember the other one. I was thinking about the Jersey Devil, and its connection to the Church of Scientology.'"
The Ark of the Covenant	Chief Huffton Klimp	"'Chief, you ever see Raiders of the Lost --'"	"Is this about the Ark of the Covenant? It's a real thing, you know. The director of the movie was a Freemason. But it's important to note that the Ark cannot melt your face off. That's a myth."
The Spear of Destiny	Chief Huffton Klimp	"[We] [start] to ask Klimp a question when he interrupts."	"'the Spear of Destiny, right? It's a real thing. I've seen it. It's in the Vatican. But it's a fake. The real one was stolen by the Illuminati.'"
Alchemy	Chief Huffton Klimp	"'Chief, do you know anything about --'"	"'Alchemy? Well, yes and no. It's a real thing, but it's not what you think. It's a science, but it's not a science. I used to dabble in it, back before my sacred geometry phase. Never got the hang of it.'"
The Illuminati	Chief Huffton Klimp	"[We] [begin], 'You believe in the --'"	"'Illuminati? Of course. They're everywhere. They're in the government, in the media, in the music industry. They're in the Bureau. They're in the BOSH offices. They're in the White House. They're in the Vatican. They're in the Black Knight Satellite.' Klimp looks around. 'They're in this room... okay, maybe not this room. And hopefully not in the BOSH offices. But they're everywhere else. You don't think Margaret's Illuminati, do you?'"
The New World Order	Chief Huffton Klimp	"'Chief, what's the deal with the New --'"	"'New Order? You're into them, eighties music, right? No, no, you were going to ask about the New World Order, weren't you? It's a real thing. It's a real thing, and it's a real threat. It's a real threat to the world. It's a real threat to the universe. Well, that's an exaggeration. But it's real bad.'"
Divining	Chief Huffton Klimp	"'Chief, have you ever used a di--'"	"'--vining rod? Yes, I have. I've used it to find water, to find gold, to find the Black Knight Satellite. I once used it to find a lost cat. It didn't work.'"
Crystals	Chief Huffton Klimp	"'Chief, you ever use --'"	"'crystals? Yes, I have. I've used them to heal, to divine, to communicate with the Black Knight Satellite. I've used them to find lost keys. I've used them to find lost time. I've used them to find lost socks. I once gave one to a lonely Sasquatch. It didn't seem to care for it.'"
Ley lines	Chief Huffton Klimp	"'Chief, what's all this about ley--'"	"'den jars? I don't know. You might want to ask Nikola Tesla. He was into that sort of thing. Or was it Thomas Edison? I can't remember. But you were going to ask about ley lines, weren't you? I have them all mapped out on my globe.'"
Leyden jars	Chief Huffton Klimp	"'Chief, what's all this about ley--'"	"'den jars? Not a clue. You might want to ask Nikola Tesla. He was into that sort of thing. Or was it Thomas Edison? I can't remember.'"
Astrology	Chief Huffton Klimp	"'Chief, do you believe in horo--'"	"'scopes? Yes, I do. I've seen the evidence. I've seen the evidence that they're real. I've seen the evidence that they're fake. I've seen the evidence that they're a tool of the Illuminati. None of it makes sense. But I still believe in them.'"
The Freemasons	Chief Huffton Klimp	"'Chief, who are the Free--'"	"'masons? Harmless. They're harmless. They're just a bunch of guys who like to wear aprons and have secret handshakes. It's not like they have the Holy Grail or anything. That's a myth.'"
The Knights Templar	Chief Huffton Klimp	"'Chief, what can you tell me about the --'"	"'Knights Templar? Consider this -- they're not Knights at all. They're really kind of fun, you know. They're like the Freemasons, but with swords. And they have the Spear of Destiny. Or they did. Or they didn't. I can't remember.'"
Atlantis	Chief Huffton Klimp	"'Chief, tell me about At--'"	"'lanta? It's a city in Georgia. Oh, you mean the lost city of Atlantis. It's really just a metaphor. For something. I can't remember what. But it's a metaphor. For something.'"
Ancient astronauts	Chief Huffton Klimp	"[We] [ask], 'Do you believe in --'"	"'ancient astronauts? I can't remember. I used to. I used to believe in them. I used to believe in them a lot. I used to believe in them so much that I thought I was one. Now, I'm not so sure.'"
Ancient Egypt	Chief Huffton Klimp	"'Chief, what's the deal with --'"	"'Ancient Egypt? It's not there anymore. It just disappeared. It's a mystery. Now there's just a place that's called Egypt. It's not the same. It's not the same at all.'"
Crop circles	Chief Huffton Klimp	"'Chief, do you think crop --'"	"'circles are of alien origin? Maybe. But I'm more interested in crop squares. Or crop trapezoids. Or crop dododecahedrons. Those are the real mystery. I think it's the the Illuminati. They use them to communicate with the Black Knight Satellite.'"
ESP	Chief Huffton Klimp	"'Chief, do you believe in --'"	"'ESP? Is that like ESPN? I like ESPN. Don't really like sports, but I like ESPN. I like people discussing irrelevant things with passion. Like Senator Savra. He's like ESPN, thinks everything's a game. But I don't think that's what you meant.'"
Ghosts	Chief Huffton Klimp	"'Chief, do you believe in --'"	"'Ghosts? Yes. Ghosts, poltergeists, phantoms, specters, wraiths, apparitions, spooks, spirits, shades, and the undead are all real. I've seen them. I've talked to them. I've been one. I think. I can't remember.'"
Vampires	Chief Huffton Klimp	"'Chief, are v--'"	"'Violins? Violets? Violence? Finish your words, Faraji. I can't read your mind. Oh, wait, you were going to ask about vampires, weren't you? They're sometimes real. Sometimes not. It's a quantum thing.'"
Werewolves	Chief Huffton Klimp	"'Chief, are were--'"	"'[']Are where?['] That's hardly correct grammar. But I know what you mean. You mean werewolves. Werewolves are real. I once met one. You know what he said? He said, [']I'm a werewolf.[']'"
Zombies	Chief Huffton Klimp	"[We] [say] to Klimp, 'Zombies --'"	"'What? Zombies? I can't hear you. Speak up. Zombies? Oh, zombies. They're not very good conversationalists. They're not very good at anything.'"
Hypnosis	Chief Huffton Klimp	"'Chief, do you believe in --'"	"'Hypnosis? I don't know. But I do know that Hipgnosis is a design firm. They did the cover for the Dark Side of the Moon. I like that cover. I like the triangle. I like the prism. I like the rainbow.'"
Levitation	Chief Huffton Klimp	"'Chief, do you know --'"	"'anyone who can levitate? Well, that's a good question. I used to. But they fell down, so I don't know anymore."
Telekinesis	Chief Huffton Klimp	"'Chief, do you believe in tele--'"	"'Television? Well, of course I do. I used to watch it all the time. Especially ESPN. For the passion. For the irrelevant discussions. For the games. But I don't think that's what you meant. You meant telekinesis, didn't you? I can't remember what I think about that.'"
Teleportation	Chief Huffton Klimp	"'Do you think anyone will ever --'"	"'invent a teleporter? Nah, too dangerous. You could end up in another world. Or another time. Or in the middle of the Sargasso Sea. Or smack dab in the middle of the Tunguska Event. Now wouldn't that be something?'"
Spontaneous human combustion	Chief Huffton Klimp	"'Chief, do you think --'"	"'spontaneous human combustion is real? Yes, I do, and when people say it's not, it really burns me up. LOL."
Nikola Tesla	Chief Huffton Klimp	"[We] [say] to Klimp, 'Nikola --'"	"'Tesla? He was a time traveler. I've seen the evidence. He went back in time to save the crew of the Mary Celeste. He died as a result of the Philadelphia Experiment. It's all connected.'"
The Sargasso Sea	Chief Huffton Klimp	"'Chief, have you ever been to the --'"	"'Sargasso Sea? Yes. Well, no. But I know all about it. For one thing, it's not a sea. It's the surface of a huge alien jellyfish. I've seen the evidence.'"
The Marfa Lights	Chief Huffton Klimp	"'Chief, what's the story on the Marfa --'"	"'Lights? Don't let anyone know, but they're really just the headlights of a car. A car from another world. I've seen the evidence.'"
V I Lenin	Chief Huffton Klimp	"'Chief, what do you think of --'"	"'Lennon? Imagine he's still alive. I've seen the evidence. Mark David Chapman didn't kill him. He's living in a hidden city on the inside of the earth. But I don't think that's what you meant. You meant Lenin, didn't you? I can't remember what I think about him.'"
The Church of Scientology	Chief Huffton Klimp	"'Chief, what about the Church --'"	"'You mean the eighties band? I like them. They had a song about the Yeti. Or maybe that was someone else. But you meant the Church of Scientology, didn't you? They're weird.'"
UFOs	Chief Huffton Klimp	"'Chief, do you believe in --'"	"'UFOs? Yes, I do. I've seen them. I've been in them. I've talked to the pilots. I've been a pilot. I've been a UFO. I think. I can't remember.'"
Ouija boards	Chief Huffton Klimp	"'Chief, do you think Ouija --'"	"'boards are real? Yes. No. Goodbye. At any rate, they're more reliable than the Magic 8-Ball.'"
The Bureau of Supernatural History	Chief Huffton Klimp	"'Chief, what's the deal with the --'"	"'Bureau of Supernatural History? Posers.'"
The Chief's office	Chief Huffton Klimp	"'Chief, you have such a nice office --'"	"'Yes, I do. Have you checked out the new article about the Marfa Lights? It's a doozy.'"
The Chief's desk	Chief Huffton Klimp	"'Chief, what's the deal with your desk --'"	"'Made it myself. Well, not really built it, but I bought it. It's the kind of desk you could imagine Tesla using. I just read an article about him. They completely left out the part about him meeting the Jersey Devil.'"
The polished orange marble dodecahedron	Chief Huffton Klimp	"[We] [admire] the Klimp's dodecahedron and [say], 'Chief, this --'"	"'-- is a beautiful thing. It's a dodecahedron. But I like to call it the portal stone, because it's a portal to another world. I think. Which reminds me, have you read the new book about the Spear of Destiny? It's a real page-turner.'"
The globe	Chief Huffton Klimp	"'Chief, I notice on your globe --'"	"'Yeah, all the lines, right? They're ley lines, which are, well, kind of like these lines of energy that connect the world. They're like the veins of the Earth. They're like the nervous system of the Earth. They're like the internet of the Earth. No, I take that back. Let's stick with the veins metaphor.'"
The armchair	Chief Huffton Klimp	"'Chief, what's the deal with your armchair --'"	"'That's my thinking chair. It's beautiful, don't you think?' I got at an auction by the Church of Scientology. They have the best auctions. I once got a book about hypnosis at one of their auctions. Good book.'"
The mahogany side table	Chief Huffton Klimp	"'Chief, what's the story with your side table --'"	"'Got it from a store run by a guy who might be a vampire. Lots of vampires in the furniture business. I've seen the evidence.'"
Waiting-for-the-Aliens	Chief Huffton Klimp	"'Chief, have you read this book --'"	"'[']Waiting for the Aliens?['] Yes, I have. Kind of a letdown. I was hoping for more about the Black Knight Satellite.'"
Travels in Time	Chief Huffton Klimp	"'Chief, what do you think of this book --'"	"'Travels in Time? I've read it. It's a good book. Did you know it hasn't even been written yet? True story. Strangely, Debi Bosworth was killed in the Dyatlov Pass Incident. I've seen the evidence.'"
Juvenile Sasquatch skull	Chief Huffton Klimp	"'Chief, what's the deal with this --'"	"'--skull? It's a juvenile Sasquatch skull. Found it myself at the Natural History Museum in New York. They have the best stuff. Hard to carry out of there, though.'" 
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




Book 19 - Verbs
 
To admire is a verb. To shake is a verb. To smile is a verb. To sigh is a verb. To peer is a verb. To turn is a verb. To observe is a verb. To gaze is a verb. To trudge is a verb. To walk is a verb. To step is a verb. To enter is a verb. To exit is a verb. To pause is a verb. To survey is a verb. To hand is a verb. To try is a verb. To see is a verb. To squeal is a verb. To tap is a verb. To curse is a verb. To rap is a verb. To explain is a verb. To gasp is a verb. To return is a verb. To ask is a verb. To think is a verb. To scrunch is a verb. To grimace is a verb. To mutter is a verb. To leave is a verb. To stand is a verb. To mount is a verb. To stammer is a verb. To polish is a verb. To interrupt is a verb. To raise is a verb. To chuckle is a verb. To lean is a verb. To consider is a verb. To nod is a verb. To extricate is a verb. To toss is a verb. To pick is a verb. To flatten is a verb. To remember is a verb. To trip is a verb. To scratch is a verb. To navigate is a verb. To stare is a verb. To emerge is a verb. To breathe is a verb. To attempt is a verb. To strain is a verb. To spin is a verb. To pick is a verb. To tuck is a verb. To consider is a verb. To move is a verb. To save is a verb.
To dig is a verb. To notice is a verb. To come is a verb. To unscrew is a verb. To pocket is a verb. To run is a verb. To examine is a verb.

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
The blue flipphone has portrait Figure Phone.
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
	
Book 21 - Not For Release 
 
[ Include BOSH Tests by Philip Riley. ]

DEBUG is true.

AUDIT is a truth state that varies.
AUDIT is false.

When play begins:
	if AUDIT is true:
		repeat with X running through things:
			if the snarky remark of X is not "":
				say "[X] -- [snarky remark of X][line break]";

When play begins, seed the random-number generator with 1234.

Understand "* [text]" as a mistake ("Noted.")

The access through barriers rule response (A) is "you have run afoul of the access through barriers rule!";

test office1 with "w/x vent/x screws/x computer/x thumb drive/look behind desk/x vent/ask about computer/status of the computer".
test office2 with "w/w/n/w/s/n/e/ask about computer/look behind desk/x computer/x thumb drive".
test office3 with "w/w/x wrench/s/open desk/n/e/ask margaret for key/w/s/x desk/n/e/ask about allen/look behind desk/x vent/get wrench/ask about screwdriver".
test no-screwdriver with "n/enter store/ask about screwdriver/w/s/sw/ask about screwdriver/ask about owner".
test win with "w/w/s/open desk/n/e/ask about key/ask about computer/look behind desk/x computer/remember finding the drive/w/s/x desk/open white door/n/e/ask about wrench/ask about backdoor/take boxes/w/s/z/w/z/z/open white door/knock on white door/e/z/n/e/x vent/ask for a screwdriver/n/e/n/e/ask for screwdriver/w/s/sw/ask for a screwdriver/ask about the owner/ne/w/w/w/x lenses/ask to borrow pair/wear them/e/e/take boxes/w/s/w/wear glasses/back/n/f/d/n/s/turn off light/wear glasses/f/fn/push truck bs/push truck back/move crates/move crates with truck/x washing machine/open it/enter it/f/f/f/f/f/fn/fw/fn/fn/fw/w/fn/w/take compass/x compass/s/s/s/s/s/s/s/e/e/e/e/e/e/e/e/b/b/b/b/b/b/b/b/b/d/w/w/show him the thumb drive/hand it over/ask who he is/ask about his name/where are we/klimp is fine/ask how to get home/show him the thumb drive/hand it over/ask about savra/ask about the dragon/time travel/ask about the mission/how will i find him/e/w/ready to go/i/x device/e/f/enter portal/press button/e/f/enter portal".


test no-drive with "w/w/s/open desk/n/e/ask about key/ask about computer/look behind desk/w/s/x desk/open white door/n/e/ask about wrench/ask about backdoor/take boxes/w/s/z/w/z/z/open white door/knock on white door/e/z/n/e/x vent/ask for a screwdriver/n/e/n/e/ask for screwdriver/w/s/sw/ask for a screwdriver/ask about the owner/ne/w/w/w/x lenses/ask to borrow pair/wear them/e/e/take boxes/w/s/w/back/n/f/d/n/s/turn off light/wear glasses/f/fn/push truck bs/push truck back/move crates/move crates with truck/x washing machine/open it/enter it/f/f/f/f/f/fn/fw/fn/fn/fw/w/fn/w/take compass/x compass/s/s/s/s/s/s/s/e/e/e/e/e/e/e/e/b/b/b/b/b/b/b/b/b/d/w/w".

test part1 with "w/w/s/open desk/n/e/ask about key/ask about computer/look behind desk/x computer/w/s/x desk/open white door/n/e/ask about wrench/ask about backdoor/take boxes/w/s/z/w/z/z/open white door/knock on white door/e/z/n/e/x vent/ask for a screwdriver/e/n/e/ask for screwdriver/w/s/sw/ask for a screwdriver/ask about the owner/ne/w/w/w/x lenses/ask to borrow pair/wear them/e/e/take boxes/w/s/w/wear lenses/back/n/f/d/n/s/turn off light/wear glasses/f/fn/push truck bs/push truck back/move crates/move crates with truck/x washing machine/open it/enter it".

test part2 with "f/f/f/f/f/fn/fw/fn/fn/fw/w/fn/w/take compass/x 
it/s/s/s/s/s/s/s/e/e/e/e/e/e/e/e/b/b/b/b/b/b/b/b/b/d".

test part3 with "w/w/show drive/hand drive/ask about savra/ask 
about mission/ask how to get home/e/e/ask how to get 
home/w/b/enter portal/knock on door/x shelf/borrow/tribes/s/s/z/w/wear 
lenses/b/n/f/d/s/enter machine/d/e/w/w/give book to doris/e/s/give 
note to christy/n/n/ask coffee/s/s/give coffee/n/n/w/give note to 
doris/ask how i will find him/ready/e/f/enter portal".

test part41 with "x desk/read schedule/x pack/open it/take 
key/n/n/w/w/w/take hammer/e/se/s/s/e/e/n/take 
object/s/w/w/w/read book/i/take book/d/take cord/swing hammer at 
wall/n/e/e/wear lens/f/bn/x lockers/open locker 1/u/shoot hoops/x 
desk/read book/read membership book/take it/look up thompson in 
membership book/d/open 1/open 10/u/x machine 
weight/d/fs/b/w/w/s/u/out/e/sw/take/ne/s/x copper key/unlock 
door with copper key/e/s/take waxer/n/e/n/n/n/enter truck/open 
it/get in/open glove/take key/w/out/x truck/x bed/take 
cutters/ne/n/w/w/s/w/unlock door with copper key/w/take rod/s/l/x 
table/read book of names/read book of names/read book of 
names/wear lenses/fs/be/take all/x spotlight/x ladder/fw/bn/take 
book/u/n/u/open wardrobe/take frame/x it/d/w/take shovel/d/i".


test wrench with "w/look behind desk/purloin red screwdriver";

test desk with "sw/purloin wristwatch/give watch to dave/ne/n/e/buy screwdriver/w/s/w/look behind desk/open vent/w/s";

test klimp with "w/look behind desk/x vent/e/sw/ask about screwdriver/ask about owner/ne/w/w/w".
	
lensing is an action applying to nothing. Understand "lens" as lensing.

Carry out lensing: 
	now the player wears the pair of astral lenses;
	try looking.

Jumping to part 2 is an action applying to nothing. Understand "plane" as jumping to part 2.

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

jumping to part 3 is an action applying to nothing. Understand "doris" as jumping to part 3.

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
	
jumping to part 4 is an action applying to nothing. Understand "enigma" as jumping to part 4.

Carry out jumping to part 4:
	now Hyperplane Coords is {0, 0, 0};
	move the player to the enigma lake town hall;
	now the player carries the pair of astral lenses;
	now the green smartphone is nowhere;
	now the player carries the mystic compass;
	now the player carries the recall button;
	now the thumb drive is nowhere;
	now Tribes of New York is nowhere;
	now the handtruck is in the back basement;
	now the broken washing machine is open;
	now the broken washing machine is in the back basement;
	now the strange glow is in the broken washing machine;
	now the strange glow is closeby;
	
	
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

The thumb-drive-story is always "Biff found the thumb drive in an ancient Onandaga root cellar on a farm in upstate New York. He was never able to read it.".

[turns out the message is scratched on the side of the thumb drive, the data is of course gone]

Doris-story-about-the-thumb-drive is always "We lost one of our New York agents to a slingshot effect that threw him far back in time. We're always monitoring for artifacts that are out of place or anachronistic to lead us to lost agents."

Message-on-the-thumbdrive is always "They found me out and sent me back. 14th century. Enigma Lake. Savra is going to move on the Dragon."

