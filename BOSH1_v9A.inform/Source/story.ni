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
Include Polish by Philip Riley.

Include BOSH Polish by Philip Riley.
 
Include Choices by Philip Riley.
 
Include New Light by Philip Riley. 
 
Include Early Declarations by Philip Riley.
 
[Include Farseeing by Philip Riley.]
Include Basics by Philip Riley.
Include Building Facades by Philip Riley.
 
Include Simple Conversation by Philip Riley.
Include Hyperspace by Philip Riley.	
Include BOSH Facts by Philip Riley. 
Include Image Strip by Philip Riley.
Include Swamp Park by Philip Riley.
[Include Conversations General by Philip Riley.]
Include Margaret by Philip Riley. 
Include Enigma Lake by Philip Riley. 
Include Snarky Remarks by Philip Riley.

Include Gender Options by Nathanael Nerode.   
  	
Include Followup Questions by Philip Riley.

Include Make Test by Philip Riley.

Use MAX_OBJ_PROP_COUNT of 128.
Use MAX_STATIC_DATA of 360000.
Use MAX_PROP_TABLE_SIZE of 400000.
Use MAX_NUM_STATIC_STRINGS of 400000.
Use MAX_SYMBOLS of 200000.
Use MAX_OBJECTS of 1024.

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
Larch Faraji is a nonbinary in the Strip Mall Parking Lot South. The third singular pronoun is singular-they-pronoun. The description is "Agent Faraji ". 
 
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
		follow the current graphics drawing rule;
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
	follow the current graphics drawing rule;
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
	follow the current graphics drawing rule;
	reject the player’s command;
	
To init player:
	now the player carries the green smartphone;
	[now the player carries the bureau credit card;]
	now the player knows klimp's phone number;
	now the player owns the bureau credit card;
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
	now right hand status line is "[agent]";

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
	

Table of Fancy Status
left	central (text)	right
"[location-title-case]"	--	"[agent]"

Rule for constructing the status line:
     fill status bar with Table of Fancy Status;
     rule succeeds.

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

Book 5 - Automatic greeting

After going to a room:
	if the current interlocutor is nothing:
		repeat with P running through the people in the location:
			if P is not the player:
				postpone saying hello to P;
				continue the activity; 
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

The ringing-phone is a subject. It is privately-named. The printed name is "ringing phone". Understand "ringing phone" as the ringing-phone.

Senator Savra is a man. he is in the Room of Stuff. Savra is familiar. [The help text of senator savra is "Our nemesis, intent on the abolition of BOSH.".]

Time-travel is a subject. It is privately-named. The printed name is "Time Travel". Understand "time travel/--" as time-travel.

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
The Black Knight Satellite is a subject.
The Tunguska Event is a subject.
The Dyatlov Pass Incident is a subject.
The Bermuda Triangle is a subject. 
The Mary Celeste is a subject.
The Philadelphia Experiment is a subject.
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
Spontaneous human combustion is a subject. Understand "combustion" as spontaneous human combustion.
The Moberly-Jourdain Incident is a subject.
Nikola Tesla is a subject. 
The Sargasso Sea is a subject.
The Marfa Lights is a subject.
V I Lenin is a subject. Understand "Vladimir/Illyich/Ulyanov" as V I Lenin.
THe Church of Scientology is a subject. Understand "dianetics" as the Church of Scientology.

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
	It quip-supplies Chief Klimp.
	
After examining the juvenile sasquatch skull:
	queue Chief Klimp with to borrow the skull;

to-borrow-the-lenses is a questioning quip. 
	It is privately-named.
	The printed name is "to borrow the astral lenses".
	Understand "to/borrow/the/pair/of/astral/lenses/lens/glass/glasses" as to-borrow-the-lenses.
	It mentions the pair of astral lenses.
	The comment is "[We] [ask], 'Would it be okay if I borrowed the astral lenses for a while?'".
	The reply is "'Sure! Why don't you scout the locality for astral phenomena?'".
	It quip-supplies Chief Klimp.
	
After examining the pair of astral lenses:  
	queue Chief Klimp with to-borrow-the-lenses;
	
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
	It mentions the orange marble dodecahedron.
	The comment is "[We] [ask], 'Chief, mind if I borrow the dodecahedron?'".
	The reply is "He thinks for a moment. 'Actually, I need it to keep my computer running properly. It's a long story.'".
	It quip-supplies Chief Klimp.

After examining the orange marble dodecahedron:
	queue Chief Klimp with to borrow the dodecahedron;

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
The how-are-you-reply of Chief Klimp is "Good good good. Just fine.".
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

"[if biff's office is not visited][We] [pause] and [survey] the scene. It's not much -- four white walls, grey industrial carpet. [Margaret] [have] helpfully assembled [our] desk and chair, though how sturdily is an open question. [Regarding Margaret][They] also took the time to put up some of Agent [Player]'s office decor -- [our] degree in Nonstandard Investigative Techniques, [EG]a trivia competition award, and a poster for [our] favorite movie: the b-movie time-travel classic The Room of Lost Time[PCG]a photo of [our] dog Pluto, and a print of [italic type]Green Pheasant[roman type] by Utagawa Hiroshige[LF]an original pencil drawing of the Pitfall snake by semi-acclaimed Washington DC artist Darius 5200, and a photo of [our] soccer team[end say]. At the very least the wall coverings help compensate for the lack of windows. There's a disconnected landline on the desk. The office door is to the north, and there's a white metal door to the west.[maybe insert computer muttering][otherwise]It's basically four white walls and grey carpet. There's a cheap desk and chair, and a disconnected phone on the desk. In lieu of windows, there are a few things on the wall: [our] degree in Nonstandard Investigative Techniques, [EG]a trivia competition award, and a poster for [our] favorite movie[PCG]a photo of [our] dog Pluto, and a Japanese print[LF]a pencil drawing of the Pitfall snake, and a photo of [our] soccer team[end say]. The office door is to the north, and there's a white metal door to the west.[end if]"

The snarky remark is "Opulent quarters, indeed."

There is a fluorescent light source in Biff's office called biffo-light.

To say maybe insert computer muttering:
	if biff's computer is not seen:
		say "[paragraph break][reset LPR][We] [mutter], 'Where's my computer?'[run paragraph on]";

Biff's desk is a desk in Biff's Office. Biff's desk is scenery. It is privately-named. The printed name is "[our] desk".  Understand "desk" as biff's desk. The snarky remark is "It's suitable for holding all the work I'm avoiding."

biff's desk's drawer is locked. Understand "desk drawer" as biff's desk's drawer.

The blue flipphone is a phone. It is in biff's desk's drawer.
The snarky remark is "You little blue bastard. I hate you."

A key is a kind of thing.

The little grey key is a key. It is in biff's desk's drawer. The little grey key is familiar.
Biff's desk drawer has matching key the little grey key. The description of Biff's desk's drawer is "The desk is a cheap DIY piece held together with hex screws."
The snarky remark of the little grey key is "And now you'll never get used, little key."

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
Biff's desk's drawer contains a money card called the Bureau credit card.  
The Bureau credit card is mc-disabled.

The balance of the bureau credit card is $300. The player owns the Bureau credit card.
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

The back lot is a room. It is in BOSH HQ.
The snarky remark is "Let me guess, this is the break room." 

The BOSH back door is a door. The printed name is "white metal door". Understand "backdoor/white/metal" as BOSH back door. It is west of biff's office and east of back lot. It is scenery. It is closed, locked, lockable, and openable. "An unremarkable metal door painted white. [state of BOSH back door][run paragraph on]".
The snarky remark is "[door snark][line break]".

To say door snark:
	if location is biff's office:
		if the back lot is unvisited:
			say "Who knows what exotic vistas lie beyond this door?";
		otherwise:
			say "I've been outside. You ever see 'Silo'?";
	otherwise:
		say "The door to paradise. I'm sorry, I mean my office.";

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

The dumpster is scenery in the back lot. "An everyday blue dumpster, about six feet high."
The snarky remark is "Oh, this is where I left my dignity."

Check entering the dumpster:
	say "[We] [are] not yet at the point of dumpster diving." instead;
	
Climbing into is an action applying to one thing. Understand "climb into [thing]" as climbing into.

Instead of climbing into something:
	try entering the noun;

Instead of an actor inserting biff-flattened-boxes into the dumpster:
	now the biff-flattened-boxes are in the room of stuff;
	if the actor is the player:
		say "[We] [toss] the flattened boxes over the edge of the dumpster.";
	otherwise if the actor is in the location:
		say "[The actor] [toss] the flattened boxes over the edge of the dumpster.";

Instead of an actor inserting margaret-flattened-boxes into the dumpster:
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
 
Section 3 - Hallway

Biff's door is a door. It is privately-named. It is scenery. The printed name is "[our] door". It is north of Biff's Office and south of the BOSH office hallway. It is open. Understand "Faraji's/Goldberg's/Gaunt's/Larch's/Petula's/Ezra's/office/door" as Biff's door. 
		
Klimp's door is a door. It is west of the BOSH office hallway and east of the BOSH chief's office. It is scenery. It is closed and locked. It is openable and lockable.
Moira's door is a door. It is north of the BOSH office hallway and south of Moira's office. It is scenery. It is closed and locked. It is openable and lockable.

the BOSH office hallway is in BOSH HQ. The printed name is "hallway". "[Our] office is to the south, Klimp's is to the west, and Moira's is to the north. The front office is east."

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

The makeshift seating area is scenery in front office. "A coffee table and couch greet visitors to the office, as if any are expected."

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
 
Instead of examining Biff's computer when the thumb drive is not seen: 
	say "[description of biff's computer] But [we] [do] find a thumb drive and take it.";
	now the player carries the thumb drive;
	now the thumb drive is seen;

The behind description of the BOSH front desk is "There are a number of shelves of office supplies behind the desk. There is also a heating vent on the floor here.";

The heating vent is a scenery container. It is openable, closed, lockable, transparent and locked. "A typical air register with a grill which one would hope would stop things like, say, a hex wrench from falling through. It's set in the floor behind the front desk. The vent is held closed by four screws." Understand "heat/air/conditioning/register" as the heating vent. It is undescribed. 
The snarky remark of the heating vent is "[if player knows hex-screws and player knows key-is-lost]It gets better and better[otherwise]I hope we don't need that hex wrench[end if]."

Securing relates various things to one thing. The verb to secure means the securing relation.
Some screws secure the heating vent. The description is "Four plain flat head screws." 

After looking behind the BOSH front desk:
	move the heating vent to front office;
	move the screws to front office;
	continue the action;
	
Instead of taking or taking off the screws when the screws secure the heating vent:
	if the player encloses the heating vent:
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


Section 5 - BOSH chief's office 

the BOSH Chief's office is in BOSH HQ. There is a fluorescent light source in the BOSH Chief's office called chief-light.
The description of the BOSH Chief's office is "[If the BOSH chief's office is not visited]Looks like the Chief has already moved in.[paragraph break][end if]Chief Klimp's office is full of character. Shelves strewn with knick-knacks abut a cozy armchair and a mahogany side table supporting a large globe. A bookcase on the north wall is packed with books on paranormal happenings. Garish prints adorn the remaining wall space.  Under one of these is a modernistic desk of glass and chrome, behind which is a very nice black leather swivel chair. There is a computer on the desk, and to its side is an antique wooden file cabinet. To tell the truth, it's all a bit much, but it matches Klimp's personality perfectly. There is an exit to the east.[if klimp is in the location][first time]

[Klimp] says 'What's with that ringing? Someone answer it!'[only]".
The snarky remark of the BOSH Chief's office is "It's like a museum of bad taste."

The Chief's desk is a supporter in BOSH Chief's Office. It is scenery. "This desk is a beautiful assembly of smokey glass and chrome framing. The 'legs' form shelves where Klimp keeps yet more curios. One might wonder where Klimp gets the money."
The snarky remark of the Chief's desk is "Most of us just want a surface to keep our stuff off the floor."
The curios are scenery in the BOSH Chief's office. The description is "The desk shelves are full of oddities and memorabilia, most notable of which is a polished orange marble dodecahedron.".

Klimp's Computer is a thing on the chief's desk. It is scenery. "The computer is a sleek, modern model. It sports a screen saver of what looks like the Hopkinsville goblin."

The desk shelves are a supporter. They are part of the Chief's desk. They support a polished orange marble dodecahedron. The description of the dodecahedron is "A relic of the Chief's sacred geometry phase.". Understand "legs" as desk shelves.

Klimp owns the dodecahedron. 
The snarky remark of the dodecahedron is "I'm partial to Catalan solids, actually."

The chief's black leather swivel chair is a supporter in BOSH Chief's Office. It is enterable. It is scenery. "Nice chair. Good lumbar support."

The globe is a thing in the BOSH Chief's office. It is scenery. "The globe is very handsome with lots of intriguing detail. Unfortunately, Klimp has marred it with thumbtacks and string marking the world's 'leylines'."
The snarky remark of the globe is "This is what happens when you let Klimp play with the office supplies."

The armchair is a supporter in BOSH Chief's Office. It is enterable. It is scenery. "Plush and comfortable with a yellow and red striped design. Absolutely hideous.". Understand "chair" as the armchair.
The snarky remark of the armchair is "It's like a clown exploded."

The mahogany side table is a thing in BOSH Chief's Office. It is scenery. "This is a nice piece, quite out of place in the BOSH offices. Flame mahogany with very pretty inlays."
The snarky remark of the mahogany side table is "Even Klimp gets it right sometimes."

The bookcase is a thing in BOSH Chief's Office. It is scenery. "The Chief's library boasts many interesting titles, from Alton Cherry's [italic type]Waiting for the Aliens[roman type] to Debi Bosworth's [italic type]My Travels in Time[roman type]." Understand "books" as bookcase.
The snarky remark of the bookcase is "So many books, so little sense."

Waiting-for-the-Aliens is a thing in BOSH Chief's Office. It is privately-named. The printed name is "Waiting for the Aliens". It is scenery. Understand "Waiting/for/aliens/Alton/Cherry" as Waiting-for-the-Aliens. "Alton Cherry's [italic type]Waiting for the Aliens[roman type] is a classic of the genre. More a history of publicly-known material than an argument for or against the existence of aliens on earth, it is accessible to believers and non-believers alike."
The snarky remark of Waiting-for-the-Aliens is "I'm waiting for the sequel, 'Waiting for the Aliens to Leave'."
 
Travels in Time is a thing in BOSH Chief's Office. It is scenery. Understand "My Travels in Time" as Travels in Time. Understand "Debi/Bosworth" as Travels in Time. "Debi Bosworth's [italic type]My Travels in Time[roman type] is the account of Ms. Bosworth's alleged travels to the past and future. She is careful to point out that she has never known a man in a blue box."
The snarky remark of Travels in Time is "Glad to see the Chief is keeping up with the classics."

The Chief's shelves are a supporter in BOSH Chief's Office. They are scenery. "These shelves sport an array of oddities and memorabilia."
  
The juvenile sasquatch skull is a thing on the chief's shelves. Chief Klimp owns the skull. The description of the skull is "It looks a bit Neanderthal, actually." 
The snarky remark of the skull is "Cryptozoology is a science, right?"
 
The antique wooden file cabinet is a container in the BOSH Chief's office. It is closed and locked. It is scenery. "Looks like it was taken out of an old library somewhere."

The prints are scenery in the BOSH Chief's office. The description is "There are three prints, the most striking of which is a neon-hued abstract by Diego Ernesto Diaz, the late Mexican painter, titled 'Hora de la Muerte'.".
Understand "painting/paintings" as prints.
The snarky remark of the prints is "The Chief's taste in art is as good as his taste in armchairs."

Hora de la Muerte is scenery in the BOSH Chief's office. Understand "Diego/Ernesto/Diaz/abstract/neon/hued" as Hora de la Muerte. "The print is a riot of color, with a central figure that could be a skull. It's a bit much for the office, but it's certainly striking."
 
The oddities are on the chief's shelves. They are scenery. The description is "This and that piece of junk that Klimp thinks is funny or interesting, including a pair of astral lenses and a juvenile sasquatch skull."
Understand "memorabilia", "junk", "stuff", "knick-knacks", "knick knacks" as the oddities.

A pair of astral lenses is on the chief's shelves. It is ambiguously plural. Chief Klimp owns the pair of astral lenses. The description of the pair of astral lenses is "To all appearances an ordinary pair of glasses, the astral lenses allegedly reveal the existence of extra-dimensional pathways." The pair of astral lenses is wearable. 
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

A tome is a kind of thing.
A tome can be loanable.
Understand "book" as a tome.
Before printing the name of a tome:
	say "[italic type]";

After printing the name of a tome:
	say "[roman type]";
	
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
	
After examining a tome supported by Moira's bookshelves:
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

Book-borrowing is an object based rulebook.

Book-borrowing something enclosed by the player:
	say "[We] already [have] that.";
	rule fails;

Book-borrowing a tome (called T) supported by Moira's bookshelves:
	now the player carries T;
	now the player owns T;	
	say "[We] [take] [T].";
	now the borrowed book is T;
	rule succeeds;

Book-borrowing:
	say "[We] can't borrow that.";
	rule fails;	

After giving a loanable tome to Moira:
	now the borrowed book is nothing;
	now the noun is supported by Moira's bookshelves;
	now the noun is owned by Moira Zin;
	say "Moira smiles. 'Thanks for getting it back to me.' She puts the book back on the shelf.";
	
After putting a loanable tome on Moira's bookshelves:
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

The utility closet is dark. It is in BOSH HQ.

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

   
Book 18 - Sound

Book 18.5 - Quiz table

To start is a verb. To begin is a verb.

Table of Quiz Topics (continued)
subject (a thing)	interlocutor (a person)	comment (a text)	reply (a text)
Larch Faraji	Margaret Chao	"Margaret, [we] say, 'just what's got into me lately?'"	"'You're just disoriented from the move,' Margaret says. 'It'll get better.'"
Larch Faraji	Chief Klimp	"'Hey, Chief,' [we] say, 'we need to talk about -- '"	"'Sure, Faraji,' Klimp says, 'but have you seen this article about the Piltdown Man?'"
Larch Faraji	Moira Zin	"'Moira,' [we] say, 'I need your opinion. Am I off my game?'"	"'No, you're fine,' Moira says. 'You just need a break.'"
Aliens	Chief Klimp	"'Chief,' [we] say, 'are aliens --'"	"Klimp assumes his lecturing pose. 'You know what I think, of course. They're here, they've been here for decades, maybe centuries, and they're a menace to the human race. We're the only thing standing between them and the end of the world.'"
Aliens	Moira Zin	"'Moira,' [we] say, 'what's your take on aliens?'"	"Nonsense,' Moira says. 'They're a convenient excuse for people who don't want to face the truth.'"
Moira Zin	Chief Klimp	"'Moira --'"	"'Yes, yes, east and then north. I'm busy.'"
Moira Zin	Margaret Chao	"'Margaret,' [we] say, 'what do you think of Moira?'"	"'Well, I've only known her a few weeks,' Margaret says, 'but she seems really smart.'"
Moira Zin	Moira Zin	"'Moira,' [we] say, 'how are you doing with everything that's been going on?'"	"'I'm fine,' Moira says. 'Why wouldn't I be?'"
Chief Klimp	Margaret Chao	"'Margaret,' [we] say, 'what do you think of Klimp?'"	"Margaret looks around and then whispers, 'I don't think he likes me.'"
Chief Klimp	Moira Zin	"'Moira,' [we] say, 'you've known Klimp longer than anyone. What do you think of him?'"	"'He's a child. That's what you have to understand about Klimp,' Moira says. 'He's never met a stupid idea he didn't like.'"
Chief klimp	Chief Klimp	"'Chief,' [we] say, 'what's going --'"	"'Have you heard about these new ancient ruins in Kamchatka? Apparently there are some very interesting Koryak artifacts there that suggest a connection to the ancient Sumerians.'"
Margaret Chao	Margaret Chao	"'How are you doing, Margaret?'"	"'It's great!' Margaret says. 'So many things to unpack!'"
Margaret Chao	Moira Zin	"'Moira,' [we] say, 'what do you think of Margaret?'"	"'She'll do,' Moira says. 'She's a bit too eager, but she'll do.'"
Margaret Chao	Chief Klimp	"'Chief,' [we] say, 'Margaret --'"	"'I'm reading about the latest discoveries in the field of cryptozoology,' Klimp says. 'Did you know that the Yeti is actually a type of bear? I don't mean a regular bear, but a bear that's not of this world.'"
Bureau of Strange Happenings	Chief Klimp	"[We] [say] to Klimp, 'the Bureau --'"	"'The Bureau will be the most important line of defense when the alien threat inevitably comes to fruition. Savra is a fool,' he says with a gleam in his eye."
Senator Savra	Chief Klimp	"'So what is Savra --'"	"'Savra -- that imbecile. He's a fool and a coward. He's the reason we're not prepared for the alien invasion.'"
Time-travel	Chief Klimp	"'Is time travel --'"	"'Time travel is a fact,' Klimp says. 'Tesla had a time machine. I've seen it.'"
Astral plane	Chief Klimp	"'Chief, is the astral plane --'"	"'I've heard of people who have been there, even lived there. My friend Doris. True story.'"
Doris	Chief Klimp	"'Chief, who is D--"	"'Doris? He's a friend of mine. Works for the Bureau. Sort of. Snappy dresser. Prone to outlandish stories. Ask him about the Mothman.'"
The Bermuda Triangle	Chief Klimp	"'The Ber--'"	"'Oh please, the Bermuda Triangle is a hoax. It's just a place where ships and planes go down. It's not like it's a portal to another dimension. That's the Sargasso Sea.'"
Loch Ness Monster	Chief Klimp	"'Chief, have you seen the --'"	"'Loch Ness Monster? Of course. I've seen it. It's a plesiosaur, you know. From another world.'"
The Roswell Incident	Chief Klimp	"'Chief --'"	"'Roswell? It's not what you think. It's not what anyone thinks. It's a cover-up, but not for what you think.'"
The Chupacabra	Chief Klimp	"'I'm sure you know all about the Chu--'"	"'--pacabra? Yes, I do. It's not of this world, you know.'"
The Sasquatch	Chief Klimp	"'Chief, does Sasquatch --'"	"'I've often thought that it would be a great subject for a television show. Not a documentary, mind you, but a drama. That guy, you know, from the show about the doctor in the spaceship, he'd be perfect as Sasquatch.'"
Yeti	Chief Klimp	"'Is the Yeti --'"	"'The Yeti is a bear. I've seen the evidence. It's a bear. A bear from another world.'"
Sacred geometry	Chief Klimp	"'Whatever happened to your --'"	"'--sacred geometry phase? Meh. I've moved on. Shapes are shapes.'"
The Moberly-Jourdain Incident	Chief Klimp	"'[We] [say] to Klimp, 'the Moberly-Jourdain --'"	"'Incident? Time slips are cool. I've seen one. I've been in one. Or was it two? I can't remember."
The Mothman	Chief Klimp	"'What was the Mothm--'"	"'Geez, West Virginia has the lamest cryptids. The Mothman is just a big owl. A big owl from another world.'"
The Jersey Devil	Chief Klimp	"'Chief,' [we] [say] to Klimp, 'the Jersey --'"	"Yes, yes, the Jersey Devil. It's a kangaroo. A kangaroo with wings. From another world."
The Flatwoods Monster	Chief Klimp	"'So I haven't heard much about this one,' [we] [say]. 'The Flatwoods --'"	"'Oh yes, the Flatwoods Monster. It's not even a cryptid. It's a robot from the CIA. I've seen the evidence.'"
The Dover Demon	Chief Klimp	"'Chief, what's the deal with the Dover --'"	"'Demon? It's no demon. It's a monkey crossed with a snowy owl. By the way, have you seen the news about the recently discovered alien temple under the basement of the Smithsonian Castle?'"
The Kelly-Hopkinsville Encounter	Chief Klimp	"[We] [say] to Klimp, 'I was reading about the K--"	"'Kelly-Hopkinsville Encounter? It's just silly. Everyone knows that part of Kentucky is riddled with alien activity. I mean, Jefferson Davis was from there, wasn't he?'"
The Rendlesham Forest Incident	Chief Klimp	"'Chief, what's the story with the Rendlesham --'"	"'Forest Incident? No one knows what really happened. Except me. I know. It's a long story, but it involves a time slip and a bear from another world.'"
The Phoenix Lights	Chief Klimp	"[We] [take] a deep breath and [say] to Klimp, 'the Phoenix --'"	"'Lights? No one knows what they were. Not even me. But I have a theory. It's a theory that involves a bear from another world. At least, I think it does.'"
The Black Knight Satellite	Chief Klimp	"'Chief, is the Black Knight Satellite --'"	"'Real? Yes, it's real. I mean, it's not a satellite, but it's real. You ever hear of the Tunguska Event? There's a connection, you know.'"
The Tunguska Event	Chief Klimp	"'Chief, what's the deal with the Tunguska --'"	"'Event? I have a theory. Most people think Lenin was born on Earth in 1870, but I have evidence that he was born on the Black Knight Satellite and came to Earth in a meteorite that landed in Tunguska in 1908.'"
The Dyatlov Pass Incident	Chief Klimp	"'Chief, the Dyatlov Pass --'"	"'Incident? It's a mystery. There's not even such a place as the Ural Mountains. It's a cover-up. I've seen the evidence.'"
The Mary Celeste	Chief Klimp	"'Chief, what's the story with the Mary --'"	"'Celeste? Nothing so bad as what routinely happens in the cruise industry. I've seen the evidence.'"
The Philadelphia Experiment	Chief Klimp	"'Chief, the --'"	"'Philadelphia Experiment? Was it even in Philadelphia? Is there even a Philadelphia? I'm still waiting for answers.'"
The Voynich Manuscript	Chief Klimp	"'Chief, what's the deal with the Voynich --'"	"'Manuscript? It's a hoax. I've seen the evidence. It's a hoax. But it's a good hoax. I like it.'"
The Shroud of Turin	Chief Klimp	"'Chief, is the Shroud of --'"	"'Turin? It's really a map. I've seen the evidence. It's a map. A map to the Black Knight Satellite.'"
The Holy Grail	Chief Klimp	"'Chief,' [we] [ask], 'is the Holy --'"	"'Grail real? Well, maybe, maybe not. It depends on what you mean by [']real.['] In any case, it was lost in a time slip."
Time slips	Chief Klimp	"'Chief, do time slips --'"	"'Really happen? Yes, they do. The Mobley-Jourdain Incident for example, or -- well, I can't remember the other one. I was thinking about the Jersey Devil, and its connection to the Church of Scientology.'"
The Ark of the Covenant	Chief Klimp	"'Chief, you ever see Raiders of the Lost --'"	"Is this about the Ark of the Covenant? It's a real thing, you know. The director of the movie was a Freemason. But it's important to note that the Ark cannot melt your face off. That's a myth."
The Spear of Destiny	Chief Klimp	"[We] [start] to ask Klimp a question when he interrupts, 'the Spear of Destiny, right? It's a real thing. I've seen it. It's in the Vatican. But it's a fake. The real one was stolen by the Illuminati.'"
Alchemy	Chief Klimp	"'Chief, do you know anything about --'"	"'Alchemy? Well, yes and no. It's a real thing, but it's not what you think. It's a science, but it's not a science. I used to dabble in it, back before my sacred geometry phase. Never got the hang of it.'"
The Illuminati	Chief Klimp	"[We] [begin], 'You believe in the --'"	"'Illuminati? Of course. They're everywhere. They're in the government, in the media, in the music industry. They're in the Bureau. They're in the BOSH offices. They're in the White House. They're in the Vatican. They're in the Black Knight Satellite.' Klimp looks around. 'They're in this room... okay, maybe not this room. And hopefully not in the BOSH offices. But they're everywhere else. You don't think Margaret's Illuminati, do you?'"
The New World Order	Chief Klimp	"'Chief, what's the deal with the New --'"	"'New Order? You're into them, eighties music, right? No, no, you were going to ask about the New World Order, weren't you? It's a real thing. It's a real thing, and it's a real threat. It's a real threat to the world. It's a real threat to the universe. Well, that's an exaggeration. But it's real bad.'"
Divining	Chief Klimp	"'Chief, have you ever used a di--'"	"'--vining rod? Yes, I have. I've used it to find water, to find gold, to find the Black Knight Satellite. I once used it to find a lost cat. It didn't work.'"
Crystals	Chief Klimp	"'Chief, you ever use --'"	"'crystals? Yes, I have. I've used them to heal, to divine, to communicate with the Black Knight Satellite. I've used them to find lost keys. I've used them to find lost time. I've used them to find lost socks. I once gave one to a lonely Sasquatch. It didn't seem to care for it.'"
Ley lines	Chief Klimp	"'Chief, I notice on your globe --'"	"'Yeah, all the lines, right? They're ley lines, which are, well, kind of like these lines of energy that connect the world. They're like the veins of the Earth. They're like the nervous system of the Earth. They're like the internet of the Earth. No, I take that back. Let's stick with the veins metaphor.'"
Astrology	Chief Klimp	"'Chief, do you believe in horo--'"	"'scopes? Yes, I do. I've seen the evidence. I've seen the evidence that they're real. I've seen the evidence that they're fake. I've seen the evidence that they're a tool of the Illuminati. None of it makes sense. But I still believe in them.'"
The Freemasons	Chief Klimp	"'Chief, who are the Free--'"	"'masons? Harmless. They're harmless. They're just a bunch of guys who like to wear aprons and have secret handshakes. It's not like they have the Holy Grail or anything. That's a myth.'"
The Knights Templar	Chief Klimp	"'Chief, what can you tell me about the --'"	"'Knights Templar? Consider this -- they're not Knights at all. They're really kind of fun, you know. They're like the Freemasons, but with swords. And they have the Spear of Destiny. Or they did. Or they didn't. I can't remember.'"
Atlantis	Chief Klimp	"'Chief, tell me about At--'"	"'lanta? It's a city in Georgia. Oh, you mean the lost city of Atlantis. It's really just a metaphor. For something. I can't remember what. But it's a metaphor. For something.'"
Ancient astronauts	Chief Klimp	"[We] [ask], 'Do you believe in --'"	"'ancient astronauts? I can't remember. I used to. I used to believe in them. I used to believe in them a lot. I used to believe in them so much that I thought I was one. Now, I'm not so sure.'"
Ancient Egypt	Chief Klimp	"'Chief, what's the deal with --'"	"'Ancient Egypt? It's not there anymore. It just disappeared. It's a mystery. Now there's just a place that's called Egypt. It's not the same. It's not the same at all.'"
Crop circles	Chief Klimp	"'Chief, do you think crop --'"	"'circles are of alien origin? Maybe. But I'm more interested in crop squares. Or crop trapezoids. Or crop dododecahedrons. Those are the real mystery. I think it's the the Illuminati. They use them to communicate with the Black Knight Satellite.'"
ESP	Chief Klimp	"'Chief, do you believe in --'"	"'ESP? Is that like ESPN? I like ESPN. Don't really like sports, but I like ESPN. I like people discussing irrelevant things with passion. Like Senator Savra. He's like ESPN, thinks everything's a game. But I don't think that's what you meant.'"
Ghosts	Chief Klimp	"'Chief, do you believe in --'"	"'Ghosts? Yes. Ghosts, poltergeists, phantoms, specters, wraiths, apparitions, spooks, spirits, shades, and the undead are all real. I've seen them. I've talked to them. I've been one. I think. I can't remember.'"
Vampires	Chief Klimp	"'Chief, are v--'"	"'Violins? Violets? Violence? Finish your words, Faraji. I can't read your mind. Oh, wait, you were going to ask about vampires, weren't you? They're sometimes real. Sometimes not. It's a quantum thing.'"
Werewolves	Chief Klimp	"'Chief, are were--'"	"'[']Are where?['] That's hardly correct grammar. But I know what you mean. You mean werewolves. Werewolves are real. I once met one. You know what he said? He said, 'I'm a werewolf.'"
Zombies	Chief Klimp	"'[We] [say] to Klimp, 'Zombies --'"	"'What? Zombies? I can't hear you. Speak up. Zombies? Oh, zombies. They're not very good conversationalists. They're not very good at anything.'"
Hypnosis	Chief Klimp	"'Chief, do you believe in --'"	"'Hypnosis? I don't know. But I do know that Hipgnosis is a design firm. They did the cover for the Dark Side of the Moon. I like that cover. I like the triangle. I like the prism. I like the rainbow.'"
Levitation	Chief Klimp	"'Chief, do you know --'"	"'anyone who can levitate? Well, that's a good question. I used to. But they fell down, so I don't know anymore."
Telekinesis	Chief Klimp	"'Chief, do you believe in tele--'"	"'Television? Well, of course I do. I used to watch it all the time. Especially ESPN. For the passion. For the irrelevant discussions. For the games. But I don't think that's what you meant. You meant telekinesis, didn't you? I can't remember what I think about that.'"
Teleportation	Chief Klimp	"'Do you think anyone will ever --'"	"'invent a teleporter? Nah, too dangerous. You could end up in another world. Or another time. Or in the middle of the Sargasso Sea. Or smack dab in the middle of the Tunguska Event. Now wouldn't that be something?'"
Spontaneous human combustion	Chief Klimp	"'Chief, do you think --'"	"'spontaneous human combustion is real? Yes, I do, and when people say it's not, it really burns me up. LOL."
Nikola Tesla	Chief Klimp	"[We] [say] to Klimp, 'Nikola --'"	"'Tesla? He was a time traveler. I've seen the evidence. He went back in time to save the crew of the Mary Celeste. He died as a result of the Philadelphia Experiment. It's all connected.'"
The Sargasso Sea	Chief Klimp	"'Chief, have you ever been to the --'"	"'Sargasso Sea? Yes. Well, no. But I know all about it. For one thing, it's not a sea. It's the surface of a huge alien jellyfish. I've seen the evidence.'"
The Marfa Lights	Chief Klimp	"'Chief, what's the story on the Marfa --'"	"'Lights? Don't let anyone know, but they're really just the headlights of a car. A car from another world. I've seen the evidence.'"
V I Lenin	Chief Klimp	"'Chief, what do you think of --'"	"'Lennon? Imagine he's still alive. I've seen the evidence. Mark David Chapman didn't kill him. He's living in a hidden city on the inside of the earth. But I don't think that's what you meant. You meant Lenin, didn't you? I can't remember what I think about him.'"
The Church of Scientology	Chief Klimp	"'Chief, what about the Church --'"	"'You mean the eighties band? I like them. They had a song about the Yeti. Or maybe that was someone else. But you meant the Church of Scientology, didn't you? They're weird.'"
The Chief's office	Chief Klimp	"'Chief, you have such a nice office --'"	"'Yes, I do. Have you checked out the new article about the Marfa Lights? It's a doozy.'"
The Chief's desk	Chief Klimp	"'Chief, what's the deal with your desk --'"	"'Made it myself. Well, not really built it, but I bought it. It's the kind of desk you could imagine Tesla using. I just read an article about him. They completely left out the part about him meeting the Jersey Devil.'"
The polished orange marble dodecahedron	Chief Klimp	"[We] [admire] the Klimp's dodecahedron and [say], 'Chief, this --'"	"'-- is a beautiful thing. It's a dodecahedron. But I like to call it the portal stone, because it's a portal to another world. I think. Which reminds me, have you read the new book about the Spear of Destiny? It's a real page-turner.'"
The globe	Chief Klimp	"'Chief, I notice on your globe --'"	"'Yeah, all the lines, right? They're ley lines, which are, well, kind of like these lines of energy that connect the world. They're like the veins of the Earth. They're like the nervous system of the Earth. They're like the internet of the Earth. No, I take that back. Let's stick with the veins metaphor.'"
The armchair	Chief Klimp	"'Chief, what's the deal with your armchair --'"	"'That's my thinking chair. It's beautiful, don't you think?' I got at an auction by the Church of Scientology. They have the best auctions. I once got a book about hypnosis at one of their auctions. Good book.'"
The mahogany side table	Chief Klimp	"'Chief, what's the story with your side table --'"	"'Got it from a store run by a guy who might be a vampire. Lots of vampires in the furniture business. I've seen the evidence.'"
Waiting-for-the-Aliens	Chief Klimp	"'Chief, have you read this book --'"	"'[']Waiting for the Aliens?['] Yes, I have. Kind of a letdown. I was hoping for more about the Black Knight Satellite."
Travels in Time	Chief Klimp	"'Chief, what do you think of this book --'"	"'Travels in Time? I've read it. It's a good book. Did you know it hasn't even been written yet? True story. Strangely, Debi Bosworth was killed in the Dyatlov Pass Incident. I've seen the evidence.'"
Juvenile Sasquatch skull	Chief Klimp	"'Chief, what's the deal with this --'"	"'--skull? It's a juvenile Sasquatch skull. Found it myself at the Natural History Museum in New York. They have the best stuff. Hard to carry out of there, though.'" 
Antique wooden file cabinet	Chief Klimp	"'Chief, what's in the file --'"	"'--cabinet? Files. Classified. Except for one. It's a recipe for chicken salad.'"
Hora de la Muerte	Chief Klimp	"'Chief, the painting --'"	"'Hora de la Muerte? It speaks to me. Speaks to me of something ineffable. Something that's not there. Something that's not here. Something that's not anywhere.'"
Astral lenses	Chief Klimp	"'Chief, what's the deal with these --'"	"'--glasses? They're astral lenses. Got them at a little shop while I was hunting for the Dover Demon. They let you see into other worlds. Haven't tried them yet. I'm waiting for the right time. The right place. The right world.'"
The ringing-phone	Chief Klimp	"'Hey, Chief, sorry about the --'"	"'damn phone that keeps ringing? It's the Illuminati. They're trying to get you. They're trying to get me. They're trying to get everyone. Don't answer it. But make it stop. It's driving me crazy.'"
The ringing-phone	Margaret	"[We] [say] to Margaret, 'Margaret, do you have any way to get into my desk to answer the phone, a spare key or --'"	"'No, no, I don't. I'm sorry. I don't know what to do. I'm sorry.'"
The ringing-phone	Moira Zin	"'Moira, I'm so sorry about the phone ringing. It's locked in my desk and I can't get to it. I don't know what to do. I'm sorry.'"	"'It's okay, Larch. I'm sure whoever's calling will give up eventually.'"


Book 19 - Verbs
 
To admire is a verb. To shake is a verb. To smile is a verb. To sigh is a verb. To peer is a verb. To turn is a verb. To observe is a verb. To gaze is a verb. To trudge is a verb. To walk is a verb. To step is a verb. To enter is a verb. To exit is a verb. To pause is a verb. To survey is a verb. To hand is a verb. To try is a verb. To see is a verb. To squeal is a verb. To tap is a verb. To curse is a verb. To rap is a verb. To explain is a verb. To gasp is a verb. To return is a verb. To ask is a verb. To think is a verb. To scrunch is a verb. To grimace is a verb. To mutter is a verb. To leave is a verb. To stand is a verb. To mount is a verb. To stammer is a verb. To polish is a verb. To interrupt is a verb. To raise is a verb. To chuckle is a verb. To lean is a verb. To consider is a verb. To nod is a verb. To extricate is a verb. To toss is a verb. To pick is a verb. To flatten is a verb. To remember is a verb. To trip is a verb. To scratch is a verb.

Book 20 - Images 

Figure Null is the file "clerk_portrait.png".

A thing has a figure name called the portrait. The portrait of a thing is usually Figure Null.

The graphics window pixel count is 128. The graphics window position is g-left.
[The graphics window proportion is 25;]

Rule for starting the virtual machine:
	now the current graphics drawing rule is the standard placement rule.
	
[graphics background color is "#FFFFFF";] 
	
Figure Darkness is the file "darkness.png".
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
 
Ezra Gaunt has portrait Figure Gaunt.
Petula Goldberg has portrait Figure Goldberg.
Larch Faraji has portrait Figure Faraji.
Margaret Chao has portrait Figure Margaret.
The Store Clerk has portrait Figure Clerk.
Chief Klimp has portrait Figure Klimp.
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

Characters is a list of figure names that varies.

To decide which figure name is the picture of the location:
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
	decide on result; 
		

The first glulx picture selection rule (this is the bosh picture selection rule):
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
	rule succeeds with result the number of entries of characters;

handset count is a number that varies.
bubble count is a number that varies.

This is the draw images rule: 
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
		
The draw images rule is listed after the adjust light rule in the turn sequence rules.		
		
To draw speech bubble: 
	(- DrawSpeechBubble(); -)
	
To draw phone handset:
	(- DrawPhoneHandset(); -)
	
[A window resizing rule:
	do nothing;]
	
To resize windows:
	call resize function;	
	follow the current graphics drawing rule; 
	if the current interlocutor is something: 
		draw speech bubble;
	
To call resize function:
	(- ResizeGraphicsWindow(); -); 
	
Book 21 - Not For Release 
 
Include BOSH Tests by Philip Riley.

DEBUG is false.

Understand "*" as a mistake ("Noted.")

The access through barriers rule response (A) is "you have run afoul of the access through barriers rule!";

test office1 with "w/x vent/x screws/x computer/x thumb drive/look behind desk/x vent/ask about computer/status of the computer".
test office2 with "w/w/n/w/s/n/e/ask about computer/look behind desk/x computer/x thumb drive".
test office3 with "w/w/x wrench/s/open desk/n/e/ask margaret for key/w/s/x desk/n/e/ask about allen/look behind desk/x vent/get wrench/ask about screwdriver".
test no-screwdriver with "n/enter store/ask about screwdriver/w/s/sw/ask about screwdriver/ask about owner".
test win with "w/w/s/open desk/n/e/ask about key/ask about computer/look behind desk/x computer/remember finding the drive/w/s/x desk/open white door/n/e/ask about wrench/ask about backdoor/take boxes/w/s/z/w/z/z/open white door/knock on white door/e/z/n/e/x vent/ask for a screwdriver/n/e/n/e/ask for screwdriver/w/s/sw/ask for a screwdriver/ask about the owner/ne/w/w/w/x lenses/ask to borrow pair/wear them/e/e/take boxes/w/s/w/wear glasses/back/n/f/d/n/s/turn off light/wear glasses/f/fn/push truck bs/push truck back/move crates/move crates with truck/x washing machine/open it/enter it/f/f/f/f/f/fn/fw/fn/fn/fw/w/fn/w/take compass/x compass/s/s/s/s/s/s/s/e/e/e/e/e/e/e/e/b/b/b/b/b/b/b/b/b/d/w/w/show him the thumb drive/hand it over/ask who he is/ask about his name/where are we/klimp is fine/ask how to get home/show him the thumb drive/hand it over/ask about savra/ask about the dragon/time travel/ask about the mission/how will i find him/e/w/ready to go/i/x device/e/f/enter portal/press button/e/f/enter portal".


test no-drive with "w/w/s/open desk/n/e/ask about key/ask about computer/look behind desk/w/s/x desk/open white door/n/e/ask about wrench/ask about backdoor/take boxes/w/s/z/w/z/z/open white door/knock on white door/e/z/n/e/x vent/ask for a screwdriver/n/e/n/e/ask for screwdriver/w/s/sw/ask for a screwdriver/ask about the owner/ne/w/w/w/x lenses/ask to borrow pair/wear them/e/e/take boxes/w/s/w/back/n/f/d/n/s/turn off light/wear glasses/f/fn/push truck bs/push truck back/move crates/move crates with truck/x washing machine/open it/enter it/f/f/f/f/f/fn/fw/fn/fn/fw/w/fn/w/take compass/x compass/s/s/s/s/s/s/s/e/e/e/e/e/e/e/e/b/b/b/b/b/b/b/b/b/d/w/w".

	
lensing is an action applying to nothing. Understand "lens" as lensing.

Carry out lensing: 
	now the player wears the pair of astral lenses;

jumping to the past is an action applying to nothing. Understand "past" as jumping to the past.

Carry out jumping to the past:
	move the player to field office hallway;
	now the portal to the past is activated;
	now the green smartphone is nowhere;
	
jumping to part 3 is an action applying to nothing. Understand "enigma" as jumping to part 3.

Carry out jumping to part 3:
	move the player to the enigma lake town hall;
	now the player wears the pair of astral lenses;
	now the player carries the recall button;
	now the player carries the Bureau credit card;
	now the green smartphone is nowhere;
	
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

