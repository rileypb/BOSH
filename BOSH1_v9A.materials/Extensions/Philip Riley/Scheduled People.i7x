Scheduled People by Philip Riley begins here.

Use authorial modesty.

[Include Essentials by Philip Riley.]

Book 1 - Schedules

[A person can be scheduled.

A person has a table name called schedule table. The schedule table is usually the Table of Extreme Laziness.
A person can be on-schedule or specially assigned. A person is usually on-schedule.
A person has a room called current goal.


Table of Extreme Laziness
schedule time (time)	goal (room)
--	--

Every turn:
	repeat with P running through scheduled people:
		let T be the schedule table of P;
		Let tod be the time of day;
		If there is a schedule time of tod in T:
			Choose row with schedule time of tod in T;
			Now the current goal of P is the goal entry;
		if P is not in the current goal of P:
			let dir be the best route from location of P to the current goal of P;
			try P going dir;]

Book 2 - Adaptive Names

Adaptive Name Table is a table name that varies. Adaptive Name Table is initially the Table of No Names.

A person can be anonymous, unnamed, or met. A person is usually anonymous.
A person can be adaptively-named.

Rule for printing the name of an adaptively-named person (called P):	
	If there is a named person of P in Adaptive Name Table:
		Choose row with named person of P in Adaptive Name Table;		
		If P is anonymous: 
			say the anonymous description entry;
			if not expanding text for comparison purposes:
				now the indefinite article of P is "the";
		otherwise if P is unnamed:
			say the unnamed description entry;
		otherwise if P is met:
			say the proper name entry;
		otherwise:
			dbg "none of the above.";

Table of No Names
named person (person)	anonymous description (text)	unnamed description (text)	proper name (text)
--	--	--	--


Scheduled People ends here.
