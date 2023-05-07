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
			say "Fluorescent: [the F].";
			decide yes;
	decide no;
	
Hyperlight is a backdrop. It is everywhere. It is unlit.

New Light ends here.
