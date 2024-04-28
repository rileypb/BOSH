Tutorial by Philip Riley begins here.

Use authorial modesty.

A room has a text called the tutorial message. The tutorial message of a room is usually "".
A thing has a text called the tutorial message. The tutorial message of a thing is usually "".

After examining a thing when the tutorial message of the noun is not "" (this is the thing-tutorial rule):
	say "[tutorial message of the noun].";
	continue the action.

For printing the locale description when the tutorial message of the location is not "" (this is the room-tutorial rule):
	let the domain be the parameter-object;
	if the domain is a room:
		say "[tutorial message of the location].[paragraph break]";
	continue the action.

Tutorial ends here.