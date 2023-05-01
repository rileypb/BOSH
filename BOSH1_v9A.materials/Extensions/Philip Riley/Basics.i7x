Basics by Philip Riley begins here.

Volume 1 - Spatial relationships

Behindness relates various things to one thing. The verb to be behind means the behindness relation.

Looking behind is an action applying to one thing. Understand "look behind [something]" as looking behind.

Looking behind action has a list of things called hidden.

Check looking behind something when nothing is behind the noun:
	if the noun is the player:
		say "[We] [look], but there is nothing behind [us]." instead;
	say "[We] [look], but there is nothing behind [the noun]." instead;

Carry out looking behind something:
	repeat with X running through the thing behind the noun:
		if X is not scenery:
			now X is not behind the noun;
			now X is in the location;
			add X to hidden;

Report looking behind something:
	if hidden is not empty:
		say "[We] [find] [hidden with indefinite articles] and [regarding the player][pull] [regarding the number of entries in hidden][them] out.";
		



Basics ends here.
