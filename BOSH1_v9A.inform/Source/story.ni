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
Include Polish by Philip Riley.
 
Include Choices by Philip Riley.
 
Include New Light by Philip Riley. 
 
Include Early Declarations by Philip Riley.
 
[Include Farseeing by Philip Riley.]
Include Basics by Philip Riley.
Include Memories by Philip Riley. 
Include Building Facades by Philip Riley.
 
Include Simple Conversation by Philip Riley.
Include Hyperspace by Philip Riley.	
Include BOSH Facts by Philip Riley. 
Include Image Strip by Philip Riley.
Include Swamp Park by Philip Riley.
[Include Conversations General by Philip Riley.]
Include Margaret by Philip Riley. 
Include Enigma Lake by Philip Riley. 

Include Gender Options by Nathanael Nerode.   
  	
Include Followup Questions by Philip Riley.

Include Make Test by Philip Riley.

Use MAX_OBJ_PROP_COUNT of 128.
Use MAX_STATIC_DATA of 360000.
Use MAX_PROP_TABLE_SIZE of 400000.
Use MAX_NUM_STATIC_STRINGS of 400000.
Use MAX_SYMBOLS of 100000.

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
  
Ezra Gaunt is a man in the Room of Stuff. The description is "Agent Gaunt's last name describes him well. He is a perpetually worried-looking individual, a look emphasized by his thinness and his thick-rimmed glasses.".
Petula Goldberg is a woman in the Room of Stuff. The description is "Agent Goldberg has lots of dogs, a fact which can be inferred by the inevitable fur somewhere on her person. The last front office worker at the Bureau left due to an extreme allergic reaction to Goldberg.".
Larch Faraji is a nonbinary in the Room of Stuff. The third singular pronoun is singular-they-pronoun. The description is "Agent Faraji is sharply-dressed and sharp-witted. They're attired in a neat grey suit, which unfortunately obscures the tattoo of a snake on their left forearm."
 

the good old days is a memory in the room of stuff. The printed name is "the good old days". The description is "[the description of the good old days].".
To say the description of the good old days:
	let character list be { Ezra Gaunt, Petula Goldberg, Larch Faraji, Chief Klimp };
	remove the player from character list;
	say "[We] [remember] how [we], [character list] used to go out for drinks at the Cock and Bull in downtown DC. Good times";  
  
Play mode is a kind of value. The play modes are _startup, _normal, and picking character.
The current play mode is a play mode that varies. The current play mode is initially _startup. 

[If we put all the subjects in the world, we can refer to them.]
When play begins:   
	now the story viewpoint is third person singular;
	Repeat with S running through subjects:  
		move S to the Room of Subjects;
	[Repeat with F running through facts:
		move F to the Room of Subjects; ]
	say "[bold type]Department of Homeland Security, Washington, DC[roman type][line break]";
	say "Open on a drab office with decor dating to the mid-eighties. The DHS assistant to the associate sub-director looks longingly at the office clock nearing five, then leans across the desk and impatiently states his demands:[paragraph break]";
	say "'First name, last name, pronouns?'[paragraph break]";  
	say "(1) Ezra Gaunt (he/him), winner of the 2006 Baltimore County Edgar Allan Poe Trivia Competition;[paragraph break]";
	say "(2) Petula Clark Goldberg (she/her), former award-winning dog groomer of the avant-garde school;[paragraph break]";
	say "or (3) Larch Faraji (they/them), lead singer of the third wave neo-old-school punk band DC Trash.";
	now current play mode is picking character; 
	follow the current graphics drawing rule;
	[now the quip-suggestion-phrase is "[special style 2][Player's surname] could ";]
	if DEBUG is false:		
		now the command prompt is "1, 2, or 3? > ";
		now current play mode is picking character;
	otherwise: 
		now player's forename is "Larch";
		now player's full name is "Larch Faraji";  
		now player's surname is "Faraji";
		now the player is Larch Faraji; 
[		now player's forename is "Ezra";
		now player's full name is "Ezra Gaunt";
		now player's surname is "Gaunt";
		now the player is Ezra Gaunt;]
		init player;
		init office;
		move the player to the Strip Mall Parking Lot South;
		try unknown voice calling the blue flipphone on mysterious phone;
		move klimp to the Room of Stuff;
		move moira to the Room of Stuff;
		now the current play mode is _normal; 
		set possessives;
 
To survey is a verb. To wrinkle is a verb.

Intro Text is always "As an agent of the Bureau of Strange Happenings (BOSH), it is Agent [player's full name]'s job to investigate unexplained phenomena throughout the United States and its territories. Recently, however, business hasn't been good. Once a bustling office with a dozen Agents, the Bureau's been reduced to just three: [Player's surname], Moira Zin, and Chief Huffton Klimp. The Bureau's expansive and well-appointed office suite was taken over by the State Department Book Club, and now the agents are consigned to a tiny suite in a strip mall in the remote D.C. suburb of Swamp Park, Maryland.

	The reason? The venomous Senator Savra, whose crusade against all things he considers unwholesome is the scourge of Washington. To him, BOSH is nothing more than the devil's megaphone, giving credence to Satan's lies by giving them a hearing. Now Savra is at it again, threatening to cut BOSH entirely from next year's Federal budget.
	
	But for now, today is move-in day at the bureau. 
	
	We open on a decrepit strip mall just as an aging Hyundai pulls into the potholed parking lot. [agent] steps out of the car. [We] [survey] the area and [wrinkle] [our] nose.[paragraph break]".

	
	 


The isolation booth is a room.

The new room description heading rule does nothing when the location is the isolation booth.
	
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

The parser error internal rule response (R) is "I[']m not sure what you're trying to say. I might just not recognize the words you're using."

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

Senator Savra is a man. he is in the Room of Stuff. Savra is familiar. [The help text of senator savra is "Our nemesis, intent on the abolition of BOSH.".]

[spacetime is a subject. Understand "time" as spacetime. The printed name is "Time". the help text of SpaceTime is "According to Wikipedia, time is the continued sequence of existence and events that occurs in an apparently irreversible succession from the past, through the present, into the future.".]

aliens is a subject. Understand "UFO/UFOs" as aliens.

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
	
Response of Klimp when asked about aliens:
	Say "Klimp assumes his lecturing pose. 'You know what I think, of course. They're here, they've been here for decades, maybe centuries, and they're a menace to the human race. We're the only thing standing between them and the end of the world.'";
	
Greeting response for Klimp:
	say "Good day.";
	continue the action;
	
Response of Klimp when asked about Moira:
	Say "Klimp nods. 'Superior agent. I'd be honored to be compared to her.'";
	
Response of Klimp when asked about Margaret:
	Say "He rolls his eyes. 'You take what you can get.'";
	
Response of Klimp when asked about the Bureau of Strange Happenings:
	Say "'The Bureau will be the most important line of defense when the alien threat inevitably comes to fruition. Savra is a fool,' he says with a gleam in his eye.";

Response of Klimp when asked about Senator Savra:
	say "Klimp stops short of actually spitting. 'The lowest of the low.'";

klimp is familiar. [The help text of klimp is "Chief Huffton Klimp, the erstwhile head of [our] poor little bureau.".]

to borrow the skull is a questioning quip. 
	Understand "juvenile/sasquatch" as to borrow the skull.
	It mentions the juvenile sasquatch skull.
	The comment is "[We] [ask], 'Chief, mind if I borrow the skull?'". 
	The reply is "He looks pained for a moment. 'Uh, I'd rather you didn't. It's fragile.'".
	It quip-supplies Chief Klimp.
	
After examining the juvenile sasquatch skull:
	queue Chief Klimp with to borrow the skull;

to borrow the lenses is a questioning quip. 
	Understand "lens/glass/glasses" as to borrow the lenses.
	It mentions the pair of astral lenses.
	The comment is "[We] [ask], 'Would it be okay if I borrowed the astral lenses for a while?'".
	The reply is "'Sure! Why don't you scout the locality for astral phenomena?'".
	It quip-supplies Chief Klimp.
	
After examining the pair of astral lenses:  
	queue Chief Klimp with to borrow the lenses;
	
After discussing to borrow the lenses:
	now the player owns the pair of astral lenses;
	silently try taking the pair of astral lenses;
	if the player carries the pair of astral lenses:
		say "[We] [take] the astral lenses.";
	continue the activity;
	

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

"[if biff's office is not visited][We] [pause] and [survey] the scene. It's not much -- four white walls, grey industrial carpet. [Margaret] [have] helpfully assembled [our] desk and chair, though how sturdily is an open question. [Regarding Margaret][They] also took the time to put up some of Agent [Player]'s office decor -- [our] degree in Nonstandard Investigative Techniques, [EG]a trivia competition award, and a poster for [our] favorite movie: the b-movie time-travel classic The Room of Lost Time[PCG]a photo of [our] dog Pluto, and a print of [italic type]Green Pheasant[roman type] by Utagawa Hiroshige[LF]an original pencil drawing of the Pitfall snake by semi-acclaimed Washington DC artist Darius 5200, and a photo of [our] soccer team[end say]. At the very least the wall coverings help compensate for the lack of windows. The office door is to the north, and there's a white metal door to the west.[maybe insert computer muttering][otherwise]It's basically four white walls and grey carpet. There's a cheap desk and chair, and a disconnected phone on the desk. In lieu of windows, there are a few things on the wall: [our] degree in Nonstandard Investigative Techniques, [EG]a trivia competition award, and a poster for [our] favorite movie[PCG]a photo of [our] dog Pluto, and a Japanese print[LF]a pencil drawing of the Pitfall snake, and a photo of [our] soccer team[end say]. The office door is to the north, and there's a white metal door to the west.[end if]"

There is a fluorescent light source in Biff's office called biffo-light.

To say maybe insert computer muttering:
	if biff's computer is not seen:
		say "[paragraph break][reset LPR][We] [mutter], 'Where's my computer?'[run paragraph on]";

Biff's desk is a desk in Biff's Office. Biff's desk is scenery. It is privately-named. The printed name is "[our] desk".  Understand "desk" as biff's desk. biff's desk's drawer is locked.
The blue flipphone is a phone. It is in biff's desk's drawer.

A key is a kind of thing.

The little grey key is a key. It is in biff's desk's drawer. The little grey key is familiar.
Biff's desk drawer has matching key the little grey key.

Biff's chair is a supporter in Biff's Office. Biff's chair is scenery. Biff's chair is enterable. The description is "It's just a plain old office chair. The lumbar support control is broken.". Understand "seat" as Biff's chair. The printed name is "[our] chair".
Understand "Faraji's/Goldberg's/Gaunt's/Larch's/Petula's/Ezra's" as Biff's chair. 

The description of the desk is "The desk is a cheap DIY piece held together with hex screws. It has a single drawer [regarding Biff's desk][if Biff's desk's drawer is closed]which is closed.[otherwise]which is open.[end if][if Biff's desk's drawer contains something and Biff's desk's drawer is open] The drawer contains [a list of things in Biff's desk's drawer].[end if]" 

After examining the desk:
	now player knows hex-screws;

In Biff's desk's drawer is an ID. Biff's desk's drawer is closed. [Your desk's drawer is locked.]
Biff's desk's drawer contains a money card called the Bureau credit card.  
The Bureau credit card is mc-disabled.

The balance of the bureau credit card is $300. The player owns the Bureau credit card.
[The help text of the bureau credit card is "The pre-paid credit card issued to [us] by the Bureau. Its balance is currently [balance of the bureau credit card]."].
	
The photo of Pluto is here. It is scenery. Understand "her/dog/pluto/photo/picture" as Photo of Pluto. The description is "It's a picture of [our] best friend, Pluto.".

The degree is here. It is scenery. Understand "diploma" as degree. The description is "It's [our] Bachelor's degree in Nonstandard Investigative Techniques from Wichita Institute of Technology. Which officially makes [us] a NITWIT. [We] [shake] [our] head and [sigh].". 

The movie poster is here. It is scenery. Understand "Room/of/Lost/Time" as the movie poster. The description is "It's [our] favorite movie, 'The Room of Lost Time', from 1957. The tagline is 'Can one lone time traveler stop invaders from the moon?'"

The trivia competition award is scenery in biff's office. "A framed certificate proclaiming [us] the winner of the 2006 Baltimore County Edgar Allan Poe Trivia Competition."

Green Pheasant is scenery in biff's office. Understand "print/hiroshige/utagawa/art/painting/bird" as Green Pheasant. "A print of a beautiful green pheasant in a tree, by the 19th century Japanese artist Utagawa Hiroshige."

The drawing of the Pitfall snake is scenery in biff's office. Understand "video/game/cobra/darius/5200" as drawing of the pitfall snake. "Pencil on canvas, it's a fuzzy drawing of the 8-bit snake in the classic video game Pitfall."
 
The photo of soccer team is scenery in biff's office. Understand "Faraji's/their soccer/team" as the photo of soccer team. Understand "picture" as the photo of soccer team. "[we're] third from left in the front row."

The green smartphone is a phone. It is mobile. The description is "It's a pretty nice phone, only a couple of years old, but [we] [don't] have time to play with it. [We] [need] to get to the office."

Check calling someone on the green smartphone:
	say "[The green smartphone] is out of batteries." instead;
	
To decide is a verb.

Check dropping the green smartphone:
	say "[We] [decide] against leaving the phone behind." instead;
	set pronouns from the green smartphone;

Check inserting the green smartphone into something:
	say "[We] [decide] against leaving the phone behind." instead;

Check putting the green smartphone on something:
	say "[We] [decide] against leaving the phone behind." instead;

To init office:
	if player is not Ezra Gaunt:
		move movie poster to Room of Stuff;
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

The BOSH back door is a door. The printed name is "white metal door". Understand "backdoor/white/metal" as BOSH back door. It is west of biff's office and east of back lot. It is scenery. It is closed, locked, lockable, and openable. "An unremarkable metal door painted white. [state of BOSH back door][run paragraph on]".

Before opening BOSH back door when BOSH back door is locked:
	now player knows back-door-is-locked;

The white key is a key in the room of stuff.

The BOSH back door has matching key the white key.
When play begins:
	now Margaret carries the white key.
	
The laundromat back door is a door. It is north of back lot and south of the laundromat back room. It is scenery. It is closed, locked, lockable, and openable. "An unremarkable metal door painted white. It is closed.". 	 

The description of the back lot is "This is a small area of asphalt between the building and a chain link fence looking in on an industrial property. A door to east leads into the BOSH offices, and one to the north enters the laundromat. There is a blue dumpster here."

The dumpster is scenery in the back lot. "An everyday blue dumpster, about six feet high."

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
	say "The sound of a key in the lock comes from behind the door, and then Margaret pops her head out. 'Seriously, [Agent]? You got yourself locked out? Be more careful!'";
	rule succeeds;
 
Section 3 - Hallway

Biff's door is a door. It is privately-named. It is scenery. The printed name is "[our] door". It is north of Biff's Office and south of the BOSH office hallway. It is open. Understand "Faraji's/Goldberg's/Gaunt's/Larch's/Petula's/Ezra's/office/door" as Biff's door. 
		
Klimp's door is a door. It is west of the BOSH office hallway and east of the BOSH chief's office. It is scenery. It is closed and locked. It is openable and lockable.
Moira's door is a door. It is north of the BOSH office hallway and south of Moira's office. It is scenery. It is closed and locked. It is openable and lockable.

the BOSH office hallway is in BOSH HQ. The printed name is "hallway". "[Our] office is to the south, Klimp's is to the west, and Moira's is to the north. The front office is east."

There is a fluorescent light source in BOSH office hallway called boh-light.
 
  
  
Section 4 - Front Office 

the front office is a room. It is east of the hallway. It is in BOSH HQ. It is outdoor-adjacent.

There is a fluorescent light source in the front office called bfo-light.

Understand "storefront" as the front office.

The description of front office is "It's really a small storefront done up to resemble an office. A store sales counter serves as a front desk, behind which are located shelves of office supplies and a row of drawers. There are also a couch and coffee table here creating a makeshift seating area. An old department store clothing rack serves as a coatrack. Photos on the walls picture the Bureau in better days. A stack of used and empty cardboard boxes sits in one corner.".

The coffee table is a scenery supporter in front office. "This doesn't look like government-issue furniture. More like thrift store. It's scuffed, but at least it's sturdy."
The couch is an enterable scenery supporter in front office. "Apparently the bureau did make off with at least one piece of government furniture. A bland, institutional piece with fake leather seats, it's at least preferable to second-hand upholstery." Understand "sofa" as couch.
The makeshift seating area is scenery in front office. "A coffee table and couch greet visitors to the office, as if any are expected."

The coatrack is scenery in front office. "It's an old clothing rack from the department store which formerly occupied this space." Understand "old/clothing/rack/coat" as the coatrack.

To say photos description:
	let character list be { Ezra Gaunt, Petula Goldberg, Larch Faraji };
	remove the player from character list;
	say "The photo of [character list] smiling together is particularly poignant, as they were just let go last month";
	remember the good old days for the player;

Some Bureau photos are scenery in the front office. "[photos description].". 

Margaret Chao is in front office.  

There is a copy of the Washington Herald. The description is "The front page story is an account of the disappearance of the grandson of Senate Homeland Security Committee chairman Englund Fryes. His parents, including the Senator's son, were brutally murdered in their home, but the boy, Draco Fryes, is missing and presumed kidnapped. So far there has been no ransom demand.". 
Understand "newspaper", "paper", "news" as the Washington Herald.

The BOSH front desk is a scenery supporter in front office. Understand "sales", "counter" as the BOSH front desk. The description is "The former sales counter now functions as a desk for the office manager (currently [Margaret]). Behind it are a number of shelves holding office supplies."

The shelves of office supplies are in front office. They are plural-named. They are scenery. "Pens, paper, nothing [we're] really concerned with now." Understand "row/of/drawers/pens/pen/pencils/pencil/paper/papers" as the shelves of office supplies.

The thumb drive is a thing in the room of stuff. The description of the thumb drive is "It's a red plastic thumb drive, with what look like symbols scratched on the surface, but they're like no symbols [we've] ever seen. The metal USB end is somewhat corroded." Understand "USB/flash/memory" as the thumb drive.

Some strange symbols are part of the thumb drive. The description is "They look like some kind of language, but nothing recognizable."

finding the drive is a memory in the room of stuff. The description is "[We] [remember] finding the drive in an ancient Onandaga root cellar on a farm in upstate New York during [our] 'archaeology phase'. [We] [have] never been able to read it.".

some cardboard boxes are scenery in front office. "There is a stack of boxes in the corner.". Understand "box" as cardboard boxes.
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

Biff's computer is a thing. It is privately-named. It is behind the BOSH front desk. The printed name is "[our] computer". Understand "computer" as biff's computer. The description is "[Our] computer has been damaged beyond repair.". It is fixed in place.

Check taking Biff's computer:
	say "[Biff's computer] is too unwieldy to carry around." instead;
 
Instead of examining Biff's computer when the thumb drive is not seen: 
	say "[description of biff's computer] But [we] [do] find a thumb drive and take it.";
	now the player carries the thumb drive;
	now the thumb drive is seen;
	remember finding the drive for the player;	

The behind description of the BOSH front desk is "There are a number of shelves of office supplies behind the desk. There is also a heating vent on the floor here.";

The heating vent is a scenery container. It is openable, closed, lockable, transparent and locked. "A typical air register with a grill which one would hope would stop things like, say, a hex wrench from falling through. It's set in the floor behind the front desk. The vent is held closed by four screws." Understand "heat/air/conditioning/register" as the heating vent. It is undescribed. 


Securing relates various things to one thing. The verb to secure means the securing relation.
Some screws secure the heating vent. The description is "Four plain flat head screws." 
They are undescribed.

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

[Klimp] says 'What's with that ringing? Someone answer it!'[only]"

The Chief's desk is a supporter in BOSH Chief's Office. It is scenery. "This desk is a beautiful assembly of smokey glass and chrome framing. The 'legs' form shelves where Klimp keeps yet more curios. One might wonder where Klimp gets the money."

Klimp's Computer is a thing on the chief's desk. It is scenery.

The desk shelves are a supporter. They are part of the Chief's desk. They support a polished orange marble dodecahedron. The description of the dodecahedron is "A relic of the Chief's sacred geometry phase.". Understand "legs" as desk shelves.

Klimp owns the dodecahedron.

The black leather swivel chair is a supporter in BOSH Chief's Office. It is enterable. It is scenery. "Nice chair. Good lumbar support."

The globe is a thing in the BOSH Chief's office. It is scenery. "The globe is very handsome with lots of intriguing detail. Unfortunately, Klimp has marred it with thumbtacks and string marking the world's 'leylines'."

The armchair is a supporter in BOSH Chief's Office. It is enterable. It is scenery. "Plush and comfortable with a yellow and red striped design. Absolutely hideous.". Understand "chair" as the armchair.

The mahogany side table is a thing in BOSH Chief's Office. It is scenery. "This is a nice piece, quite out of place in the BOSH offices. Flame mahogany with very pretty inlays."
 
The bookcase is a thing in BOSH Chief's Office. It is scenery. "The Chief's library boasts many interesting titles, from Alton Cherry's [italic type]Waiting for the Aliens[roman type] to Debi Bosworth's [italic type]My Travels in Time[roman type]." Understand "books" as bookcase.

Waiting-for-the-Aliens is a thing in BOSH Chief's Office. It is privately-named. The printed name is "Waiting for the Aliens". It is scenery. Understand "Waiting/for/aliens/Alton/Cherry" as Waiting-for-the-Aliens. "Alton Cherry's [italic type]Waiting for the Aliens[roman type] is a classic of the genre. More a history of publicly-known material than an argument for or against the existence of aliens on earth, it is accessible to believers and non-believers alike."
 
Travels in Time is a thing in BOSH Chief's Office. It is scenery. Understand "My Travels in Time" as Travels in Time. Understand "Debi/Bosworth" as Travels in Time. "Debi Bosworth's [italic type]My Travels in Time[roman type] is the account of Ms. Bosworth's alleged travels to the past and future. She is careful to point out that she has never known a man in a blue box."

The Chief's shelves are a supporter in BOSH Chief's Office. They are scenery. "These shelves sport an array of oddities and memorabilia."
  
The juvenile sasquatch skull is a thing on the chief's shelves. Chief Klimp owns the skull. The description of the skull is "It looks a bit Neanderthal, actually." 
 
The antique wooden file cabinet is a container in the BOSH Chief's office. It is closed and locked. It is scenery. "Looks like it was taken out of an old library somewhere."

The prints are scenery in the BOSH Chief's office. The description is "There are three prints, the most striking of which is a neon-hued abstract by Diego Ernesto Diaz, the late Mexican painter, titled 'Hora de la Muerte'.".
 
The oddities are on the chief's shelves. They are scenery. The description is "This and that piece of junk that Klimp thinks is funny or interesting.". Understand "memorabilia", "junk", "stuff" as the oddities.

A pair of astral lenses is on the chief's shelves. It is ambiguously plural. Chief Klimp owns the pair of astral lenses. The description of the pair of astral lenses is "To all appearances an ordinary pair of glasses, the astral lenses allegedly reveal the existence of extra-dimensional pathways." The pair of astral lenses is wearable. 
Understand "glasses/lens/glass" as the pair of astral lenses.

Section 6 - Moira's office
				 
Moira's office is in BOSH HQ. There is a fluorescent light source in Moira's office called moira-light.
The description of Moira's office is "It is, like Moira herself, neat and orderly. She's clearly made the most of the meager funds she had for furnishing her office. Behind a modest yet functional desk is a modest yet functional office chair. Her bookshelves are filled with titles relating to investigative techniques, law, and skepticism. In the east wall is a closet door. The exit is to the south."

There is a closet in Moira's office. The closet is a container. It is openable and closed. It is lockable and locked. It is scenery.
[There is a breaker box in the closet. It is an openable container. It is closed. It is fixed in place. The description is "It's a small metal box affixed to the back wall of the closet. It is featureless apart from the latch."
There is a circuit breaker in the breaker box. It is fixed in place.
A circuit breaker is a device. The description is "The circuit breaker is a single switch, labeled `20 amps`."]

Moira's desk is a supporter in Moira's office. It is scenery. The description is "It's a pretty ordinary mass-produced desk, but Moira's re-stain job on it has truly transformed it. Really, is there anything she can't do?"

An openable container called Moira's drawer is part of Moira's desk. 
	
Moira's chair is an enterable supporter in Moira's office. It is scenery. The description is "It's a testament to Moira's competence and taste that she managed to acquire such a nice chair with the funds available.".

Moira's bookshelves are a scenery supporter in Moira's office. The description is "".
Understand "shelves/books/shelf/bookshelf" as Moira's bookshelves.

A tome is a kind of thing.
A tome can be loanable.
Understand "book" as a tome.
Before printing the name of a tome:
	say "[italic type]";

After printing the name of a tome:
	say "[roman type]";
	
The borrowed book is an object that varies. The borrowed book is initially nothing.

to borrow a book is a questioning quip.
	It quip-supplies Moira Zin.
	It is repeatable.

plausibility rule for to borrow a book:
	if the borrowed book is nothing:
		it is plausible;
	it is implausible;

Check discussing to borrow a book when the borrowed book is something:
	say "Moira shakes her head. 'Sorry, I'll only lend one book at a time.'" instead;

After discussing to borrow a book:	
	Prepare to ask what do you want to borrow from Moira Zin;
	
After examining a tome supported by Moira's bookshelves:
	queue Moira Zin with to borrow a book;
	
after examining moira's bookshelves:
	queue Moira Zin with to borrow a book;

No-Myth-After-All is a tome on Moira's bookshelves. It is owned by Moira Zin. It is loanable. 
The printed name is "No Myth After All: A New Perspective on Atlantis".
Understand "No/Myth/After/All/A/New/Perspective/on/Atlantis" as No-Myth-After-All.
Twenty-great-theses is a tome on Moira's bookshelves. It is owned by Moira Zin. It is loanable.
The printed name is "Twenty Great PhD Theses of the Twentieth Century". 
Understand "Twenty/Great/PhD/Theses/of/the/Twentieth/Century" as Twenty-great-theses.
Anatomy of a Hoax is a tome on Moira's bookshelves. It is owned by Moira Zin. It is loanable.
The printed name is "Anatomy of a Hoax: Writings on Modern Medicine's Greatest Myths".
Understand "writings/on/modern/medicine's/greatest/myths" as Anatomy of a Hoax.
Tribes of New York is a tome on Moira's bookshelves. It is owned by Moira Zin. It is loanable.
Applied Speculation is a tome on Moira's bookshelves. It is owned by Moira Zin. It is loanable.
Biking to the Ferry is a tome on Moira's bookshelves. It is owned by Moira Zin. It is loanable.
The printed name is "Biking to the Ferry: a Memoir".
Understand "a/-- memoir" as Biking to the Ferry.
Nonstandard Investigative Techniques is a tome on Moira's bookshelves. It is owned by Moira Zin. It is loanable. 
Calculus-with-Infinitesimals is a tome on Moira's bookshelves. It is owned by Moira Zin. It is loanable. 
The printed name is "Calculus with Infinitesimals". Understand "Calculus/with/Infinitesimals" as Calculus-with-Infinitesimals.
Three Stigmata of Palmer Eldritch is a tome on Moira's bookshelves. It is owned by Moira Zin. It is loanable. The printed name is "The Three Stigmata of Palmer Eldritch". 

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

The utility closet is dark. It is in BOSH HQ. "The bureau having just moved in, the closet is still empty, lucky for [us]. The exit is to the west, through [closet door state] door."

To say closet door state:
	if the closet door is open:
		say "an open";
	otherwise:
		say "a closed";

Instead of knocking on the closet door when the location is the utility closet and the closet door is locked and the closet door is closed:
	move Moira Zin to Moira's Office;
	now moira's door is unlocked;
	if Moira Zin is in Moira's Office:
		say "After a few seconds, someone inserts a key in the lock and opens the door. It's [player's surname]'s colleague Moira Zin. 'How'd you get in there, [player's forename]?'
		
		[We] [exit] the closet.";
		move the player to Moira's Office;
		queue Moira Zin with about the hyperdimensional portal;
		queue Moira Zin with to wait for the report;
		now the current interlocutor is Moira Zin;
		now the closet door is unlocked;
		now the closet door is open;
		
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

 
 
Table of Transitions (continued)
source room (a room)	target room (a room)	transition text (a text)	used (a truth state)
Strip Mall Parking Lot South	Strip Mall Parking Lot North	"[We] [trudge] to the other end of the parking lot. It's much like where [we] left."	--
Strip Mall Parking Lot North	Strip Mall Parking Lot South	"[We] [walk] back to the south end of the parking lot."
Strip Mall Parking Lot South	Front Office	"Just like in the store this once was, the door chimes as [we] [walk] in."
Front Office	Strip Mall Parking Lot South	"[We] [step] out of the office into the parking lot."
Strip Mall Parking Lot North	Li'l Nectarine Convenience Store	"[We] [are] greeted by a blast of music as [we] [enter] the store."
Li'l Nectarine Convenience Store	Strip Mall Parking Lot North	"[We] [exit] the store into the relative quiet of the nearby traffic."
Strip Mall Parking Lot South	Dave's pawn shop	"'Cha-ching!'[first time] rings the electronic chime as [we] [step] into the store.[only]"
Dave's pawn shop	Strip Mall Parking Lot South	"[one of]Once again -- 'Cha-ching!' -- as [we] [leave] the store.[or]'Cha-ching!'[stopping]"



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

After going from front office to the BOSH office hallway for the first time:
	If the current interlocutor was Margaret: 
		say "[We] [extricate] [ourselves] from talking with Margaret.";
	continue the action;
	
Chapter 2 - Klimp Arrives

Book 17 - Commerce and Conversation

Before quizzing someone about something when the noun owns the second noun:
	if the noun is willing to sell the second noun:
		say "'I'll sell [regarding the second noun][them] for [price of the second noun].'";
		stop the action;

   
Book 18 - Sound

Book 19 - Verbs
 
To shake is a verb. To smile is a verb. To sigh is a verb. To peer is a verb. To turn is a verb. To observe is a verb. To gaze is a verb. To trudge is a verb. To walk is a verb. To step is a verb. To enter is a verb. To exit is a verb. To pause is a verb. To survey is a verb. To hand is a verb. To try is a verb. To see is a verb. To squeal is a verb. To tap is a verb. To curse is a verb. To rap is a verb. To explain is a verb. To gasp is a verb. To return is a verb. To ask is a verb. To think is a verb. To scrunch is a verb. To grimace is a verb. To mutter is a verb. To leave is a verb. To stand is a verb. To mount is a verb. To stammer is a verb. To polish is a verb. To interrupt is a verb. To raise is a verb. To chuckle is a verb. To lean is a verb. To consider is a verb. To nod is a verb. To extricate is a verb. To toss is a verb. To pick is a verb. To flatten is a verb. To remember is a verb. To trip is a verb. To scratch is a verb.

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

DEBUG is true.

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

hyperplaning is an action applying to nothing. Understand "hyper" as hyperplaning.

Carry out hyperplaning:
	now the player is in the Featureless Hyperplane;
	now the player carries the thumb drive;
	now the player carries the astral lenses;
	now the green smartphone is nowhere;

going to part 2 is an action applying to nothing. Understand "part 2" as going to part 2.

Carry out going to part 2:
	move the player to the featureless hyperplane;
	move Descending Stair to Featureless Hyperplane;
	now Hyperplane Coords is {0, 0, 0};
	try going down;
	now the green smartphone is nowhere;
	now the player carries the thumb drive;
	now the player carries the astral lenses;
	move Klimp to the BOSH Chief's office;
	now the player owns the astral lenses;
	now the player owns Tribes of New York;
	
going to part 3 is an action applying to nothing. Understand "part 3" as going to part 3.

Carry out going to part 3:
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

