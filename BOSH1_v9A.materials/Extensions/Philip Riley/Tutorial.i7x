Tutorial by Philip Riley begins here.

Use authorial modesty.

A room has a text called the tutorial message. The tutorial message of a room is usually "".
A thing has a text called the tutorial message. The tutorial message of a thing is usually "".

After examining a thing when the tutorial message of the noun is not "" (this is the thing-tutorial rule):
	say "[tutorial message of the noun].";
	now the tutorial message of the noun is "";
	continue the action.

After printing the locale description of a room when the tutorial message of the location is not "" (this is the room-tutorial rule):
	let the domain be the parameter-object;
	if the domain is a room:
		say "[tutorial message of the location].[paragraph break]";
		now the tutorial message of the location is "";
	continue the action.

Tutorial ends here.