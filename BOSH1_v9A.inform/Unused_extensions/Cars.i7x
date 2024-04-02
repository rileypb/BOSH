Cars by Philip Riley begins here.

Use authorial modesty.

A car is a kind of thing.

A region has a room called a dropoff point.

drives-to relates one car to various regions. The verb to drive to implies the drives-to relation. The verb to be reached by implies the reversed drives-to relation.

To drive (c - a car) to (r - a region):
	do nothing;
	
Destination validation rules are an object-based rulebook. The destination validation rules have outcomes it is allowed (success) and it is disallowed (failure).

A destination validation rule for a region (called R) (this is the can't drive to where you already stand rule):
	If the location is in R:
		it is disallowed;

A last destination validation rule:
	it is disallowed;

the can't drive to where you already stand rule is listed first in the destination validation rules.

Definition: a region is allowed if it is rule-allowed.

To decide whether (D - a region) is rule-allowed:
	follow the destination validation rules for D;
	decide on whether or not the outcome of the rulebook is the it is allowed outcome;

After looking when a car (called C) is in the location:	
	let destinations be the list of regions reached by C;
	let allowed destinations be the filter to allowed regions of destinations;
	if allowed destinations is not empty:
		say "[italic type]";
		if number of entries of allowed destinations is 1:
			say "[We] can drive to [entry 1 of allowed destinations].";
		otherwise if number of entries of allowed destinations is 2:
			say "[We] can drive to [entry 1 of allowed destinations] or [entry 2 of allowed destinations].";
		otherwise:		
			let last element be entry (number of entries of allowed destinations) of allowed destinations;
			say "[We] can drive to ";
			repeat with D running through allowed destinations:
				if D is not last element:
					say "[D], ";
				otherwise:
					say "or [D].";
	continue the action;

Driving to is an action applying to one thing. Understand "drive to [any region]" or "go to [any region]" as driving to.

Check driving to a region:
	if the noun is not allowed:
		if the location is regionally in the noun:
			say "[We're] already there!" instead;
		otherwise:
			say "[We] can't drive there right now." instead;
		
Printing the driving message for something is an activity.
		
Carry out driving to a region (called R):
	carry out the printing the driving message activity with R;
	let the car being driven be a random car in the location;
	now the car being driven is in the dropoff point of R;
	move the player to the dropoff point of R;
		
The access through barriers rule does nothing when the noun is a region.

Cars ends here.
