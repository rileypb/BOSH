Scenery Supporters by Philip Riley begins here.

Use authorial modesty.

A thing can be exposed. A thing is usually not exposed.

The special rulebook is a thing based rulebook.

The describe what's on scenery supporters in room descriptions rule is listed first in the special rulebook.

For printing a locale paragraph about a thing (called the item) (this is the describe what's on exposed scenery supporters in room descriptions rule):
	if the item is exposed:
		if the item is scenery and the item does not enclose the player:
			if a locale-supportable thing is on the item:
				set pronouns from the item;
				repeat with possibility running through things on the item:
					now the possibility is marked for listing;
					if the possibility is mentioned:
						now the possibility is not marked for listing;
				increase the locale paragraph count by 1;
				say "On [the item] " (A);
				list the contents of the item, as a sentence, including contents,
					giving brief inventory information, tersely, not listing
					concealed items, prefacing with is/are, listing marked items only;
				say ".[paragraph break]";
		continue the activity.


Scenery Supporters ends here.