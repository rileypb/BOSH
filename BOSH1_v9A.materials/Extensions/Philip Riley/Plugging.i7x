Plugging by Philip Riley begins here.

A thing can be pluggable. A thing can be plug-into-able.

Plugging-into relates a thing to a thing. The verb to be plugged into implies the plugging-into relation. The verb to accept implies the reversed plugging-into relation.

Plugging it into is an action applying to one thing and one thing. Understand "plug [something] into [something]" as plugging it into.
Understand "plug [something] in to [something]" as plugging it into.

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

Check plugging something into something when the noun is not pluggable:
    say "[The noun] doesn't seem to be something you can plug into anything." instead.

Check plugging something into something when the second noun is not plug-into-able:
    say "You can't plug anything into [the second noun]." instead.

Check plugging something into something when the noun is plugged into the second noun:
    say "[The noun] is already plugged into [the second noun]." instead.

Check plugging something pluggable into something plug-into-able:
	if something (called the socket) accepts the noun and the second noun is not the socket:
		silently try unplugging the noun;

Check plugging something pluggable into something plug-into-able:
	if something (called the plug) is plugged into the second noun:
		if the noun is not the plug:
			silently try unplugging the plug;

Carry out plugging something into something:
	now the noun is plugged into the second noun.

Report plugging something into something:
	if old plug is not nothing and old socket is not nothing:
		say "[We] [unplug] [the noun] from [the old socket], [unplug] [the old plug] from [the second noun], and [plug] [the noun] into [the second noun].";
	otherwise if old socket is not nothing:
		say "[We] [unplug] [the noun] from [the old socket], and [plug] it into [the second noun].";
	otherwise if the old plug is not nothing:
		say "[We] [unplug] [the old plug] from [the second noun], and [plug] [the noun] into it.";
	otherwise:
		say "[We] [plug] [the noun] into [the second noun]."


Book - unplugging rules

The unplugging action has a thing called the socket unplugged from.

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
    say "You unplug [the noun] from the [socket unplugged from]."


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
	if something (called the socket) accepts the item described:
		add "plugged into [the socket]" to descriptive notes;
	if something (called the plug) is plugged into the item described:
		add "with [the plug] plugged into it" to descriptive notes.

Plugging ends here.