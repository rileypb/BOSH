Boss Battle by Philip Riley begins here.

Use authorial modesty.

Volume - Tracking the action

The Boss Battle is a scene. The Boss Battle begins when the player is in the old root cellar. The Boss Battle ends when the group of lizard people is not in the old root cellar.

player action is a kind of value. The player actions are player-attacking, player-defending, player-idling, and player-distracted.

enemy action is a kind of value. The enemy actions are enemy-attacking, enemy-defending, enemy-idling, enemy-shouting, enemy-breathing, enemy-turning-to-face-us, and enemy-distracted.

daniels action is a kind of value. The daniels actions are daniels-attacking, daniels-defending, daniels-idling, daniels-shouting, and daniels-distracted.

current player action is a player action that varies. current player object is an object that varies. current player target is an object that varies.
current enemy action is an enemy action that varies. current enemy object is an object that varies. current enemy target is an object that varies.
current daniels action is a daniels action that varies. current daniels object is an object that varies. current daniels target is an object that varies.

enemy facing is a kind of value. The enemy facings are lizard people facing us, and lizard people facing away.

battle turn is a number that varies. 

Volume - The characters

faraji health is a number that varies.
lizard people health is a number that varies.

Volume - Display

Rule for constructing the status line during the Boss Battle:
	deepen status line to 2 rows;
	center "<<< BOSS BATTLE! >>>" at row 1;
	move cursor to 2;
	say "Faraji Health: ";
	repeat with N running from 1 to faraji health:
		say "[unicode 9829]";
	right align cursor to 2;
	say "Lizard Health: ";
	repeat with N running from 1 to lizard people health:
		say "[unicode 9829]";

Volume - The weapons

A root-vegetable is a kind of thing. 
A root-vegetable can be out of reach or within-reach. A root-vegetable is usually within-reach.
A turnip is a kind of root-vegetable. A potato is a kind of root-vegetable.
A rutabaga is a root-vegetables.
There are 100 turnips. There are 100 potatoes.
dummy-potato is in the Room of Stuff. It is undescribed. It is privately-named. The printed name is "potato". The description is "A large potato, like a russet." Understand "potato" as dummy-potato.
dummy-turnip is in the Room of Stuff. It is undescribed. It is privately-named. The printed name is "turnip". The description is "A hefty purple and white turnip." Understand "turnip" as dummy-turnip.

The description of the turnip is "A hefty purple and white turnip."

The description of the potato is "A large potato, like a russet."

The description of the rutabaga is "A weighty rutabaga."

Instead of eating a root-vegetable:
	say "Uncooked, [the noun] is not very appetizing.";

A red woven basket is a closed openable scenery container. It is in the old root cellar. The description of the woven basket is "A sturdy red woven basket, with a lid."

Instead of examining the red woven basket when the red woven basket is open:
	say "The red woven basket is filled with potatoes.";

After deciding the scope of the player while taking when the red woven basket is open:
	place the dummy-potato in scope;
	
Instead of taking the dummy-potato:
	let P be a random potato in no room;
	now P is in the red woven basket;
	try taking P;

A blue woven basket is a closed openable scenery container. It is in the old root cellar. The description of the blue woven basket is "A sturdy blue woven basket, with a lid."

Instead of examining the blue woven basket when the blue woven basket is open:
	say "The blue woven basket is filled with turnips.";

After deciding the scope of the player while taking when the blue woven basket is open:
	place the dummy-turnip in scope;

Instead of taking the dummy-turnip:
	let T be a random turnip in no room;
	now T is in the blue woven basket;
	try taking T;
	
[ The rutabaga and the turnip are in the woven basket.  ]
[ Daniels carries the potato. ]

Volume - The player's actions

Before:
	now current player action is player-distracted;
	now current player object is nothing;
	now current player target is nothing;
	now current enemy action is enemy-distracted;
	now current enemy object is nothing;
	now current enemy target is nothing;
	now current daniels action is daniels-distracted;
	now current daniels object is nothing;
	now current daniels target is nothing;

Instead of attacking the group of lizard people with something during the Boss Battle:
	say "Faraji doesn't want to get close enough for that.";
	now current player action is player-distracted;

Instead of attacking the group of lizard people during the Boss Battle:
	say "Faraji doesn't want to get close enough for that.";
	now current player action is player-distracted;

Instead of throwing something at the group of lizard people during the Boss Battle:
	now current player action is player-attacking;
	now current player object is the noun;
	now current player target is the group of lizard people;

Instead of defending during the Boss Battle:
	now current player action is player-defending;

After waiting during the Boss Battle:
	now current player action is player-idling;

Every turn during the Boss Battle:
	say "Faraji is [current player action].";

Volume - The enemy's actions

Every turn during the Boss Battle:
	[ choose an enemy action for the lizard people ]
	[ every ten turns, the lizard people will breathe noxious vapor ]
	[ if there is a root vegetable on the ground, there is a chance the lizards will take it. This counts as being distracted. ]
	[ if the lizard people are facing away, there is a chance they will turn around. ]
	[ if the lizard people are facing us and holding a root vegetable, they will attack. ]
	[ there is a chance they will shout an insult. ]
	[ if the lizard people are facing us, there is a chance they will defend. ]
	[ otherwise they will idle. ]
	if the remainder after dividing the battle turn by 10 is 0:
		now current enemy action is enemy-breathing;
	otherwise if enemy facing is lizard people facing away and a random chance of 2 in 5 succeeds:
		now current enemy action is enemy-turning-to-face-us;
	otherwise if enemy facing is lizard people facing us and the lizard people are holding a root-vegetable:
		now current enemy action is enemy-attacking;
		now current enemy object is a random root-vegetable carried by the lizard people;
		now current enemy target is the player;
	otherwise if a random chance of 1 in 3 succeeds:
		now current enemy action is enemy-shouting;
	otherwise if a random chance of 1 in 3 succeeds:
		now current enemy action is enemy-defending;
	otherwise:
		now current enemy action is enemy-idling;
	say "The lizard people are [current enemy action].";


Volume - Daniels' actions

[ Every turn during the Boss Battle: ]
	[ choose an action for Daniels ]
	[ every 2-5 turns, Daniels will shout an insult at the lizard people ]
	[ if Daniels is holding a root vegetable, he will throw it at the lizard people ]
	[ if a root vegetable is on the ground, there is a chance Daniels will pick it up. This counts as being distracted. ]
	if a random chance of 2 in 5 succeeds:
		now current daniels action is daniels-shouting;
	otherwise if Daniels is holding a root-vegetable:
		now current daniels action is daniels-attacking;
		now current daniels object is a random root-vegetable carried by Daniels;
		now current daniels target is the group of lizard people;
	otherwise if there is a root-vegetable in the location and a random chance of 2 in 3 succeeds:
		now current daniels action is daniels-taking;
		now current daniels object is a random root-vegetable in the location;
		now current daniels target is nothing;
	otherwise:
		now current daniels action is daniels-idling;
	say "Daniels is [current daniels action].";

Volume - Resolving the turn

Last every turn during Boss Battle:
	increment battle turn;

Volume - Doing stuff

To hit faraji:
	decrement faraji health;
	if faraji health is 0:
		say "[line break][bold type]Faraji collapses, defeated.[roman type][line break]";
		say "[fixed letter spacing]";
		center "<<< FARAJI IS DEFEATED! >>>";
		say "[variable letter spacing]";
		say "[paragraph break]Oh no! This doesn't seem to have gone as planned. Let's see if we can get a better outcome.";
		now the player is in the circular chamber;
		now the old root cellar is unvisited;
		now the current interlocutor is nothing;
	otherwise:
		say "[line break][bold type]Faraji takes a hit! Health: [faraji health] heart[s] remaining[roman type].";

To hit lizard people:
	decrement lizard people health;
	if lizard people health is 0:
		say "[bold type]The lizard people decide they've taken enough of a beating.[roman type] The chamber fills with a white vapor, and when it clears, they are nowhere to be seen.";
		say "[fixed letter spacing]";
		center "<<< FARAJI IS VICTORIOUS! >>>";
		say "[variable letter spacing]";		 
		banish the lizard people for good;
		queue Daniels with Doris sent me;
		now the current interlocutor is Daniels;
	otherwise:
		say "[line break][bold type]The lizard people take a hit! Health: [lizard people health] heart[s] remaining[roman type].";

Volume - Setup

To initialize the boss battle:
	now faraji health is 3;
	now lizard people health is 10;
	now right alignment depth is 26;
	now battle turn is 1;
	let P be a random potato;
	now Daniels carries P;
	repeat with X running through the potatoes that are not P:
		now X is nowhere;
	repeat with X running through potatoes:
		now X is within-reach;
		now X is familiar;
	repeat with X running through the turnips:
		now X is within-reach;
		now X is nowhere;
		now X is familiar;
	now the rutabaga is within-reach;
	[ now the rutabaga is in the woven basket; ]
	now the red woven basket is closed;
	now the blue woven basket is closed;
	now enemy facing is lizard people facing us;
	now turn countdown is 0;
	now notable Daniels event this turn is false;
	now notable lizard event this turn is false;
	now Daniels is familiar;
	now rutabaga is familiar;
	now red woven basket is familiar;
	now blue woven basket is familiar;
	now root vegetables are familiar;



Boss Battle ends here.