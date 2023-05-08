Hyperspace by Philip Riley begins here.

Include Third Person Narration by Philip Riley.

Volume 1 - Basics

Hyperspace is a region.

A direction can be hyperspatial.

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
				
[After wearing the astral lenses when could see hypertunnels:
	try looking;
	continue the action;
				
After taking off the astral lenses when could see hypertunnels:
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
"[If featureless hyperplane is not visited][We] [rub] [our] eyes as [we] [try] to take in [our] surroundings.[end if] In addition to the usual directions of north and south and east and west, two new directions exist here: [italic type]back[roman type] and [italic type]forth[roman type]. As a result, the 'surface' [we're] standing on is in fact a three-dimensional hyperplane. Up and down still exist, and there is gravity, apparently.

As far as one can see, the hyperplane extends infinitely in all six directions."

To say symbol for (N - a number):
	if N is 0:
		say "◊";
	if N is 1:
		say "┘";
	if N is 2:
		say "┐";
	if N is 3:
		say "┌";
	if N is 4:
		say "└";
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


Descending Stair is a thing. 
Rule for writing a paragraph about the descending stair:
	say "A spiraling staircase disappears into the ground here. It is made of the same gossamer, questionably real stuff as the ground,[if visited pillar is true] the pillar,[end if] and the readouts. You can't see past the first turn of the stairs, unfortunately.";

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
	say "There is an ethereal pillar here. A message carved into the pillar says 'Seek the origin. -Doris'[line break]";
	
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
		say "◊";
	if N is 1:
		say "┘";
	if N is 2:
		say "┐";
	if N is 3:
		say "┌";
	if N is 4:
		say "└";
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

the field office hallway is west of field office reception. It is in field office area. "Hallway".

the field office chief's office is west of the field office hallway. It is in field office area. "Doris's office".




Volume 4 - Other Stuff

Book 1 - Help

helping about hyperspace is an action out of world. Understand "help hyperspace" as helping about hyperspace. 

Carry out helping about hyperspace:
	say "Hyperspace is a four-dimensional plane of being overlaying our own three-dimensional plane. The familiar directions (north, south, up, northeast, etc.) work there, as do two new directions 'back' and 'forth', and their combinations with our compass directions: forthnorth, backeast, etc. These can be abbreviated just as compass directions can: b, f, fn, be, and so on."

Hyperspace ends here.
