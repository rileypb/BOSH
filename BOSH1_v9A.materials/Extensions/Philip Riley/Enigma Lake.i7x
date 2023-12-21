Enigma Lake by Philip Riley begins here.

Volume 1 - Some Stuff

The correct locker number is a number that varies.

When play begins:
	if DEBUG is false:
		now the correct locker number is a random number from 11 to 89;
	otherwise:
		now the correct locker number is 1;

The old copper key is a key.

The locker key is a key.

Volume 2 - Special Items

An astral resonator is a kind of thing.

Volume 3 - Geography

ELR is a region.

Book 1 - Town Hall

the Enigma Lake town hall is a room. It is in ELR.
"The building has been cleared of furniture and other items ahead of the imminent flooding. A permanent fixture, the information desk sits near the front entrance (to the south). Taped to it is what looks to be a work schedule. There is also a back entrance onto the park to the north."

The information desk is scenery in the Enigma Lake town hall. Understand "info" as information desk. "A work schedule is taped to the desk."

The backpack is a closed openable container. It is behind the information desk. The description is "Stitched into the fabric are the initials 'WGT'".
Understand "back/pack/rucksack/ruck/sack/knapsack/knap" as the backpack.

The red key is a key. It is inside the backpack. The description is "The letters ELG are printed on the key, labeling it the property of Enigma Lake Gymnasium.".

The work schedule is scenery in the Enigma Lake town hall. 
"[fixed letter spacing] +--------------------------------+[line break]
|Name            Shift           |[line break]
+--------------------------------+[line break]
|Monday          Edward Alpha    |[line break]
|Tuesday         Mary Huff       |[line break]
|Wednesday       Bill Thompson   |[line break]
|Thursday        Edward Alpha    |[line break]
|Friday          Rosemary Tamsin |[line break]
|Saturday        Mary Huff       |[line break]
+--------------------------------+"

The building is scenery in the Enigma Lake town hall.

Instead of examining the building:
	try examining the Enigma Lake town hall;

After examining the information desk when the backpack is nowhere:
	now the player carries the backpack;
	say "[We] [find] a backpack behind the information desk and [take] it.";
	now the backpack is not behind the information desk;

Chapter 1 - Town Hall backdrop

The Town Hall Facade is a backdrop. It is in Main Street 200 Block, Main at Solvay, Solvay Road 100 block, Solvay Road leading out of town, Enigma Park, Lake Street by the park, Lake Street by the gym, and Main at Lake. It is privately-named. The printed name is "town hall". Understand "town/city/hall" as the Town Hall Facade. "The archetypical town hall of the northeastern US, it's a white-sided building the size of a large house, exuding a sense of civic duty. [if location is Main Street 200 block]The front entrance is to the north[otherwise if location is Enigma Park]The back entrance is to the south[otherwise]There are no entrances on this side[end if]."


Book 2 - Enigma Park

To explore is a verb.

Enigma Park is north of Enigma Lake town hall. Enigma Park is in ELR. It is outdoors.
"[first time]It's probably beautiful during the day, but tonight the deep shadows among the trees seem ominous. [We] [are] watchful and tense as [we] [explore] the park. 

[only]The central focus of the park is a large obelisk inscribed with the names of the town's citizens lost in the Great War. The town hall is to the south, and other exits are to the north, west, and east."

Some trees are scenery in Enigma Park. Understand "tree" as trees. "A mixture of sturdy firs and maples, unaware of the pending cataclysm."

Some shadows are scenery in Enigma Park. "Without a lantern, it's inadvisable to venture into the shadows."

The obelisk is scenery in Enigma Park. Understand "monument/names/citizens" as the obelisk. "Its faux Egyptian design is incongruous adjacent to the adamantly traditional town hall. [We] [can] just make out a small crystal adornment rising from the top."

The adornment is scenery in Enigma Park. "From what you can make out, it's a clear crystal held aloft by some kind of metal fitting."

Climbing up is an action applying to one thing. Understand "climb up/-- [something]" as climbing up.

Check climbing up:
	say "[We] can't climb that." instead;
	
Check climbing up the obelisk:
	say "The obelisk offers no handholds adequate for climbing." instead;
	
Check climbing up trees:
	say "[We] would rather not break [our] leg." instead;
	
Park facade is a backdrop. It is in Solvay Road leading out of town, Lake shore north of the park, and Lake Street by the park. It is privately-named. The printed name is "Enigma Park". Understand "enigma/park" as Park facade. "A shadowy clump of trees marks the edge of Enigma Park."

Book 3 - Main Street 200 Block

the Main Street 200 block is south of Enigma Lake Town Hall. It is in ELR. It is outdoors. The printed name is "200 block of Main Street". The preposition is "on".

The description is "The street runs east and west from here. South is the edifice of Rolle's Department Store. North is the town hall."

Rolle's facade is a backdrop. It is in Main Street 200 block. It is privately-named. The printed name is "Rolle's Department Store". Understand "rolle's/rolle/department/store" as Rolle's facade. "Once, town department stores like this were a constant of American life before they were gobbled up by the big box stores."

Book 4 - Main at Solvay

Main at Solvay is west of Main Street 200 Block. It is in ELR. It is outdoors. The printed name is "Main and Solvay". The preposition is "on the corner of".

The description is "Main Street runs east from here, while Solvay Road heads north. South of here, Henry's Hot Skillet promises all of the comforts of the mid-twentieth-century diner. A book store named The Reading Room lies to the west, while Fresnel's Music is southwest."

Henry's facade is a backdrop. It is in Main at Solvay. It is privately-named. The printed name is "Henry's Hot Skillet".  Understand "Henry/Henry's/Hot/Skillet/diner/restaurant" as Henry's facade. "Henry's is closed, the neon skillet dark and motionless."

Reading-Room-Facade is a backdrop. It is in Main at Solvay. It is privately-named. The printed name is "Reading Room". Understand "Reading/Room/bookstore/store" as Reading-room-facade. "The store window is dark. You can see rows and rows of books inside."

Fresnel Facade is a backdrop. It is in Main at Solvay. It is privately-named. The printed name is "Fresnel's Music". Understand "fresnel/fresnel's/music/store" as Fresnel Facade. "A display of brass instruments dominates the front window." 

Book 6 - Solvay Road 100 block

Solvay Road 100 block is north of Main at Solvay. It is in ELR. It is outdoors. The preposition is "walking on".

The description is "Solvay heads north and south. To the west is the fire station, while to the east is the side of the town hall."

The fire facade is a backdrop. It is in Solvay Road 100 block. It is privately-named. The printed name is "fire station". Understand "fire/station/house" as fire facade. "The sign over the big door says 'Hook and Ladder Company #1'."

Book 7 - Solvay Road leading out of town

Solvay Road leading out of town is north of Solvay Road 100 block and west of Enigma Park. It is in ELR. It is outdoors. The preposition is "walking on".

The description is "Solvay Road bends here, leading northwest out of town and south back into town. East is the park, and to the west is Horton House."

Horton facade is a backdrop. It is in Solvay Road leading out of town. It is privately-named. The printed name is "Horton House". Understand "Horton/House/Home" as Horton facade. "Horton House is an old colonial-period house. The sign by the door marks it as the oldest remaining house in the Enigma Lake area. Its builder, Jeremiah Horton, was purported to be a supernaturalist of some renown."

Book 8 - Solvay Road by the lake

Solvay-Road-by-the-lake is northwest of Solvay Road leading out of town. It is in ELR. It is outdoors. The preposition is "walking on". It is privately-named. The printed name is "Solvay Road by the lake". Understand "Solvay/Road/by/the/lake" as Solvay-Road-by-the-lake.

Instead of going nowhere from the Solvay-Road-by-the-lake:
	let dir be noun part of current action;
	if dir is northwest:
		say "That would take [us] too far out of town.";
	otherwise: 
		continue the action;
	stop the action;

Book 9 - Shack

a dirty shack is west of Solvay-Road-by-the-lake. It is always-indefinite. It is in ELR.

Hutz is a man in dirty shack. "Hutz is reclining on a narrow bed." The description is "Hutz is more or less a skeleton in overalls."

The narrow bed is scenery in the dirty shack. "Clean enough, but awfully narrow, it holds the bony figure of Hutz, the town groundsman."

The sledgehammer is in the dirty shack.

Why-he-is-still-here is a questioning quip.
	The printed name is "why he's still here".
	Understand "why/he/he's/hutz/is/still/here/are/you" as why-he-is-still-here.
	The comment is "[We] [ask], 'Why are you still here? The town is being flooded tomorrow.'"
	The reply is "'Had a feeling someone might come by looking for help. And here you are.'"
	It quip-supplies Hutz.	
	It stocks Hutz.

Book 10 - Main at Lake

Main at Lake is east of Main Street 200 Block. It is in ELR. It is outdoors. The printed name is "Main and Lake". The preposition is "on".

Book 11 - Lake Street by the gym

Lake Street by the gym is north of Main at Lake. It is in ELR. It is outdoors. The preposition is "walking on".

Book 12 - Lake Street by the Park

Lake Street by the park is north of Lake Street by the gym and east of Enigma Park. It is in ELR. It is outdoors. The preposition is "walking on".

Book 13 - First Unitarian Church of Enigma Lake

First Unitarian Church of Enigma Lake is east of Lake Street by the Park. It is in ELR.

The electrical outlet is scenery in First Unitarian Church of Enigma Lake.

Book 14 - Vestry

the vestry is east of First Unitarian Church. It is in ELR. 

The circuit breaker is a scenery device in the vestry. 

Book 15 - Steeple

the steeple is above the First Unitarian Church of Enigma Lake. It is in ELR. 


Book 16 - Lake at Ridge

the Lake at Ridge is north of Lake Street by the Park. It is in ELR. It is outdoors.
The printed name is "intersection of Lake Street and Ridge Road". The preposition is "at".
"[if player is in the abandoned truck]There is a glove compartment on the passenger side, [glove compartment state].[paragraph break][end if]The intersection lies at the edge of the lake. Lake Street runs south into town, while Ridge Road heads off into the darkness east of here. A little park along the lake shore is to the west."

To say glove compartment state:
	if the glove compartment is open:
		say "open";
	otherwise:
		say "closed";

An abandoned pickup truck is a fixed in place closed enterable openable container in Lake at Ridge. 
The glove compartment is a scenery closed openable container in the abandoned truck.
Understand "box/glovebox" as the glove compartment.
The brass key is a key. It is in the glove compartment. 

After entering the abandoned truck:
	try looking;
	
Instead of switching on the abandoned truck:
	let K be the list of all keys enclosed by the player;
	if the number of entries of K is 1:
		say "Your key doesn't fit the ignition.";
	otherwise if the number of entries of K > 1:
		say "None of the keys you have fit the ignition.";
	otherwise:
		say "Even if this thing runs, you don't have the key.";
		
Understand "start [something]" as switching on.

Rule for writing a paragraph about the abandoned truck:
	say "There is an abandoned pickup truck at the side of the road."

Book 17 - Lake Shore north of the park

the lake shore north of the park is west of Lake at Ridge and north of Enigma Park. It is in ELR. It is outdoors. The preposition is "on".

Book 18 - Workshed

the workshed is southeast of the lake shore north of the park. It is in ELR.

The equipment box is a closed locked openable lockable scenery container in the workshed.

The rusty astral resonator is in the equipment box.

The trap door is a door. It is below workshed and above the hidden cave.

Book 19 - Hidden cave

a hidden cave is a room. It is in ELR. It is always-indefinite.

Book 20 - Portal room

the portal cave is south of hidden cave. It is in ELR. 

Book 21 - Lake shore west

the Lake Shore West is west of Lake Shore North of the Park and north of Solvay Road Leading Out Of Town. It is east of Solvay-Road-by-the-lake. It is in ELR. It is outdoors. The printed name is "west end of the town's lake shore". The preposition is "at".

Book 22 - Horton Family House

The Horton House door is a closed openable locked lockable scenery door. It is west of Solvay Road Leading Out Of Town and east of Horton Family House. The Horton House door has matching key the old copper key.

Horton Family House is a room. It is in ELR.

Book 23 - Astral Tunnel

Fire Station 1 is forthsouth of Horton Family House. It is in ELR

Book 24 - Horton Graveyard

the Horton graveyard is west of Horton Family House. It is in ELR.

Some gravestones are scenery in the Horton graveyard.

Book 25 - Fire Station 1

The garage door is a closed locked lockable openable scenery door. It is west of Solvay Road 100 block and east of the Fire Station 1. Understand "big/red/door" as garage door.

Fire Station 1 is in ELR. The printed name is "Hook and Ladder Company #1". 

The ladder is in the Fire Station 1.

Book 26 - Reading Room

The Reading Room is west of Main at Solvay. It is in ELR.

The sales counter is scenery in the Reading Room. 

Astral Secrets is on the sales counter. The printed name is "[first time]the book [only][italic type]Astral Secrets[roman type]".

Book 27 - Reading Room Basement

The Book Store Basement is below the Reading Room. It is in ELR.

A bricked up hole in the wall is scenery in the Book Store Basement.

Book 28 - Sewer Tunnel

a sewer tunnel 1 is north of book store basement. It is in ELR. It is privately-named. It is always-indefinite. The printed name is "sewer tunnel". Understand "sewer/tunnel" as sewer tunnel 1. ""

a sewer tunnel 2 is east of sewer tunnel 1. It is in ELR. It is privately-named. It is always-indefinite. The printed name is "sewer tunnel". Understand "sewer/tunnel" as sewer tunnel 2.

a sewer tunnel 3 is east of sewer tunnel 2. It is in ELR. It is privately-named. It is always-indefinite. The printed name is "sewer tunnel". Understand "sewer/tunnel" as sewer tunnel 3.

The astral-tunnel-elr is forth of sewer tunnel 3. It is privately-named. The printed name is "astral tunnel". It is in hyperspace. "It is featureless white, or what passes for white here. It leads back and backnorth.";

astral-tunnel-elr is forthsouth of the gym basement.

The gymnasium basement door is a locked closed openable lockable scenery door. It is north of sewer tunnel 3 and south of the gym basement.

Book 29 - Fresnel's Music

Fresnel's Music is southwest of Main at Solvay. It is in ELR.

A tuning fork is in Fresnel's Music.

Book 30 - Henry's Hot Skillet

Henry's Hot Skillet is a room. It is in ELR.

the Skillet door is a closed locked openable lockable scenery door. It is south of Main at Solvay and north of Henry's Hot Skillet. The Skillet door has matching key the brass key.

Book 31 - Henry's Roof

Henry's Roof is above Henry's Hot Skillet. It is in ELR.

Book 32 - Rolle's Department Store

Rolle's Department Store is south of Main Street 200 Block. It is in ELR.
The description is "Once, town department stores like this were a constant of American life."

The floor waxer is in Rolle's Department Store.

Book 33 - Public Gymnasium

The gym door is a closed locked openable lockable scenery door. It is east of Lake Street by the gym and west of the public gymnasium.

The public gymnasium is in ELR. "There is a basketball court and a weight training area. A front desk is next to the front entrance."

Index map with public gymnasium mapped east of Lake Street by the gym.

The gym front desk is a scenery supporter in the public gymnasium. "Some kind of record book sits on the front desk."

The membership book is a fixed in place thing on the gym front desk. The description is "It's a book apparently full of records of the members of the gym. You could LOOK UP a member's name IN BOOK."

Instead of consulting the membership book about something:
	if the topic understood matches "william thompson" or the topic understood matches "bill thompson" or the topic understood matches "thompson":
		say "[fixed letter spacing]WILLIAM THOMPSON[line break]
		126 Rochester Road[line break]
		Enigma Lake, NY[line break]
		#[correct locker number].[variable letter spacing][paragraph break]";
		now looked up locker is true;
	otherwise:
		say "You can't find that name in the membership book.";

Book 34 - Gym Basement

The gym basement is below the public gymnasium. It is in ELR. "This area is dominated by large banks of lockers."

The bank of lockers is scenery in the gym basement. Understand "banks/locker" as the bank of lockers.
"The lockers are numbered 1 to 100."
The bank of lockers can be opened-once.

Looked up locker is a truth state that varies.

Opening a locker is an action applying to one number. Understand "open locker/-- number/-- [number]" as opening a locker when the location is the gym basement.

Check opening a locker when looked up locker is false:
	say "[We] [are] hardly going to try opening every locker. There must be a better way to go about this." instead;
	
Check opening a locker:
	if the number understood < 1 or the number understood > 100:
		say "The lockers are numbered 1 to 100." instead;
		
Check opening a locker when the player does not enclose the red key:
	say "[We] [don't] have a key for the locker." instead;
	
Check opening a locker :
	if the number understood is not the correct locker number:
		say "The key doesn't fit the lock." instead;
		
Carry out opening a locker:
	if the locker is not opened-once:
		say "[We] [open] the locker. It contains some dirty gym clothes, among which [we] find [an old copper key]. [We] [take] it and close the locker.";
		now the player carries the old copper key;
	otherwise:
		say "The locker contains nothing but some old gym clothes.";
		
Volume 4 - Eerie Sounds

Sound interval is a number that varies.

To spin is a verb.

Every turn when location is in ELR:
	increment sound interval;
	if the location is outdoors:
		if sound interval > 2 and a random chance of 1 in 10 succeeds:
			now sound interval is sound interval - 10;
			if sound interval > 0:
				now sound interval is 0;
			say "[one of]The seeming sound of sibilant speech carries on the breeze[or][We] [turn] [our] head quickly, as if something caught [our] eye[or]A strange shadow crosses the scene[or][We] abruptly [spin] around, but [find] nothing behind [us][or][We] cocks [our] head at a strange sound[or]Distinct footsteps sound from not too far away[or]An unseasonably chilly wind causes [us] to hug [our] shoulders[then at random]."
		
		
Volume 5 - Polish

Table of Transitions
source room (a room)	target room (a room)	transition text (a text)	used (a truth state)
Enigma Lake Town Hall	Enigma Park	"[We] [push] through the back door into the cool night."	--


Table of Excuses (continued)
source room (a room)	dirs (a list of directions)	excuse (a text)
Enigma Lake town hall	--	"Exits are to the north and south."
Main Street 200 block	{northwest, northeast}	"Go north to enter the town hall."
Main Street 200 block	--	"You can go north into the town hall, or south into Rolle's Department Store. In addition, Main Street leads east and west."
Lake Street by the gym	{west, southwest, northwest}	"You can't enter the town hall from here."
Solvay Road 100 block	{west}	"The fire station's garage door is locked up tight."



Table of Frustrated Taking (continued)
target (a thing)	message (a text)	move message (a text)
membership book	"You hardly need it, and it might useful to someone else."	--
adornment	"It's too high up."	"It's too high up."


[Table of Floors (continued)
locale (a room)	has floor (a truth state)	floor description (a text)	touch description (a text)
strip mall parking lot south	--	"Black asphalt."
strip mall parking lot north	--	"Black asphalt."
li'l nectarine convenience store	--	"Grungy black and white tile."
Dave's pawn shop	--	"Dingy stained industrial carpet."]

Enigma Lake ends here.
