Enigma Lake by Philip Riley begins here.

Volume 1 - Some Stuff

The correct locker number is a number that varies.

The old copper key is a key.

The locker key is a key.

Volume 2 - Geography

ELR is a region.

Book 1 - Town Hall

the Enigma Lake town hall is a room. It is in ELR.
"This is the lobby. The rest of the building is locked up tight. The main feature here is the information desk. Taped to it is what looks to be a work schedule."

The information desk is scenery in the Enigma Lake town hall. Understand "info" as information desk. "A work schedule is taped to the desk."

The backpack is a closed openable container. It is behind the information desk. The description is "Stitched into the fabric are the initials 'JT'".
Understand "back/pack/rucksack/ruck/sack/knapsack/knap" as the backpack.

The red key is a key. It is inside the backpack. The description is "The letters ELG are printed on the key, labeling it the property of Enigma Lake Gymnasium.".

The work schedule is scenery in the Enigma Lake town hall. 
"[fixed letter spacing] +--------------------------------+[line break]
|Name            Shift           |[line break]
+--------------------------------+[line break]
|Monday          Edward Alpha    |[line break]
|Tuesday         Mary Huff       |[line break]
|Wednesday       Jeff Thompson   |[line break]
|Thursday        Edward Alpha    |[line break]
|Friday          Rosemary Klein  |[line break]
|Saturday        Mary Huff       |[line break]
+--------------------------------+"

The building is scenery in the Enigma Lake town hall.

Instead of examining the building:
	try examining the Enigma Lake town hall;

After examining the information desk when the backpack is nowhere:
	now the player carries the backpack;
	say "[We] [find] a backpack behind the information desk and [take] it.";
		

Book 2 - Enigma Park

To explore is a verb.

Enigma Park is north of Enigma Lake town hall. Enigma Park is in ELR. 
"It's probably beautiful during the day, but tonight the deep shadows among the trees seem ominous. [We] [are] watchful and tense as [we] [explore] the park. 

The central focus of the park is a large obelisk inscribed with the names of the town's citizens lost in the Great War."

Some trees are scenery in Enigma Park.

Some shadows are scenery in Enigma Park.

The obelisk is scenery in Enigma Park.


Book 3 - Main Street 200 Block

the Main Street 200 Block is south of Enigma Lake Town Hall. It is in ELR. The printed name is "200 block of Main Street". The preposition is "on".

Main at Solvay is west of Main Street 200 Block. It is in ELR. The printed name is "Main and Solvay". The preposition is "on".

Solvay Road by the fire station is north of Main at Solvay. It is in ELR. The preposition is "walking on".

Solvay Road leading out of town is north of Solvay Road by the Fire Station and west of Enigma Park. It is in ELR. The preposition is "walking on".

Main at Lake is east of Main Street 200 Block. It is in ELR.

Lake Street by the gym is north of Main at Lake. It is in ELR.

Lake Street by the Park is north of Lake Street by the gym and east of Enigma Park. It is in ELR.

First Unitarian Church of Enigma Lake is east of Lake Street by the Park. It is in ELR.

the Lake at Ridge is north of Lake Street by the Park. It is in ELR.
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
		say "None of the keys you have fits the ignition.";
	otherwise:
		say "Even if this thing runs, you don't have the key.";
		
Understand "start [something]" as switching on.

Rule for writing a paragraph about the abandoned truck:
	say "There is an abandoned pickup truck at the side of the road."

the lake shore north of the park is west of Lake at Ridge and north of Enigma Park. It is in ELR. The preposition is "on".

the Lake Shore West is west of Lake Shore North of the Park and north of Solvay Road Leading Out Of Town. It is in ELR. The printed name is "west end of the town's lake shore". The preposition is "at".

The yellow door is a closed openable locked lockable scenery door. It is west of Solvay Road Leading Out Of Town and east of Horton House. Understand "horton/house" as yellow door. The printed name is "yellow (Horton House) door". The yellow door has matching key the old copper key.
Horton House is a room. It is in ELR.

Fire Station 1 is west of Solvay Road by the Fire Station. It is in ELR. The printed name is "Hook and Ladder Company #1". 

The ladder is in the Fire Station 1.

The Reading Room is west of Main at Solvay. It is in ELR.

Fresnel's Music is southwest of Main at Solvay. It is in ELR.

Henry's Hot Skillet is a room. It is in ELR.

the Skillet door is a closed locked openable lockable scenery door. It is south of Main at Solvay and north of Henry's Hot Skillet. The Skillet door has matching key the brass key.

Rolle's Department Store is south of Main Street 200 Block. It is in ELR.

The public gymnasium is east of Lake Street by the gym. It is in ELR. "There is a basketball court and a weight training area. A front desk is next to the front entrance."

The gym basement is below the public gymnasium. It is in ELR. "This area is dominated by large banks of lockers."

The bank of lockers is scenery in the gym basement. Understand "banks/locker" as the bank of lockers.
"The lockers are numbered 1 to 100."
The bank of lockers can be opened-once.

Opening a locker is an action applying to one number. Understand "open locker/-- number/-- [number]" as opening a locker when the location is the gym basement.
	
Check opening a locker:
	if the number understood < 1 or the number understood > 100:
		say "The lockers are numbered 1 to 100." instead;
		
Check opening a locker when the player does not enclose the locker key:
	say "[We] [don't] have a key for the locker." instead;
	
Check opening a locker :
	if the number understood is not the correct locker number:
		say "The key doesn't fit the lock.";
		
Carry out opening a locker:
	if the locker is not opened-once:
		say "[We] [open] the locker. It contains some dirty gym clothes, among which you find [an old copper key]. [We] [take] it and close the locker.";
		now the player carries the old copper key;
	otherwise:
		say "The locker is empty.";

Enigma Lake ends here.
