Building Facades by Philip Riley begins here.

Use authorial modesty.

A building facade is a kind of backdrop.

Enterability relates various building facades to various rooms. The verb to be enterable from means the enterability relation.

Fronting relates various building facades to various rooms. The verb to front means the fronting relation.

Instead of entering a building facade (called F):
	if F is enterable from the location:
		let R be a random room fronted by F;
		[find the direction from the location to R]
		let D be the best route from the location to R, using even locked doors;
		if D is a direction:
			try going D;
		otherwise:
			say "You can't enter from here.";
	otherwise:
		say "You can't enter from here.";

A leavable room is a kind of room. A leavable room has a direction called the egress. A leavable room can be unleavable.

Instead of exiting when the location is a leavable room (called R) and the holder of the player is the location:
	if R is unleavable:
		say "It's unclear which direction you mean.";
	otherwise:                                    
		try going the egress of R.

Building Facades ends here.
