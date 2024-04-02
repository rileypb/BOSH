Phones by Philip Riley begins here.

Use authorial modesty.

Include Conversation Responses by Eric Eve.
Include Hearing by Philip Riley.
[include Essentials by Philip Riley.]
Include Facts by Philip Riley.

To hang (he hangs, they hang, he hung) is a verb.

A room has a truth state called reception. The reception of a room is usually true.

To break connection of (P - a person):
	let callee be a random person talking with P;
	now P is not talking with anyone;
	now P is not calling anything;
	now P is not talking on anything;
	now callee is not talking with anyone;
	now callee is not calling anything;
	now callee is not talking on anything;
	if P is player or callee is player:
		say "Your call abruptly ends. You must have lost reception.";

Every turn:
	Repeat with P running through people who are talking with someone:
		if location of P is not nothing:
			if reception of location of P is false:
				Break connection of P;

Rule for printing the sound action for a phone:	
	say "ringing";
	
To say generic description of (T - a phone):
	say "A phone";

Noisiness of a phone (called P) (this is the phone noisiness rule):
	if P is ringing:
		noisy;		
	quiet;



A phone is a kind of thing. A phone can be ringing, idle, or in use. A phone is usually idle. A phone can be caller id. A phone is usually caller id. A phone is audible. The volume of a phone is usually 1. A phone is insistent. Understand "phone" as a phone.

A phone can be mobile or wired. A phone is usually mobile.

A phone can be identifiable or unidentifiable. A phone is usually identifiable.

Talking on relates a person to a phone. The verb to be talking on implies the talking on relation.
Talking with relates people to each other. The verb to be talking with implies the talking with relation. [on the phone]
Calling to relates a person to a phone. The verb to be calling implies the calling to relation.

Definition: a person (called P) is phoning if P is calling something or P is talking with someone.

Every turn when player is calling something (called P) and player is talking with nobody:
	say "[We] [are] calling [P]. The other phone is ringing.";

A phone number is a kind of fact. 

Reaches relates a phone number to a phone. The verb to reach (he reaches, it reaches, it is reached by) implies the reaches relation.

Check an actor going when actor is talking on a phone (called P) and P is wired:
	print to actor that "You'll have to hang up first." instead;

Calling it on is an action applying to two visible things. Understand "Call [any phone] on [a phone]" as calling it on.
Understand "Call [any person] on [a phone]" as calling it on. 
[Understand "call [any phone]" as calling it on. Understand "call [any person]" as calling it on.]

Cold-calling it on is an action applying to one topic and one thing. Understand "call [text] on [a phone]" as Cold-calling it on. Understand "call [text]" as Cold-calling it on. 

Check Cold-calling something on something:
	say "You don't know the number for [topic understood].";

Rule for supplying a missing second noun while cold-calling:
	say "You don't know the number for [topic understood].";

Check an actor calling a phone (called the callee phone) on a phone (called the caller phone):
	if the location of the actor is not nowhere:
		if reception of the location of the actor is false:
			print to actor that "You have no reception here." instead;
		If actor does not carry the caller phone and the caller phone is mobile:
			if the actor is the player:
				say "(first taking [the caller phone])";
			silently try actor taking the caller phone;
			if the rule failed:
				stop the action;
		let PN be a random phone number which reaches callee phone;
		if actor does not know PN:
			print to actor that "[We] [don't] know that phone number." instead;	
		if the callee phone is the caller phone:
			print to actor that "[We] [can't] call the phone [we're] calling from!" instead;
		if the caller phone is not idle:
			print to actor that "[The caller phone] is busy." instead;
		if the callee phone is not idle:		
			print to actor that "[The callee phone] is busy." instead;

Carry out an actor calling a phone (called the callee phone) on a phone (called the caller phone):
	now the actor is calling the callee phone;
	now the actor is talking on the caller phone;
	let the callee be a random person who owns the callee phone;
	now the callee phone is ringing;
	now the caller phone is in use;
	[carry out the chiming activity with the callee phone;]

Report an actor calling a phone (called the callee phone) on a phone (called the caller phone):
	if the actor is not the player:
		print near the actor that "[Actor] calls someone on [caller phone].";
		
Check an actor calling someone (called the callee) on something (called the caller phone):	
	let Ph be nothing;
	repeat with P running through the phones owned by the callee:
		let Pn be a random phone number which reaches P;
		if actor knows Pn:
			now Ph is P;
	if Ph is nothing:
		if actor is player:
			say "[We] [don't] know of any phones owned by [Callee]." instead;
		otherwise:
			print to actor that "[regarding actor][Actor] [don't] know of any phones owned by [Callee]." instead;
	if actor is the player:
		say "(calling [the Ph])[command clarification break]";
	try actor calling Ph on caller phone instead;

Understand the command "answer" as something new.

Answering is an action applying to one thing. Understand "Answer [phone]" as answering.
PIcking up is an action applying to one thing.
Ending a call is an action applying to nothing. Understand "Hang up" as ending a call.
Hanging up is an action applying to one thing.
Signing off with is an action applying to one visible thing.

Check an actor answering a phone (called the phone) (this is the check actor answering phone rule):
	if the phone is idle:
		print to the actor that "[The noun] isn't ringing." (A) instead; 
	otherwise if the phone is in use:
		print to the actor that "You're already talking on [the noun]." (B) instead; 
	let caller be a random person who is calling the phone;
	if the actor is the player and the caller is the player:
		say "Oh I get it. You think you're clever, calling yourself. Well I won't put up with that kind of shenanigans." (C) instead;

Carry out an actor answering a phone (called the phone):
	now the phone is in use;
	now the actor is talking on the phone;
	let caller be a random person who is calling the phone;
	now actor is talking with caller;	
	try actor picking up the phone;	
	try actor saying hello to caller;
	try caller saying hello to actor;
	if the actor is the player:
		now the command prompt is "(on the phone with [Caller]) >";
	if the caller is the player:
		let a be "[Actor]";
		now the command prompt is "(on the phone with [a]) >";

Report player saying hello to someone (called P) when player is talking with P:
	say "[We] [say] hello." instead;

Does the player mean answering a phone (called P) when P is ringing: It is very likely.

Does the player mean answering a phone (called P) when P is not ringing: It is very unlikely.

Does the player mean answering the player:
	It is very unlikely;
		
Report an actor picking up a phone (called the phone) (this is the report picking up the phone rule):
	if the actor is not the player and the actor is colocated with the player:
		say "[Actor] answers [the phone]." (A);
	if the actor is the player:
		let caller be a random person who is calling the phone;
		print to the player that "You answer [the phone]." (B);
		
Before doing something other than answering that while player is talking with someone (called P) (this is the can't touch through the phone rule):
	if action requires a touchable noun and the noun is P and P is not in the location:
		say "You can't touch [P]." (A); 
		stop the action;
	if action requires a touchable second noun and the second noun is P and P is not in the location:
		say "You can't touch [P].";
		stop the action;
	if action requires light and the noun is P and P is not in the location:
		say "You can't see [P]." (B); 
		stop the action;
		
[Before answering something that:
	say "bar";
	continue the action;]

After deciding the scope of the player while the player is talking with someone (called callee) (this is the place callee in scope rule):
	place callee in scope;

Check ending a call when the player is not phoning:
	say "You aren't on the phone." instead;
	
Check an actor ending a call when the the actor is not phoning and the actor is not the player:
	stop the action;

Carry out an actor ending a call when the actor is talking with someone (called the callee):
	try the actor signing off with the callee;
	try the callee signing off with the actor;
	if the actor is talking on something (called P):
		try the actor hanging up P;
	if the callee is talking on something (called P):
		try the callee hanging up P;

Carry out an actor ending a call when the actor is talking with nobody:
	if the actor is calling something (called P):
		now P is idle;		
	if the actor is talking on something (called P):
		now P is idle;
		try the actor hanging up P;

Carry out an actor hanging up something (called P):
	now P is idle;
	now the actor is not talking with anybody;
	now the actor is not calling anything;
	now the actor is not talking on anything;
	now the current interlocutor is nothing;
	
Report an actor signing off with a person (called callee):
	print to callee that "[regarding actor][if actor is player][We][otherwise][Actor][end if] [say] goodbye to [if callee is player][us][otherwise][Callee][end if]." as actor;	

Report an actor hanging up:
	if actor is talking with someone (called P):
		if P is the player and P is talking on something:
			say "[regarding actor][if actor is player][We][otherwise][Actor][end if] [hang] up the phone.";
	otherwise:
		print near actor that "[regarding actor][if actor is player][We][otherwise][Actor][end if] [hang] up the phone.[line break]";
	
	
Instead of player saying goodbye to someone (called callee) while the actor is talking with the callee and the current interlocutor is not nothing:
	reset the interlocutor;
	try ending a call;
	
Instead of player saying goodbye to someone (called callee) while the actor is talking with the callee and the current interlocutor is nothing:
	rule succeeds;

[Carry out an actor hanging up when the actor is talking with someone (called P) and P is not the actor:
	if the actor is talking on something (called P):
		now P is idle;
	now the actor is not talking with anybody;
	now the actor is not calling anything;
	now the actor is not talking on anything;]
	
Carry out player hanging up:
	now the command prompt is ">";
	
A rule for reaching inside a room (called R) (this is the long-distance speaking rule):
	if the current interlocutor is enclosed by R:
		if the current interlocutor is talking with the player:
			allow access;

Instead of examining a phone (called P) when the noun is ringing:
	if P is caller id:
		let caller be a random person who is calling the P;
		if caller is talking on a phone (called caller phone):
			if caller phone is unidentifiable:
				say "The caller ID says 'Unknown Caller'.";
			otherwise:
				let caller number be a random phone number which reaches caller phone;
				if the player knows caller number:
					say "The caller ID says [Caller].";
				otherwise:
					say "[We] [don't] recognize the number on the caller ID.";
	otherwise:
		say "You better answer it.";
	
Rule for writing a paragraph about a person (called P) when P is phoning:
	say "[The P] is on the phone.";		

Phones ends here.
