Choices by Philip Riley begins here.

Include Complex Listing by Emily Short.
Include Exit Lister by Eric Eve.
Include Options Paragraph by Philip Riley.

Volume 1 - Basics

Book 1 - Choices 

A choice is a kind of thing. A choice can be available. A choice can be exhausted.

Definition: a choice is unexhausted if it is not exhausted.

Choosing is an action applying to one thing.
Understand "[any choice]" as choosing.

Check choosing:
	if the noun is not listed in total choices:
		say "That is not a valid choice right now." instead;	
		
		
Volume 2 - Some stuff about things

demoing relates choices to one thing. The verb to demonstrate means the demoing relation.


Volume 3 - The map

The room of choices is a room.

When play begins:
	now all choices are in the room of choices;

A rule for reaching inside the room of choices:
	allow access;
	

Volume 4 - Displaying available choices
	
Listing the available choices is an activity.
	
To prepare a/the/-- list of (selection - list of objects):
	now every thing is unmarked for special listing;
	now every direction is unmarked for special listing;
	now every room is unmarked for special listing;
	now every region is unmarked for special listing;
	repeat with item running through selection:
		now the item is marked for special listing;
	register things marked for listing.
	
To decide what list of objects is the total choices:
	let Q be a list of objects;
	let X be the list of available choices;
	add X to Q;
	repeat with T running through the things in the location:
		let Demos be the list of things that demonstrate T;
		add Demos to Q;
	now Q is filter to unexhausted choices of Q;[
	let dirs be the exit list;
	add dirs to Q;]
	decide on Q;

For listing the available choices:	
	let something said be false;
	let dirs be the exit list;
	prepare the list of dirs;
	if dirs is non-empty:
		say "[italic type][We] [can] go [the prepared list delimited in the disjunctive style].[roman type] ";
		now something said is true;
	let Q be the total choices;
	prepare the list of Q;
	if Q is non-empty:
		say "[italic type][We] [can] [the prepared list delimited in the disjunctive style].[roman type]";
		now something said is true;
[	if something said is true:
		say paragraph break;]
	
For printing the options paragraph:
	carry out the listing the available choices activity;

[what to print is an object that varies.]

To print base name:
	(- STANDARD_NAME_PRINTING_R((+ what to print +)); -);

[Rule for printing the name of a direction (called D) while listing the available choices:
	now what to print is D;
	say  "go ";
	print base name;]


Choices ends here.
