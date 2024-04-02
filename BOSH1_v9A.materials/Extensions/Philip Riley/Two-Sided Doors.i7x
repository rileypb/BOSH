Two-Sided Doors by Philip Riley begins here.

Use authorial modesty.

[Include Locksmith by Emily Short;]

Include PBR Common by Philip Riley.

Volume 1 - Definitions

A two-sided door is a kind of door.
A two-sided door is lockable. 
A two-sided door is openable.

A two-sided door has a room called the frontside.
A two-sided door can be front-locked.
A two-sided door can be back-locked.


A two-sided door can be front-openable.
A two-sided door can be back-openable.
A two-sided door is usually front-openable and back-openable.
A two-sided door can be front-closable.
A two-sided door can be back-closable.
A two-sided door is usually front-closable and back-closable.

A two-sided door can be front-locks-the-back.
A two-sided door can be front-locks-the-front.
A two-sided door can be back-locks-the-back.
A two-sided door can be back-locks-the-front.
A two-sided door can be close-lock-the-back.
A two-sided door can be close-lock-the-front.
A two-sided door can be autolock-the-back.
A two-sided door can be autolock-the-front.

A two-sided door can be auto-closable. A two-sided door has a number called close delay.
A two-sided door can be time-locked. A two-sided door has a number called the time lock delay.

A two-sided door has a text called front description.
A two-sided door has a text called back description.

A door description policy is a kind of value. The plural of door description policy is door description policies. The door description policies are describe-always, only open, and never.

A two-sided door has a door description policy called description policy.

To decide which room is the backside of (D - a door):
	decide on the other side of D from the frontside of D;
	
Definition: a two-sided door is effectively locked if (the location of the player is the frontside of it and it is front-locked) or (the location of the player is the backside of it and it is back-locked).

To decide whether (D - a two-sided door) is locked for (actor - a thing):
	decide on whether or not (the location of the actor is the frontside of D and D is front-locked) or (the location of the actor is the backside of D and D is back-locked).

Side is a kind of value. The sides are front and xback.

To decide what side is the closest side of (D - a door) to (actor - a thing):
	if location of the actor is backside of D:
		decide on xback;
	decide on front;
	
Volume 2 - Descriptions

Definition: a two-sided door is describable if the description policy of it is describe-always or (it is open and the description policy of it is only open).

Rule for writing a paragraph about a two-sided door (called D) when D is describable:
	say "[The D] is [if D is closed]closed[otherwise]open[end if].";

Rule for writing a paragraph about a two-sided door (called D) when D is not describable:
	set locale priority of D to 0;

Volume 3 - Rules altered from the Standard Rules

Book 1 - Examining

Carry out examining (this is the examine two-sided doors rule):
	if the noun is a two-sided door:
		if the location is the frontside of the noun:
			if the front description of the noun is not "":
				say "[front description of the noun][line break]";
				now examine text printed is true;
				continue the action;
		if the location is the backside of the noun:
			if the back description of the noun is not "":
				say "[back description of the noun][line break]";
				now examine text printed is true;
				continue the action;
		say "[text of the examine undescribed things rule response (A)][line break]";
			
The standard examining rule does nothing when the noun is a two-sided door.
The examine undescribed things rule does nothing when the noun is a two-sided door.

Book 2 - Locking

Check an actor locking a two-sided door with (this is the can't lock a two-sided door without a lock rule):
	if the location of the actor is the frontside of the noun and (the noun is front-locks-the-back or the noun is front-locks-the-front):
		continue the action;
	if the location of the actor is the backside of the noun and (the noun is back-locks-the-back or the noun is back-locks-the-front):
		continue the action;
	if the actor is the player:
		say "[regarding the noun][Those] [don't] seem to be something [we] [can] lock." (A);
	stop the action.

Check an actor locking a two-sided door with (this is the can't lock a two-sided door that's already
	locked rule):
	say "A: [the noun]; [the actor].";
	if the noun is locked for actor:
		say "B.";
		if the actor is the player:
			say "C.";
			say "[regarding the noun][They're] locked at the [if story tense is present
				tense]moment[otherwise]time[end if]." (A);
		stop the action.

Carry out an actor locking a two-sided door with (this is the standard two-sided door locking rule):
	if location of the actor  is the frontside of the noun:
		if noun is front-locks-the-front:
			now the noun is front-locked;
		if noun is front-locks-the-back:
			now the noun is back-locked;
	otherwise:
		if noun is back-locks-the-front:
			now the noun is front-locked;
		if noun is back-locks-the-back:
			now the noun is back-locked;	
			
The standard locking rule does nothing when the noun is a two-sided door.
			
Book 3 - Unlocking

Section 1 - Message Rules

The can't unlock without a lock description rules is a two-sided door based rulebook producing texts.

Can't unlock without a lock description of a two-sided door (called TSD) (this is the standard can't unlock without a lock description rule):
	rule succeeds with result "[regarding TSD][Those] [don't] seem to be something [we] [can] unlock." (A);
	
To decide what text is can't unlock without a lock description for (TSD - a two-sided door):
	decide on the text produced by the can't unlock without a lock description rules for TSD;

The can't unlock already unlocked description rules is a two-sided door based rulebook producing texts.

Can't unlock already unlocked description of a two-sided door (called TSD) (this is the standard can't unlock already unlocked description rule):
	rule succeeds with result "[regarding the noun][They're] unlocked at the [if story tense is present
				tense]moment[otherwise]time[end if]." (A);
	
To decide what text is can't unlock already unlocked description for (TSD - a two-sided door):
	decide on the text produced by the can't unlock already unlocked description rules for TSD;

Section 2 - Action Rules

Carry out an actor unlocking a time-locked two-sided door with (this is the start lock countdown rule):
	now the lock countdown of the noun is the time lock delay of the noun;	

Check an actor unlocking a two-sided door with (this is the can't unlock a two-sided door without a lock rule):
	if the location of the actor is the frontside of the noun and (the noun is front-locks-the-back or the noun is front-locks-the-front):
		continue the action;
	if the location of the actor is the backside of the noun and (the noun is back-locks-the-back or the noun is back-locks-the-front):
		continue the action;
	if the actor is the player:
		say "[can't unlock without a lock description for the noun][line break]";
	stop the action.
	
Carry out an actor unlocking a two-sided door with (this is the standard two-sided door unlocking rule):
	if location of the actor  is the frontside of the noun:
		if noun is front-locks-the-front:
			now the noun is not front-locked;
		if noun is front-locks-the-back:
			now the noun is not back-locked;
	otherwise:
		if noun is back-locks-the-front:
			now the noun is not front-locked;
		if noun is back-locks-the-back:
			now the noun is not back-locked;	

Check an actor unlocking a two-sided door with (this is the can't unlock a two-sided door that's already unlocked rule):
	unless the noun is locked for actor:
		if the actor is the player:
			say "[can't unlock already unlocked description for the noun][line break]";
		stop the action.

The can't unlock what's already unlocked rule does nothing when the noun is a two-sided door.
The standard unlocking rule does nothing when the noun is a two-sided door.
the can't unlock without a lock rule does nothing when the noun is a two-sided door.

Book 4 - Opening

Section 1 - Message Rules

Section 2 - Action Rules

Carry out an actor opening an auto-closable two-sided door (this is the start close countdown rule):
	now the close countdown of the noun is the close delay of the noun;

Check an actor opening a two-sided door (this is the can't open a two-sided door unless openable rule):
	if the noun is front-openable and the closest side of the noun to the actor is front:
		continue the action;
	if the noun is back-openable and the closest side of the noun to the actor is xback:
		continue the action;
	if the actor is the player:
		say "[regarding the noun][They] [aren't] something [we] [can] open." (A);
	stop the action.

Check an actor opening a two-sided door  (this is the can't open a two-sided door that's locked rule):
	if the noun is locked for actor:
		if the actor is the player:
			say "[regarding the noun][They] [seem] to be locked." (A);
		stop the action.

Book 5 - Closing

Check an actor closing a two-sided door (this is the can't close a two-sided door unless openable rule):
	if the noun is front-closable and the closest side of the noun to the actor is front:
		continue the action;
	if the noun is back-closable and the closest side of the noun to the actor is xback:
		continue the action;
	if the actor is the player:
		say "[regarding the noun][They] [aren't] something [we] [can] close." (A);
	stop the action.
	
Carry out an actor closing a two-sided door (this is the lock auto-locking two-sided doors rule):
	if the noun is autolock-the-front:
		now the noun is front-locked;
	if the noun is autolock-the-back:
		now the noun is back-locked;
			
Volume 4 - Locking

To lock (TSD - a two-sided door) from the front:
	if TSD is front-locks-the-back:
		now TSD is back-locked;
	if TSD is front-locks-the-front:
		now TSD is front-locked;

To lock (TSD - a two-sided door) from the back:
	if TSD is back-locks-the-back:
		now TSD is back-locked;
	if TSD is back-locks-the-front:
		now TSD is front-locked;

To lock (TSD - a two-sided door) in the front:
	now TSD is front-locked;

To lock (TSD - a two-sided door) in the back:
	now TSD is back-locked;

Book 1 - Auto-locking

A two-sided door has a number called a lock countdown. The lock countdown of a two-sided door is usually -1.

To autolock (TSD - a two-sided door):
	let lock-happened be false;
	if TSD is autolock-the-front:
		if TSD is not front-locked:
			now lock-happened is true;
		lock TSD in the front;
	if TSD is autolock-the-back:
		if TSD is not back-locked:
			now lock-happened is true;
		lock TSD in the back;
	if lock-happened is true and (the location is the frontside of TSD or the location is the backside of TSD):
		say "[The TSD] locks with a click.";

Every turn (this is the autolock countdown rule):
	repeat with TSD running through two-sided doors:
		if TSD is closed:
			if the lock countdown of TSD is 0:
				autolock TSD;
				now the lock countdown of TSD is -1;
			otherwise if the lock countdown of TSD > 0:
				decrement lock countdown of TSD;

Volume 5 - Closing

To close (TSD - a two-sided door):
	now TSD is closed;	
	if TSD is close-lock-the-back:
		lock TSD in the back;
	if TSD is close-lock-the-front:
		lock TSD in the front;

Book 1 - Auto-closing

A two-sided door has a number called an close countdown. The close countdown of a two-sided door is usually -1.

To autoclose (TSD - a two-sided door):
	close TSD;
	if the location of the player is the frontside of TSD or the location of the player is the backside of TSD:
		say "[The TSD] closes.";

Every turn (this is the autoclose countdown rule):
	repeat with TSD running through two-sided doors:
		if the close countdown of TSD is 0:
			autoclose TSD;
			now the close countdown of TSD is -1;
		otherwise if the close countdown of TSD > 0:
			decrement close countdown of TSD;
			
Volume 6 - Initialization Phrases

To locking (D - a door) from the (locking-side - a side) locks the (locked-side - a side):
	if locking-side is front:
		if locked-side is front:
			now D is front-locks-the-front;
			now D is not front-locks-the-back;
		if locked-side is xback:
			now D is front-locks-the-back;
			now D is not front-locks-the-front;
	if locking-side is xback:
		if locked-side is front:
			now D is back-locks-the-front;
			now D is not back-locks-the-back;
		if locked-side is xback:
			now D is back-locks-the-back;
			now D is not back-locks-the-front;
	
To locking (D - a door) from the (locking-side - a side) locks both sides:
	if locking-side is front:
		now D is front-locks-the-front;
		now D is front-locks-the-back;
	if locking-side is xback:
		now D is back-locks-the-front;
		now D is back-locks-the-back;
	
To (D - a door) locks from the (locking side - a side):
	locking the D from the locking side locks both sides;
	
To (D - a door) locks from both sides:
	locking the D from the front locks both sides;
	locking the D from the xback locks both sides;

To (D - a door) opens from the (opening side - a side):
	if opening side is front:
		now D is front-openable;
		now D is not back-openable;
	otherwise:
		now D is back-openable;
		now D is not front-openable;

To (D - a door) opens from both sides:
	now D is front-openable;
	now D is back-openable;
	
To (D - a door) is locked on the (lock-side - a side):
	if lock-side is front:
		now D is front-locked;
		now D is not back-locked;
	otherwise:
		now D is back-locked;
		now D is not front-locked;
	
To (D - a door) is locked on both sides:
	now D is front-locked;
	now D is back-locked;
	
To auto-close (D - a door) with a delay of (N - a number):
	now D is auto-closable;
	now the close delay of D is N;

Two-Sided Doors ends here.
