Extension Cord by Philip Riley begins here.

Include Plugging by Philip Riley.

Use authorial modesty.

The extension cord is a thing. Understand "orange" as the extension cord.
The description of the extension cord is "A long orange extension cord, with a plug on one end and a socket on the other."
It is pluggable. It is plug-into-able.

The electrical outlet is scenery. "A standard electrical outlet, set into the wall[if the extension cord is plugged into the electrical outlet and the player encloses the extension cord]. The extension cord is plugged into it[otherwise if the extension cord is plugged into the electrical outlet]. An extension cord is plugged into it[end if]." 
Understand "wall/power/electric/point/mains/GPO/socket" as the electrical outlet.
It is plug-into-able.
The snarky remark of the electrical outlet is "This mission is making me wish I had a fork."

The plug-end is a thing. It is pluggable. It is privately-named. The printed name is "plug end of the extension cord". Understand "plug/end/of/the/extension/cord" as the plug-end. The indefinite article of the plug-end is "the". 
The socket-end is a thing. It is plug-into-able. It is privately-named. The printed name is "socket end of the extension cord". Understand "socket/end/of/the/extension/cord" as the socket-end. The indefinite article of the socket-end is "the". 

Does the player mean unplugging the plug-end:
	if the plug-end is plugged into the electrical outlet:
		it is very likely;

Does the player mean plugging something into the plug-end:
	it is very unlikely;

Does the player mean plugging the socket-end into something:
	it is very unlikely;

Does the player mean unplugging something pluggable:
	it is very likely;

Before printing the locale description:
	if the player encloses the plug-end and the socket-end is not enclosed by the location:
		let dir be the best route from the location to the location of the socket-end;
		say "The extension cord you are carrying[trailing text from the location to the location of the socket-end].[paragraph break]";
	otherwise if the player encloses the socket-end and the plug-end is not enclosed by the location:
		let dir be the best route from the location to the location of the plug-end;
		say "The extension cord you are carrying[trailing text from the location to the location of the plug-end].[paragraph break]";

Rule for writing a paragraph about the extension cord:
	say "An extension cord lies on the [if the location is indoors]floor[otherwise]ground[end if]";
	if the extension cord is plugged into the extension cord:
		say ", one end plugged into the other";
	otherwise:
		if something (called the plug) is plugged into the extension cord and something (called the socket) accepts the extension cord:
			say ", [the plug] plugged into one end and the other end plugged into [the socket]";
		otherwise if something (called the plug) is plugged into the extension cord:
			say ", [the plug] plugged into one end";
		otherwise if something (called the socket) accepts the extension cord:
			say ", one end plugged into [the socket]";
	say ".";

Rule for writing a paragraph about plug-end:	
	if the plug-end is in the location:
		say "An extension cord lies on the [if the location is indoors]floor[otherwise]ground[end if]";
	otherwise:
		let holder be the holder of the plug-end;
		if holder is a supporter:
			say "An extension cord lies on [the holder of the extension cord]";
		otherwise:
			say "An extension cord is in [the holder of the extension cord]";
	if something (called the socket) accepts the plug-end:
		say ", one end plugged into [the socket]";
		let holder be the holder of the plug-end;
		if the holder is the player:
			say " we are holding";
		otherwise if the holder is enclosed by the player:
			say " inside [the holder][we] [are] carrying";
		otherwise if holder is a supporter:
			say " on [the holder of the plug-end]";
		otherwise if holder is a container:
			say " in [the holder of the plug-end]"; 
	if the player encloses the socket-end:
		if the player carries the socket-end:
			say ". The other end is in [our] hand.";
		otherwise:
			say ". The other end is in [the holder of the socket-end] [we] [are] carrying.";
	otherwise:	
		if the holder of the socket-end is enclosed by the location:
			say ". The other end is in [the holder of the socket-end].";
		otherwise:
			say ". The other end[trailing text from the location to the location of the holder of the socket-end].";

To say trailing text from (A - a room) to (B - a room):
	if A is First Utilitarian Church of Enigma Lake:
		if B is the vestry:
			say " trails east into the vestry";
		otherwise if B is the steeple:
			say " trails up into the steeple";
		otherwise if B is Lake Street by the park:
			say " trails west out of the church";
	otherwise if A is the vestry:
		if B is First Utilitarian Church of Enigma Lake:
			say " trails west into the church";
	otherwise if A is the steeple:
		if B is First Utilitarian Church of Enigma Lake:
			say " trails down into the church";
	otherwise if A is Lake Street by the park:
		if B is First Utilitarian Church of Enigma Lake:
			say " trails east into the church";
	otherwise if A is the church basement:
		if B is First Utilitarian Church of Enigma Lake:
			say " trails up into the church";

Rule for writing a paragraph about socket-end:
	if the socket-end is in the location:
		say "An extension cord lies on the [if the location is indoors]floor[otherwise]ground[end if]";
	otherwise:
		let holder be the holder of the socket-end;
		if holder is a supporter:
			say "An extension cord lies on [the holder of the extension cord]";
		otherwise:
			say "An extension cord is in [the holder of the extension cord]";
	if something (called the plug) is plugged into the socket-end:
		say ", [the plug] plugged into one end";
		let holder be the holder of the socket-end;
		if the holder is the player:
			say " we are holding";
		otherwise if the holder is enclosed by the player:
			say " inside [the holder][we] [are] carrying";
		otherwise if holder is a supporter:
			say " on [the holder of the socket-end]";
		otherwise if holder is a container:
			say " in [the holder of the socket-end]"; 
	if the player encloses the plug-end:
		if the player carries the plug-end:
			say ". The other end is in [our] hand.";
		otherwise:
			say ". The other end is in [the holder of the plug-end] [we] [are] carrying.";
	otherwise:	
		if the holder of the plug-end is enclosed by the location:
			say ". The other end is in [the holder of the plug-end]."; 
		otherwise:
			say ". The other end[trailing text from the location to the location of the holder of the plug-end].";

Rule for writing a paragraph about the extension cord:
	set the locale priority of the extension cord to 0;

Book - Definitions

test recall with "gonear pulpit/purloin orange extension cord/purloin table lamp/purloin recall button/plug cord in/plug lamp into cord".

Definition: a thing is immobile:
	if it is fixed in place, yes;
	if it is plugged into the electrical outlet, yes;
	if it is plugged into the socket-end and the plug-end is plugged into the electrical outlet, yes;
	if it is the socket-end and the plug-end is plugged into the electrical outlet, yes;

Definition: a thing is mobile if it is not immobile.

Definition: the extension cord is separated if the plug-end is somewhere.

Definition: the extension cord is whole if it is not separated.

Book - Working with the extension cord

To transfer connections:
	if the extension cord is plugged into the extension cord:
		now the plug-end is plugged into the socket-end;
		now the extension cord is not plugged into the extension cord;
	otherwise:
		if the extension cord is plugged into something (called the socket):
			now the plug-end is plugged into the socket;
			now the extension cord is not plugged into the socket;
		if the extension cord accepts something (called the plug):
			now plug is plugged into the socket-end;
			now plug is not plugged into the extension cord;

To transfer connections backwards:
	if the plug-end is plugged into the socket-end:
		now the extension cord is plugged into the extension cord;
		now the plug-end is not plugged into the socket-end;
	otherwise:
		if the plug-end is plugged into something (called the socket):
			now the extension cord is plugged into the socket;
			now the plug-end is not plugged into the socket;
		if the socket-end accepts something (called the plug):
			now the plug is not plugged into the socket-end;
			now plug is plugged into the extension cord;

To separate the extension cord:
	if the extension cord is carried by the player:
		transfer connections;
		now the player carries the plug-end;
		now the player carries the socket-end;
		remove the extension cord from play;
	otherwise if the extension cord is somewhere:
		transfer connections;
		now the plug-end is in the holder of the extension cord;
		now the socket-end is in the holder of the extension cord;
		remove the extension cord from play;

To maybe separate the extension cord:
	if the extension cord is somewhere:
		separate the extension cord;

To condense the extension cord:
	dbg "condensing: plug-end is at [the holder of the plug-end], socket-end is at [the holder of the socket-end][line break]";
	if the holder of the plug-end is the holder of the socket-end:
		now the extension cord is in the holder of the plug-end;
		now the plug-end is nowhere;
		now the socket-end is nowhere;
		transfer connections backwards;
	otherwise:
		say ">>> BUG <<<: Attempt to condense extension cord when ends are in different locations.";

To maybe condense the extension cord:
	if the plug-end is somewhere and the holder of the plug-end is the holder of the socket-end:
		condense the extension cord;

Instead of plugging the extension cord into something when the second noun is not the extension cord:
	separate the extension cord;
	set pronouns from the socket-end;
	try plugging the plug-end into the second noun;
	maybe condense the extension cord;

Instead of unplugging the extension cord:
	separate the extension cord;
	set pronouns from the plug-end;
	try unplugging the plug-end;
	maybe condense the extension cord;

Instead of plugging something into the extension cord when the noun is not the extension cord:
	separate the extension cord;
	set pronouns from the plug-end;
	try plugging the noun into the socket-end;
	maybe condense the extension cord;

Instead of dropping the extension cord:
	separate the extension cord;
	silently try dropping the plug-end;
	silently try dropping the socket-end;
	maybe condense the extension cord;
	puts "[text of standard report dropping rule response (A)][line break]";

Instead of taking the extension cord:
	separate the extension cord;
	if the plug-end is immobile and the socket-end is immobile:
		dbg "All immobile.";
		silently try unplugging the plug-end;
		if something (called the plug) is plugged into the socket-end:
			silently try unplugging the plug;
	silently try taking the plug-end;
	silently try taking the socket-end;
	maybe condense the extension cord;
	puts "[text of standard report taking rule response (A)][line break]";

Instead of inserting the extension cord into something:
	if the extension cord is not carried by the player:
		say "[text of standard implicit taking rule response (A)]";
		silently try taking the extension cord;
	maybe separate the extension cord;
	if the player carries the plug-end:
		silently try inserting the plug-end into the second noun;
	if the player carries the socket-end:
		silently try inserting the socket-end into the second noun;
	maybe condense the extension cord;
	puts "[text of standard report inserting rule response (A)][line break]";

Instead of mounting the extension cord on something:
	separate the extension cord;
	try mounting the plug-end on the noun;
	try mounting the socket-end on the noun;
	maybe condense the extension cord;

After dropping something when the noun accepts the extension cord and the noun is not the extension cord:
	separate the extension cord;
	now the plug-end is in the location;
	maybe condense the extension cord;
	continue the action;

After taking something when the extension cord is plugged into the noun and the noun is not the extension cord:
	separate the extension cord;
	now the player carries the plug-end;
	maybe condense the extension cord;
	continue the action;
	
Check closing something when the plug-end is enclosed by the noun:
	if the socket-end is not enclosed by the noun:
		say "You can't close that when the extension cord is half in it." instead;

Check closing something when the socket-end is enclosed by the noun:
	if the plug-end is not enclosed by the noun:
		say "You can't close that when the extension cord is half in it." instead;

Book - Working with the plug-end

After plugging the plug-end into something:
	now the plug-end is in the holder of the second noun;
	maybe condense the extension cord;
	continue the action;

After dropping something when the noun accepts the plug-end and the noun is not the socket-end:
	now the plug-end is in the location;
	maybe condense the extension cord;
	continue the action;

After taking something when the plug-end is plugged into the noun:
	now the player carries the plug-end;
	maybe condense the extension cord;
	continue the action;

After inserting something into something when the noun accepts the plug-end:
	now the plug-end is in second noun;
	maybe condense the extension cord;
	continue the action;

After mounting something on something when the noun accepts the plug-end:
	now the plug-end is in second noun;
	maybe condense the extension cord;
	continue the action;

After dropping the plug-end:
	if something (called the socket) accepts the plug-end:
		if the socket is not the socket-end:
			now the socket is in the location;
			maybe condense the extension cord;
	continue the action;


Instead of taking the plug-end:
	if the plug-end is plugged into something immobile (called the socket):
		puts "[We] can't take the plug end while it's plugged into [the socket].[line break]";
		stop the action;
	otherwise if the plug-end is plugged into something (called the socket) and the socket is not the socket-end:
		say "(also taking [the socket])[command clarification break]";
		now the player carries the socket;
	now the player carries the plug-end;
	puts "[text of standard report taking rule response (A)][line break]";
	maybe condense the extension cord;

After inserting the plug-end into something:
	maybe condense the extension cord;
	continue the action;

After dropping the plug-end:
	maybe condense the extension cord;
	continue the action;

[ After taking something when the plug-end is plugged into the noun:
	now the player carries the plug-end;

Instead of unplugging the plug-end:
	if something (called the socket) accepts the plug-end:
		puts "[We] [unplug] the extension cord from [the socket], holding onto the plug end.";
		dbg "A.";
		now the plug-end is not plugged into the socket;
		dbg "B.";
		now the player carries the plug-end;
		dbg "C.";
		if the player encloses the socket-end:
			dbg "D.";
			dbg "condense.";
			condense the extension cord;
			dbg "E.";
			set pronouns from extension cord;
	otherwise:
		dbg "F.";
		puts "The extension cord is not plugged into anything.";
	dbg "G.";

Check taking the plug-end when something (called the socket) accepts the plug-end:
	if the socket is fixed in place:
		try unplugging the plug-end;
		if the plug-end is plugged into the socket:
			stop the action;
		if the player carries the plug-end or the player carries the extension cord:
			stop the action;
	otherwise:
		say "(also taking [the socket])[command clarification break]";
		silently try taking the socket;

After dropping something when the socket-end accepts the noun:
	now the socket-end is in the location;

After inserting something into something when the socket-end accepts the noun:
	now the socket-end is in the location;	

After mounting the makeshift astral resonator on the tripod when the socket-end accepts the makeshift astral resonator:
	now the socket-end is in the location;

After taking something when the socket-end accepts the noun:
	now the player carries the socket-end;

After taking the plug-end when the player encloses the socket-end:
	if the socket-end accepts something (called the plug):
		now plug is plugged into the extension cord;
	if the plug-end is plugged into something (called the socket):
		now the extension cord is plugged into the socket;
	now the player carries the extension cord;
	now the socket-end is nowhere;
	now the plug-end is nowhere;
	continue the action.

After taking the socket-end when the player encloses the plug-end:
	if the socket-end accepts something (called the plug):
		now plug is plugged into the extension cord;
	if the plug-end is plugged into something (called the socket):
		now the extension cord is plugged into the socket;
	now the player carries the extension cord;
	now the socket-end is nowhere;
	now the plug-end is nowhere;
	continue the action.

Before plugging the plug-end into something:
	if the holder of second noun is not the holder of the plug-end:
		let the holder be the holder of the second noun;
		if the holder is the player:
			say "(first taking the plug end of the extension cord)[command clarification break]";
			silently try taking the plug-end;
			if the plug-end is not carried by the player:
				stop the action;
		otherwise if the holder is the location:
			say "(also dropping the plug end of the extension cord)[command clarification break]";
			silently try dropping the plug-end;
			if the plug-end is not in the location:
				stop the action;
		otherwise if the holder is a supporter:
			say "(also putting the plug end of the extension cord on [the holder])[command clarification break]";
			silently try putting the plug-end on the holder;
			if the plug-end is not on the holder:
				stop the action;
		otherwise if the holder is a container:
			say "(also putting the plug end of the extension cord in [the holder])[command clarification break]";
			silently try inserting the plug-end into the holder;
			if the plug-end is not in the holder:
				stop the action;

After plugging the plug-end into something:
	if the holder of the plug-end is the holder of the socket-end:
		condense the extension cord;
		set pronouns from the extension cord;
	continue the action; ]

Description notes for the plug-end:
	if the plug-end is enclosed by the player:
		if the socket-end accepts something (called the plug) and the plug is visible:
			add "with [the plug] plugged into the other end" to descriptive notes;
		otherwise:
			if the holder of the socket-end is the location:
				add "with the other end on the [if the location is indoors]floor[otherwise]ground" to descriptive notes;
			otherwise if the socket-end is not enclosed by the location:
				let dir be the best route from the location to the location of the socket-end;
				add "with the other end trailing [dir] into [the location of the holder of the socket-end]" to descriptive notes;
			otherwise:
				if the player carries the socket-end:
					add "with the other end in [our] hand" to descriptive notes;
				otherwise:
					add "with the other end in [the holder of the socket-end]" to descriptive notes;

Description notes for the socket-end:
	if the plug-end is plugged into something (called the socket) and the socket is visible:
		add "with the other end plugged into [the socket]" to descriptive notes;
	otherwise:
		if the holder of the plug-end is the location:
			add "with the other end on the [if the location is indoors]floor[otherwise]ground" to descriptive notes;
		otherwise if the plug-end is not enclosed by the location:
			let dir be the best route from the location to the location of the plug-end;
			add "with the other end trailing [dir] into [the location of the holder of the plug-end]" to descriptive notes;
		otherwise:
			if the player carries the plug-end:
				add "with the other end in [our] hand" to descriptive notes;
			otherwise:
				add "with the other end in [the holder of the plug-end]" to descriptive notes;

[ Description notes for the socket-end:
	if the location is the First Utilitarian Church of Enigma Lake:
		if the plug-end is in the location:
			if the plug-end is plugged into something (called the socket):
				add "with the other end plugged into [the socket]" to descriptive notes;
			otherwise:
				add "with the other end on the floor" to descriptive notes;
		otherwise if the plug-end is in the vestry:
			add "with the other end trailing east into the vestry" to descriptive notes;
		otherwise if the plug-end is in the steeple:
			add "with the other end trailing up into the steeple" to descriptive notes;
	otherwise if the location is the vestry:
		if the plug-end is in First Utilitarian Church of Enigma Lake:
			add "with the other end trailing west into the church" to descriptive notes;
	otherwise if the location is the steeple:
		if the plug-end is in First Utilitarian Church of Enigma Lake:
			add "with the other end trailing down into the church" to descriptive notes; ]

Book - Working with the socket-end

After plugging something into the socket-end:
	now socket-end is in the holder of the noun;
	maybe condense the extension cord;
	continue the action;

After dropping something when the noun is plugged into the socket-end and the noun is not the plug-end:
	now the socket-end is in the location;
	maybe condense the extension cord;
	continue the action;

After taking something when the socket-end accepts the noun:
	now the player carries the socket-end;
	maybe condense the extension cord;
	continue the action;

After inserting something into something when the noun is plugged into the socket-end:
	now the socket-end is in the second noun;	
	maybe condense the extension cord;
	continue the action;

After mounting something on something when the noun is plugged into the socket-end:
	now the socket-end is in the second noun;
	maybe condense the extension cord;
	continue the action;

After dropping the socket-end:
	if something (called the plug) is plugged into the socket-end:
		if the plug is not the plug-end:
			now the plug is in the location;
			maybe condense the extension cord;
	continue the action;

Instead of taking the socket-end:
	if the socket-end accepts something immobile (called the plug):
		puts "We can't take the socket end while it's plugged into [the plug].";
		stop the action;
	otherwise if the socket-end accepts something (called the plug) and the plug is not the plug-end:
		say "(also taking [the plug])[command clarification break]";
		now the player carries the plug;
	now the player carries the socket-end;
	puts "[text of standard report taking rule response (A)][line break]";
	maybe condense the extension cord;

After inserting the socket-end into something:
	maybe condense the extension cord;
	continue the action;

After dropping the socket-end:
	maybe condense the extension cord;
	continue the action;

[ After plugging something into the socket-end:
	now the noun is in the holder of the socket-end; ]

[ Before plugging the something into the socket-end:
	if the holder of the noun is not the holder of the socket-end:
		let the holder be the holder of the noun;
		if the holder is the player:
			say "(first taking the socket end of the extension cord)[command clarification break]";
			silently try taking the socket-end;
			if the socket-end is not carried by the player:
				stop the action;
		otherwise if the holder is the location:
			say "(also dropping the socket end of the extension cord)[command clarification break]";
			silently try dropping the socket-end;
			if the socket-end is not in the location:
				stop the action;
		otherwise if the holder is a supporter:
			say "(also putting the socket end of the extension cord on [the holder])[command clarification break]";
			silently try putting the socket-end on the holder;
			if the socket-end is not on the holder:
				stop the action;
		otherwise if the holder is a container:
			say "(also putting the socket end of the extension cord in [the holder])[command clarification break]";
			silently try inserting the socket-end into the holder;
			if the socket-end is not in the holder:
				stop the action;

After plugging something into the socket-end:
	if the holder of the plug-end is the holder of the socket-end:
		condense the extension cord;
		set pronouns from the extension cord;
	continue the action; ]

Book - Movement Restrictions

Check going when the player encloses the plug-end and the player does not enclose the socket-end:
	if the socket-end is not in the location and the socket-end is not in the room gone to:
		say "The extension cord doesn't reach that far." instead;

Check going when the player encloses the socket-end and the player does not enclose the plug-end:
	if the plug-end is not in the location and the plug-end is not in the room gone to:
		say "The extension cord doesn't reach that far." instead;

Book - Not for Release

The test room 1 is a room. "This room is where the testing happens."
Test Room 2 is west of the test room 1. "This is the second test room."

The receptacle is in the test room. It is plug-into-able.
The dongle is in the test room. It is pluggable.
The big machine is in the test room. It is pluggable. It is fixed in place.
The red socket is in the test room. It is plug-into-able. It is fixed in place.
The table is a supporter in the test room. 
The basket is an open container in the test room.

testing cord is an action applying to nothing. Understand "testcord" as testing cord.
Carry out testing cord:
	now the extension cord is in the test room;
	now the player carries the backpack;
	now the player is in the test room;


test cord with "gonear pulpit/purloin orange extension cord/purloin wooden object/drop cord/drop object/plug it into cord".
test outlet with "gonear pulpit/purloin orange extension cord/drop cord/plug it into outlet".

test 1 with "testcord/take cord/plug it into red socket/plug machine into it";

Extension Cord ends here.