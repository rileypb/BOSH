Hyperspace by Philip Riley begins here.

Include Simple Conversation by Philip Riley.
Include Third Person Narration by Philip Riley.

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

Coordinates of Pillar is always {7, 8, 9}.

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

[Check going a hyperspatial direction:
	if visited hyperspace is true and player is not in hyperspace:
		say "That direction only exists in hyperspace." instead;
	otherwise if player is not in hyperspace and player's command includes "go":
		say "[text of parser error internal rule response (E)][line break]" instead;
	otherwise if player is not in hyperspace:
		say "[text of parser error internal rule response (N)][line break]" instead;]
		
Check going a hyperspatial direction:
	if player is not in hyperspace and player is not wearing the astral lenses:
		say "[text of can't go that way rule response (A)][line break]" instead;
		
To decide if could see hypertunnels:
	if the location is not in hyperspace:
		repeat with D running through hyperspatial directions:
			if the room D from the location is somewhere:
				decide yes;
	decide no;
		
		
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
				now encountered astral passages is true;
				let C be number of entries of directions;
				say "[if C is 1]A s[otherwise]S[end if]trange sparkly white [regarding C]passage[if C > 1]s[end if] [branch] off in [if C is 1]an impossible direction[otherwise]impossible directions[end if] from here.
				
				[Player's surname] [have] discovered [if C is 1]a hyperspatial tunnel[otherwise]hyperspatial tunnels[end if]! [regarding C][They] [lead] in the hyperspatial [regarding C]direction[if C > 1]s[end if] of [directions]."; 
				say "For help regarding hyperspace, enter [bold type]HELP HYPERSPACE[roman type].";
			otherwise:
				let C be number of entries of directions;
				say "[if C is 1]A hyperspatial tunnel[otherwise]Hyperspatial tunnels[end if] [regarding C][lead] in the [regarding C]direction[if C > 1]s[end if] of [directions]."; 
				
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

Volume 2 - Featureless Hyperplane

Book 1 - The Mystic Compass

The mystic compass is a thing.

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

As far as one can see, the hyperplane extends infinitely in all six directions[otherwise]It is made of the same gossamer, questionably real stuff as the ground, the pillar, and the readouts. You can't see past the first turn of the stairs, unfortunately[end if]."

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


Carry out going a direction (called D) from Featureless Hyperplane:
	if D is north:
		increment entry 1 of hyperplane coords;
	if D is northeast:
		increment entry 1 of hyperplane coords;
		decrement entry 2 of hyperplane coords;
	if D is east:
		decrement entry 2 of hyperplane coords;
	if D is southeast:
		decrement entry 1 of hyperplane coords;
		decrement entry 2 of hyperplane coords;
	if D is south:
		decrement entry 1 of hyperplane coords;
	if D is southwest:
		decrement entry 1 of hyperplane coords;
		increment entry 2 of hyperplane coords;
	if D is west:
		increment entry 2 of hyperplane coords;
	if D is northwest:
		increment entry 1 of hyperplane coords;
		increment entry 2 of hyperplane coords;
	if D is back:
		decrement entry 3 of hyperplane coords;
	if D is forth:
		increment entry 3 of hyperplane coords;
	if D is backnorth:
		increment entry 1 of hyperplane coords;
		decrement entry 3 of hyperplane coords;
	if D is backeast:
		decrement entry 2 of hyperplane coords;
		decrement entry 3 of hyperplane coords;
	if D is backsouth:
		decrement entry 1 of hyperplane coords;
		decrement entry 3 of hyperplane coords;
	if D is backwest:
		increment entry 2 of hyperplane coords;
		decrement entry 3 of hyperplane coords;
	if D is forthnorth:
		increment entry 1 of hyperplane coords;
		increment entry 3 of hyperplane coords;
	if D is fortheast:
		decrement entry 2 of hyperplane coords;
		increment entry 3 of hyperplane coords;
	if D is forthsouth:
		decrement entry 1 of hyperplane coords;
		increment entry 3 of hyperplane coords;
	if D is forthwest:
		increment entry 2 of hyperplane coords;
		increment entry 3 of hyperplane coords;		
	if hyperplane coords is Coordinates of Pillar:
		if the player does not carry the mystic compass:
			move the mystic compass to Featureless Hyperplane;
		now the printed name of Featureless Hyperplane is "ethereal pillar";
		now the preposition of Featureless Hyperplane is "next to";
		move Ethereal Pillar to Featureless Hyperplane;
	otherwise if hyperplane coords is Staircase Coords:
		if the player does not carry the mystic compass:
			remove the mystic compass from play;
		now the printed name of Featureless Hyperplane is "descending stair";
		now the preposition of Featureless Hyperplane is "at the top of";
		move Descending Stair to Featureless Hyperplane;
	otherwise:
		if the player does not carry the mystic compass:
			remove the mystic compass from play;
		now the printed name of Featureless Hyperplane is "featureless hyperplane";
		now the preposition of Featureless Hyperplane is "on";
		now the Ethereal Pillar is nowhere;
		now Descending Stair is nowhere;


Descending Stair is scenery. 
[Rule for writing a paragraph about the descending stair:
	say "A spiraling staircase disappears into the ground here. It is made of the same gossamer, questionably real stuff as the ground,[if visited pillar is true] the pillar,[end if] and the readouts. You can't see past the first turn of the stairs, unfortunately.";]

The Ethereal Pillar is a thing. 

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
	say "There is an ethereal pillar here. A message carved into the pillar says 'Seek the origin. -Doris'[paragraph break]";
	say "Under that is a line of five strange symbols: o p q d b";
	[say "Under that is a line of five strange symbols: ◊ ┘ ┐ ┌ └";]
	say paragraph break;
	
Rule for writing a paragraph about the mystic compass:
	say "A mystic compass dangles from an outcropping of the pillar.";	
	


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
		say "⌂";
	
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
	if player carries the mystic compass:
		say "On the readout of the mystic compass floats a set of ethereal symbols: [symbols for convert entry 1 of hyperplane coords to base five] : [symbols for convert entry 2 of hyperplane coords to base five] : [symbols for convert entry 3 of hyperplane coords to base five][paragraph break]";

After printing the locale description when the location is Featureless Hyperplane:
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

field office area is a region. It is in hyperspace.

field office reception is below Featureless Hyperplane. The preposition is "at". It is in field office area. "Hooray you made it!".

Maggie is a woman in field office reception.

the field office hallway is west of field office reception. It is in field office area. "Hallway".

Minerva's office is north of the field office hallway. It is in field office area.
Minerva is a woman in Minerva's office. The initial appearance is "Minerva is sitting at her desk, typing away on her computer." 

A mahogany desk is in Minerva's office. It is scenery. The description is "The desk is cluttered with papers and a few books.".

A coffee maker is on the mahogany desk. It is scenery. The description is "A drip coffee maker sits on the desk."

The cup of coffee is a thing. The description is "[Coffee description].". The cup of coffee has a number called the hotness.

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
	say "You can't drink that." instead;

Carry out drinking the cup of coffee:
	if the hotness of the cup of coffee is greater than 20:
		say "The coffee is too hot to drink.";
	otherwise if the hotness of the cup of coffee is greater than 10:
		say "The coffee is hot, but drinkable. MMMM. That's good coffee.";
		now the cup of coffee is nowhere;
	otherwise if the hotness of the cup of coffee is greater than 5:
		say "The coffee is warm. MMMM. That's mildly satisfactory coffee.";
		now the cup of coffee is nowhere;
	otherwise:
		say "The coffee is cold. You dump it out.";
		now the cup of coffee is nowhere;

about coffee is a questioning quip.
	The printed name is "for a cup of coffee".
	Understand "can i have a/-- coffee" as about coffee.
	Understand "for/a/cup/of/coffee" as about coffee.
	The comment is "[We] [say], 'I could use a coffee.'".
	The reply is "Minerva looks up from her computer. 'Sure, help yourself'".
	it quip-supplies Minerva.

An availability rule for about coffee:
	if the cup of coffee is nowhere:
		always available;

A plausibility rule for about coffee:
	it is plausible.

To pour is a verb.

After discussing about coffee:
	say "[We] [pour] [ourselves] a cup of coffee in a styrofoam cup from the coffee maker.";
	now the player carries the cup of coffee;
	now the hotness of the cup of coffee is 30;

the field office chief's office is west of the field office hallway. It is in field office area. "Doris's office".

Doris is a man in the field office chief's office.
The initial appearance is "Doris is sitting cross-legged in a chair, tapping his foot lazily on the desk."

Christy's office is south of the field office hallway. It is in field office area.
Christy is a nonbinary in Christy's office.

Portal Room 1 is forth of the field office hallway. It is in field office area.

The portal to the past is in Portal Room 1. The portal to the past can be activated. it is fixed in place.
The description is "In the middle of the room looms a large portal made of the same astral stuff this whole dimension is made of[if activated]. Within the portal is a shimmering field of light[otherwise]. There is nothing within the portal[end if]."

Instead of entering the portal to the past when the portal to the past is not activated:
	say "[We] [walk] straight through it and nothing happens.";

Instead of entering the portal to the past when the portal to the past is activated:
	say "[We] [enter] the field of light, and [we] [are] suddenly somewhere else.";
	move the player to the Enigma Lake Town Hall;

Portal Room 2 is back of the field office hallway. It is in field office area.

Volume 4 - Characters

Book 1 - Doris

Chapter 1 - First Meeting

who-are-you-doris is a questioning quip.
	The printed name is "who he is".
	Understand "who are you", "who you are", "who is he", "who he is" as who-are-you-doris.
	The comment is "[We] [ask] 'Who are you?'".
	The reply is "He looks taken aback for a moment, then recovers his composure. 'Ah yes, introductions. I'm Doris, chief of the hyperspatial field office of the Bureau.'".
	It quip-supplies Doris.
	It stocks Doris.
	
about his name is a questioning quip.
	The comment is "[We] [say], 'Tell me about your name.'".
	The reply is "'None of your business,' [Doris] replies.".
	It quip-supplies Doris.
	It follows who-are-you-doris.
	
where-is-this-hyperspace is a questioning quip.
	The printed name is "where we are".
	Understand "where are we", "where we are", "where am i", "where i am", "where is this", "where this is" as where-is-this-hyperspace.
	The comment is "[We] [look] around and [ask], 'Where are we? What is this place?'".
	The reply is "[Doris] [answer], 'You're in the hyperspatial field office of the Bureau of Strange Happenings. But I guess that doesn't exactly clear things up for you. Practically, your office is a branch of ours, but since you have the official recognition of the US government -- for now -- you get the glory. Besides, due to the nature of our work, we prefer to remain underground, so to speak. How's Klimp, by the way? Ah, we had some good times. But you know what they say -- what happens in Pompeii, stays in Pompeii.".
	It quip-supplies Doris.
	It stocks Doris.

how to get home is a questioning quip.
	Understand "how can i/we/they/she/he get home" as how to get home.
	The comment is "[We] [ask], 'Just how can I get home from here?'".
	The reply is "'Go ask Maggie; she can help you.'".
	It quip-supplies Doris.
	It stocks Doris.
	
klimp-is-fine is an informative quip.
	It is privately-named.
	The printed name is "Klimp is fine".
	Understand "Klimp/he is fine" as klimp-is-fine.
	The comment is "[We] [say], 'He's just fine'".
	The reply is "'Great! Be sure to say hi for me.'".
	It quip-supplies Doris.
	It follows where-is-this-hyperspace.
	
To shake is a verb.

we-don't-have-it is an informative quip. 
	It is privately-named.
	It mentions the thumb drive.
	The printed name is "[force pronoun for player][we] [don't] have it".
	Understand "i/he/she/they/we/have/doesn't/don't/have/it/thumb/drive" as we-don't-have-it.
	The comment is "[We] [shake] [our] head. 'Sorry, no.'".
	The reply is "'Well, you'll just have to go back and get it, won't you? We can't be fooling around when the fate of the timeline is at stake!' Doris says.".
	it quip-supplies Doris.
	
An availability rule for we-don't-have-it:
	if the player does not carry the thumb drive and the thumb drive is handled:
		always available;

what thumb drive is a questioning quip. 
	It mentions the thumb drive.
	The comment is "[We] [look] quizzical. 'What thumb drive?'".
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
	
show him the thumb drive is a performative quip. 
	It is privately-named.
	It mentions the thumb drive.
	The comment is "[We] [answer], 'Yes, I have it.'".
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
	The comment is "[We] [give] the thumb drive to Doris.".
	Understand "hand it over", "hand him the thumb/-- drive" as hand over the thumb drive.
	The reply is "'Great, great.' He peruses the drive. 'We lost one of our New York agents to a slingshot effect that threw him far back in time. We're always monitoring for artifacts that are out of place or anachronistic to lead us to lost agents.
	
	He continues, 'The scratch marks here say, [']They found me out and sent me back. 14th century. Enigma Lake. Savra is going to move on the Dragon.[']'".
	it quip-supplies Doris.
	
[An availability rule for hand over the thumb drive:
	if the player carries the thumb drive:
		always available;]
		
After discussing hand over the thumb drive:
	now Doris carries the thumb drive;
	
about Savra is a questioning quip.
	Understand "what about Senator/-- Savra" as about Savra.
	The comment is "'Senator Savra? What does he have to with anything?' [we] [ask].".
	The reply is "[Doris] says, 'Well you've noticed he's not very friendly to the Bureau? Let's leave it at that for now. We need to talk about the mission.'".
	it quip-supplies Doris.
	It follows hand over the thumb drive;

[about Savra is a questioning quip.
	The comment is "'Senator Savra? What does he have to with anything?' [we] [ask].".
	The reply is "[Doris] says, 'Tell me, Agent. Do you believe in aliens? That alien species have visited this planet?'".
	it quip-supplies Doris.
	It follows hand over the thumb drive;

no-aliens is an informative quip. 
	It is privately-named.
	The printed name is "[force pronoun for player][we] don't believe in alien visitation".
	Understand "we/i/you/he/they/she/don't/doesn't/believe/in/alien/visitation" as no-aliens.
	The comment is "'No. The Chief might, but I prefer hard evidence,' says [player's surname].".
	The reply is "[Doris] nods. 'Good, because they haven't. The whole idea is ridiculous. Senator Savra is [italic type]not[roman type] an alien.' [they] looks at [us] significiantly.
	
	[We] [look] at [them] unbelievingly. 'What are you talking about?'
	
	[Doris] shakes his head. 'I thought you would know. He's a member of a race of Earth beings more ancient than our own. [Agent], Senator Savra is a [italic type]lizard man[roman type].'".
	It quip-supplies Doris.
	It follows about Savra.
	It rules out yes-aliens.

yes-aliens is an informative quip. 
	It is privately-named.
	The printed name is "[force pronoun for player][we] do believe in alien visitation".
	Understand "we/i/you/he/they/she/do/does/believe/in/alien/visitation" as no-aliens.
	The comment is "'Yes. The evidence is overwhelming,' says [player's surname].".
	The reply is "[Doris] laughs. 'Nonsense, all of it. Get it out of your head. The whole idea is ridiculous. Senator Savra is [italic type]not[roman type] an alien.' [they] looks at [us] significiantly.
	
	[We] [look] at [them] unbelievingly. 'What are you talking about?'
	
	[Doris] shakes his head. 'I thought you would know. He's a member of a race of Earth beings more ancient than our own. [Agent], Senator Savra is a [italic type]lizard man[roman type].'".
	It quip-supplies Doris.
	It follows about Savra.
	It rules out no-aliens.
	
what-is-a-lizard-man is a questioning quip.
	It is privately-named.
	The printed name is "what is a lizard man".
	Understand "what/is/a/lizard/man" as what-is-a-lizard-man.
	The comment is "[We] [look] incredulous. 'And just what is a lizard man?'".
	The reply is "'Just what it sounds like. It's a bipedal, intelligent reptilian creature.'".
	It quip-supplies Doris.
	It follows yes-aliens.
	It follows no-aliens.
	
remind him Savra's not reptilian is a performative quip.
	Understand "Savra/is" as remind him Savra's not reptilian.
	The comment is "'But Savra isn't a reptile!'".
	The reply is "'He's in disguise! Whatever, it doesn't matter. What matters is your mission.'"
	It quip-supplies Doris.
	It follows what-is-a-lizard-man.]
	
[New Bikers of Troy]
[Terrify New Books]
[Bikes Tow No Ferry]
	
about the mission is a questioning quip.
	Understand "what about the/-- mission" as about the mission.
	The comment is "'Fine,' [we] [say]. 'What's the mission?'".
	The reply is "Doris leans back in his chair. 'I believe we still have a chance to retrieve our lost agent -- the one that left the thumb drive. He says he was at Enigma Lake, not far from where you found the drive. Now it makes sense that Daniels -- the agent -- would head for some kind of landmark so we could find him, and indeed there is a prominent intersection of leylines in the middle of the lake. Before you say it, yes it's a problem, [italic type]if[roman type] that intersection had always been underwater. But Enigma Lake is an artificial reservoir. The town of Enigma Lake was flooded when the reservoir was created, and [italic type]that's[roman type] where the intersection is!' Doris concludes with a look of satisfaction.
	
	'So...' [player's surname] says.
	
	'So. I'm sending you back to 1954, right before the flooding of Enigma Lake, and you'll find whatever Daniels left for us to find. Maybe we can stage a rescue. Why 1954? I'd rather not risk a longer temporal jaunt before we know what we're dealing with.'".
	It quip-supplies Doris.
	It follows about Savra.
	It follows about the Dragon.
	It follows about time travel. 

about the Dragon is a questioning quip.
	Understand "what about the/-- Dragon" as about the Dragon.
	The comment is "[We] [say], 'Who is this [']Dragon[']?'"
	The reply is "Doris brings his finger to his lips. 'Classified. Need to know only. But we should be talking about the mission instead.'".
	it quip-supplies Doris.
	It follows hand over the thumb drive;
	
about time travel is a questioning quip.
	Understand "what about time travel" as about time travel.
	The comment is "Disbelievingly, [we] [ask], 'Time travel? For real?'".
	The reply is "'Yes, yes,' [Doris] responds. 'Don't get too worked up over it. It gets old fast. But now we need to talk about the mission.'".
	it quip-supplies Doris.
	It follows hand over the thumb drive;
	
how will i find him is a questioning quip.
	The comment is "'How am I going to find him? Didn't he leave that message in the [italic type]fourteenth century[roman type]?'".
	The reply is "[Doris] looks exasperated. 'Well I don't know -- Improvise, use the power of the leylines, look around for anything that looks like it might be a time portal. Something like that. Let's see if the DC office can impress me. Let me know when you're ready to go.'".
	It quip-supplies Doris.
	It follows about the mission.

ready to go is an informative quip.
	The printed name is "[force pronoun for player][we]['re] ready to go".
	Understand "i'm/you're/he's/she's/we're/they're" as ready to go.
	The comment is "[regarding the player]Squaring [force pronoun for player][our] shoulders, [player's surname] says, 'Ready to go.'"
	The reply is "Doris grins. 'Great! First, you'll need this.' He hands you a small device. 'In case you need to come back for any reason, press this button and you'll come back here. [italic type]Do not abuse this for trivial matters![roman type] Time travel consumes valuable resources. Now go. Out of my office and to the forth you'll find the portal room. It's all ready to send you where you need to go.'"
	It quip-supplies Doris.
	It follows how will i find him.
		
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
		
Volume 5 - Things

The recall button is a thing. The description is "A small, flat device with a black button on it." Understand "black/device" as the recall button.

Instead of pushing the recall button when the player is not in field office area:
	say "The world turns inside out, and suddenly [player's surname] is somewhere else.";
	move the player to the field office chief's office;

Instead of pushing the recall button when the player is in field office area:
	say "Nothing happens.";

Volume 6 - Other Stuff

Book 1 - Help

helping about hyperspace is an action out of world. Understand "help hyperspace" as helping about hyperspace. 

Carry out helping about hyperspace:
	say "Hyperspace is a four-dimensional plane of being overlaying our own three-dimensional plane. The familiar directions (north, south, up, northeast, etc.) work there, as do two new directions 'back' and 'forth', and their combinations with our compass directions: forthnorth, backeast, etc. These can be abbreviated just as compass directions can: b, f, fn, be, and so on."

Hyperspace ends here.
