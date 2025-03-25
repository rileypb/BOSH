Hints by Philip Riley begins here.

Use authorial modesty.

A hint topic is a kind of thing. It is privately-named.
A hint topic has number called the hint level. The hint level is usually 0. 
A hint topic can be listed or unlisted. A hint topic is usually listed.
A hint topic can be progressive or non-progressive. A hint topic is usually non-progressive.
A hint topic has a list of texts called the progression.
A hint topic has a text called the last hint. The last hint of a hint topic is usually "".
A hint topic has a list of texts called the history. 

Definition: a hint topic is active:
	follow the activating rules for it;
	if the rule succeeded:
		yes;
	no;

Definition: a hint topic is exhausted:
	if it is not progressive:
		no;
	otherwise if the hint level of it >= the number of entries in the progression of it:
		yes;

Definition: a hint topic is explored if the number of entries in its history is not 0.

asking for hints about is an action out of world applying to one thing. Understand "hint [any active hint topic]", "help [any active hint topic]" as asking for hints about. 

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
	say "(Topics in bold have new hints available. The others may have more hints later.)";
	say "To recall hints about a topic, type RECALL <TOPIC>.";
	now listing all hints is false;

Listing hints is an action out of world. Understand "list hints", "hints", "hint", "help" as listing hints.

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

Book 1 - Not For Release

diagnosing hints is an action out of world applying to one thing. Understand "diagnose [any hint topic]" as diagnosing hints.

Carry out diagnosing hints:
	say "hint topic: [the noun][line break]";
	say "The hint level for [the noun] is [hint level of the noun].";
	say "Listed: [if the noun is listed]yes[otherwise]no[end if].";
	say "Progressive: [if the noun is progressive]yes[otherwise]no[end if].";
	say "Progression: [line break]";
	say "The last hint for [the noun] is [last hint of the noun].";
	say "History: [line break]";
	repeat with item running through the history of the noun:
		say "* [item][line break]";
	lb;
	say "Active: [if the noun is active]yes[otherwise]no[end if].";
	say "Explored: [if the noun is explored]yes[otherwise]no[end if].";

Hints ends here.