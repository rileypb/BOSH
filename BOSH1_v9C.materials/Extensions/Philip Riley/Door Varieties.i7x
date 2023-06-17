Door Varieties by Philip Riley begins here.

Include Two-Sided Doors by Philip Riley

Volume 1 - Pushbar Doors

A pushbar door is a kind of two-sided door. It is lockable.
A pushbar door is front-locks-the-front, front-locks-the-back, and front-locked. 
It is close-lock-the-front.
It is auto-closable. The close delay is 1.
The front description is "A glass door with a lock and a pull handle."
The back description is "A glass door with a pushbar." 

Volume 2 - Shop Doors

A shop-door is a kind of two-sided door. It is lockable.
A shop-door is front-locks-the-front, front-locks-the-back, back-locks-the-front, and back-locks-the-back.
It is auto-closable. The close delay is 0.

Volume 3 - Swipe Doors

A thing can be swipable.

A card key is a kind of swipable thing.

A swipe lock is a kind of thing.

A swipe door is a kind of two-sided door.  It is lockable and openable.
Every swipe door incorporates a swipe lock.

Swiping it through is an action applying to one carried thing and one thing.
Understand "swipe [something] through/in [something]"  as swiping it through.

Check swiping something swipable through a swipe lock:
	if something (called the door) incorporates the second noun:
		try unlocking the door with the noun;

Check swiping something swipable through a swipe door:
	try unlocking the second noun with the noun;

Check an actor unlocking a swipe door with something swipable (this is the can't unlock without the correct card key rule):
	if the holder of the second noun is not the actor or
		the noun does not provide the property matching key or
		the matching key of the noun is not the second noun:
		if the actor is the player:
			say "[regarding the second noun][Those] [don't] seem to be the right card." (A);
		stop the action.

[Rule for refusing keys of a swipe lock (called locked-thing) (this is the swipe lock printing key lack rule):
	say "[We] [lack] a card for [the locked-thing]." (A).

Rule for refusing keys of a swipe door (called locked-thing) (this is the swipe door printing key lack rule):
	say "[We] [lack] a card for [the locked-thing]." (A).]
	
[The standard printing key lack rule does nothing when the noun is a swipe lock.
The standard printing key lack rule does nothing when the noun is a swipe door.]


Door Varieties ends here.
