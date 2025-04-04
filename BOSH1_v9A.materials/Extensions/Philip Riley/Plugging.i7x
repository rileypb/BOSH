Plugging by Philip Riley begins here.

Use authorial modesty.

A thing can be pluggable. A thing can be plug-into-able.

Plugging-into relates a thing to a thing. The verb to be plugged into implies the plugging-into relation. The verb to accept implies the reversed plugging-into relation.

Plugging it into is an action applying to one thing and one thing. Understand "plug [something] into/in [something]" as plugging it into.
Understand "plug [something] in to [something]" as plugging it into. Understand "plug in [something]" as plugging it into.

Unplugging is an action applying to one thing. Understand "unplug [something]" as unplugging.

Definition: a thing is plugged in if it is plugged into something.

To plug is a verb. To unplug is a verb.


Book - plugging rules

The plugging it into action has an object called the old socket.
The plugging it into action has an object called the old plug.

Setting action variables while plugging something into:
	if something (called S) accepts the noun:
		now the old socket is S;
	if something (called P) is plugged into the second noun:
		now the old plug is P;

Check plugging something into something when the noun is plug-into-able and the second noun is pluggable (this is the reverse plugging rule):
	try plugging the second noun into the noun instead.

Check plugging something into something when the noun is not pluggable:
	if the noun is plug-into-able and the second noun is pluggable:
		try plugging the second noun into the noun instead;
	say "[The noun] doesn't seem to be something you can plug into anything." instead.

Check plugging something into something when the second noun is not plug-into-able:
	if the second noun is pluggable and the noun is plug-into-able:
		try plugging the second noun into the noun instead;
	say "You can't plug anything into [the second noun]." instead.

Check plugging something into something when the noun is plugged into the second noun:
    say "[The noun] is already plugged into [the second noun]." instead.

Check plugging something pluggable into something plug-into-able:
	if something (called the socket) accepts the noun and the second noun is not the socket:
		try unplugging the noun;

Check plugging something pluggable into something plug-into-able:
	if something (called the plug) is plugged into the second noun:
		if the noun is not the plug:
			try unplugging the plug;

The reverse plugging rule is listed first in the check plugging it into rulebook.

Carry out plugging something into something:
	now the noun is plugged into the second noun.

Report plugging something into something:
	[ if old plug is not nothing and old socket is not nothing:
		say "[We] [unplug] [the noun] from [the old socket], [unplug] [the old plug] from [the second noun], and [plug] [the noun] into [the second noun].";
	otherwise if old socket is not nothing:
		say "[We] [unplug] [the noun] from [the old socket], and [plug] it into [the second noun].";
	otherwise if the old plug is not nothing:
		say "[We] [unplug] [the old plug] from [the second noun], and [plug] [the noun] into it.";
	otherwise: ]
	say "[We] [plug] [the noun] into [the second noun]."


Book - unplugging rules

The unplugging action has an object called the socket unplugged from.

Setting action variables while unplugging:
	if the noun is plugged into something (called S):
		now the socket unplugged from is S;

Check unplugging when the socket unplugged from is nothing:
    say "It's not plugged into anything." instead.

Check unplugging when the noun is not pluggable:
    say "That doesn't seem to be something you can unplug." instead.

Carry out unplugging:
    now the noun is not plugged into anything.

Report unplugging:
    say "[We] [unplug] [the noun] from the [socket unplugged from]."


Book - Default movement rules

Slack rules is a rulebook. 

Slack when the player encloses something pluggable (called the plug):
	if something (called the socket) accepts the plug and the player does not enclose the socket:
		say "[We] can't leave while carrying [the plug], which is plugged into [the socket].";
		rule fails;

Slack when the player encloses something plug-into-able (called the socket):
	if something (called the plug) is plugged into the socket and the player does not enclose the plug:
		say "[We] can't leave while carrying [the socket], which has [the plug] plugged into it.";
		rule fails;

Check going:
	if the player encloses something pluggable or the player encloses something plug-into-able:
		follow the slack rules;
		if the rule failed:
			stop the action;

[ Check going when the player encloses something pluggable (called the plug) and something (called the socket) accepts the plug and the player does not enclose the socket:
	follow the slack rules;
	if the rule failed:
		stop the action;
		

Check going when the player encloses something plug-into-able (called the socket) and something (called the plug) is plugged into the socket and the player does not enclose the plug:
	follow the slack rules;
	if the rule failed:
		stop the action; ]


Book - Appearance in inventory

Description notes for a thing (this is the plug-socket description rule):
	if the item described accepts the item described:
		add "plugged into itself" to descriptive notes;
	otherwise:
		if something (called the socket) accepts the item described:
			add "plugged into [the socket]" to descriptive notes;
		if something (called the plug) is plugged into the item described:
			add "with [the plug] plugged into it" to descriptive notes.

Book - Examining

Carry out examining (this is the describe plug connections rule):
	let text printed be false;
	if the noun is plugged into something (called S):
		say "[The noun] is plugged into [the S]. [run paragraph on]";
		now text printed is true;
	if something (called P) is plugged into the noun:
		say "[The P] is plugged into [the noun]. [run paragraph on]";
		now text printed is true;
	if text printed is true:
		say line break.

Book - Backwards Plugging

Instead of plugging something into something when the noun is plug-into-able and the second noun is pluggable and (the noun is not pluggable or the second noun is not plug-into-able):
	try plugging the second noun into the noun instead.


Book - Putting and Attaching

Instead of inserting something pluggable into something plug-into-able:
	try plugging the noun into the second noun.

Instead of tying something pluggable to something plug-into-able:
	try plugging the noun into the second noun.

Plugging ends here.