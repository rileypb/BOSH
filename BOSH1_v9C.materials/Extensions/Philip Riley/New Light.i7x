New Light by Philip Riley begins here.

A light source is a kind of thing. It is privately-named. It is usually lit. It is usually undescribed.

To unlight (R - a room):
	repeat with LS running through light sources in R:
		now LS is not lit;

To light (R - a room):
	repeat with LS running through light sources in R:
		now LS is lit;
		
A light source can be fluorescent.

Definition: a room is fluorescent-lit:
	if it contains a fluorescent light source (called F):
		if F is lit:
			decide yes;
	decide no;
	
Hyperlight is a backdrop. It is everywhere. It is unlit. It is privately-named. It is undescribed.

Adjacent light is a backdrop. It is everywhere. It is unlit. It is privately-named. It is undescribed.

To decide if (T - an object) offers light:
	(- OffersLight({T}) -);

This is the adjust adjacent light rule:
	let should light be false;
	repeat with way running through non-hyperspatial directions:
		let farplace be the room way from the location;
		now direction-object is the room-or-door way from the location;
		if direction-object is apparent:
			if farplace offers light and direction-object is not a closed door:
				now should light is true;
	if should light is true:
		now adjacent light is lit;
	otherwise:
		now adjacent light is not lit;		
	
The adjust adjacent light rule is listed before the adjust light rule in the turn sequence rulebook.

This is the adjust hyperlight rule:
	if the player wears the astral lenses:
		now the hyperlight is lit;
	otherwise:
		now the hyperlight is not lit;
		
The adjust hyperlight rule is listed before the adjust adjacent light rule in the turn sequence rulebook.

To silently consider light:
	(- SilentlyConsiderLight(); -).

To surreptitiously reckon darkness:
	say "foobar";
	follow the adjust hyperlight rule;
	follow the adjust adjacent light rule;
	silently consider light;

New Light ends here.
