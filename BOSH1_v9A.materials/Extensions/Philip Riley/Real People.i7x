Real People by Philip Riley begins here.

A behavior is a kind of object.
Doing nothing is a behavior.

A person has a list of behaviors called behavior stack. The behavior stack of a person is usually {doing nothing}.
A person can be activated. A person is usually not activated.

Acting as something is an activity on people.

Every turn (this is the run behavior rule):
	Repeat with P running through people who are not the player:
		carry out the acting as activity with P;

Rule for acting as someone (called P):
	abide by the interruption rules for P;
	carry out the behaving as activity with P;
	[abide by the person behavior rules for P;	]

Interruption is an object-based rulebook producing a truth state.

To decide whether (P - a person) stashed (b - a behavior):
	If b is listed in the behavior stack of P and entry 1 of behavior stack of P is not b:
		decide on true;
	decide on false;

To resume (b - a behavior) for (P - a person):
	while entry 1 of the behavior stack of P is not b:
		follow the termination rules for P;
		remove entry 1 from behavior stack of P;

To clear behavior of (P - a person):
	now the behavior stack of P is {doing nothing};
	
To add behavior (b - a behavior) to (P - a person):
	add b at entry 1 in the behavior stack of P;
	
To remove behavior from (P - a person):
	follow the termination rules for P;
	remove entry 1 from behavior stack of P;
		
Termination is an object-based rulebook.

behaving as something is an activity on people.
[Person Behavior is an object-based rulebook.]
	
To decide whether (P - a person) acts like (b - a behavior):
	decide on whether or not the current behavior of P is b;
	
To decide which behavior is the current behavior of (P - a person):
	if the behavior stack of P is empty:
		decide on doing nothing;
	decide on entry 1 of the behavior stack of P;
	

A person has a room called the target location.

Walking-to is a behavior.

Rule for behaving as a person (called P) when the the current behavior of P is walking-to:
	let D be the best route from the location of P to the target location of P, using doors;
	try P going D;
	if P is in the target location of P:
		clear behavior of P;
	

Real People ends here.
