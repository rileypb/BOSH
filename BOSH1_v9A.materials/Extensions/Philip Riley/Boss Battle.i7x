Boss Battle by Philip Riley begins here.

Use authorial modesty.

Volume - Tracking the action

The Boss Battle is a scene. The Boss Battle begins when the player is in the old root cellar. The Boss Battle ends when the group of lizard people is not in the old root cellar.

player action is a kind of value. The player actions are player-attacking, player-defending, player-idling, and player-distracted.

enemy action is a kind of value. The enemy actions are enemy-attacking, enemy-defending, enemy-idling, enemy-shouting, enemy-breathing, enemy-turning-to-face-us, and enemy-distracted.

daniels action is a kind of value. The daniels actions are daniels-attacking, daniels-defending, daniels-idling, daniels-shouting, and daniels-distracted.

current player action is a player action that varies. 
current enemy action is an enemy action that varies.
current daniels action is a daniels action that varies.

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
A rutabaga, a turnip, and a potato are root-vegetables.

The description of the turnip is "A hefty purple and white turnip."

The description of the potato is "A large potato, like a russet."

The description of the rutabaga is "A weighty rutabaga."

Instead of eating a root-vegetable:
	say "Uncooked, [the noun] is not very appetizing.";
	
The rutabaga and the turnip are in the woven basket. 
Daniels carries the potato.

Volume - The player's actions

Instead of attacking the group of lizard people with something during the Boss Battle:
	say "Faraji doesn't want to get close enough for that.";

Instead of attacking the group of lizard people during the Boss Battle:
	say "Faraji doesn't want to get close enough for that.";

Instead of throwing something at the group of lizard people during the Boss Battle:
	now current player action is player-attacking;

Instead of defending during the Boss Battle:
	now current player action is player-defending;

After waiting during the Boss Battle:
	now current player action is player-idling;
	say "Faraji waits for the lizard people to make a move.";

After doing something other than waiting during the Boss Battle:
	now current player action is player-distracted;

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
	otherwise if a random chance of 1 in 3 succeeds:
		now current enemy action is enemy-shouting;
	otherwise if a random chance of 1 in 3 succeeds:
		now current enemy action is enemy-defending;
	otherwise:
		now current enemy action is enemy-idling;

Volume - Daniels' actions

Every turn during the Boss Battle:
	[ choose an action for Daniels ]
	[ every 2-5 turns, Daniels will shout an insult at the lizard people ]
	[ if Daniels is holding a root vegetable, he will throw it at the lizard people ]
	[ if a root vegetable is on the ground, there is a chance Daniels will pick it up. This counts as being distracted. ]
	

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
	now Daniels carries the potato;
	now the potato is within-reach;
	now the rutabaga is within-reach;
	now the turnip is within-reach;
	now the rutabaga is in the woven basket;
	now the turnip is in the woven basket;
	now the woven basket is closed;
	now enemy facing is lizard people facing us;
	now turn countdown is 0;
	now notable Daniels event this turn is false;
	now notable lizard event this turn is false;
	now Daniels is familiar;
	now potato is familiar;
	now rutabaga is familiar;
	now turnip is familiar;
	now woven basket is familiar;
	now root vegetables are familiar;



Boss Battle ends here.