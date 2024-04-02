Texting by Philip Riley begins here.

Use authorial modesty.

Include Basic Screen Effects by Emily Short.
Include Glulx Text Effects by Emily Short.

[Include Essentials by Philip Riley.]
Include Phones by Philip Riley.

Current Textee is a person which varies.

Texting it about is an action applying to two things. 
Understand "Text [any person] about [any thing]" as texting it about. 
Understand "Text [any phone] about [any thing]" as texting it about.

Texting implicitly about is an action applying to one thing.
Understand "Text about [any thing]" as texting implicitly about.

Texting it asking about is an action applying to two things. 
Understand "Text [any person] asking about [any thing]" as texting it asking about. 
Understand "Text [any phone] asking about [any thing]" as texting it asking about.

Texting implicitly asking about is an action applying to one thing.
Understand "Text asking about [any thing]" as texting implicitly asking about.

Check an actor texting implicitly about something (called T):
	if the current textee is nothing:
		say "You must specify someone to text to." instead;
	try actor texting current textee about T;

Check an actor texting a person (called the callee) about something (called T):
	let Ph be nothing;
	repeat with P running through the phones owned by the callee:
		let Pn be a random phone number which reaches P;
		if actor knows Pn:
			now Ph is P;
	if Ph is nothing:
		if actor is player:
			say "You don't know of any phones owned by [Callee]." instead;
		otherwise:
			print to actor that "[regarding actor][Actor] [don't] know of any phones owned by [Callee]." instead;
	if actor is the player:
		say "(texting [the Ph])[command clarification break]";
	try actor texting Ph about T instead;
	
Check an actor texting a phone (called P) about something (called T):
	if the reception of the location of the actor is false:
		say "You have no reception here." instead;
	Let MPs be the list of mobile phones which are carried by actor;
	If MPs is empty:
		print to actor that "You are not carrying any mobile phones." instead;
	Let caller phone be entry 1 of MPs;
	say "(on [the caller phone])[command clarification break]";
	Let callee be a random person who owns P;
	If callee is nothing:
		say "No one owns [P]." instead;
		
Carry out an actor texting a phone (called P) about something (called T):
	Let callee be a random person who owns P;
	Now the current textee is callee;
	now the current interlocutor is callee;

Check an actor texting implicitly asking about something (called T):
	if the current textee is nothing:
		say "You must specify someone to text to." instead;
	try actor texting current textee asking about T;

Check an actor texting a person (called the callee) asking about something (called T):
	let Ph be nothing;
	repeat with P running through the phones owned by the callee:
		let Pn be a random phone number which reaches P;
		if actor knows Pn:
			now Ph is P;
	if Ph is nothing:
		if actor is player:
			say "You don't know of any phones owned by [Callee]." instead;
		otherwise:
			print to actor that "[regarding actor][Actor] [don't] know of any phones owned by [Callee]." instead;
	if actor is the player:
		say "(texting [the Ph])[command clarification break]";
	try actor texting Ph asking about T instead;
	
Check an actor texting a phone (called P) asking about something (called T):
	if the reception of the location of the actor is false:
		say "You have no reception here." instead;
	Let MPs be the list of mobile phones which are carried by actor;
	If MPs is empty:
		print to actor that "You are not carrying any mobile phones." instead;
	Let caller phone be entry 1 of MPs;
	say "(on [the caller phone])[command clarification break]";
	Let callee be a random person who owns P;
	If callee is nothing:
		say "No one owns [P]." instead;
		
Carry out an actor texting a phone (called P) asking about something (called T):
	Let callee be a random person who owns P;
	Now the current textee is callee;
	now the current interlocutor is callee;
	
	
[For compatibility with Conversation Responses by Eric Eve]

To decide whether texted about (obj - an object):
	if texting something about something, decide on whether or not the obj is the second noun;
	decide no;

To decide whether texted asking about (obj - an object):
	if texting something asking about something, decide on whether or not the obj is the second noun;
	decide no;

The standard response rule is listed first in the report texting it about rules.
The standard response rule is listed first in the report texting it asking about rules.



To say text (T - a text):
	say "[line break][fixed letter spacing]'[T]'[variable letter spacing][paragraph break]";
	



Texting ends here.
