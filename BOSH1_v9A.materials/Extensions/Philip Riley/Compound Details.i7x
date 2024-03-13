Compound Details by Philip Riley begins here.

[This code by Otis T. Dog]

The item being described is an object that varies. The item being described variable translates into I6 as "parameter_object".

Description notes is a thing based rulebook. The description notes rulebook has a list of texts called descriptive notes.

Description notes for a closed container:
	add "closed" to descriptive notes.

Description notes for a locked container:
	add "locked" to descriptive notes.

Description notes for an open openable container:
	add "open" to descriptive notes.

Description notes for an open container containing no visible thing:
	add "empty" to descriptive notes.

Description notes for a lit thing:
	unless the printing room description details activity is going on and the location is lighted:
		add "providing light" to descriptive notes.

Description notes for a worn thing:
	add "worn" to descriptive notes.

Last description notes:
	if descriptive notes is not empty:
		say " ([descriptive notes])".

For printing room description details of something (called item):
	follow the description notes rules for item.

For printing inventory details of something (called item):
	follow the description notes rules for item.

Compound Details ends here.