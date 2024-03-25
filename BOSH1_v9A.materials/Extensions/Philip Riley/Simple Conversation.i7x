Simple Conversation by Philip Riley begins here.

Include Conversation Framework by Eric Eve.
Include Conversational Defaults by Eric Eve.
Include Complex Listing by Emily Short.
Include Options Paragraph by Philip Riley.


Volume 1 - Basics

Book 1 - Quips

A quip is a kind of thing. 

A quip can be one-shot or repeatable. A quip is usually one-shot.
A quip can be questioning, informative, or performative. A quip is usually performative.
A quip can be ubiquitous, ignored, plausibility-once, or plausibility-normal. A quip is usually plausibility-normal.
A quip can be universal.
A quip can be always-available.
A quip can be exhausted. 
A quip can be silent.
A quip can be uttered.

A quip has a text called the comment.
A quip has a text called the reply.

The generic quip is a quip.

what to print is an object that varies.

To print base name:
	(- STANDARD_NAME_PRINTING_R((+ what to print +)); -);

Rule for printing the name of an informative quip (called Q) while listing the available quips:
	now what to print is Q;
	say "tell [the current interlocutor] ";
	print base name;

Rule for printing the name of a questioning quip (called Q) while listing the available quips:
	now what to print is Q;
	say "ask ";
	print base name;

The room of quips is a room.
When play begins: now every quip is in the room of quips.

After deciding the scope of the player while discussing, discussing something with (this is the quip scope handling rule):
	place the contents of the room of quips in scope.
	
rule for reaching inside the room of quips:
	allow access;
	
Book 2 - People

A person has a list of quips called the queue.

Chapter 1 - Relations of Quips

quip-supplying relates various quips to various things. The verb to quip-supply means the quip-supplying relation.

following relates various quips to various quips. The verb to follow means the following relation.

exclusion relates various quips to various quips. The verb to rule out means the exclusion relation.

mentioning relates various quips to various things. The verb to mention means the mentioning relation.

Understand "[something related by mentioning]" as a quip. 

stocking relates various quips to various things. The verb to stock means the stocking relation.

Chapter 2 - Special Movement Rule

After an actor going (this is the clear current interlocutor on going rule):
	if the actor is the current interlocutor and the actor is not visible:
		now the current interlocutor is nothing;
	continue the action;

Volume 2 - Actions

Book 1 - Discussing

[understand the command "tell" as something new.]

Discussing it with is an action applying to two things.

Understand "tell [person] [any q-available informative quip]",
			"ask [person] about/-- [any q-available quip]" as discussing it with (with nouns reversed).
			
Understand "say [any q-available informative quip] to [person]" as discussing it with when the current interlocutor is something.

Discussing is an action applying to one thing.

Understand "ask about/-- [any q-available questioning quip]", "say [any q-available informative quip]", "say [any q-available performative quip]" as discussing [when the current interlocutor is something].

[report discussing something with someone (this is the discussing with output rule):
	if the noun does not quip-supply the second noun:
		say "That doesn't seem to be a topic of discussion right now" (A);
	otherwise if the second noun is not the current interlocutor:
		implicitly greet the second noun;
		say "[comment of the noun][paragraph break][reply of the noun][paragraph break]";
	otherwise:
		say "[comment of the noun][paragraph break][reply of the noun][paragraph break]";]

		
Check discussing something with someone:	
	if the current interlocutor is not the second noun:
		implicitly greet the second noun;
	try discussing the noun;
	
Check discussing something (this is the block exhausted one-shot quips rule):
	if the noun is exhausted and the noun is one-shot:
		say "That is not a topic of conversation at the moment." instead;
	
Check discussing something:	
	if the current interlocutor is nothing:
		say "[We] [aren't] talking to anyone right now." instead;
	if the noun is not q-available:
		say "That is not a topic of conversation at the moment." instead;
		
Carry out discussing something:
	now the latest quip is the noun;
	now the latest quip is uttered;
	if the latest quip is one-shot:
		now the latest quip is exhausted;
	if the latest quip is listed in the queue of the current interlocutor:
		remove the latest quip from the queue of the current interlocutor;
	if the noun is not silent:
		say "[comment of the noun][paragraph break][reply of the noun][paragraph break]";
	if the latest quip mentions something (called M):
		set pronouns from M;
		
Understand "[any q-available quip]" as discussing.

Volume 3 - Queueing

The latest quip is a quip that varies.

Queueing quips following something is an activity on quips.

This is the queue quips rule:
	carry out the queueing quips following activity with the latest quip;

For queueing quips following a quip (called Q):
	if the current interlocutor is a person:
		let new quips be a list of quips;
		add the list of quips that follow Q to new quips;
		[if Q is repeatable:
			add Q to new quips;]
		add new quips to the queue of the current interlocutor;
	
When play begins:
	repeat with P running through the list of all people:
		let X be the list of quips that stock P;
		add X to the queue of P;
		
To queue (P - a person) with (Q - a quip):
	if Q is not listed in the queue of P:
		add Q to the queue of P;
		
Volume 4 - Ruling out

Ruling out quips following something is an activity on quips.

This is the ruling out quips rule:
	carry out the ruling out quips following activity with the latest quip;

For ruling out quips following a quip (called Q):
	if the current interlocutor is a person:
		let dead quips be a list of quips;
		add the list of quips that are ruled out by Q to dead quips;
		remove dead quips from the queue of the current interlocutor;
		repeat with Q2 running through dead quips:
			now Q2 is exhausted;
	

Volume 5 - Output

Book 1 - Tweaking Conversation Framework output

[check quizzing someone about something:
	say "[text of the block quizzing rule response (A)][line break]" instead;]

check informing someone about something:
	say "[text of the block informing rule response (A)][line break]" instead;

check asking someone about something:
	say "[text of the block quizzing rule response (A)][line break]" instead;

check telling someone about something:
	say "[text of the block informing rule response (A)][line break]" instead;

the block quizzing rule response (A) is "That doesn't seem to be a topic of conversation at the moment."

the block informing rule response (A) is "That doesn't seem to be a topic of conversation at the moment."

the unresponsive rule response (A) is "That doesn't seem to be a topic of conversation at the moment."

Book 2 - Quizzing about things

To decide whether conversation available for (X - a person) / (Y - a thing):
	repeat through Table of Quiz Topics:
		if there is a subject entry and there is an interlocutor entry:
			if subject entry is Y and interlocutor entry is X:
				yes;
	no;

Instead of quizzing someone about something when conversation available for noun / second noun:
	repeat through Table of Quiz Topics:
		if there is a subject entry and there is an interlocutor entry:
			if subject entry is the second noun and interlocutor entry is the noun:
				if there is a comment entry:
					say "[comment entry][paragraph break]";
				otherwise:
					say "[We] [say], 'Tell me about [the second noun][if the noun is proper-named], [noun][end if].'[paragraph break]";
				say reply entry;
				say paragraph break;

Table of Quiz Topics
subject (a thing)	interlocutor (a person)	comment (a text)	reply (a text)
with 1 blank row.


Book 3 - Availability

The availability rules are an object-based rulebook. 
The availability rules have outcomes always available (success), when queued (success), unless not queued (failure), never available (failure).

Definition: a quip is q-available:
	if the current interlocutor is not a person, no;
	follow the availability rules for it;
	if the outcome of the rulebook is the always available outcome, yes;
	if the outcome of the rulebook is the when queued outcome and it is listed in the queue of the current interlocutor, yes;
	if the outcome of the rulebook is the unless not queued outcome and it is not listed in the queue of the current interlocutor, no;
	no.
	
Definition: a quip is off-limits if it is not q-available.
	
Part 1 - Basic Rules of Availability

An availability rule for an exhausted quip (this is the exhausted quip availability rule):
	never available;

An availability rule for a universal quip (this is the universal availability rule):
	always available;
	
An availability rule for a quip (called Q) when Q is not universal and the current interlocutor is something and Q does not quip-supply the current interlocutor (this is the can't talk to the wrong person rule):
	never available;

An availability rule for an always-available quip (this is the always-available rule):
	always available;
	
An availability rule for a quip (called Q) when the current interlocutor is something and Q is listed in the queue of the current interlocutor (this is the queued quip rule):
	always available;
	
An availability rule for a quip (called Q) (this is the basic availability rule):
	never available;
	

[An availability rule for a quip (called Q) when Q is listed in the queue of the current interlocutor (this is the queued quip availability rule):
	it is available;]


Book 4 - Plausibility

The plausibility rules are an object-based rulebook. 
The plausibility rules have outcomes it is plausible (success), it is dubious (success), and it is implausible (failure).

Definition: a quip is plausible:
	if the current interlocutor is not a person, no;
	follow the plausibility rules for it;
	if the outcome of the rulebook is the it is plausible outcome, yes;
	no.
	
Part 1 - Basic Rules of Plausibility

A plausibility rule for an ignored quip (called Q) (this is the ignoreability rule):
	it is implausible;

A plausibility rule for a ubiquitous quip (this is the ubiquity rule):
	it is plausible;
	
A plausibility rule (this is the basic plausibility rule):
	it is plausible;

A plausibility rule for a plausibility-once quip (called Q) (this is the plausibility-once rule):
	if Q is uttered:
		it is implausible;
	it is plausible;

Book 5 - Displaying available quips

Definition: a quip (called Q) is queued-up:
	if the current interlocutor is nothing:
		decide no;
	decide on whether or not Q is listed in the queue of the current interlocutor;
	
Listing the available quips is an activity.
	
To prepare a/the/-- list of (selection - list of objects):
	now every thing is unmarked for special listing;
	now every direction is unmarked for special listing;
	now every room is unmarked for special listing;
	now every region is unmarked for special listing;
	repeat with item running through selection:
		now the item is marked for special listing;
	register things marked for listing.

For listing the available quips:	
	let X be the list of plausible q-available quips that are not exhausted;
	prepare the list of X;
	if X is non-empty:
		say "[italic type][We] [can] [the prepared list delimited in the disjunctive style].[roman type]";
		now options printed is true;

This is the display available quips rule:
	if the current interlocutor is something:
		carry out the listing the available quips activity;
	
[The display available quips rule is listed after the adjust light rule in the turn sequence rules.]

For printing the options paragraph:	
	carry out the listing the available quips activity;

Volume 6 - Disambiguation

Rule for clarifying the parser's choice of a quip (called Q):
	now the current interlocutor is a random visible thing quip-supplied by Q;

Does the player mean discussing an off-limits quip (called Q):
	if Q quip-supplies the current interlocutor:
		it is unlikely;
	if Q quip-supplies a visible person (called P):
		[now the current interlocutor is P;]
		it is very likely;
	it is very unlikely;

Does the player mean discussing an off-limits quip (called Q) with the current interlocutor:
	if Q quip-supplies the current interlocutor:
		it is unlikely;
	it is very unlikely;

Does the player mean discussing an off-limits quip (called Q) with someone (called P):
	if the current interlocutor is not P:
		if Q is listed in the queue of P:
			it is likely;
		otherwise:
			if P is touchable:				
				it is unlikely;
			otherwise:
				it is very unlikely;
	it is very unlikely;
	
Does the player mean discussing an q-available quip:
	it is very likely;

Does the player mean discussing an q-available quip with the current interlocutor:
	it is very likely;

Does the player mean discussing an q-available quip with someone:
	it is likely;

Volume 7 - Some rule ordering
	
The queue quips rule is listed before the options paragraph stage rule in the turn sequence rules.
The ruling out quips rule is listed after the queue quips rule in the turn sequence rules.

Volume 8 - Not For Release

Inspecting is an action applying to one thing. Understand "inspect [any thing]" as inspecting.

Instead of inspecting a quip:
	say "QUIP: [the noun]:[line break]";
	say "Comment: [comment of the noun][line break]";
	say "Reply: [reply of the noun][line break]";
	say "Quip is [if the noun is exhausted]exhausted[otherwise]not exhausted[end if][line break]";
	say "Quip is [if the noun is one-shot]one-shot[otherwise]repeatable[end if][line break]";
	say "Quip is [if the noun is questioning]questioning[otherwise]informative[end if][line break]";
	say "Quip is [if the noun is ubiquitous]ubiquitous[otherwise]not ubiquitous[end if][line break]";
	say "Quip is [if the noun is ignored]ignored[otherwise]not ignored[end if][line break]";
	say "Quip is [if the noun is plausibility-normal]plausibility-normal[otherwise]not plausibility-normal[end if][line break]";
	say "Quip is [if the noun is universal]universal[otherwise]not universal[end if][line break]";
	say "Quip is [if the noun is always-available]always-available[otherwise]not always-available[end if][line break]";
	say "Quip is [if the noun is off-limits]off-limits[otherwise]not off-limits[end if][line break]";
	say "Quip is [if the noun is queued-up]queued-up[otherwise]not queued-up[end if][line break]";
	say "Quip is [if the noun is plausible]plausible[otherwise]not plausible[end if][line break]";
	say "Quip is [if the noun is listed in the queue of the current interlocutor]listed in the queue of the current interlocutor[otherwise]not listed in the queue of the current interlocutor[end if][line break]";
	say "Quip is [if the noun is q-available]q-available[otherwise]not q-available[end if][line break]";
	follow the availability rules for the noun;
	say "[the outcome of the rulebook][line break]";

Simple Conversation ends here.
