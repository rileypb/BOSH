Hints by Philip Riley begins here.

A hint topic is a kind of thing. It is privately-named.
A hint topic has number called the hint level. The hint level is usually 0. 
A hint topic can be listed or unlisted. A hint topic is usually listed.
A hint topic can be progressive or non-progressive. A hint topic is usually non-progressive.
A hint topic has a list of texts called the progression.
A hint topic has a text called the last hint. The last hint of a hint topic is usually "".
A hint topic has a list of texts called the history. 

asking for hints about is an action out of world applying to one thing. Understand "hint [any hint topic]" as asking for hints about. 

asking for bogus hints about is an action out of world applying to one topic. Understand "hint [text]" as asking for bogus hints about.

Check asking for bogus hints about:
	say "There is no hint for that right now." instead;

recalling hints about is an action out of world applying to one thing. Understand "recall hints/hint/-- for/-- [any hint topic]" as recalling hints about.

recalling bogus hints about is an action out of world applying to one topic. Understand "recall hint [text]" as recalling bogus hints about.

Check recalling bogus hints about:
	say "You haven't seen any hints for that." instead;

Check recalling hints about:
	if the number of entries in the history of the noun is 0:
		say "You haven't seen any hints for that." instead;

Carry out recalling hints about:
	say "You've seen the following hints about [the noun]:[paragraph break]";
	repeat with item running through the history of the noun:
		say "* [item][line break]";

hinting is an object based rulebook producing texts. The hinting rules have default success.

hinting rules have outcomes go on (no outcome).
[ hinting rules have outcomes level up (success), no leveling (success), and go on (no outcome). ]

activating is an object based rulebook. The activating rules have outcomes activate (success) and deactivate (failure). The activating rules have default no outcome.

Activating a hint topic (called HT):
	activate;

Listing all hints is a truth state that varies. Listing all hints is false.

To list all hints:
	now listing all hints is true;
	say "Hints about the following topics are available:[line break]";
	repeat with item running through listed hint topics:
		follow the activating rules for the item;
		if the rule succeeded:
			let the current hint be the text produced by the hinting rules for the item;
			if the rule succeeded and current hint is last hint of item:
				say "* [item][line break]";
			otherwise if the rule succeeded:
				say "* [bold type][item][roman type][line break]";
	say "(Topics in bold have new hints available.)";
	now listing all hints is false;

Listing hints is an action out of world. Understand "list hints" as listing hints.

Carry out listing hints:
	list all hints.

Carry out asking for hints about:
	follow the activating rules for the noun;
	if the rule succeeded:
		let current hint be the text produced by the hinting rules for the noun;
		if the rule succeeded:
			say "[current hint][line break]";	
			now the last hint of the noun is current hint;
			if current hint is not listed in the history of the noun:
				add current hint to the history of the noun;
		otherwise:
			say "There is no hint for that right now.";
	otherwise:
		say "There is no hint for that right now.";

hinting:
    rule fails;

hinting a progressive hint topic (called HT):
	if the hint level of HT is less than the number of entries in the progression of HT:
		let result be the substituted form of "[entry (hint level of HT + 1) in the progression of the HT]";
		if listing all hints is false:
			increment the hint level of HT;
		rule succeeds with result result;
	otherwise:
		rule succeeds with result the substituted form of "[entry (number of entries in the progression of HT) in the progression of HT]";



Hints ends here.