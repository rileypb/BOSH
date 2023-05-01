Computers by Philip Riley begins here.

include Essentials by Philip Riley.

An enote is a kind of thing. An enote is scenery. 

A computer is a kind of thing. A computer can be locked or unlocked. A computer has a text called password. A computer can be unusable.

Check contentlessly typing on (this is the check whether typing nothing rule):
	say "You'll have to specify what you want to type."  (A) instead.
	
Contentlessly typing on is an action applying to one thing.
	Understand "type on [thing]" as contentlessly typing on. 
	Understand "type" as contentlessly typing on.

To contentlessly type on something :
	say "What do you want to type?"
	
Rule for supplying a missing noun while contentlessly typing on:
	say "What do you want to type? What do you want to type on?"

Typing it on is an action applying to one topic and one visible thing. 
	Understand "type [text] on [something]" as typing it on.
	Understand "type [text]" as typing it on.

Check typing on something (called target) (this is the check what you're typing on rule):
	if target is not a computer:
		say "You can't type on [the target]!"

Rule for supplying a missing second noun while typing the topic understood on:
	let Cs be the list of visible computers;
	if the number of entries in Cs is 0: 
		say "You see no computers to type on here.";
	otherwise if the number of entries in Cs is 1:
		say "(on [entry 1 of Cs])";
		now second noun is entry 1 of Cs;
	otherwise:
		say "You must choose what to type on."
		 
Logging into something is an activity on computers.
	
Carry out an actor typing the topic understood on a computer (called C) when the location is powered:
	let N be "[topic understood]";
	If C is unusable:
		say "[The C] beeps to indicate an incorrect password.";
		rule fails;
	If C is unlocked:
		say "[C] is already logged in.";
	Otherwise if the password of C matches the text N:
		say "You are now logged in to [C].";
		Carry out the logging into activity with C;
		Now C is unlocked;
	Otherwise:
		say "[The C] beeps to indicate an incorrect password.";
		rule fails.
		

Carry out an actor typing the topic understood on a computer (called C) when the location is not powered:
	say "[The C] has no power."
		


Computers ends here.
