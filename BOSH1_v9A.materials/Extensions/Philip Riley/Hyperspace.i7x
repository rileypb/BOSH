Hyperspace by Philip Riley begins here.

Use authorial modesty.

Include Followup Questions by Philip Riley.
Include Simple Conversation by Philip Riley.
Include Third Person Narration by Philip Riley.
Include Scheduled People by Philip Riley.

Volume 1 - Basics

Hyperspace is a region.

A direction can be hyperspatial.

Definition: a direction is non-hyperspatial if it is not hyperspatial.

back is a direction.  It is hyperspatial. The opposite of back is forth. forth is a direction. It is hyperspatial. The opposite of forth is back. Understand "f" as forth. Understand "b" as back.

forthnorth is a direction. Understand "fn" as forthnorth. It is hyperspatial.
fortheast is a direction. Understand "fe" as fortheast. It is hyperspatial.
forthsouth is a direction. Understand "fs" as forthsouth. It is hyperspatial.
forthwest is a direction. Understand "fw" as forthwest. It is hyperspatial.
backnorth is a direction. Understand "bn" as backnorth. It is hyperspatial.
backeast is a direction. Understand "be" as backeast. It is hyperspatial.
backsouth is a direction. Understand "bs" as backsouth. It is hyperspatial.
backwest is a direction. Understand "bw" as backwest. It is hyperspatial.

The opposite of forthnorth is backsouth.
The opposite of fortheast is backwest.
The opposite of forthsouth is backnorth.
The opposite of forthwest is backeast.
The opposite of backnorth is forthsouth.
The opposite of backeast is forthwest.
The opposite of backsouth is forthnorth.
The opposite of backwest is fortheast.

Coordinates of Pillar is always {10, 4, 9}.

Hyperplane Coords is a list of numbers that varies. Hyperplane Coords is initially {3, 4, -2}.

First time in hyperspace is a truth state that varies. First time in hyperspace is true.

Visited hyperspace is a truth state that varies.

After going to hyperspace:
	now visited hyperspace is true;
	continue the action.

[Check going back:
	if visited hyperspace is true and player is not in hyperspace:
		say "That direction only exists in hyperspace." instead;
	otherwise if player is not in hyperspace and player's command includes "go":
		say "[text of parser error internal rule response (E)][line break]" instead;
	otherwise if player is not in hyperspace:
		say "[text of parser error internal rule response (N)][line break]" instead;]

Before going a hyperspatial direction:
	if visited hyperspace is false:
		if player is not in hyperspace and player's command includes "go":
			say "[text of the parser error internal rule response (E)][line break]" instead;
		otherwise if player is not in hyperspace:
			say "I[']m not sure what you're trying to say. I might just not recognize the words you're using." instead;
	if player is not in hyperspace and player is not wearing the astral lenses:
		say "That direction only exists in hyperspace." instead;
		
[ Check going a hyperspatial direction:
	if player is not in hyperspace and player is not wearing the astral lenses:
		say "[text of can't go that way rule response (A)][line break]" instead; ]
		
To decide if could see hypertunnels:
	if the location is not in hyperspace:
		repeat with D running through hyperspatial directions:
			if the room D from the location is somewhere:
				decide yes;
	decide no;

Every turn when the player is in the Featureless Hyperplane:
	if the player wears the astral lenses:
		say "Wearing the astral lenses is overwhelming here, so Faraji takes them off.";
		now the player carries the astral lenses;
		
Instead of wearing the astral lenses when the player is in the Featureless Hyperplane:
	say "Wearing the astral lenses is overwhelming here, so Faraji decides not to put them on.";
		
Encountered astral passages is a truth state that varies.

To branch is a verb. To lead is a verb.

this is the room description astral passages rule:
	if the player wears the astral lenses and the location is not in hyperspace:
		let directions be a list of texts;
		repeat with D running through hyperspatial directions:
			if the room D from the location is somewhere:
				add "'[D]'" to directions;
		if directions is not empty:
			if encountered astral passages is false:
				now visited hyperspace is true;
				now encountered astral passages is true;
				let C be number of entries of directions;
				say "[if C is 1]A s[otherwise]S[end if]trange sparkly white [regarding C]passage[if C > 1]s[end if] [branch] off in [if C is 1]an impossible direction[otherwise]impossible directions[end if] from here.
				
				[Player's surname] [have] discovered [if C is 1]a stark white hyperspatial tunnel[otherwise]some hyperspatial tunnels[end if]! [regarding C][They] [lead] in the hyperspatial [regarding C]direction[if C > 1]s[end if] of [directions]."; 
				say "For help regarding hyperspace, enter [bold type]HELP HYPERSPACE[roman type].";
			otherwise:
				let C be number of entries of directions;
				say "[if C is 1]A stark white hyperspatial tunnel[otherwise]Hyperspatial tunnels[end if] [regarding C][lead] in the [regarding C]direction[if C > 1]s[end if] of [directions]."; 
				
Every turn:
	now darkness witnessed is false;
	
After wearing the astral lenses when could see hypertunnels and darkness witnessed is false:
	say "[We] [put] on [the pair of astral lenses].";
	try looking;
	now the hyperlight is lit;
				
[After taking off the astral lenses when could see hypertunnels and not in darkness:
	try looking;
	continue the action;]
	
Carry out wearing the astral lenses:
	now the hyperlight is lit;
	
Carry out taking off the astral lenses:
	now the hyperlight is unlit;
			
	
The room description astral passages rule is listed before the room description paragraphs about objects rule in the carry out looking rules.

Book 1 - Dropping things

To vanish is a verb.

Instead of dropping something when the location is the Featureless Hyperplane (this is the dropping things on hyperplane rule):
	if the noun is not the mystic compass:
		say "Faraji drops [the noun] and [they] [vanish]!";
		now the noun is in field office Reception;

Volume 2 - Featureless Hyperplane

Book 1 - The Mystic Compass

The mystic compass is a thing.  The description is "The name 'compass' is a bit of a misnomer, as it doesn't point anywhere. Instead, it displays a set of symbols that change as Faraji moves." 
Understand "mystical/magic" as the mystic compass.

After dropping the mystic compass when the Ethereal Pillar is nowhere:
	say "The mystic compass vanishes!";
	now the mystic compass is nowhere;

After dropping the mystic compass when the Ethereal Pillar is in the Featureless Hyperplane:
	say "The mystic compass vanishes and reappears, dangling from the pillar!";

Book 2 - Geography	

Visited Pillar is a truth state that varies. Visited Pillar is false;

a featureless hyperplane is a room. A featureless hyperplane is always-indefinite. The preposition is "on". It is east of it. It is north of it. It is northeast of it. it is southeast of it. 
It is backnorth of it. It is backeast of it. It is backsouth of it. 
It is backwest of it.  
It is back of it. It is in Hyperspace.
"[If featureless hyperplane is not visited][We] [rub] [our] eyes as [we] [try] to take in [our] surroundings. [end if][if Descending Stair is not in Featureless Hyperplane]In addition to the usual directions of north and south and east and west, two new directions exist here: [italic type]back[roman type] and [italic type]forth[roman type]. As a result, the 'surface' [we're] standing on is in fact a three-dimensional hyperplane. Up and down still exist, and there is gravity, apparently.

As far as one can see, the hyperplane extends infinitely in all six directions[otherwise]It is made of the same stark white, questionably real stuff as the ground, the pillar, and the mystic compass. Faraji can't see past the first turn of the stairs, unfortunately[end if]."

The snarky remark is "This is the most featureless hyperplane I've ever seen."

Understand "plane" as the featureless hyperplane.

To say symbol for (N - a number):
	if N is 0:
		say "o";
	if N is 1:
		say "p";
	if N is 2:
		say "q";
	if N is 3:
		say "d";
	if N is 4:
		say "b";
	if N is -1:
		say "⌂";

To say symbols for (L - a list of numbers):
	say "[fixed letter spacing]";
	repeat with digit running through L:
		say "[symbol for digit]";
	say "[variable letter spacing]";

The old hyperplane coords is a list of numbers that varies. The old hyperplane coords is initially {0, 0, 0}.
The new hyperplane coords is a list of numbers that varies. The new hyperplane coords is initially {0, 0, 0}.

Carry out going a direction (called D) from Featureless Hyperplane:
	now hyperplane coords is new hyperplane coords;
	if hyperplane coords is Coordinates of Pillar:
		if the player does not carry the mystic compass and the compass is nowhere:
			move the mystic compass to Featureless Hyperplane;
		now the printed name of Featureless Hyperplane is "ethereal pillar";
		now the preposition of Featureless Hyperplane is "next to";
		move Ethereal Pillar to Featureless Hyperplane;
	otherwise if hyperplane coords is Staircase Coords:
		if the player does not carry the mystic compass and the compass is in Featureless Hyperplane:
			remove the mystic compass from play;
		now the printed name of Featureless Hyperplane is "descending stair";
		now the preposition of Featureless Hyperplane is "at the top of";
		move Descending Stair to Featureless Hyperplane;
	otherwise:
		if the player does not carry the mystic compass and the compass is in Featureless Hyperplane:
			remove the mystic compass from play;
		now the printed name of Featureless Hyperplane is "featureless hyperplane";
		now the preposition of Featureless Hyperplane is "on";
		now the Ethereal Pillar is nowhere;
		now Descending Stair is nowhere;

Before going a direction (called D) from Featureless Hyperplane:
	Now old hyperplane coords is hyperplane coords;
	Now new hyperplane coords is hyperplane coords;
	if D is north:
		increment entry 1 of new hyperplane coords;
	if D is northeast:
		increment entry 1 of new hyperplane coords;
		decrement entry 2 of new hyperplane coords;
	if D is east:
		decrement entry 2 of new hyperplane coords;
	if D is southeast:
		decrement entry 1 of new hyperplane coords;
		decrement entry 2 of new hyperplane coords;
	if D is south:
		decrement entry 1 of new hyperplane coords;
	if D is southwest:
		decrement entry 1 of new hyperplane coords;
		increment entry 2 of new hyperplane coords;	
	if D is west:
		increment entry 2 of new hyperplane coords;
	if D is northwest:
		increment entry 1 of new hyperplane coords;
		increment entry 2 of new hyperplane coords;	
	if D is back:
		decrement entry 3 of new hyperplane coords;
	if D is forth:
		increment entry 3 of new hyperplane coords;
	if D is backnorth:
		increment entry 1 of new hyperplane coords;
		decrement entry 3 of new hyperplane coords;
	if D is backeast:
		decrement entry 2 of new hyperplane coords;
		decrement entry 3 of new hyperplane coords;
	if D is backsouth:
		decrement entry 1 of new hyperplane coords;
		decrement entry 3 of new hyperplane coords;
	if D is backwest:
		increment entry 2 of new hyperplane coords;
		decrement entry 3 of new hyperplane coords;
	if D is forthnorth:
		increment entry 1 of new hyperplane coords;
		increment entry 3 of new hyperplane coords;
	if D is fortheast:
		decrement entry 2 of new hyperplane coords;
		increment entry 3 of new hyperplane coords;
	if D is forthsouth:
		decrement entry 1 of new hyperplane coords;
		increment entry 3 of new hyperplane coords;
	if D is forthwest:
		increment entry 2 of new hyperplane coords;
		increment entry 3 of new hyperplane coords;
	if old hyperplane coords is Coordinates of Pillar:
		say "Faraji leaves the ethereal pillar behind.";
	otherwise if old hyperplane coords is Staircase Coords and D is not down:
		say "Faraji leaves the descending stair behind.";
	otherwise if old hyperplane coords is Staircase Coords and D is down:
		do nothing;
	otherwise if new hyperplane coords is Staircase Coords:
		say "Faraji trudges across the trackless hyperplane, and ends up somewhere else, not completely the same.";
	otherwise if new hyperplane coords is Coordinates of Pillar:
		say "Faraji trudges across the trackless hyperplane, and ends up somewhere else, not completely the same.";
	otherwise if D is not down:
		say "Faraji trudges across the trackless hyperplane, and ends up somewhere else, yet exactly the same.";

Carry out going up from Field Office Reception:
	now HyperPlane Coords is Staircase Coords;
	now the printed name of Featureless Hyperplane is "descending stair";
	now the preposition of Featureless Hyperplane is "at the top of";
	move Descending Stair to Featureless Hyperplane;


Descending Stair is scenery. "A spiraling staircase disappears into the ground here. It is made of the same gossamer, questionably real stuff as the ground, the pillar, and the compass. Faraji can't see past the first turn of the stairs, unfortunately."
Understand "staircase/stairs/spiral" as Descending Stair.
[Rule for writing a paragraph about the descending stair:
	say "A spiraling staircase disappears into the ground here. It is made of the same gossamer, questionably real stuff as the ground,[if visited pillar is true] the pillar,[end if] and the readouts. You can't see past the first turn of the stairs, unfortunately.";]

The Ethereal Pillar is a thing. It is fixed in place. The description is "It's not clear what the pillar is made of, but it's definitely not stone." 

After deciding the scope of the player when the location is Featureless Hyperplane:
	place the Ethereal Pillar in scope;

Understand "structure" as the Ethereal Pillar when the Ethereal Pillar is not in the location.

Instead of examining the Ethereal Pillar when the Ethereal Pillar is not in the location:
	say "The far-off structure looks like a pillar, but it's hard to tell from here.";

To decide what list of numbers is convert (N - a number) to base five:
	let K be N;
	let L be a list of numbers;
	while K is not 0:
		let r be the remainder after dividing K by 5;
		add r to L;
		now K is K divided by 5;
	if L is empty:
		add 0 to L;
	let negative be false;
	reverse L;
	repeat with X running through L:
		if X < 0:
			now negative is true;
	if negative is true:
		let length be the number of entries in L;
		repeat with X running from 1 to length:
			now entry X of L is -1 times entry X of L;
		add -1 to L;
	decide on L;
		
To decide which text is the dirstring:
	let nsdiff be entry 1 of Coordinates of Pillar minus entry 1 of Hyperplane Coords + 0.1;
	let wediff be entry 2 of Coordinates of Pillar minus entry 2 of Hyperplane Coords + 0.1;
	let fbdiff be entry 3 of Coordinates of Pillar minus entry 3 of Hyperplane Coords + 0.1;
	let nsdir be "";
	let wedir be "";
	let fbdir be "";
	if nsdiff >= 0:
		let nsdir be "north";
	otherwise:
		let nsdir be "south";
	if wediff >= 0:
		let wedir be "west";
	otherwise:
		let wedir be "east";
	if fbdiff >= 0:
		let fbdir be "forth";
	otherwise:
		let fbdir be "back";
	let nsdivwe be nsdiff / wediff;
	now nsdivwe is absolute value of nsdivwe;
	let nsdivfb be nsdiff / fbdiff;
	now nsdivfb is absolute value of nsdivfb;
	let wedivfb be wediff / fbdiff;
	now wedivfb is absolute value of wedivfb;	
	let nsscore be nsdivwe + nsdivfb;
	let wescore be 1 / nsdivwe + wedivfb;
	let fbscore be 1 / wedivfb + 1 / nsdivfb;
	let dir be "";
	let count be 1;
	if fbscore >= wescore and fbscore >= nsscore:
		now dir is fbdir;
		let x be 2 * nsscore;
		if fbscore < x:
			increment count;
			now dir is "[dir][nsdir]";
		now x is 2 * wescore;
		if fbscore < x and count < 2:
			now dir is "[dir][wedir]";
		decide on dir;
	if nsscore >= wescore and nsscore >= fbscore:
		now dir is nsdir;
		if nsscore < 2 * wescore:
			increment count;
			now dir is "[dir][wedir]";
		if nsscore < 2 * fbscore and count < 2:
			now dir is "[fbdir][dir]";
		decide on dir;
	if wescore >= nsscore and wescore >= fbscore:
		now dir is wedir;
		let x be 2 * nsscore;
		if wescore < 2 * nsscore:
			increment count;
			now dir is "[nsdir][dir]";
		if wescore < 2 * fbscore and count < 2:
			now dir is "[fbdir][dir]";
		decide on dir;
	decide on dir;

Staircase coords is always {0, 0, 0}.

Rule for writing a paragraph about the Ethereal Pillar:
	now visited pillar is true;
	say "There is an [ethereal pillar] here. A message carved into the pillar says 'All you need is love : love : love -Doris'[paragraph break]";
	say "Under that is a line of five ethereal symbols: o p q d b";
	[say "Under that is a line of five strange symbols: ◊ ┘ ┐ ┌ └";]
	say paragraph break;
	
Rule for writing a paragraph about the mystic compass:
	say "A mystic compass dangles from an outcropping of the pillar.";	
	
The message is part of the Ethereal Pillar. The description is "The message is carved into the pillar as into white marble. It says 'All you need is love : love : love -Doris'".

The ethereal symbols is part of the Ethereal Pillar. The description is "Under the message is a line of five ethereal symbols: o p q d b".


[Rule for writing a paragraph about the Ethereal Pillar:
	now visited pillar is true;
	say "There is an ethereal pillar here, carved with puzzling shapes:[fixed letter spacing][paragraph break]
	 [fixed letter spacing]O---------O[line break]
	 [fixed letter spacing] | | | | |[line break]
	 [fixed letter spacing] | | | | |[line break]
	 [fixed letter spacing] | | | | |[line break]
	 [fixed letter spacing] | | | | |[line break]
	 [fixed letter spacing] ---------[line break]
	 [fixed letter spacing](◊ ┘ ┐ ┌ └)[line break]
	 [fixed letter spacing] ---------[line break]
	 [fixed letter spacing] | | | | |[line break]
	 [fixed letter spacing] ||-----||[line break]
	 [fixed letter spacing] || ┘┘⌂ ||[line break]
	 [fixed letter spacing] || ┐┌  ||[line break]
	 [fixed letter spacing] || ┘◊  ||[line break]
	 [fixed letter spacing] ||-----||[line break]
	 [fixed letter spacing] | | | | |[line break]
	 [fixed letter spacing] | | | | |[line break]
	 [fixed letter spacing]/---------\[paragraph break][variable letter spacing]";]
	
To say symbol for (N - a number):
	if N is 0:
		say "o";
	if N is 1:
		say "p";
	if N is 2:
		say "q";
	if N is 3:
		say "d";
	if N is 4:
		say "b";
	if N is -1:
		say "#";
	
To decide which real number is the distance:
	let nsdiff be entry 1 of Coordinates of Pillar minus entry 1 of Hyperplane Coords + 0.1;
	let wediff be entry 2 of Coordinates of Pillar minus entry 2 of Hyperplane Coords + 0.1;
	let fbdiff be entry 3 of Coordinates of Pillar minus entry 3 of Hyperplane Coords + 0.1;
	now nsdiff is the absolute value of nsdiff;
	now wediff is the absolute value of wediff;
	now fbdiff is the absolute value of fbdiff;
	let dsq be (nsdiff * nsdiff) + (wediff * wediff) + (fbdiff * fbdiff);
	decide on the real square root of dsq;
	
Instead of examining the mystic compass when the location is Featureless Hyperplane:
	say "On the readout of the mystic compass floats a set of ethereal symbols: [symbols for convert entry 1 of hyperplane coords to base five] : [symbols for convert entry 2 of hyperplane coords to base five] : [symbols for convert entry 3 of hyperplane coords to base five][paragraph break]";
	

After printing the locale description when the location is Featureless Hyperplane:
	if the player encloses the mystic compass:
		try examining the mystic compass;
	if Hyperplane Coords is not Coordinates of Pillar:
		let t be the dirstring;
		let dist be the distance;
		if dist > 30:
			say "Far off in the distance is some kind of structure, roughly to the [t].";
		otherwise if dist > 10:
			say "In the middle distance is some kind of structure, roughly to the [t].";
		otherwise if dist > 2:
			say "Not too far off is some kind of structure, roughly to the [t].";
		otherwise if dist > 0:
			say "Close by is some kind of structure to the [t].";

Check going down from Featureless Hyperplane:
	if hyperplane coords is not staircase coords:
		say "[text of the can't go that way rule response (A)][line break]" instead; 

Volume 3 - Hyperspace Field Office

field office area is a region. It is in hyperspace. Understand "field/-- office" as field office area. The printed name is "field office".

Book 1 - Reception

field office reception is below Featureless Hyperplane. The preposition is "at". It is in field office area. "It is a small, white (like everything else) room with a desk against one wall. An office directory is on the wall. A hallway leads west and a stairway goes up to the infinite hyperplane."
The snarky remark is "I bet they don't get much foot traffic here."

The reception desk is a scenery supporter in field office reception. The description is "The desk -- white, polished, and gleaming -- is empty except for a small control panel."

The control panel is part of the reception desk. The description is "As Faraji leans over to examine the control panel, Maggie says 'Please don't touch that. Don't even look at it. Time to look away now.'".

The ascending staircase is scenery in field office reception. The description is "The staircase leads up to the featureless hyperplane." Understand "stairs/stair/spiral" as ascending staircase.

The office directory is scenery in field office reception. The description is "The directory reads:[line break]
Doris, Field Office Chief: WEST[line break]
Christy, Field Office Researcher: WEST[line break]
Minerva, Field Agent: WEST[line break]
Portal to the Past: WEST[line break]
Auxiliary Portal: WEST[line break]
Maggie, Receptionist: RIGHT BEHIND YOU".
Understand "sign" as office directory.

Instead of doing anything other than examining to the control panel:
	say "Maggie gives Faraji a look that says 'Don't even think about it.'";

Section - Maggie

Maggie is a woman in field office reception. "Maggie is sitting at the desk, doing nothing Faraji can discern." The description is "Maggie seems a little vacant. She's staring at [one of]the wall[or]the ceiling[or]the floor[or]her hands[or]the desk in front of her[or]nothing in particular[at random]."
Maggie is not neuter.
Understand "receptionist/woman" as Maggie.

Rule for writing a paragraph about Maggie when field office reception is not visited:
	say "A young woman is sitting at the desk. Apparently doing nothing, she looks up from her desk and smiles at Faraji. 'Hello, I'm Maggie,' she says. 'Welcome to the BOSH Hyperspace Field Office, [agent]. Did you have a nice time getting here? I hope so. I helped design the lobby.' She resumes staring at the opposite wall.";
	now Maggie is met;

hyperspace-subject is a subject. It is privately-named. The printed name is "hyperspace in general". Understand "hyperspace/in/general" as hyperspace-subject.
portal-to-the-past is a subject. It is privately-named. The printed name is "portal to the past". Understand "portal/to/the/past" as portal-to-the-past.
auxiliary-portal is a subject. It is privately-named. The printed name is "auxiliary portal". Understand "auxiliary/portal" as auxiliary-portal.
doris-subject is a subject. It is privately-named. The printed name is "Doris". Understand "Doris" as doris-subject.
christy-subject is a subject. It is privately-named. The printed name is "Christy". Understand "Christy" as christy-subject.
minerva-subject is a subject. It is privately-named. The printed name is "Minerva". Understand "Minerva" as minerva-subject.
maggie-subject is a subject. It is privately-named. The printed name is "Maggie". Understand "Maggie" as maggie-subject.
lobby is a subject.
coffee-subject is subject. It is privately-named. The printed name is "coffee". Understand "coffee" as coffee-subject.
hyperplane-subject is a subject. It is privately-named. The printed name is "hyperplane". Understand "infinite/featureless/hyperplane" as hyperplane-subject.
hyperspace-field-office-subject is a subject. It is privately-named. The printed name is "BOSH Hyperspace Field Office". Understand "BOSH/Hyperspace/Field/Office" as hyperspace-field-office-subject.

Table of Quiz Topics (continued)
subject (a thing)	interlocutor (a person)	comment (a text)	reply (a text)
reception desk	Maggie	"'Nice desk.'"	"'Thank you. It's a desk.'"
control panel	Maggie	"'What's this?'"	"'It's a control panel. It controls things. You're not allowed to touch it.'"
hyperspace-subject	Maggie	"Faraji asks, 'What is hyperspace?'"	"Maggie looks up without seeming to focus on anything in particular. 'It's the place that isn't quite is. It's where we are now. It's where we go when we leave here.'"
doris-subject	Maggie	"'Who is Doris?'"	"'Doris is the field office chief,' Maggie says dreamily. 'He's a riddle, wrapped in bacon, inside an egg. You can find him in his office, west of here.'"
christy-subject	Maggie	"'Who is Christy?'"	"'Christy is the field office researcher. They're very good at what they do, if the way they do it is what you need. You can find them in their office, west and then south.'"
minerva-subject	Maggie	"'Who is Minerva?'"	"'Minerva is our only field agent. She also has the only coffee maker in the office, which is a good thing, because I don't drink coffee. You can find her in her office, west and north.'"
portal-to-the-past	Maggie	"'What is the portal to the past?'"	"'It's a device that allows us to travel to different times and places. It's currently [if the portal to the past is active]active, so you can go ahead and use it whenever you like[otherwise]inactive, but it can be activated by typing in the correct code on my desk, which you're not allowed to use, so don't even think about it[end if]. The portal has a control panel that allows you to set the spacetime coordinates.'"
auxiliary-portal	Maggie	"'What is the auxiliary portal?'"	"'It is a device that allows us to travel to different times and places. It is currently [if the auxiliary portal is activated]active, so by all means, go use it[otherwise]inactive, but it can be activated by typing in the correct code on my desk, which you're not allowed to use, so don't even think about it[end if].'"
Thumb drive	Maggie	"'What do you know about this?'"	"'I'm surprised you don't know. It's a USB drive. It's used to store data.'"
maggie-subject	Maggie	"'Who are you?'"	"'I'm Maggie. I'm the receptionist here at the BOSH Hyperspace Field Office. I'm here to help you with whatever you need, as long as it's not touching the control panel.'"
BOSH	Maggie	"'Are you part of BOSH?'"	"'Sometimes, yes -- the Bureau of Space and Hyperspace. Or is it Bureaucratic Office of Supernatural History? Or Business Office for Standard Howitzers? Or Big Office of the Slightly Hilarious? Oh yes, Bureau of Strange Happenings. But I like to think of it as the Baby of Stan and Harriet.'"
lobby	Maggie	"'The lobby? You mean the infinite wasteland I was forced to wander through to get here?'"	"'Yes, that's the one. Isn't it lovely?'"
Maggie	Maggie	"'Who are you?'"	"'I'm Maggie. I'm the receptionist here at the BOSH Hyperspace Field Office. I'm here to help you with whatever you need, as long as it's not touching the control panel.'"
Faraji	Maggie	"'What does any of this have to do with me?'"	"'Ask Doris. Or don't. Something confusing is going on, and you're in the middle of it. Or maybe you're not. Who can say?'"
field office area	Maggie	"'What is this place?'"	"'This is the BOSH Hyperspace Field Office. This is where we are. Isn't that obvious?'"
Budapest	Maggie	"'What do you know about Budapest?'"	"'It was the answer to a question I asked myself. I don't remember the question, but the answer was Budapest.'"
coffee-subject	Maggie	"'Do you like coffee?'"	"'Coffee is strange. It smells good, but it tastes horrible.'"
hyperplane-subject	Maggie	"'What was that place I had to walk through to get here?'"	"'That was the lobby. I helped design it.'"
hyperspace-field-office-subject	Maggie	"'What is this place?'"	"'This is the BOSH Hyperspace Field Office. This is where we are. Isn't that obvious?'"

Maggie interjection timer is a number that varies. Maggie interjection timer is 5.

Instead of showing the thumb drive to Maggie:
	try quizzing Maggie about the thumb drive;

Every turn when Maggie interjection timer is not 0 and Maggie is in the location:
	decrease Maggie interjection timer by 1;
	if Maggie interjection timer is 0:
		interject Maggie;

Before discussing when Maggie is in the location:
	now Maggie interjection timer is a random number from 2 to 5;

Before quizzing someone about something when Maggie is in the location:
	now Maggie interjection timer is a random number from 2 to 5;

Before implicit-quizzing something when Maggie is in the location:
	now Maggie interjection timer is a random number from 2 to 5;

To interject Maggie:
	sort Table of Maggie Interjections in random order;
	if there is a used of false in the Table of Maggie Interjections:
		choose the row with a used of false in the Table of Maggie Interjections;
		say "[Maggie interjection entry][line break]";
		now the used entry is true;
		increase Maggie interjection timer by a random number from 2 to 5;

Table of Maggie Interjections
Maggie interjection	used
"Maggie seems to snap out of her reverie. 'Oh, hello. Who are you again? Oh yes, Agent Faraji. Please don't touch the control panel.'"	false
"Maggie looks up from her desk. 'Do you know what makes this place so special? It's the people. I mean, not the people that you see, but the others.'"	false
"Maggie snaps her fingers. 'That's it! I remember now. Budapest.'"	false
"Maggie looks at her hands. 'Once I thought I wasn't real. But Minerva told me I was. So I guess I am.'"	false
"Maggie curls her lip. 'I don't like coffee. It's too bitter. But Minerva likes it. She's the only one who does. Except for Doris and Christy.'"	false
"Maggie twirls a lock of hair around her finger. 'A lot of people travel in time and don't even know it. They think they're just going to the store or to work. But they're not. They're going to the past or the future.'"	false
"Maggie gets up for a moment and paces. 'Most people think my job is easy. But it's not. I have so many scary thoughts sitting here all day.'"	false




Book 2 - Hallway

the field office hallway is west of field office reception. It is in field office area. "The hallway is white and gleaming. Doorways lead north to Minerva's office, south to Christy's office, east to the front office, west to Doris's office, forth to the portal to the past, and back to the auxiliary portal."
Understand "hall/way/corridor" as field office hallway.


Book 3 - Minerva's Office

Minerva's office is a leavable room. It is north of the field office hallway. It is in field office area. "The office is white and gleaming. A mahogany desk is in the middle of the room. A coffee maker sits on the desk. The way out is to the south." It has egress south.

Minerva is a woman in Minerva's office. The initial appearance is "Minerva, a field agent, is sitting at her desk, typing away on her computer. She is dressed very professionally in a white blouse and black slacks." 
The description is "Minerva exudes an air of competence and no-nonsense business. Her expression is serious and focused."

A mahogany desk is in Minerva's office. It is scenery. The description is "The desk holds some neatly-stacked papers, a few books, and a coffee maker.".

Minerva's papers are scenery. They are on the mahogany desk. The description is "Minerva notices Faraji looking at her papers and gives them a look that says 'Mind your own business.'" 
It is owned by Minerva. It is plural-named.


Instead of examining Minerva's books:
	let T be the list of tomes on the mahogany desk;
	say "The books [T] are stacked neatly on the desk.";

Minerva's books are scenery on the mahogany desk. The description is "The books [italic type]Advanced Temporal Mechanics[roman type], [italic type]Theoretical Hyperspace[roman type], and [italic type]White Light[roman type] are stacked neatly on the desk." 
It is plural-named. It is owned by Minerva.


Instead of examining Minerva's books:
	let tomes be the list of tomes on the mahogany desk;
	say "The books [tomes] are stacked neatly on the desk.";
	
A tome is a kind of thing.
A tome can be loanable.
Understand "book" as a tome.
Before printing the name of a tome:
	say "[italic type]";

After printing the name of a tome:
	say "[roman type]";
	make no decision.

Advanced Temporal Mechanics is a tome on the mahogany desk. The description is "A thick, technical tome with a title that makes Faraji's head hurt. One passage reads:

Upon the resolution of a non-Moebius temporal loop, the involute of the temporal vector field is equal to the sum of the involutes of the temporal vector field and the spatial vector field. This is a fundamental principle of temporal mechanics, and it is the basis for the resolution of the paradoxes that arise from the interaction of the two fields. The resulting outflux of chronon particles is a side effect of the resolution of the paradoxes, and it is a necessary part of the process of temporal loop resolution. The precise equations describing this process are as follows: [bracket]incomprehensible mathematical symbols[close bracket]."
It is owned by Minerva. It is loanable.

Theoretical Hyperspace is a tome on the mahogany desk. The description is "A graduate text in something or other. One of the more readable passages goes:

The hyperspace manifold is a complex, multidimensional space that is not directly observable. It is representable as the boundary of the non-singular subsurface of the degenerate five-dimensional Gorochev hypersphere. As such it has a dimension of 4 almost everywhere, but it is not a smooth manifold. The hyperspace manifold is the basis for the theory of hyperspace, and it is the foundation of the field of hyperspace physics. The precise equations describing the hyperspace manifold are as follows: [bracket]incomprehensible mathematical symbols[close bracket]."
It is owned by Minerva. It is loanable.

White Light is a tome on the mahogany desk. The description is "A battered trade paperback by someone named Rudy Rucker. Its text is protected by copyright."
It is owned by Minerva. It is loanable.

The borrowed book-minerva is an object that varies. The borrowed book-minerva is initially nothing.

to borrow a book-minerva is a questioning quip.
	It is privately-named.
	The printed name is "to borrow a book".
	Understand "to/-- borrow a/-- book/--" as to borrow a book-minerva.
	It is silent.
	It quip-supplies Minerva.
	It is repeatable.

plausibility rule for to borrow a book-minerva:
	if the borrowed book-minerva is nothing:
		it is plausible;
	it is implausible;

Check discussing to borrow a book-minerva when the borrowed book-minerva is something:
	say "Minerva shakes her head. 'Sorry, I'll only lend one book at a time.'" instead;

After discussing to borrow a book-minerva:
	queue Minerva with to borrow a book-minerva;	
	Prepare to ask what do you want to borrow-minerva from Minerva;
	
After examining a tome when the noun is owned by Minerva and the noun is supported by the mahogany desk:
	queue Minerva with to borrow a book-minerva;

after examining the mahogany desk:
	queue Minerva with to borrow a book-minerva;

after examining Minerva's books:
	queue Minerva with to borrow a book-minerva;

Book-borrowing is an object based rulebook.

Book-borrowing something enclosed by the player:
	say "[We] already [have] that.";
	rule fails;

Book-borrowing a tome (called T) when T is supported by the mahogany desk and T is owned by Minerva:
	now the player carries T;
	now the player owns T;	
	say "[line break][We] [take] [T].";
	now the borrowed book-minerva is T;
	rule succeeds;

Book-borrowing something (called S):
	say "[We] can't borrow [regarding S][those].";
	rule fails;	

After giving a loanable tome to Minerva when the borrowed book-minerva is the noun:
	now the borrowed book-minerva is nothing;
	now the noun is supported by the mahogany desk;
	now the noun is owned by Minerva;
	say "Minerva regards Faraji critically. 'Took you long enough.' She puts the book back on the shelf.";
	
After putting a loanable tome on the mahogany desk when the borrowed book-minerva is the noun:
	now the borrowed book-minerva is nothing;
	now the noun is owned by Minerva;
	continue the action;

A turn sequence rule when we are discussing to borrow a book-minerva (this is the book borrowing turn sequence-minerva rule):
	rule fails;	

The book borrowing turn sequence-minerva rule is listed before the every turn stage rule in the turn sequence rules.

What do you want to borrow-minerva is a question.
	The printed name is "What do you want to borrow".
	The expected responses are { Advanced Temporal Mechanics, Theoretical Hyperspace, White Light }.
	The result is book-borrowing.

[Minerva is business-like and no-nonsense, to the point of being blunt and sometimes rude.]
Table of Quiz Topics (continued)
subject (a thing)	interlocutor (a person)	comment (a text)	reply (a text)
maggie-subject	Minerva	"'What do you think of Maggie?'"	"'She occupies the reception desk well.'"
hyperspace-subject	Minerva	"'What is hyperspace?'"	"'Hyperspace is a damn pain is what it is.'"
doris-subject	Minerva	"'Who is Doris?'"	"'He's the field office chief. If you listen real close you can hear the insanity leaking out of his ears.'"
christy-subject	Minerva	"'Who is Christy?'"	"'Christy is the field office researcher. Cynical little sweetheart, you'd think they'd be more cheerful with all that color in their office.'"
minerva-subject	Minerva	"'Who are you?'"	"'I'm Minerva. I'm the field agent here at the BOSH Hyperspace Field Office. I'm the only sane one here.'"
portal-to-the-past	Minerva	"'What is the portal to the past?'"	"'It's a temporal paradox waiting to happen. Why anyone would put Doris in charge of it is beyond me.'"
auxiliary-portal	Minerva	"'What is the auxiliary portal?'"	"'Yet another temporal paradox waiting to happen. I'm surprised we haven't all been sucked into a black hole yet.'"
thumb drive	Minerva	"'What do you know about this?'"	"'It's a USB drive. It's used to store data. I don't know why you're asking me about it.'"
mahogany desk	Minerva	"'I like your desk.'"	"'Thank you. You have good taste.'"
coffee maker	Minerva	"'Tell me about the coffee maker.'"	"'It's a coffee maker. It makes coffee. It's on my desk.'"
Minerva's papers	Minerva	"'What are you working on?'"	"'None of your business.'"
Minerva's books	Minerva	"'You have a nice libarary.'"	"'Make sure your hands are clean before you touch the books.'"
Advanced Temporal Mechanics	Minerva	"'Have you read this one?'"	"'Yes, I have. It's a good book.'"
Theoretical Hyperspace	Minerva	"'What's this one about?'"	"'Check the title. It's about hyperspace.'"
White Light	Minerva	"'So you read fiction too?'"	"'No, I read non-fiction. That book is a documentary.'"
Larch Faraji	Minerva	"'Hi, my name is Larch Faraji.'"	"'Yes, I know who you are. Doris told me you were coming.'"
hyperspace-field-office-subject	Minerva	"'What is this place?'"	"'This, to my eternal regret, is the BOSH Hyperspace Field Office. It is to where I am eternally condemned. I mean, where I work.'"


A coffee maker is on the mahogany desk. It is scenery. The description is "A drip coffee maker sits on the desk." Minerva owns the coffee maker.

The cup of coffee is a thing. The description is "[Coffee description]. It is in a paper cup.". The cup of coffee has a number called the hotness.


To say coffee description:
	if the hotness of the cup of coffee is greater than 25:
		say "The coffee is steaming hot";
	otherwise if the hotness of the cup of coffee is greater than 20:
		say "The coffee is hot";
	otherwise if the hotness of the cup of coffee is greater than 10:
		say "The coffee is warm";
	otherwise if the hotness of the cup of coffee is greater than 5:
		say "The coffee is tepid";
	otherwise:
		say "The coffee is cold";

Every turn when the cup of coffee is somewhere and the hotness of the cup of coffee is greater than 0:
	decrease the hotness of the cup of coffee by 1;

Drinking is an action applying to one thing. Understand "drink [something]" as drinking.

Check drinking something when the noun is not the cup of coffee:
	say "Faraji can't drink that." instead;

To dump is a verb.

Carry out drinking the cup of coffee:
	if the hotness of the cup of coffee is greater than 25:
		say "The coffee is too hot to drink.";
	otherwise if the hotness of the cup of coffee is greater than 20:
		say "The coffee is hot, but drinkable. MMMM. That's good coffee.";
		now the cup of coffee is nowhere;
	otherwise if the hotness of the cup of coffee is greater than 10:
		say "The coffee is warm. MMMM. That's mildly satisfactory coffee.";
		now the cup of coffee is nowhere;
	otherwise if the hotness of the cup of coffee is greater than 10:
		say "The coffee is tepid yet barely drinkable.";
		now the cup of coffee is nowhere;
	otherwise:
		say "The coffee is cold. [We] [dump] it out.";
		now the cup of coffee is nowhere;

about coffee is a questioning quip.
	The printed name is "for a cup of coffee".
	Understand "can i have a/-- coffee" as about coffee.
	Understand "for/a/cup/of/coffee" as about coffee.
	The comment is "Faraji says, 'I could use a coffee.'".
	The reply is "Minerva looks up from her computer. 'Sure, help yourself.'".
	it quip-supplies Minerva.
	It is repeatable.
	It is always-available.

for-a-screwdriver-minerva is a questioning quip.
	It is privately-named. The printed name is "for a screwdriver". [The true-name is "for-a-screwdriver-clerk".] Understand "for/a/screwdriver" as for-a-screwdriver-minerva.
	It mentions the screwdriver.
	The comment is "Faraji asks, 'Would you happen to have a screwdriver I could borrow?'".
	The reply is "'No.'".
	It quip-supplies Minerva.
	
An availability rule for for-a-screwdriver-minerva:	
	if the player knows vent-screws and the red screwdriver is not handled:
		always available;

[An availability rule for about coffee (this is the serve coffee rule):
	if the cup of coffee is off-stage:
		always available;
	otherwise:
		never available;]

A plausibility rule for about coffee (this is the coffee plausibility rule):
	if the cup of coffee is off-stage:
		it is plausible;
	otherwise:
		it is implausible.

To say pretty region:
	if the location of the cup of coffee is regionally in field office area:
		say "the hyperspace field office";
	otherwise if the location of the cup of coffee is regionally in hyperspace:
		say "hyperspace";
	otherwise if the location of the cup of coffee is regionally in BOSH HQ:
		say "BOSH Headquarters in Swamp Park";
	otherwise if the location of the cup of coffee is regionally in ELR:
		say "Enigma Lake";
	otherwise if the location of the cup of coffee is regionally in laundromat-region:
		say "the laundromat";
	otherwise if the location of the cup of coffee is regionally in Swamp Park:
		say "Swamp Park";
	otherwise: 
		say "an unknown area";

Instead of discussing about coffee when the cup of coffee is not off-stage:
	say "[We] should probably drink the coffee [we] already [have] before getting more.[run paragraph on]";
	if the player does not enclose the cup of coffee:
		let cup home be the location of the cup of coffee;
		say " (If you've lost track of it, it's [preposition of the location of the cup of coffee] [if the cup home is always-indefinite][a cup home][otherwise][the cup home][end if], in [pretty region].)";
	otherwise:
		lb;
		

To pour is a verb.

After discussing about coffee:
	say "[reset LPR][We] [pour] [ourselves] a cup of coffee in a styrofoam cup.";
	now the player carries the cup of coffee;
	now the hotness of the cup of coffee is 30;


Minerva interjection timer is a number that varies. Minerva interjection timer is 5.

Every turn when Minerva interjection timer is not 0 and Minerva is in the location:
	decrease Minerva interjection timer by 1;
	if Minerva interjection timer is 0:
		interject Minerva;

Before discussing when Minerva is in the location:
	now Minerva interjection timer is a random number from 2 to 5;
	
Before quizzing someone about something when Minerva is in the location:
	now Minerva interjection timer is a random number from 2 to 5;

Before implicit-quizzing something when Minerva is in the location:
	now Minerva interjection timer is a random number from 2 to 5;

To interject Minerva:
	sort Table of Minerva Interjections in random order;
	if there is a used of false in the Table of Minerva Interjections:
		choose the row with a used of false in the Table of Minerva Interjections;
		say "[Minerva interjection entry][line break]";
		now the used entry is true;
		increase Minerva interjection timer by a random number from 2 to 5;

Table of Minerva Interjections
Minerva interjection	used
"Minerva looks up from her computer. 'Yes? Don't tell me, I know. You want to borrow a book.'"	false
"Minerva looks bothered. 'What is it now?'"	false
"Minerva, lost in thought, looks up. 'Don't drink too much coffee. I pay for it, you know.'"	false
"Minerva leans back. 'If you're going to ask me a question, make it a good one.'"	false
"Minerva cocks an eyebrow. 'If you're coming to me because Maggie's being weird, I can't help you.'"	false
"Minerva clicks her tongue. 'I'm busy. What do you want?'"	false
"Minerva sighs deeply. 'If Christy is being difficult, work it out with them. I'm not a mediator.'"	false


Book 4 - Doris's Office

the field office chief's office is a leavable room. It is west of the field office hallway. It is in field office area. "Doris's office is a riot of color -- he's covered the white walls with posters, maps, and charts. A large desk is in the middle of the room, behind which sits Doris. The exit is east." It has egress east.

Doris is a man in the field office chief's office.
The initial appearance is "Doris is sitting cross-legged in a chair, tapping his foot lazily on the desk."
The description is "Doris sports a grin that seems to be permanently etched on his face. He wears a tweed suit and a trilby hat."

The tweed suit is part of Doris. The description is "The suit is a little too big for him, but he wears it with style."

The trilby hat is part of Doris. The description is "The grin and the hat make him look like a cartoon character." 
The snarky remark is "He's like some strange caricature of Frank Sinatra."

Doris's chair is a scenery supporter in the field office chief's office. The description is "It is a very nice swivel chair, worth more than Faraji's car." 

Doris's desk is a scenery supporter in the field office chief's office. The description is "Doris's desk is large and made of the same white material as the rest of the office. It is covered with a chaotic mess of papers."

The posters are scenery in the field office chief's office. The description is "The posters are all brightly colored and covered with strange symbols and diagrams. They're all in languages Faraji can't read." They are plural-named.

The maps are scenery in the field office chief's office. The description is "The maps are of places Faraji is pretty sure don't exist." They are plural-named.

The charts are scenery in the field office chief's office. The description is "The charts seem to be of some kind of scientific data, but Faraji can't make heads or tails of them." They are plural-named.

The tchotchkes are scenery in the field office chief's office. Understand "knick-knacks", "knick knacks", "curios", "junk", "stuff" as the tchotchkes. The description is "A small, plastic model of a TARDIS, a Rubik's cube, and a CMY cube are on the desk." They are plural-named. Doris owns the tchotchkes.


A model TARDIS is on Doris's desk. The description is "It's a small, plastic model of a TARDIS." It is owned by Doris.

A Rubik's cube is on Doris's desk. The description is "It's a Rubik's cube." It is owned by Doris.
Understand "rubik/rubix" as Rubik's cube.

A CMY cube is on Doris's desk. The description is "An acrylic cube that filters light on different wavelengths through its various sides." It is owned by Doris. Understand "color/acrylic" as CMY cube.

Doris's papers are on Doris's desk. They are plural-named. The description is "The papers are covered with scribbles and diagrams. But really, who can make sense of them?" It is owned by Doris. Understand "scribbles/diagrams" as Doris's papers.

Book 5 - Christy's Office

Christy's office is a leavable room. It is south of the field office hallway. It is in field office area. "Christy has taken the initiative to paint their office a bright, cheerful orange. A large desk is in the middle of the room." It has egress north.

Christy is a nonbinary in Christy's office. The initial appearance is "Christy, the field office researcher, is sitting at the desk, drawing in a sketchbook." The description is "With their short hair and wide eyes, Christy looks a bit like a lemur. They're wearing a sharp brown suit."

Christy's desk is a scenery supporter in Christy's office. The description is "A sleek modern desk, it holds [list of things on Christy's desk with indefinite articles]." 

Instead of examining Christy's desk:
	say the description of Christy's desk;
	lb;

The brown suit is part of Christy. The description is "The suit is sharp and well-tailored." 
Christy's eyes are part of Christy. The description is "Christy's eyes are wide, as if they're seeing something Faraji can't."
Christy's hair is part of Christy. The description is "Christy's hair is short and spiky."


Christy's sketchbook is on Christy's desk. The description is "From what [we] can see, the sketchbook is filled with drawings of strange, abstract shapes." It is owned by Christy. Understand "book/sketch/sketches/drawing/drawings" as Christy's sketchbook.
The snarky remark is "I believe that kind of art is called abstract astigmatism."

Christy carries Christy's pencil. The description of Christy's pencil is "A soft, black pencil." It is owned by Christy. Understand "soft/black" as Christy's pencil.

The paint is scenery in Christy's office. The description is "The paint is a bright, cheerful orange." 


Book 6 - Portal Room 1

Definition: the portal to the past is active if it is activated and (the current spacetime setting is the town hall spacetime setting or the current spacetime setting is the shack spacetime setting).

Portal Room 1 is a leavable room. It is forth of the field office hallway. It is in field office area. "The room is full of humming, glowing machinery, all of it attached to a large, arch-shaped portal in the middle of the room. The exit is back." It has egress back.

The machinery is scenery in Portal Room 1. The description is "The machinery is humming and glowing with a soft light. It's all attached to the portal in the middle of the room." Understand "machines" as the machinery.

soft light is a backdrop. It is in Portal Room 1 and Portal Room 2. The description is "The light is soft and warm, casting a gentle glow over everything."

The portal to the past is in Portal Room 1. The portal to the past can be activated. it is fixed in place.

portal label is part of the portal to the past. The description is "The label reads 'Portal to the Past'." 

Understand "shimmering/curtain/field/of/light" as the portal to the past when the portal to the past is activated. 


Instead of going inside when the location is Portal Room 1:
	try entering the portal to the past;

To say portal to the past interior description:
	if the portal to the past is activated:
		if the current spacetime setting is the Town Hall spaceTime setting or the current spacetime setting is the Shack spaceTime setting:
			say ". Inside it is a shimmering curtain of light, leading to another time and place";
		otherwise:
			say ". The portal is dark and inactive";
	otherwise:
		say ". The portal is dark and inactive";

The description of the portal to the past is "The portal, made of the same astral stuff this whole dimension is made of, looms over the rest of the room[portal to the past interior description]. On the right post is a control panel. A label on the top of the arch reads 'Portal to the Past.'"

Rule for writing a paragraph about the portal to the past:
	say the description of the portal to the past;
	lb;

Instead of entering the portal to the past when the portal to the past is not activated:
	say "Nothing happens. It's just an empty archway.";

Understand "go through [something]", "pass through [something]", "go into [something]", "step into [something]", "traverse the [something]" as entering.

Instead of entering the portal to the past when the portal to the past is activated:
	if the current spacetime setting is the Town Hall spaceTime setting:
		say "[We] [enter] the field of light, and [we] [are] suddenly somewhere else.";
		move the player to the Enigma Lake Town Hall;
	otherwise if the current spacetime setting is the Shack spaceTime setting:
		say "[We] [enter] the field of light, and [we] [are] suddenly somewhere else.";
		move the player to Solvay-Road-by-the-lake;
	otherwise:
		say "Nothing happens. It's just an empty archway.";

Chapter - Time Control

The current spacetime setting is a number that varies. The current spacetime setting is 0.
The town hall spacetime setting is always 62358234.
The shack spacetime setting is a number that varies.
When play begins:
	if DEBUG is true:
		now the shack spacetime setting is 1;
	otherwise:
		now the shack spacetime setting is a random number between 10000000 and 99999999;


The spacetime control is a part of the portal to the past. The description is "A control panel is attached to the portal. It has an LED display and a keypad. [if the portal to the past is activated]The display reads '[current spacetime setting]'[otherwise]The display is dark[end if]. A large red button underneath says 'RESET'." Understand "panel" as the spacetime control.

The keypad is a part of the spacetime control. The description is "A standard numeric keypad. The font on the keys is really cool and science fictiony."

The display is a part of the spacetime control. The description is "[if the portal to the past is activated]The display reads '[current spacetime setting]'[otherwise]The display is dark[end if]."
Understand "LED/LEDs" as the display.

The reset button is a part of the spacetime control. The description is "A large red button that says 'RESET'." Understand "red/large/big" as the reset button.

Carry out pushing the reset button:
	if the keypad is initialized:
		now the current spacetime setting is the town hall spacetime setting;
	otherwise:
		now the current spacetime setting is 0;


Report pushing the reset button:
	say "The display now reads '[current spaceTime Setting]'";
	if the portal to the past was active and the portal to the past is not active:
		say ". The shimmering curtain in the portal fades and disappears.";
	otherwise if the portal to the past was not active and the portal to the past is active:
		say ". The shimmering curtain in the portal reappears.";
	otherwise:
		say ". Nothing obvious happens.";
	stop the action;

Typing it into is an action applying to one number and one thing. Understand "type [number] into/on/in [something]" as typing it into. Understand the commands "key", "input" as "type". Understand "enter [number] into/on/in [something]" as typing it into.

The typing it into action has a number called the original setting.

Typing something into the keypad is setting the current spacetime setting.
Typing something into the spacetime control is setting the current spacetime setting.

Setting action variables for setting the current spacetime setting: 
	now the original setting is the current spacetime setting;

Check typing into something:
	if the second noun is not the spacetime control and the second noun is not the keypad:
		say "That's not something Faraji can type into." instead;

Carry out typing into the spacetime control:
	let the input be the number understood;
	now the current spacetime setting is the input;

Carry out typing into the keypad:
	let the input be the number understood;
	now the current spacetime setting is the input;

Report typing a number into the spacetime control:
	say "The display now reads '[current spaceTime Setting]'";
	if the portal to the past was active and the portal to the past is not active:
		say ". The shimmering curtain in the portal fades and disappears.";
	otherwise if the portal to the past was not active and the portal to the past is active:
		say ". The shimmering curtain in the portal reappears.";
	otherwise:
		say ". Nothing obvious happens.";

Report typing a number into the keypad:
	say "The display now reads '[current spaceTime Setting]'";
	if the portal to the past was active and the portal to the past is not active:
		say ". The shimmering curtain in the portal fades and disappears.";
	otherwise if the portal to the past was not active and the portal to the past is active:
		say ". The shimmering curtain in the portal reappears.";
	otherwise:
		say ". Nothing obvious happens.";

Section - Portal 2

Portal Room 2 is a leavable room. It is back of the field office hallway. It is in field office area. "The room is full of humming, glowing machinery, all of it attached to a large, arch-shaped portal in the middle of the room. A sign on the portal says 'Auxiliary Portal'. The exit is forth." It has egress forth.

The auxiliary portal is in Portal Room 2. The auxiliary portal can be activated. it is fixed in place.

Portal sign is part of the auxiliary portal. The description is "The sign reads 'Auxiliary Portal'." 

Understand "shimmering/curtain/field/of/light" as the auxiliary portal when the auxiliary portal is activated. 

Instead of going inside when the location is Portal Room 2:
	try entering the auxiliary portal;


To say auxiliary portal interior description:
	if the auxiliary portal is activated:
		say ". Inside it is a shimmering curtain of light, leading to another time and place";
	otherwise:
		say ". The portal is dark and inactive";

The description of the auxiliary portal is "The portal is made of the same astral stuff this whole dimension is made of[auxiliary portal interior description]. It is labeled 'Auxiliary Portal'."

The machinery2 is scenery in Portal Room 2. It is privately-named. The printed name is "machinery". Understand "machinery/machines" as machinery2. The description is "The machinery is humming and glowing with a soft light. It's all attached to the portal in the middle of the room."

Rule for writing a paragraph about the auxiliary portal:
	say the description of the auxiliary portal;
	lb;

Instead of entering the auxiliary portal when the auxiliary portal is not activated:
	say "Nothing happens. It's just an empty archway.";

Instead of entering the auxiliary portal when the auxiliary portal is activated:
	say "[We] [enter] the field of light, and [we] [are] suddenly somewhere else.";
	move the player to Utility Closet;

Volume 4 - Characters

Book 1 - Doris

Chapter 1 - First Meeting

for-a-screwdriver-doris is a questioning quip.
	The printed name is "for a screwdriver".
	Understand "for/a/screwdriver" as for-a-screwdriver-doris.
	It mentions the screwdriver.
	The comment is "Faraji asks, 'Do you have a screwdriver?'".
	The reply is "'No, I don't have a screwdriver. Do I look like I do?'".
	it quip-supplies Doris.
	
An availability rule for for-a-screwdriver-doris:	
	if the player knows vent-screws and the red screwdriver is not handled:
		always available;

who-are-you-doris is a questioning quip.
	The printed name is "who he is".
	Understand "who", "who are you", "who you are", "who is he", "who he is" as who-are-you-doris.
	The comment is "Faraji asks, 'Who are you?'".
	The reply is "He looks taken aback for a moment, then recovers his composure. 'Ah yes, introductions. I'm Doris, chief of the hyperspatial field office of the Bureau.'".
	It quip-supplies Doris.
	It stocks Doris.
	
about his name is a questioning quip.
	The comment is "Faraji says, 'Tell me about your name.'".
	The reply is "'None of your business,' [Doris] replies.".
	It quip-supplies Doris.
	It follows who-are-you-doris.
	
where-is-this-hyperspace is a questioning quip.
	The printed name is "where we are".
	Understand "where", "where are we", "where we are", "where am i", "where i am", "where is this", "where this is" as where-is-this-hyperspace.
	The comment is "Faraji looks around and asks, 'Where are we? What is this place?'".
	The reply is "[Doris] [answer], 'You're in the hyperspatial field office of the Bureau of Strange Happenings. But I guess that doesn't exactly clear things up for you. Practically, your office is a branch of ours, but since you have the official recognition of the US government -- for now -- you get the glory. Besides, due to the nature of our work, we prefer to remain underground, so to speak. How's Klimp, by the way? Ah, we had some good times. But you know what they say -- what happens in Pompeii, stays in Pompeii.'".
	It quip-supplies Doris.
	It stocks Doris.

how to get home is a questioning quip.
	Understand "how can i/we/they/she/he get home" as how to get home.
	The comment is "Faraji asks, 'Just how can I get home from here?'".
	The reply is "'Go ask Maggie; she can help you.'".
	It quip-supplies Doris.
	It stocks Doris.

After discussing how to get home:
	queue Maggie with how-to-get-home-maggie;
	
klimp-is-fine is an informative quip.
	It is privately-named.
	It mentions Chief Huffton Klimp.
	The printed name is "Klimp is fine".
	Understand "Klimp/he is fine", "about klimp" as klimp-is-fine.
	The comment is "Faraji says, 'He's just fine.'".
	The reply is "'Great! Be sure to say hi for me.'".
	It quip-supplies Doris.
	It follows where-is-this-hyperspace.

After discussing klimp-is-fine:
	set pronouns from Doris;
	
To shake is a verb.

we-don't-have-it is an informative quip. 
	It is privately-named.
	It mentions the thumb drive.
	The printed name is "[force pronoun for player][we] [don't] have it".
	Understand "i/he/she/they/we/have/doesn't/don't/have/it/thumb/drive" as we-don't-have-it.
	The comment is "Faraji shakes their head. 'Sorry, no.'".
	The reply is "'Well, you'll just have to go back and get it, won't you? We can't be fooling around when the fate of the timeline is at stake!' Doris says.".
	it quip-supplies Doris.
	
An availability rule for we-don't-have-it:
	if the player does not carry the thumb drive and the thumb drive is handled and doris does not carry the thumb drive:
		always available;

what thumb drive is a questioning quip. 
	It mentions the thumb drive.
	The comment is "Faraji looks at Doris quizzically. 'What thumb drive?'".
	The reply is "'Huh. Thought you would have found it by now. I'm almost certain it's in your Swamp Park office. Go find it and bring it here.' Doris busies himself at his desk, pointedly ignoring you.".
	it quip-supplies Doris.
	
An availability rule for what thumb drive:
	if the player does not carry the thumb drive and the thumb drive is not handled:
		always available;
		
To answer is a verb.

Check discussing show him the thumb drive:
	if the player does not enclose the thumb drive:
		say "[We] [don't] have [the thumb drive]." instead;

Check discussing hand over the thumb drive:
	if the player does not enclose the thumb drive:
		say "[We] [don't] have [the thumb drive]." instead;

Instead of giving the thumb drive to Doris:
	try discussing hand over the thumb drive;
	
show him the thumb drive is a performative quip. 
	It is privately-named.
	It mentions the thumb drive.
	The comment is "Faraji answers, 'Yes, I have it.'".
	The reply is "'Fantastic! Hand it here.'".
	it quip-supplies Doris.
	It rules out what thumb drive.
	It rules out we-don't-have-it.
	
An availability rule for show him the thumb drive:
	if the player carries the thumb drive:
		always available;
		
Instead of showing the thumb drive to doris:
	try discussing show him the thumb drive;
		
After discussing show him the thumb drive:
	queue Doris with hand over the thumb drive;

hand over the thumb drive is a performative quip.
	The comment is "Faraji gives the thumb drive to Doris.".
	Understand "hand it over", "hand him the thumb/-- drive" as hand over the thumb drive.
	The reply is "'Great, great.' He peruses the drive. 'We lost one of our New York agents -- a guy named Daniels -- to a slingshot effect that threw him far back in time. We're always monitoring for artifacts that are out of place or anachronistic to lead us to lost agents.
	
	He continues, 'The scratch marks here say, [']They found me out and sent me back. 14th century. Old Onondaga holy place. Savra is going to move on the Dragon.[']'".
	it quip-supplies Doris.
	
[An availability rule for hand over the thumb drive:
	if the player carries the thumb drive:
		always available;]
		
After discussing hand over the thumb drive:
	now Doris carries the thumb drive;
	
[ about Savra is a questioning quip.
	Understand "what about Senator/-- Savra" as about Savra.
	The comment is "'Senator Savra? What does he have to with anything?' [we] [ask].".
	The reply is "[Doris] says, 'Well you've noticed he's not very friendly to the Bureau? Let's leave it at that for now. We need to talk about the mission.'".
	it quip-supplies Doris.
	It follows hand over the thumb drive; ]

about Savra is a questioning quip.
	The comment is "'Senator Savra? What does he have to with anything?' Faraji asks.".
	The reply is "[Doris] says, 'Tell me, Agent. Do you believe in aliens? That alien species have visited Earth?'".
	it quip-supplies Doris.
	It follows hand over the thumb drive;

no-aliens is an informative quip. 
	It is privately-named.
	The printed name is "[force pronoun for player][we] don't believe in alien visitation".
	Understand "we/i/you/he/they/she/don't/doesn't/believe/in/alien/visitation/no" as no-aliens.
	The comment is "'No. The Chief might, but I prefer hard evidence,' says [player's surname].".
	The reply is "[Doris] nods. 'Good, because they haven't. The whole idea is ridiculous. Senator Savra is [italic type]not[roman type] an alien.' [They] looks at [us] significantly.
	
	[We] [look] at him unbelievingly. 'What are you talking about?'
	
	[Doris] shakes his head. 'I thought you would know. He's a member of a race of Earth beings more ancient than our own. [Agent], Senator Savra is a [italic type]lizard man[roman type].'".
	It quip-supplies Doris.
	It follows about Savra.
	It rules out yes-aliens.

yes-aliens is an informative quip. 
	It is privately-named.
	The printed name is "[force pronoun for player][we] do believe in alien visitation".
	Understand "we/i/you/he/they/she/do/does/believe/in/alien/visitation/yes" as yes-aliens.
	The comment is "'Yes. The evidence is overwhelming,' says [player's surname].".
	The reply is "[Doris] laughs. 'Nonsense, all of it. Get it out of your head. The whole idea is ridiculous. Senator Savra is [italic type]not[roman type] an alien.' [they] looks at [us] significiantly.
	
	[We] [look] at [them] unbelievingly. 'What are you talking about?'
	
	[Doris] shakes his head. 'I thought you would know. He's a member of a race of Earth beings more ancient than our own. [Agent], Senator Savra is a [italic type]lizard man[roman type].'".
	It quip-supplies Doris.
	It follows about Savra.
	It rules out no-aliens.

Instead of saying yes when yes-aliens is q-available:
	try discussing yes-aliens;

Instead of saying no when no-aliens is q-available:
	try discussing no-aliens;
	
what-is-a-lizard-man is a questioning quip.
	It is privately-named.
	The printed name is "what is a lizard man".
	Understand "what/is/a/lizard/man" as what-is-a-lizard-man.
	The comment is "Faraji looks incredulous. 'And just what is a lizard man?'".
	The reply is "'Just what it sounds like. It's a bipedal, intelligent reptilian creature. Strange people. Deathly allergic to rutabagas.'".
	It quip-supplies Doris.
	It follows yes-aliens.
	It follows no-aliens.
	
Savra's not reptilian is an informative quip.
	Understand "Savra/is/not/reptilian" as Savra's not reptilian.
	The comment is "'But Savra isn't a reptile!'".
	The reply is "'He's in disguise! Whatever, it doesn't matter. What matters is your mission.'"
	It quip-supplies Doris.
	It follows what-is-a-lizard-man.
	
[New Bikers of Troy]
[Terrify New Books]
[Bikes Tow No Ferry]
	
[ about the mission is a questioning quip.
	Understand "what about the/-- mission" as about the mission.
	The comment is "'Fine,' [we] [say]. 'What's the mission?'".
	The reply is "Doris leans back in his chair. 'I believe we still have a chance to retrieve our lost agent -- the one that left the thumb drive. He says he was at Enigma Lake, not far from where you found the drive. Now it makes sense that Daniels -- the agent -- would head for some kind of landmark so we could find him, and indeed there is a prominent intersection of leylines in the middle of the lake. Before you say it, yes it's a problem, [italic type]if[roman type] that intersection had always been underwater. But Enigma Lake is an artificial reservoir. The town of Enigma Lake was flooded when the reservoir was created, and [italic type]that's[roman type] where the intersection is!' Doris concludes with a look of satisfaction.
	
	'So...' [player's surname] says.
	
	'So. I'm sending you back to 1954, right before the flooding of Enigma Lake, and you'll find whatever Daniels left for us to find. Maybe we can stage a rescue. Why 1954? I'd rather not risk a longer temporal jaunt before we know what we're dealing with.'".
	It quip-supplies Doris.
	It follows about Savra.
	It follows about the Dragon.
	It follows about-time-travel.  ]

about the mission is a questioning quip.
	Understand "what about the/-- mission" as about the mission.
	The comment is "Faraji says, 'What's the mission?'".
	The reply is "Doris leans back in his chair. 'I believe we still have a chance to retrieve our lost agent -- the one that left the thumb drive. He says he was at an Onondaga holy place in the 14th century. Now we need to find out where that is. Fortunately, there's a book that can help. Unfortunately, I don't have it. Fortunately, you're here to go find it. Unfortunately, the name's gotten a bit jumbled in my head. I think it was something like [italic type]New Bikers of Troy[roman type]. Or something. I'm bad with things like titles and letters and keeping things the right way [']round. But you'll find it. I know you will. Come back here when you have.'".
	it quip-supplies Doris.
	It follows about the Dragon.
	It follows about-time-travel.
	It follows Savra's not reptilian.

Doris's note is a thing. The description is "It's a bunch of cryptic scribbles."


Check giving Tribes of New York to Doris when Doris's note is not off-stage:
	now doris interjection timer is a random number between 2 and 5;
	say "Doris looks at Faraji funny. 'No, bring it and the note to Christy. She'll know what to do with it.'" instead;


A tome can be delivered.

After giving Tribes of New York to Doris when Tribes of New York is not delivered and about the mission is exhausted:
	say "'Ah, [agent], you've found it! I knew you would. Now we can find out where Daniels is. Actually, Christy can help you with that. Go see her and give her this.' He scribbles a note and hands it to you with the book. 'She'll know what to do.'";
	now doris interjection timer is a random number between 2 and 5;
	now the player carries Doris's note;
	now Tribes of New York is delivered;
	now the player carries the Tribes of New York;

Instead of showing Tribes of New York to Doris when Tribes of New York is not delivered:
	say "'Ah, [agent], you've found it! I knew you would. Now we can find out where Daniels is. Actually, Christy can help you with that. Go see her and give her this.' He scribbles a note and hands it to you with the book. 'She'll know what to do.'";
	now doris interjection timer is a random number between 2 and 5;
	now the player carries Doris's note;
	now Tribes of New York is delivered;

The keypad can be initialized.

After giving Christy's note to Doris:
	say "He reads the note and grins. 'I knew Christy could figure it out. Enigma Lake. Makes sense. There is a prominent intersection of leylines in the middle of the lake. Before you say it, yes it's a problem, or would be, [italic type]if[roman type] that intersection had always been underwater. But Enigma Lake is an artificial reservoir. The town of Enigma Lake was flooded when the reservoir was created, and [italic type]that's[roman type] where the intersection is!' Doris concludes with a look of satisfaction.
	
	'So...' [player's surname] says.
	
	'So. I'm sending you back to 1954, right before the flooding of Enigma Lake, and you'll find whatever Daniels left for us to find. Maybe we can stage a rescue. Why 1954? I'd rather not risk a longer temporal jaunt before we know what we're dealing with.'";
	queue Doris with how will I find him;
	now doris interjection timer is a random number between 2 and 5;
	now Christy's note is nowhere;
	now the current spacetime setting is the town hall spacetime setting;
	now the keypad is initialized;

about the Dragon is a questioning quip.
	Understand "what about the/-- Dragon" as about the Dragon.
	The comment is "Faraji raises an eyebrow. 'Who is this [']Dragon[']?'"
	The reply is "Doris brings his finger to his lips. 'Classified. Need to know only[if about the mission is not exhausted]. But we should be talking about the mission instead[end if].'".
	it quip-supplies Doris.
	It follows hand over the thumb drive;
	
about-time-travel is a questioning quip.
	It is privately-named.
	The printed name is "about time travel".
	Understand "about/time/travel" as about-time-travel.
	Understand "what about time travel" as about-time-travel.
	The comment is "Disbelievingly, Faraji asks, 'Time travel? For real?'".
	The reply is "'Yes, yes,' [Doris] responds. 'Don't get too worked up over it. It gets old fast[if about the mission is not exhausted]. But now we need to talk about the mission[end if].'".
	it quip-supplies Doris.
	It follows hand over the thumb drive;

Does the player mean discussing about-time-travel:
	it is very likely.

Does the player mean quizzing doris about time-travel:
	it is very likely.

Does the player mean quizzing doris about time slips:
	it is very unlikely.
	
how will I find him is a questioning quip.
	The comment is "'How am I going to find him? Didn't he leave that message in the [italic type]fourteenth century[roman type]?'".
	Understand "how to find him" as how will I find him.
	Understand "Daniels" as how will I find him.
	The reply is "[Doris] looks exasperated. 'Well I don't know -- improvise, use the power of the leylines, look around for anything that looks like it might be a time portal. Something like that. Let's see if the DC office can impress me. Let me know when you're ready to go.'".
	It quip-supplies Doris.

ready to go is an informative quip.
	The printed name is "[force pronoun for player][we]['re] ready to go".
	Understand "i'm/you're/he's/she's/we're/they're" as ready to go.
	The comment is "[regarding the player]Squaring [force pronoun for player][our] shoulders, [player's surname] says, 'Ready to go.'"
	The reply is "Doris grins. 'Great! First, you'll need this.' He hands Faraji a small device. 'In case you need to come back for any reason, press this button and you'll come back here. [italic type]Do not abuse this for trivial matters![roman type] Only for important things, like coffee, or fetching things from your office, or because you're bored. Now go. Out of my office and to the forth you'll find the portal room. It's all ready to send you where you need to go.'"
	It quip-supplies Doris.
	It follows how will I find him.
		
After discussing ready to go:
	now the player carries the recall button;
	now the portal to the past is activated;
	

Doris greeted the player is a truth state that varies.
After printing the locale description when player is in the field office chief's office and Doris greeted the player is false:
	now Doris greeted the player is true;
	say "'Ah, [player's forename],' Doris exclaims, standing up to shake [our] hand. 'I've been waiting for you to pay us a visit. Did you bring the thumb drive?'";
	if player carries the thumb drive:
		queue Doris with show him the thumb drive;
	otherwise if the thumb drive is handled:
		queue Doris with we-don't-have-it;
	otherwise:
		queue Doris with what thumb drive;
		
Daniels-subject is a subject. It is privately-named. The printed name is "Daniels". Understand "Daniels" as Daniels-subject.
Onondaga-subject is a subject. It is privately-named. The printed name is "Onondaga". Understand "Onondaga" as Onondaga-subject.
new-bikers-subject is a subject. It is privately-named. The printed name is "New Bikers of Troy". Understand "New/-- Bikers/-- of/-- Troy" as new-bikers-subject.

Table of Quiz Topics (continued)
subject (a thing)	interlocutor (a person)	comment (a text)	reply (a text)
Mothman	Doris	"'Who is the Mothman?'"	"'The Mothman is a cryptid that was sighted in West Virginia in the 1960s. Friend of mine. Good guy. I met him on Spruce Knob outside of Judy Gap. He's a bit of a recluse, but he plays a mean game of pinochle.'"
Chief Huffton Klimp	Doris	"'What do you think of Klimp?'"	"'Aha, you won't trick me that easily.'"
Maggie	Doris	"'Who is Maggie?'"	"'Maggie is our receptionist. She can help you with anything you need.'"
Christy	Doris	"'Who is Christy?'"	"'Christy is our researcher. They also have a good eye for color. They helped me pick out the paint for my kitchen.'"
Minerva	Doris	"'Who is Minerva?'"	"'Minerva is our only field agent. Right now she's in her office recovering from a bad case of the heebie-jeebies. Real disease, by the way.'"
Doris	Doris	"'How are you doing?'"	"'Is that important when the fate of the world is at stake?'"
Doris's desk	Doris	"'You certainly have, uh, a lot of stuff on your desk.'"	"'Yes. Please don't speculate on what it says about my psyche. I'm very sensitive.'"
model TARDIS	Doris	"'I see you have a model TARDIS.'"	"'No, it's not a TARDIS. It's a police box.'"
Rubik's cube	Doris	"'I see you have a Rubik's cube.'"	"'Yes, I do. Western Pennsylvania 12-and-under speed champion three years running.'"
CMY cube	Doris	"'What's the color cube?'"	"'It's a CMY cube. Light filters through each side in a different color. Alien technology, swear to God.'"
Doris's papers	Doris	"'What are all these papers?'"	"'Oh, just some notes. Nothing important. Just the fate of the world.'"
tchotchkes	Doris	"'What are all these things on your desk?'"	"'Definitely not a secret window into my soul. Just some things I like.'"
mystic compass	Doris	"'Do you know what this compass is?'"	"'It's a mystic compass. Hold on to it. It might come in handy. It can find anything, even things that aren't lost.'"
astral lenses	Doris	"'What are these glasses?'"	"'They're astral lenses. They let you see things you wouldn't normally see. Like the truth. And penguins. Anyway, don't lose them.'"
Pompeii	Doris	"'What happened in Pompeii with Klimp?'"	"'Oh, you know. The usual. A little too much wine, a little too much time travel. But what's a little temporal paradox between friends?'"
Budapest	Doris	"'Have you ever been to Budapest?'"	"'Only before it was one city. Pest was a nice place. Buda was a little snooty.'"
Istanbul	Doris	"'Have you ever been to Istanbul?'"	"'Yes, I have. It was Constantinople when I was there. It's a long story.'"
Bureau of Strange Happenings	Doris	"'What is the Bureau of Strange Happenings?'"	"'I like to think of it as my most productive hobby.'"
Senator-savra-subject	Doris	"'What about Senator Savra?'"	"'He's a pest, but he's a stupid pest, just like all lizard people. That's what you get for being cold-blooded.'"
Astral plane	Doris	"'What is the astral plane?'"	"'It's where we are right now. It's a place where time and space are a little more flexible. It's a good place to keep a field office.'"
The Bermuda Triangle	Doris	"'What is the Bermuda Triangle?'"	"'Never mind that, Agent. It's enough to know to stay away from it. It's a bad place.'"
Loch Ness Monster	Doris	"'What is the Loch Ness Monster?'"	"'Whatever she is, she's not in Enigma Lake.'"
The Roswell Incident	Doris	"'What was the Roswell Incident?'"	"'Oh, you know. A weather balloon. Or a spaceship. Or a weather balloon with a spaceship inside. It's all the same to me.'"
The Chupacabra	Doris	"'What is the Chupacabra?'"	"'I've got one in my backyard. Man, I go through a lot of goats.'"
The Sasquatch	Doris	"'What is the Sasquatch?'"	"'There are a lot of them. They're all over the place. They're very good at hiding. I think they're in the Bureau.'"
Yeti	Doris	"'What is the Yeti?'"	"'I don't know for sure. I think Klimp might have met one. He's got a lot of stories.'"
Sacred geometry	Doris	"'What is sacred geometry?'"	"'It's a way of selling bad art to people who don't know any better. But it's also a way of understanding the universe. It's a mixed bag.'"
The Moberly-Jourdain Incident	Doris	"'What was the Moberly-Jourdain Incident?'"	"'I remember when that happened. The three of us -- Charlotte, Eleanor, and me -- were having a grand time at Versailles. Then they went off and got lost in time. It was a mess.'"
The Jersey Devil	Doris	"'What is the Jersey Devil?'"	"'It's a hockey team. I was once a goalie for them. I was terrible.'"
The Flatwoods Monster	Doris	"'What is the Flatwoods Monster?'"	"'Does it really matter? It's not in Enigma Lake.'"
The Dover Demon	Doris	"'What is the Dover Demon?'"	"'Not really a demon, as a matter of fact. He's just a little guy with big eyes. He's a good friend of mine.'"
The Smithsonian Castle	Doris	"'What is the Smithsonian Castle?'"	"'Ah, the Castle. Oh yes. It's not, definitely not, built on top of an alien temple. Who told you that?'"
House of Representatives	Doris	"'What is the House of Representatives?'"	"'It's a place where people go to argue. I don't know why they don't just go to a bar.'"
The Kelly-Hopkinsville Encounter	Doris	"'What was the Kelly-Hopkinsville Encounter?'"	"'I was not involved. I was in the Bahamas at the time. I have witnesses.'"
Kentucky	Doris	"'What is Kentucky?'"	"'Worst place I've ever been for scuba diving. I don't recommend it.'"
Jefferson Davis	Doris	"'Who was Jefferson Davis?'"	"'He drew Garfield, everyone knows that. He was a really funny guy.'"
Colonel Sanders	Doris	"'Who was Colonel Sanders?'"	"'Most people think he was from Kentucky. But he was from Indiana. He just liked the chicken in Kentucky better.'"
The Confederacy	Doris	"'What was the Confederacy?'"	"'Who even knows? It's all a blur. I wasn't involved.'"
The Rendlesham Forest Incident	Doris	"'What was the Rendlesham Forest Incident?'"	"'Some people call it the biggest cover-up in the history of Rendlesham Forest. Some guys saw some stuff in the forest. That's all I know.'"
The Phoenix Lights	Doris	"'What were the Phoenix Lights?'"	"'You're not from military intelligence, are you? If you are, you have to tell me. It's the law. Anyway, my sources tell me it was a weather balloon. A shiny weather balloon with lights on a mile-long string.'"
Betty-and-Barney Hill Abduction	Doris	"'What was the Betty and Barney Hill Abduction?'"	"'I don't believe in it. I mean, Betty and Barney? That can't be a coincidence.'"
Benny Hill	Doris	"'Who was Benny Hill?'"	"'Why are you asking about him? He's not important. He's not in Enigma Lake.'"
The Black Knight Satellite	Doris	"'What is the Black Knight Satellite?'"	"'Ask Klimp. He's the expert on that.'"
The Tunguska Event	Doris	"'What was the Tunguska Event?'"	"'No one knows what caused it, but we do know that it wasn't the Black Knight Satellite. I know that may come as a shock.'"
The Dyatlov Pass Incident	Doris	"'What was the Dyatlov Pass Incident?'"	"'I don't like to speak ill of the dead. But they should have stayed in the tent.'"
Ural Mountains	Doris	"'What are the Ural Mountains?'"	"'There's quite a debate about whether they exist or not. I'm on the side of the people who think they do.'"
The Mary Celeste	Doris	"'What was the Mary Celeste?'"	"'The most ghosty of all ghost ships. All the crew disappeared. I think they went to the Bahamas.'"
The Philadelphia Experiment	Doris	"'What was the Philadelphia Experiment?'"	"'The Philadelphia Experiment? Oh, that was a good one. I was there. I was the one who suggested they use a battleship. I'm very proud of that.'"
Amelia Earhart	Doris	"'Who was Amelia Earhart?'"	"'She was a pilot. She was a good friend of mine. Shame what happened to her. Ah, but I can't talk about that.'"
The Voynich Manuscript	Doris	"'What is the Voynich Manuscript?'"	"'It's a book. It's a very strange book. I've got a translation around here somewhere.'"
The Shroud of Turin	Doris	"'What is the Shroud of Turin?'"	"'If that's really the image of a man on the shroud, he looks kind of weird. I'm just saying.'"
The Holy Grail	Doris	"'What is the Holy Grail?'"	"'It's hard to say. I thought I had it once, but it turned out to be a coffee cup.'"
Time slips	Doris	"'What are time slips?'"	"'They're like time travel, but without the travel. You just slip from one time to another. It's a real pain.'"
The Ark of the Covenant	Doris	"'What is the Ark of the Covenant?'"	"'It's a box. A very special box. I've got one in my garage.'"
The Spear of Destiny	Doris	"'What is the Spear of Destiny?'"	"'I believe it was in an episode of the original Star Trek. I think it was the one with the Gorn.'"
Alchemy	Doris	"'What is alchemy?'"	"'It's the original science. It's the philosophy of understanding the essence of things. It's a very profitable hobby.'"
The Illuminati	Doris	"'What is the Illuminati?'"	"'They're a secret society. They're so secret even I don't know if I'm a member.'"
The White House	Doris	"'What is the White House?'"	"'Um. White. House. It's a house that's white. I think it's in Washington.'"
The New-World-Order	Doris	"'What is the New World Order?'"	"'Don't worry about it. It's not going to happen. I've got a plan.'"
New-Order	Doris	"'What is the New Order?'"	"'It's a band. They're very good. I've got all their albums. My favorite is 'Istanbul Not Constantinople.''"
Divining	Doris	"'What is divining?'"	"'First, get a stick. Then teach it to find water. It's a very simple process.'"
Crystals	Doris	"'What are crystals?'"	"'According to Wikipedia, a crystal or crystalline solid is a solid material whose constituents (such as atoms, molecules, or ions) are arranged in a highly ordered microscopic structure, forming a crystal lattice that extends in all directions. I don't know what that means.'"
Ley lines	Doris	"'What are ley lines?'"	"'Listen, it's like a big connect-the-dots book, except the dots are places and the lines are energy. It's a very simple concept.'"
Leyden jars	Doris	"'What are Leyden jars?'"	"'Jeez, I don't know everything. Let's talk about something else.'"
Thomas Edison	Doris	"'Who was Thomas Edison?'"	"'He was some weirdo who named himself after a power company. Freak.'"
Astrology	Doris	"'What is astrology?'"	"'It's a way of predicting the future. It's a very accurate science. I'm a Leo, by the way.'"
The Freemasons	Doris	"'What are the Freemasons?'"	"'They're the ones who hold Colonel Sanders' secret recipe. I'm not supposed to talk about it.'"
The Knights Templar	Doris	"'What are the Knights Templar?'"	"'There are a lot of theories about them. But no one knew them like I did. We used to have some great times in the Holy Land.'"
Atlantis	Doris	"'What is Atlantis?'"	"'Isn't that where Aquaman lives? I think I've been there. It's a nice place.'"
Georgia	Doris	"'What is Georgia?'"	"'Pronounced gay-OR-gee-uh, it's a secret [italic type]Bundesland[roman type] in a trans-dimensional pocket between Germany and Austria. Terribly high real estate prices.'"
The Georgia Guidestones	Doris	"'What are the Georgia Guidestones?'"	"'They're a set of instructions for building a really big clock. I think they're in Georgia, the one in the United States.'"
Ancient astronauts	Doris	"'What are ancient astronauts?'"	"'Oops. That was me.'"
Ancient Egypt	Doris	"'What is ancient Egypt?'"	"'Aw, you don't want to know about that. It's all mummies and curses. I don't like to talk about it.'"
Crop circles	Doris	"'What are crop circles?'"	"'They're a way of telling the aliens where to land. I've got a few in my backyard.'"
ESP	Doris	"'What is ESP?'"	"'Extra Sharp Pencil. It's a brand of pencil. I don't know why you're asking me about it.'"
ESPN	Doris	"'What is ESPN?'"	"'It's a sports network. I used to be a program director there. I was terrible.'"
Ghosts	Doris	"'What are ghosts?'"	"'Some of my best friends are ghosts. Well, I mean, now they are. Why do people keep coming back to haunt me?'"
Vampires	Doris	"'What are vampires?'"	"'Ugh. Them and their nasty, big, pointy teeth. I don't like them. They have no respect for personal space.'"
Werewolves	Doris	"'What are werewolves?'"	"'Who thought that was a good idea? I mean, really. A guy who turns into a wolf? That's just silly.'"
Zombies	Doris	"'What are zombies?'"	"'You ever really try to relate to a zombie? I mean really try? Maybe someday you should, just to see what it's like. 'Cause it's not pleasant, not at all.'"
Hypnosis	Doris	"'What is hypnosis?'"	"'It's a way of making people do what you want. I'm very good at it. I can make people do anything. Anything.'"
Levitation	Doris	"'What is levitation?'"	"'I can do that. I can levitate. But not when people are watching. I suffer from performance anxiety.'"
Telekinesis	Doris	"'What is telekinesis?'"	"'Telekinetics is a form of exercise. It's very good for the core. I do it every morning.'"
Teleportation	Doris	"'What is teleportation?'"	"'Doesn't exist, although if it did it would explain a lot of things that have happened to me.'"
Spontaneous human combustion	Doris	"'What is spontaneous human combustion?'"	"'We need to ask, is it really spontaneous? Perhaps the victims have been planning it for years. How would we know?'"
Nikola Tesla	Doris	"'Who was Nikola Tesla?'"	"'He was a very good friend of mine. He couldn't stop talking about Edison. I told him to let it go.'"
The Sargasso Sea	Doris	"'What is the Sargasso Sea?'"	"'It's a sea. It's a very strange sea. It's full of seaweed. I don't like it. Klimp has some strange ideas about it.'"
huge alien jellyfish	Doris	"'Tell me about the huge alien jellyfish.'"	"'I don't know what you're talking about. I've never seen a huge alien jellyfish. I don't know what you're talking about.'"
The Marfa Lights	Doris	"'What are the Marfa Lights?'"	"'Stop talking like a baby. It's [']Martha[']. And what she does is her business. I don't know why you're asking me about it.'"
V I Lenin	Doris	"'Who was V I Lenin?'"	"'He was the leader of the Bolsheviks. There's no truth to the rumor that he was a vampire. I would know.'"
John Lennon	Doris	"'Who was John Lennon?'"	"'He was a musician. He was a good friend of mine. I warned him about that McCartney guy, but would he listen? No. And look what happened.'"
The Church of Scientology	Doris	"'What is the Church of Scientology?'"	"'They have a very nice book about nutrition called [italic type]Dietetics[roman type]. Otherwise they're a bunch of crazies.'"
UFOs	Doris	"'What are UFOs?'"	"'They're a way of getting around. I've got one in my garage. It's a little rusty, but -- oh wait, that's a Vespa scooter.'"
Ouija boards	Doris	"'What's a Ouija board?'"	"'That's the governing body of OUIJA. By the way, OUIJA stands for 'Organization of Unusual Interdimensional Journeys and Adventures.''"
Magic 8-Ball	Doris	"'What's a Magic 8-Ball?'"	"'I used to have one of those. I asked it if it worked. It said 'Ask again later.' I never did get an answer.'"
The Bureau of Supernatural History	Doris	"'What is the Bureau of Supernatural History?'"	"'It's a competing agency. They're not as good as we are. They don't have a Doris.'"
aliens	Doris	"'Are aliens on Earth?'"	"'You must work for Klimp. No. There are no aliens on Earth. If there are, why hasn't anyone noticed?'"
Woonsocket	Doris	"'What is Woonsocket?'"	"'Why are you asking me about Woonsocket? It's not in Enigma Lake.'"
Kamchatka	Doris	"'Have you ever been to Kamchatka?'"	"'Of course. I've been everywhere. Hyperspace has a lot of tentacles.'"
Mark David Chapman	Doris	"'Have you ever met Mark David Chapman?'"	"'Once, in 1978. We were both in traffic court. I was there on some trumped-up charge about going left on a red light. Can you imagine?'"
The Beatles	Doris	"'What do you think of the Beatles?'"	"'I once went on a mission back in time to save them from an stealth attack by the Dave Clark Five. They never knew. They never knew.'"
The Monkees	Doris	"'Do you have any opinions about the Monkees?'"	"'Funny story. I once ran into Davy Jones hanging out with Klimp in Budapest of all places. Klimp denies it to this day.'"
Blitzkrieg Bop	Doris	"'What is the Blitzkrieg Bop?'"	"'I wrote that song one day sitting in this very office. Once when I was back in 1967 the Monkees heard me humming it. I sold it to them, but they just gave it to the Ramones. I'm still bitter.'"
Dave Clark Five	Doris	"'What do you think of the Dave Clark Five?'"	"'Vicious, vicious people. They once poked my eye out with a drumstick. I got better.'"
Ramones	Doris	"'Who were the Ramones?'"	"'It's a pity the world never got to hear my version of 'Blitzkrieg Bop.' I think it would have been a hit.'"
Marxism	Doris	"'What is Marxism?'"	"'I tried it once. It didn't work out. I'm not cut out for it.'"
Groucho Marx	Doris	"'Who was Groucho Marx?'"	"'He was a very funny guy. Never met him. His brothers were very protective, wouldn't let time travelers near him.'"
Marx Brothers	Doris	"'Who were the Marx Brothers?'"	"'Well, there were a good many of them: Groucho, Harpo, Chico, Zeppo, Gummo, Dumbo, Gumbo, and Harpo II. They were all working for the Bureau at one time or another.'"
Franklin Delano Roosevelt	Doris	"'What do you think of Franklin Delano Roosevelt?'"	"'I set him up with Eleanor. I thought they'd be good for each other. Boy, was I wrong.'"
Harry S Truman	Doris	"'Did you know Harry S Truman?'"	"'I was once his body double for a week when we thought he was going to be kidnapped by lizard people. It was a crazy plan, [']cause I look nothing like him.'"
Japan	Doris	"'Have you ever been to Japan?'"	"'Long time ago, middle Edo period. I was an early proponent of kabuki theater. I had to quit because of my allergy to face paint.'"
World War II	Doris	"'Did you see any action in World War II?'"	"'I was there. I said to Eisenhower, 'You should call it D-Day.' He thought for a while and then looked at me and said, 'Who are you?'"
Great Depression	Doris	"'Did you live through the Great Depression?'"	"'Terrible time. Half of the hobos were out-of-work lizard people. I went to work as a train mechanic to keep an eye on them.'"
Tracy Chapman	Doris	"'Have you ever heard Tracy Chapman?'"	"'I thought I did once. Turned out I was just humming to myself. I thought, [']that's why it sounded so bad.[']"
Doogie Howser	Doris	"'Please, who is this Doogie Howser?'"	"'He lives in Enigma Lake. He's a doctor. Look for him when you get there.'"
Vietnam War	Doris	"'What do you think of the Vietnam War?'"	"'It wasn't as fun as they make it out to be. Everyone was so serious.'"
Neil Patrick Harris	Doris	"'Do you know Neil Patrick Harris?'"	"'First off, I was the one who suggested he use his middle name. And they said I was crazy. Look at him now.'"
Ronald Reagan	Doris	"'What do you think of Ronald Reagan?'"	"'No one ever believes me, but I tell you, he once shot Ed Meese in a fit of pique. I just hied myself back to hyperspace and let them sort it out.'"
Piltdown Man	Doris	"'Did you ever see the Piltdown Man?'"	"'I never thought it would go over so big. I was just playing a joke on Charles Dawson. He was so gullible.'"
Davy Jones	Doris	"'Who was Davy Jones?'"	"'I'm the one who taught him how to play the tambourine. So much more talented than Mike Nesmith."
Mike Nesmith	Doris	"'Who was Mike Nesmith?'"	"'The most evil of the Monkees. He may be a lizard person. I'm not sure.'"
The Vatican	Doris	"'Have you ever been inside the Vatican?'"	"'I once went undercover as a Swiss Guard to protect the Pope from a lizard person diguised as a cardinal. In the end I got a commendation and a Swiss Army knife.'"
Natural History Museum	Doris	"'What is the Natural History Museum?'"	"'What I want to know is, where's the unnatural history museum? That's what I'd like to visit.'"
Sumeria	Doris	"'What do you know about Sumeria?'"	"'I was there. I was the one who suggested they use cuneiform. They said it was too hard to read. I said, 'That's the point.''"
Dwight Eisenhower	Doris	"'You really talked to Dwight Eisenhower?'"	"'Well, in a manner of speaking. I certainly talked in his vicinity.'"
Daniels-subject	Doris	"'Who is Daniels, anyway?'"	"'He's a field agent. This is his first mission since the unfortunate incident in Budapest.'"
Onondaga-subject	Doris	"'Who are the Onondaga?'"	"'They're a tribe of Native Americans. From upstate New York. Daniels has been living with them in the 14th century.'"
new-bikers-subject	Doris	"'What is the New Bikers of Troy?'"	"'It's a book. It's a very important book. It's the key to the mission. But I'm not sure that's the title. I'm sure you'll figure it out.'"
hyperspace-field-office-subject	Doris	"'What is the hyperspace field office?'"	"'It's here, and yet it's not here. But, no, actually, it is here. It's a very confusing concept.'"
chief-huffton-klimp-subject	Doris	"'So you know Klimp?' Faraji asks."	"'Huffton is a great friend of mine. In some ways, he's the best friend I've ever had. In other ways, he's the worst enemy I've ever had. It's complicated.'"
hyperspace-subject	Doris	"'What is hyperspace?'"	"'It's a place where time and space are a little more flexible. It's a good place to keep a field office.'"
portal-to-the-past	Doris	"'What is the portal to the past?'"	"'It's how we get around. It's a very useful thing. Dreadfully expensive to maintain, though.'"
auxiliary-portal	Doris	"'What is the auxiliary portal?'"	"'It's our backup. Not as flexible as the main portal, but it gets the job done.'"
Onondaga-subject	Doris	"'Who are the Onondaga?'"	"'They're a tribe of Native Americans. From upstate New York. Klimp has some strange ideas about them.'"


Doris interjection timer is a number that varies. Doris interjection timer is 5.

Every turn when Doris interjection timer is not 0 and Doris is in the location:
	decrease Doris interjection timer by 1;
	if Doris interjection timer is 0:
		interject Doris;

Before discussing when Doris is in the location:
	now Doris interjection timer is a random number from 2 to 5;

Before quizzing someone about something when Doris is in the location:
	now Doris interjection timer is a random number from 2 to 5;

Before implicit-quizzing something when Doris is in the location:
	now Doris interjection timer is a random number from 2 to 5;

To interject Doris:
	sort Table of Doris Interjections in random order;
	if there is a used of false in the Table of Doris Interjections:
		choose the row with a used of false in the Table of Doris Interjections;
		say "[Doris interjection entry][line break]";
		now the used entry is true;
		increase Doris interjection timer by a random number from 2 to 5;

Table of Doris Interjections
Doris interjection	used
"Doris leans back in his chair. 'The Bureau is the only thing standing between us and the end of the world. No pressure, right?'"	false
"Doris looks up from his desk. 'There are things you don't know, Larch. Things that no one knows. Well, except me.'"	false
"Doris looks at Faraji brightly. 'You ever need anything, ask Maggie. She's the best. She's the only one who knows what she's doing around here.'"	false
"Doris twiddles his thumbs. 'Have you ever been to Budapest? I haven't either. I hear it's full of Hungarians.'"	false
"Doris looks at Faraji. 'You know, I've been thinking about getting a dog. What do you think? No don't tell me. You might say the opposite of what I want to hear.'"	false
"Doris taps his fingers on his desk. 'How far back in time do you think I've been? No, don't try to guess. I'll tell you. 2547 BC. Khufu was all the rage back then.'"	false
"Doris fiddles with his TARDIS. 'Some people get all excited about this thing. What's the big deal? It's just a police box.'"	false
"Suddenly, Doris looks behind himself. 'I guess no one is sneaking up on me after all.'"	false
"Doris smiles. 'Did you know I've been to all 55 countries in the world? Some people say there are more, but they're hallucinating.'"	false
"Doris leans forward confidingly. 'You know, I think there may be a mole in the Bureau. Do you know who it is? No, don't tell me. I'd rather not know.'"	false
"Drumming his fingers on his desk, Doris says, 'The biggest threat to the world today is -- wait, you don't have clearance for that. Never mind.'"	false


Book 2 - Maggie

for-a-screwdriver-maggie is a questioning quip.
	It is privately-named. The printed name is "for a screwdriver". [The true-name is "for-a-screwdriver-clerk".] Understand "for/a/screwdriver" as for-a-screwdriver-maggie.
	It mentions the screwdriver.
	The comment is "Faraji asks, 'Would you happen to have a screwdriver I could borrow?'".
	The reply is "'Oh, I'm sorry, I don't have a screwdriver. Do you?'".
	It quip-supplies maggie.
	
An availability rule for for-a-screwdriver-maggie:	
	if the player knows vent-screws and the red screwdriver is not handled:
		always available;

how-to-get-home-maggie is a questioning quip.
	The printed name is "how to get home".
	Understand "how can/do i/we/they/she/he get home" as how-to-get-home-maggie.
	Understand "how/to/get/home" as how-to-get-home-maggie.
	The comment is "Faraji asks, 'How can I get home from here?'".

	The reply is "Maggie snaps out of her reverie. 'Oh, you're ready to go? I'll activate the auxiliary portal for you' She types rapidly on her control panel, then says 'It's all ready -- go west down the hallway and turn to the back into Portal Room 2.'"
	
	it quip-supplies Maggie.
	it is always-available.
	it is plausibility-once.

After discussing how-to-get-home-maggie:
	now the auxiliary portal is activated;

Book 3 - Christy

Christy can be researching.

Check giving Doris's note to Christy when the player does not carry Tribes of New York:
	now the christy interjection timer is a random number from 2 to 5;
	say "Christy briefly looks at the note and says, 'I can't do anything with this. You need to bring me the book too.'" instead;

After giving Doris's note to Christy:
	say "Christy reads the note and says, 'Oh, I see. I'll get right on it. And give me the book too, thanks. So, this might take me a while -- actually, could you get me a cup of coffee?'
	
	(Faraji has lost the note and the book)[line break]";
	now the christy interjection timer is a random number from 2 to 5;
	now Christy carries Doris's note;
	now Christy carries Tribes of New York;

After giving the cup of coffee to Christy when Christy carries Tribes of New York and Christy is not researching:
	say "Christy accepts the coffee gratefully. 'Thanks. I'll get to work on this right away. I'll let you know when I have something.' They take a sip of the coffee and get to work, which seems to involve a lot of sketching and erasing.";
	now the christy interjection timer is a random number from 2 to 5;
	remove the cup of coffee from play;
	now Christy is researching;

Christy's note is a thing. The description is "The note consists of just the number [town hall spacetime setting]."


Instead of doing something when Christy is researching:
	say "Christy suddenly hoots behind Faraji. 'Stop! I have it. Sorry it took so long. Here, take this note to Doris.' They scribble something on a piece of paper and hand it to Faraji. Christy thinks for a moment and says 'Oh yes, take the book too.' They hand Faraji [italic type]Tribes of New York[roman type].";
	now the christy interjection timer is a random number from 2 to 5;
	now Christy is not researching;
	now the player carries Christy's note;
	now the player carries Tribes of New York;

[Christy is a non-binary paranormal researcher. She tends to be cynical and sarcastic, but she's also very good at her job.]

art is a subject.

Table of Quiz Topics (continued)
subject (a thing)	interlocutor (a person)	comment (a text)	reply (a text)
Mothman	Christy	"'Who is the Mothman?'"	"'The Mothman is a cryptid that was sighted in West Virginia in the 1960s. I think he's a friend of Doris's. I've never met him.'"
hyperspace-subject	Christy	"'What is hyperspace?'"	"'Hyperspace is a four-dimensional plane of being overlaying our own three-dimensional plane. Or something like that. I'm not a physicist.'"
doris-subject	Christy	"'Who is Doris?'"	"'Doris is the chief of the hyperspatial field office. I have no problem with his leadership. No, I certainly wouldn't ever say that.'"
christy-subject	Christy	"'Who are you?'"	"'I'm Christy. I'm the paranormal researcher here. I'm the one they turn to when they need someone's advice to ignore.'"
minerva-subject	Christy	"'What do you think of Minerva?'"	"'Minerva is our only field agent. I'm so grateful for her constructive criticism. Really. I am.'"
portal-to-the-past	Christy	"'What is the portal to the past?'"	"'It's a portal that leads to the past. I'm not sure what else you want me to say.'"
auxiliary-portal	Christy	"'What is the auxiliary portal?'"	"Um, it's the other portal, the one that isn't the main portal. Is this so hard to understand?'"
thumb drive	Christy	"'What is the thumb drive?'"	"'Are you seriously asking me that?'"
maggie-subject	Christy	"'Who is Maggie?'"	"'Maggie is... Maggie. She's the receptionist. She's very good at her job -- it's just that no one knows what that is. I'm not being sarcastic.'"
Christy's desk	Christy	"'What's on your desk?'"	"'My sketchbook. Nothing you would understand. Don't look in it.'"
Christy's sketchbook	Christy	"'What's in your sketchbook?'"	"'Drawings. Of things. I'm not going to show you.'"
Christy's pencil	Christy	"'What's that pencil?'"	"'My special drawing pencil. I'm not going to let you borrow it.'"
hyperspace-field-office-subject	Christy	"'What is the hyperspace field office?'"	"'It's Doris's little kingdom. It's where we peons toil. I'm not bitter.'"
art	Christy	"'So you're an artist?'"	"'I'm a paranormal illustrator. I draw things that don't exist. It's a very lucrative field.'"

Christy interjection timer is a number that varies. Christy interjection timer is 5.

Every turn when Christy interjection timer is not 0 and Christy is in the location:
	decrease Christy interjection timer by 1;
	if Christy interjection timer is 0:
		interject Christy;

Before discussing when Christy is in the location:
	now Christy interjection timer is a random number from 2 to 5;

Before quizzing someone about something when Christy is in the location:
	now Christy interjection timer is a random number from 2 to 5;

Before implicit-quizzing something when Christy is in the location:
	now Christy interjection timer is a random number from 2 to 5;

To interject Christy:
	sort Table of Christy Interjections in random order;
	if there is a used of false in the Table of Christy Interjections:
		choose the row with a used of false in the Table of Christy Interjections;
		say "[Christy interjection entry][line break]";
		now the used entry is true;
		increase Christy interjection timer by a random number from 2 to 5;

Table of Christy Interjections
Christy interjection	used
"Christy looks up from their scribbling. 'You know, working with Doris is like working with a cat. It's pointless.'"	false
"Christy glares at the ceiling. 'I swear, if I have to hear one more time about the time Doris and Klimp went to Pompeii, I'm going to scream.'"	false
"Christy looks annoyed. 'Why are you hanging around in here?'"	false
"Christy looks up at Faraji. 'If I could go back in time, I'd tell myself not to take this job.'"	false
"Christy frowns. 'I swear pencils used to be better quality.'"	false
"Christy yawns. 'You know, working in hyperspace is a terrible commute. Especially when your portal is inside a taco truck that moves every day.'"	false
"Christy sharpens their pencil. 'Do you know how many donut shops there are in hyperspace? None! It's a travesty.'"	false
"Christy tosses their pencil in the air. 'Just once I'd like to be the one who gets to travel in time.'"	false
"Christy looks thoughtful. 'I wonder if I could get a job at the Bureau of Startling Hallucinations. They have a better dental plan.'"	false

for-a-screwdriver-christy is a questioning quip.
	It is privately-named. The printed name is "for a screwdriver". [The true-name is "for-a-screwdriver-clerk".] Understand "for/a/screwdriver" as for-a-screwdriver-christy.
	It mentions the screwdriver.
	The comment is "Faraji asks, 'Would you happen to have a screwdriver I could borrow?'".
	The reply is "'Yes, my pencil is a screwdriver. Ha. Ha. I'm working here.'".
	It quip-supplies Christy.
	
An availability rule for for-a-screwdriver-christy:	
	if the player knows vent-screws and the red screwdriver is not handled:
		always available;

Volume 5 - Things

The recall button is a thing. The description is "A small, flat device with a black button on it." Understand "black/device" as the recall button.

The recall button can be pushed. The recall button is not pushed.

Instead of pushing the recall button when the player is not in field office area and the player is not in the old root cellar and the group of lizard people are not in the location:
	repeat with I running through the list of immobile things carried by the player:
		if the player carries I: [in case an earlier drop caused this item to be dropped as well.]
			say "(first dropping [I])[command clarification break]";
			silently try dropping I;
	if the player carries an immobile thing:
		stop the action;		
	say "The world turns inside out, and suddenly [player's surname] is somewhere else.";
	now the recall button is pushed;
	if the current interlocutor is not Doris:
		now the current interlocutor is Doris;
	move the player to the field office chief's office;

Instead of pushing the recall button when the player is in field office area and the group of lizard people are not in the location:
	say "Nothing happens.";

Check dropping the recall button:
	say "That would be a very bad idea. Faraji thinks twice." instead;

Volume 6 - Other Stuff

Book 1 - Help

helping about hyperspace is an action out of world. Understand "help hyperspace" as helping about hyperspace. 

Carry out helping about hyperspace:
	say "Hyperspace is a four-dimensional plane of being overlaying our own three-dimensional plane. The familiar directions (north, south, up, northeast, etc.) work there, as do two new directions 'back' and 'forth', and their combinations with our compass directions: forthnorth, backeast, etc. These can be abbreviated just as compass directions can: b, f, fn, be, and so on."

Book 2 - Polish

Table of No Names (continued)
named person (person)	anonymous description (text)	unnamed description (text)	proper name (text)
Maggie	"young woman"	"receptionist"	"Maggie"

Book 3 - Not for Release

activating the portal to the past is an action out of world. Understand "activate" as activating the portal to the past.

Carry out activating the portal to the past:
	now the portal to the past is activated;
	now the auxiliary portal is activated;
	say "The portal hums to life.";
	

Hyperspace ends here.
