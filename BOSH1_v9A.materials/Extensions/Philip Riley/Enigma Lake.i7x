Enigma Lake by Philip Riley begins here.

Include Building Facades by Philip Riley.
Include Scheduled People by Philip Riley.
Include Secret Doors by Gavin Lambert.
Include Plugging by Philip Riley.

Volume 1 - Some Stuff

The correct locker number is a number that varies.

When play begins:
	if DEBUG is false:
		now the correct locker number is a random number from 11 to 89;
	otherwise:
		now the correct locker number is 1;

To decide if mounted-rusty-resonator:
	decide no;

To decide if mounted-shiny-resonator:
	decide on whether or not the platform supports the shiny astral resonator;

Volume 2 - Special Items

The old copper key is a key.

The locker key is a key.

An astral resonator type is a kind of thing.

The makeshift astral resonator is an astral resonator type. It is pluggable.
The description is "A makeshift astral resonator, cobbled together from a tuning fork, a spotlight, and the astral lenses."
The snarky remark of the makeshift astral resonator is "I built it all by myself."

Description notes for the makeshift astral resonator:
	if the makeshift astral resonator is powered:
		add "providing light" to descriptive notes;

The wristwatch is a thing. Understand "watch" as the wristwatch. The description is "A simple wristwatch. The initials 'DM' are engraved on the back."
Understand "DM" as the wristwatch.
The snarky remark of the wristwatch is "All this way just for this?"

Volume 3 - Geography

ELR is a region.

Book 1 - Town Hall

the Enigma Lake town hall is a leavable room. It is in ELR. It is unleavable.
"The building has been cleared of furniture and other items ahead of the imminent flooding. A permanent fixture, the information desk sits near the front entrance (to the south). Taped to it is what looks to be a work schedule. There is also a back entrance onto the park to the north."
The snarky remark is "Time travel should be accompanied by more fanfare."

The information desk is scenery in the Enigma Lake town hall. Understand "info/help/front" as information desk. "A work schedule is taped to the desk."
The snarky remark of the information desk is "No one's ever at the information desk when you need them."

The bell is on the information desk. The description is "A small brass bell, used to summon the attention of the town hall staff."
The snarky remark of the bell is "Hello! Anyone here?"

The backpack is a closed openable container. It is behind the information desk. The description is "Stitched into the fabric are the initials 'WGT'.".
Understand "back/pack/rucksack/ruck/sack/knapsack/knap" as the backpack. It is wearable.
The snarky remark of the backpack is "Am I allowed to rummage through people's stuff? I mean, I'm going to anyway, but I want to know if I'm allowed to."

Instead of doing something other than taking off or dropping the backpack when the backpack is worn:
	say "You can't do that while wearing the backpack.";

After dropping the backpack:
	say "You slide the backpack off your shoulders and drop it to the floor.";

The red key is a key. It is inside the backpack. Understand "ELG", "gym/gymnasium key" as the red key. The description is "The letters ELG are printed on the key, labeling it the property of Enigma Lake Gymnasium.".
The snarky remark of the red key is "Oh good. I need some used gym socks to complete my collection."

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
+--------------------------------+".
The snarky remark of the work schedule is "What? I don't get any hours this week?"

The building is scenery in the Enigma Lake town hall.

Instead of examining the building:
	try examining the Enigma Lake town hall;

After examining the information desk when the backpack is nowhere:
	now the player carries the backpack;
	say "[We] [find] a backpack behind the information desk and [take] it.";
	now the backpack is not behind the information desk;

Chapter 1 - Town Hall backdrop

The Town Hall Facade is a building facade. 
	It is in Main Street 200 Block, Main at Solvay, Solvay Road 100 block, Solvay Road leading out of town, Enigma Park, Lake Street by the park, Lake Street by the gym, and Main at Lake. It is privately-named. The printed name is "town hall". 
	Understand "town/city/hall" as the Town Hall Facade. 
	"The archetypical town hall of the northeastern US, it's a white-sided building the size of a large house, exuding a sense of civic duty. [if location is Main Street 200 block]The front entrance is to the north[otherwise if location is Enigma Park]The back entrance is to the south[otherwise]There are no entrances on this side[end if]."
	The town hall facade fronts the Enigma Lake town hall.
	The town hall facade is enterable from Main Street 200 Block. 
	The town hall facade is enterable from Enigma Park.
The snarky remark of the town hall facade is "I feel like this should be an episode of 'Last Chance to See'."

Book 2 - Enigma Park

To explore is a verb.

Enigma Park is a leavable room. It is north of Enigma Lake town hall. It is unleavable. Enigma Park is in ELR. It is outdoors.
"[first time]It's probably beautiful during the day, but tonight the deep shadows among the trees seem ominous. [We] [are] watchful and tense as [we] [explore] the park. 

[only]The central focus of the park is a large obelisk inscribed with the names of the town's citizens lost in the Great War. Firs and maples line the paths. The town hall is to the south, and other exits are to the north, west, and east."
The snarky remark of Enigma Park is "It's not Central Park, but it's not bad."

Some trees are scenery in Enigma Park. Understand "tree/fir/firs/maple/maples" as trees. "A mixture of sturdy firs and maples, unaware of the pending cataclysm."
The snarky remark of the trees is "Run away, trees! Run away!"

Some shadows are scenery in Enigma Park. "Without a lantern, it's inadvisable to venture into the shadows."
The snarky remark of the shadows is "I'm not afraid of the dark. I'm afraid of what's in the dark."

The obelisk is scenery in Enigma Park. Understand "monument/names/citizens" as the obelisk. "Its faux Egyptian design is incongruous adjacent to the adamantly traditional town hall. [We] [can] just make out a small crystal adornment rising from the top."
The snarky remark of the obelisk is "I don't know what it is, but obelisks always seem to be bad news."

The adornment is scenery in Enigma Park. "From what [we] can make out, it's a clear crystal held aloft by some kind of metal fitting." Understand "crystal" as the adornment.
The snarky remark of the adornment is "I'm not going to touch it. I've seen enough movies to know that's a bad idea."

Climbing up is an action applying to one thing. Understand "climb up/-- [something]" as climbing up.

Check climbing up:
	say "[We] can't climb that." instead;
	
Check climbing up the obelisk:
	say "The obelisk offers no handholds adequate for climbing." instead;
	
Check climbing up trees:
	say "[We] would rather not break [our] leg." instead;
	
Park facade is a building facade. It is in Solvay Road leading out of town, Lake shore north of the park, and Lake Street by the park. It is privately-named. The printed name is "Enigma Park". Understand "enigma/park" as Park facade. "A shadowy clump of trees marks the edge of Enigma Park."
	It is enterable from Solvay Road leading out of town.
	It is enterable from Lake shore north of the park.
	It is enterable from Lake Street by the park.
	It fronts Enigma Park.
The snarky remark of the park facade is "Have the muggers left before the flood?"

Book 3 - Main Street 200 Block

the Main Street 200 block is south of Enigma Lake Town Hall. It is in ELR. It is outdoors. The printed name is "200 block of Main Street". The preposition is "on".
The snarky remark of the Main Street 200 block is "The 200 block of Main Street. It's like the 100 block, but twice as good."

The description is "The street runs east and west from here. South is the edifice of Rolle's Department Store. North is the town hall."

Rolle's facade is a building facade in Main Street 200 block. It is privately-named. The printed name is "Rolle's Department Store". Understand "rolle's/rolle/department/store/shop" as Rolle's facade. "Once, town department stores like this were a constant of American life before they were gobbled up by the big box stores."
	Rolle's facade fronts Rolle's Department Store.
	It is enterable from Main Street 200 Block.
The snarky remark of Rolle's facade is "I'm going to check out the pre-flood sales."

Book 4 - Main at Solvay

Main at Solvay is west of Main Street 200 Block. It is in ELR. It is outdoors. The printed name is "Main and Solvay". The preposition is "on the corner of".
The snarky remark of Main at Solvay is "This must be the shopping district."

The description is "Main Street runs east from here, while Solvay Road heads north. South of here, Henry's Hot Skillet promises all of the comforts of the mid-twentieth-century diner. A bookstore named The Reading Room lies to the west, while Fresnel's Music is southwest."

Henry's facade is a building facade. It is in Main at Solvay. It is privately-named. The printed name is "Henry's Hot Skillet".  Understand "Henry/Henry's/Hot/Skillet/diner/restaurant" as Henry's facade. "Henry's, the local diner, is closed, the neon skillet dark and motionless."
	Henry's facade fronts Henry's Hot Skillet.
	It is enterable from Main at Solvay.
The snarky remark of Henry's facade is "I wonder if they have any pie left."

The neon skillet is scenery in Main at Solvay. "The neon skillet is dark and motionless."
The snarky remark of the neon skillet is "Apparently they're not open."

Reading-Room-Facade is a building facade. It is in Main at Solvay. It is privately-named. The printed name is "Reading Room". Understand "Reading/Room/bookstore/store" as Reading-room-facade. "The store window is dark. [We] can see rows and rows of books inside."
	Reading-Room-Facade fronts the Reading Room.
	It is enterable from Main at Solvay.
The snarky remark of Reading-Room-Facade is "I wonder if they have any books on how to survive a flood."

Fresnel Facade is a building facade. It is in Main at Solvay. It is privately-named. The printed name is "Fresnel's Music". Understand "fresnel/fresnel's/music/store" as Fresnel Facade. "A display of brass instruments dominates the front window." 
	Fresnel Facade fronts Fresnel's Music.
	It is enterable from Main at Solvay.
The snarky remark of Fresnel Facade is "Good. I need a tuba."

Book 6 - Solvay Road 100 block

Solvay Road 100 block is north of Main at Solvay. It is in ELR. It is outdoors. The preposition is "walking on".
The snarky remark of Solvay Road 100 block is "What's a Solvay?"

The description is "Solvay heads north and south. To the west is the fire station, while to the east is the side of the town hall."

The fire facade is a building facade. It is in Solvay Road 100 block. It is privately-named. The printed name is "fire station". Understand "fire/station/firehouse/house" as fire facade. "The sign over the big door says 'Hook and Ladder Company #1'."

Instead of entering the fire facade:
	say "The garage door is locked up tight." instead;

The snarky remark of the fire facade is "I wonder if they have a fireman's pole."

Book 7 - Solvay Road leading out of town

Solvay Road leading out of town is north of Solvay Road 100 block and west of Enigma Park. It is in ELR. It is outdoors. The preposition is "walking on".
The snarky remark of Solvay Road leading out of town is "Seems like the right way to go about now."

The description is "Solvay Road bends here, leading northwest out of town and south back into town. East is the park, and to the west is Horton House. One can walk down to the lake shore to the north."

Horton facade is a building facade. It is in Solvay Road leading out of town. It is privately-named. The printed name is "Horton House". Understand "Horton/Family/House/Home" as Horton facade. "Horton House is an old colonial-period house. The sign by the door marks it as the oldest remaining house in the Enigma Lake area. Its builder, Jeremiah Horton, was purported to be a supernaturalist of some renown."
	Horton facade fronts Horton Family House Kitchen.
	It is enterable from Solvay Road leading out of town.

The snarky remark of Horton facade is "Looks like just the kind of place to find a ghost."

Book 8 - Solvay Road by the lake

Solvay-Road-by-the-lake is northwest of Solvay Road leading out of town. It is in ELR. It is outdoors. The preposition is "walking on". It is privately-named. The printed name is "Solvay Road by the lake". Understand "Solvay/Road/by/the/lake" as Solvay-Road-by-the-lake.

The description is "Solvay Road runs by the lake shore here. It continues out of town to the northwest, while to the southeast it leads back into town. A dirty shack stands opposite the lake to the west. A path along the shore leads to the east."

The snarky remark of Solvay-Road-by-the-lake is "Nice view. Too bad it's about to be under water."

Instead of going nowhere from the Solvay-Road-by-the-lake:
	let dir be noun part of current action;
	if dir is northwest:
		say "That would take [us] too far out of town.";
	otherwise: 
		continue the action;
	stop the action;

The lake-shore-1 is scenery in Solvay-Road-by-the-lake. "The lake shore is rocky and uneven, with a few small trees and bushes growing along the edge."
The lake-scenery-1 is scenery in Solvay-Road-by-the-lake. "The lake is dark and still, reflecting the moonlight."

The shack facade is a building facade. It is in Solvay-Road-by-the-lake. It is privately-named. The printed name is "shack". Understand "shack" as the shack facade. "A dirty shack stands opposite the lake."
	The shack facade fronts the dirty shack.
	It is enterable from Solvay-Road-by-the-lake.
The snarky remark of the shack facade is "I wonder if anyone's home."

Book 9 - Shack

a dirty shack is a leavable room. It has egress east. It is west of Solvay-Road-by-the-lake. It is always-indefinite. It is in ELR. "Someone lives here, though not at all luxuriously. Plates are stacked up by the sink, and there's a pile of used paper coffee cups in the corner. The whole place stinks of cat."
The snarky remark of the dirty shack is "I'm not sure I want to know what's in the sink."

Some plates are scenery in the dirty shack. "Dirty and precariously stacked."
The snarky remark of the plates is "I'm not doing the dishes."

The used coffee cups are scenery in the dirty shack. "A pile of used paper coffee cups. This guy must love his coffee."
The snarky remark of the used coffee cups is "I wonder where the local Starbucks is."

A mangy cat is in a dirty shack. The description is "A mangy, old, stripey orange cat."
Rule for writing a paragraph about the mangy cat:
	say "[one of]A mangy orange cat peeks out from under the bed[or]A stripey orange cat sits in a corner of the room, grooming itself[or]An orange cat stretches out on the bed[purely at random].";
	  
The snarky remark of the mangy cat is "I don't care how mangy a cat is, I'm going to pet it."
	
Petting is an action applying to one thing. Understand "pet [something]" as petting. Understand "pat [something]" as petting.

Check petting something that is not the mangy cat:
	say "That's just silly." instead;
	
Check petting a person:
	say "[The noun] probably wouldn't appreciate that." instead;

Report petting the mangy cat:
	say "The cat purrs and leans into [our] hand." instead;

Hutz is a man in dirty shack. Hutz is privately-named. "[A Hutz] is reclining on a narrow bed." The description is "[A Hutz] is more or less a skeleton in overalls." Hutz is adaptively-named and anonymous and not proper-named. 
	Understand "bony/old/man" as Hutz. 
	Understand "town/groundskeeper" as Hutz when Hutz is not anonymous.
	Understand "Hutz" as Hutz when Hutz is met.
The snarky remark of Hutz is "Kind of Crypt Keeper meets Groundskeeper Willie."
	
Rule for writing a paragraph about Hutz:
	if the dirty shack is not visited:
		say "[A Hutz] lies on a bed in a corner of the shack. He stirs sleepily and says 'Ah, there you are, there you are. Knew you'd be around eventually.'"

The narrow bed is scenery in the dirty shack. "Clean enough, but awfully narrow, it holds [if Hutz is known]the bony figure of Hutz[otherwise][Hutz][end if], the town groundskeeper."
The snarky remark of the narrow bed is "How often does he fall out of bed, I wonder?"

The sledgehammer is in the dirty shack. Understand "hammer" as sledgehammer. The description is "A heavy sledgehammer, the head of which is covered in rust."
The snarky remark of the sledgehammer is "I'm sure violence is the answer to something. Let's go look."

Who-is-Hutz is a questioning quip.
	The printed name is "who he is".
	Understand "who are you", "who/he/is" as who-is-hutz.
	The comment is "[We] [ask], 'You seem to know me, but who are you?'"
	The reply is "'Name's Hutz, the town groundskeeper. Or was, I guess. Not much to keep now.'"
	It quip-supplies Hutz.
	It stocks Hutz.
	
After discussing who-is-hutz:
	now Hutz is met;
	now Hutz is proper-named;

Why-he-is-still-here is a questioning quip.
	The printed name is "why he's still here".
	Understand "why/he/he's/hutz/is/still/here/are/you" as why-he-is-still-here.
	The comment is "[We] [ask], 'Why are you still here? The town is being flooded tomorrow.'"
	The reply is "'Had a feeling someone might come by looking for help. And here you are.' Hutz grins, showing a few teeth. 'I'm not going anywhere, not yet. Not until I've done what I need to do.'"
	It quip-supplies Hutz.	
	It follows Who-is-Hutz.
	
How-can-you-help-me is a questioning quip.
	The printed name is "how he can help [us]".
	Understand "how/can/you/he/help/me/us/them/her/him" as how-can-you-help-me.
	The comment is "'But how can you possibly help me?' [we] [ask]."
	The reply is "'You're looking for the secret of Enigma Lake, are you not? The secret about to be lost forever? Something calls you here; you're searching for something, no, someone. Yes, yes, Hutz can help you.'"
	It quip-supplies Hutz.
	It follows Why-he-is-still-here.
				
What-is-the-secret is a questioning quip.
	The printed name is "about the secret of Enigma Lake".
	Understand "what/is/the/secret/of/enigma/lake/about" as what-is-the-secret.
	The comment is "'Secret? What secret?' [we] [ask]."
	The reply is "'Well, *I* don't know. Just kinda thought you must be searching for some kind of mystical secret, seeing that you're wandering like a fool through a town about to be flooded. But I can help you, yep.'"
	It quip-supplies Hutz.
	It follows How-can-you-help-me.
	
Help-me is a performative quip. 
	The printed name is "ask Hutz for help".
	Understand "ask hutz for help" as help-me.
	Understand "please/-- help me/-- please/--" as help-me.
	The comment is "[We] [say], 'Okay, how can you help?'"
	The reply is "'Oh yes, how was I going to help? Afraid I can't remember, sorry.'"
	It quip-supplies Hutz.
	It follows How-can-you-help-me.

Now-can-you-help-me is a questioning quip.
	The printed name is "if he can now help [us]".
	Understand "if/now/can/you/help/me/us/them/her/him" as now-can-you-help-me.
	The comment is "'Now, you've had your coffee. Can you help me?' [we] [ask]."
	The reply is "'I found something. Something that might help you. It's in the workshed. In the cabinet. You'll need the key.' At this, Hutz pulls out a rusty key ring, pulls off an iron key and hands it to [us]."
	It quip-supplies Hutz.

The iron key is a key. The description is "A heavy iron key, it looks like it might fit a padlock."

After discussing Now-can-you-help-me:
	now the player carries the iron key;

Hutz-needs-coffee is a truth state that varies. Hutz-needs-coffee is false.

After discussing Help-me:
	now Hutz-needs-coffee is true;

Instead of giving the cup of coffee to Hutz when Hutz-needs-coffee is true:
	if the hotness of the cup of coffee < 25:
		say "Hutz takes the coffee and sniffs it. 'Cold,' he says, even though the stuff is still plenty hot. 'I can't drink this.' He tosses the coffee into the pile of used cups.";
		remove the cup of coffee from play;
	otherwise:
		say "Hutz takes the coffee and drinks it down in one gulp. 'Ah, that's the stuff,' he says. 'Now, what can I do for you?'";
		now Hutz-needs-coffee is false;
		remove the cup of coffee from play;
		queue Hutz with Now-can-you-help-me;

Book 10 - Main at Lake

Main at Lake is east of Main Street 200 Block. It is in ELR. It is outdoors. The printed name is "Main and Lake". The preposition is "at the intersection of". "Main goes west, while Lake runs north. The corner of the town hall is to the northwest, although it cannot be entered there. Southeast is the entrance to WGXC 'Galaxy' Radio. There is a broadcast tower on top of the building." 
The snarky remark of Main at Lake is "Soon it will be Main in Lake."

The radio station facade is a building facade. It is in Main at Lake. It is privately-named. The printed name is "WGXC 'Galaxy' Radio". Understand "WGXC/Galaxy/Radio/station" as radio station facade. "The sign over the door says 'WGXC [']Galaxy['] Radio 1055 AM'."
	The radio station facade fronts Radio Station WGXC.
	It is enterable from Main at Lake.
The snarky remark of the radio station facade is "Wonder what the weather report is for tomorrow? 100% chance of deluge?"

Book 11 - WGXC "Galaxy" Radio

Radio Station WGXC is a leavable room. It has egress northwest. It is southeast of Main at Lake. It is in ELR. It is indoors. "This is the town radio station. South is the entrance to the broadcast booth. A staircase runs upwards, presumably to the roof and the broadcast antenna."
The snarky remark of Radio Station WGXC is "I wonder if they have any old records. Or I guess they'd be new records now, wouldn't they?"

Book 12 - Radio Station Roof

The radio station roof is a leavable room. It is above Radio Station WGXC. It has egress down. It is in ELR. "[We] can see the obelisk in the park clearly from here. The broadcast tower rises many feet above [us]. A metal cabinet is attached to the foot of the tower[if the metal cabinet is locked], held shut by a chain and padlock[otherwise], hanging open[end if].[if mounted-shiny-resonator] [A shiny astral resonator] is mounted on a platform in the tower, and a beam of light shoots out of it, striking the obelisk in the park. The crystal is glowing [crystal glow][end if]."
The preposition is "on".
The snarky remark of the radio station roof is "I'm not afraid of heights. I'm afraid of falling from heights."

The metal cabinet is a closed, locked, openable, scenery container in the radio station roof. "The metal cabinet is attached to the foot of the broadcast tower[if the metal cabinet is locked], held shut by a chain and padlock[otherwise], hanging open[end if]." 

The power switch is a scenery device in the metal cabinet. "The power switch is set to [if the power switch is switched on]on[otherwise]off[end if]."

The broadcast tower is scenery in the radio station roof. "A tall, steel lattice structure, rising prominently above the building. This kind of tower was designed to maximize the height for better signal transmission and reception in the era before widespread cable and satellite technology. Strangely, the bars of the tower near roof-level are bent inward to form a small platform. It's almost as if something is meant to be mounted there."
The snarky remark of the broadcast tower is "What a great place to get struck by lightning."

The platform is part of the broadcast tower. It is a supporter.

Instead of examining the platform when mounted-shiny-resonator:
	say "[A shiny astral resonator] is mounted on the platform, and a beam of light shoots out of it, striking the obelisk in the park. The crystal is glowing [crystal glow].";

Instead of examining the platform when not mounted-shiny-resonator:
	say "The platform is a small, square area formed by the inward-bent bars of the broadcast tower. It's just large enough to hold a small object. There are two rings set into the back of the platform, allowing something to be attached there.";

The snarky remark of the platform is "Curiouser and curiouser."

The rings are part of the platform. The description is "Two metal rings are set into the back of the platform, allowing something to be attached there." They are plural-named. 

To hook up the shiny resonator: 
	now the shiny astral resonator is on the platform;
	say "[We] [push] the shiny astral resonator onto the platform, attaching the clamps to the rings. A beam of light shoots out of the resonator and strikes the obelisk in the park. The crystal is glowing [crystal glow].";

Instead of inserting the shiny astral resonator into the platform:
	hook up the shiny resonator;

Check inserting something into the platform when the noun is not the shiny astral resonator:
	say "That doesn't seem to be the right thing to put there." instead;

Instead of putting the shiny astral resonator on the platform:
	hook up the shiny resonator;

After taking the shiny astral resonator when the shiny astral resonator was on the platform:
	say "You remove the shiny astral resonator from the platform, and the light fades. In the distance, the beam of light fades from the obelisk. [if the beam count is 0]The crystal is no longer glowing[otherwise]The crystal is still glowing [crystal glow][end if].";

Instead of tying the shiny astral resonator to the rings:
	hook up the shiny resonator;

Instead of tying the shiny clamps to the rings:
	hook up the shiny resonator;

Instead of tying the shiny clamps to the platform:
	hook up the shiny resonator;

Instead of tying the shiny astral resonator to the rings:
	hook up the shiny resonator;

Instead of tying the rings to the shiny clamps:
	hook up the shiny resonator;

Instead of tying the rings to the shiny astral resonator:
	hook up the shiny resonator;

Instead of tying the shiny astral resonator to the platform:
	hook up the shiny resonator;

Instead of tying the shiny astral resonator to the broadcast tower:
	hook up the shiny resonator;

Instead of inserting the shiny astral resonator into the broadcast tower:
	hook up the shiny resonator;

Instead of putting the shiny astral resonator on the broadcast tower:
	hook up the shiny resonator;

Instead of climbing up the broadcast tower:
	say "[We] [are] afraid of heights.";
	
Instead of going up when the location is the radio station roof:
	say "[We] [are] afraid of heights.";
	
The radio-obelisk-facade is a backdrop. It is in the radio station roof. Understand "obelisk/park" as radio-obelisk-facade. "The obelisk in the park is clearly visible from here."

Instead of examining the radio-obelisk-facade:
	say "The obelisk in the park is clearly visible from here.[run paragraph on]";
	if beam count is 1:
		if mounted-shiny-resonator:
			say " A beam of light is focused on the obelisk from here, striking the crystal adornment at its apex. The crystal is glowing faintly.";
		otherwise:
			say " A beam of light is focused on the obelisk from elsewhere, striking the crystal adornment at its apex. The crystal is glowing faintly.";
	otherwise if beam count is 2:
		if mounted-makeshift-resonator:
			say " Two beams of light are focused on the obelisk, one from here and one from elsewhere, striking the crystal adornment at its apex. The crystal is glowing brightly.";
		otherwise:
			say " Two beams of light are focused on the obelisk from elsewhere, striking the crystal adornment at its apex. The crystal is glowing brightly.";
	otherwise if beam count is 3:
		say " Three beams of light are focused on the obelisk, one from here and two from elsewhere, striking the crystal adornment at its apex. The crystal is glowing brightly.";
	otherwise:
		say paragraph break;

Book 13 - Broadcast Booth

The broadcast booth is south of Radio Station WGXC. It is in ELR. "The broadcast booth is a small room with a window looking out into the rest of the station. A microphone is set up on a stand, and a soundboard is set into the wall."
The snarky remark of the broadcast booth is "I wonder if I can get a request in."

The booth window is scenery in the broadcast booth. "The window looks out into the rest of the station."

The stand is scenery in the broadcast booth. "An ordinary microphone stand."
Understand "microphone stand" as stand.

The microphone is scenery in the broadcast booth. "A microphone is set up on a stand."
The snarky remark of the microphone is "My mother always said I had a face for radio, and a voice for silent movies."

The soundboard is scenery in the broadcast booth. "The soundboard is a complex piece of equipment, with many sliders and buttons. It's not clear how it works."
The snarky remark of the soundboard is "I like to push buttons and turn knobs. Which is why I'm not allowed in airplane cockpits."

Book 14 - Lake Street by the gym

Lake Street by the gym is north of Main at Lake. It is in ELR. It is outdoors. The preposition is "walking on".
The description is "Lake Street runs north and south from here. To the east is the public gymnasium, while to the west is the town hall, which is not enterable from here."
The snarky remark of Lake Street by the gym is "I wonder how much gym memberships cost in 1954."

The gymnasium facade is a building facade. It is in Lake Street by the gym. It is privately-named. The printed name is "public gymnasium". Understand "gymnasium/gym" as gymnasium facade. "The sign over the door says 'Enigma Lake Gymnasium'."
	The gymnasium facade fronts Enigma Lake Gymnasium.
	It is enterable from Lake Street by the gym.
The snarky remark of the gymnasium facade is "I hate the gym. I'm allergic to exercise."

Instead of entering the gymnasium facade:
	say "The door is locked.";

Book 15 - Lake Street by the Park

Lake Street by the park is north of Lake Street by the gym and east of Enigma Park. It is in ELR. It is outdoors. The preposition is "walking on". The description is "Lake Street runs north and south from here. To the west is the park, while to the east is the First Utilitarian Church of Enigma Lake."
The snarky remark of Lake Street by the park is "The eeriness of the park is only slightly offset by the eeriness of the church."

The church facade is a building facade. It is in Lake Street by the park. It is privately-named. The printed name is "First Utilitarian Church of Enigma Lake". Understand "church" as church facade. "The church is a dignified example of Gothic Revival architecture, its façade dominated by a steeply pitched roof and a slender steeple piercing the sky."
	The church facade fronts the First Utilitarian Church of Enigma Lake.
	It is enterable from Lake Street by the park.
The snarky remark of the church facade is "The Utilitarians are the ones who believe in the greatest good for the greatest number, right? Even in sex?"

Book 16 - First Utilitarian Church of Enigma Lake

The First Utilitarian Church of Enigma Lake is a leavable room. It has egress west. It is east of Lake Street by the Park. It is in ELR. "The interior is dimly lit by the stained glass windows, and the pews are arranged in neat rows facing the pulpit. A standard electrical outlet is set into the wall."
The snarky remark of the First Utilitarian Church of Enigma Lake is "Where's the gift shop?"

A rule for snarking First Utilitarian Church of Enigma Lake:
	if the snarky remark of the First Utilitarian Church of Enigma Lake is not empty and the doll-fly is not in the location:
		snark First Utilitarian Church of Enigma Lake;
	rule succeeds;

Instead of doing something other than examining to the doll-fly:
	say "[We] [can't] get close enough to [the doll-fly] to do that.";

The stained glass windows are scenery in First Utilitarian Church of Enigma Lake. "As is traditional in Utilitarian churches, the stained glass windows are all plain glass, allowing the maximum amount of light to enter the building."
The snarky remark of the stained glass windows is "I like the underlying message of the stained glass. It's like they're saying, 'We're not going to waste time on this, we've got things to do.'"

The pews are scenery in First Utilitarian Church of Enigma Lake. "The pews are arranged in neat rows, facing the pulpit."
The snarky remark of the pews is "When will I find a church with sumptuous, overstuffed chairs?"

The pulpit is scenery in First Utilitarian Church of Enigma Lake. "The pulpit is a simple wooden structure with a lectern."
The snarky remark of the pulpit is "Hold on, I have to give a sermon. 'And the Lord said, 'I will flood the earth, and all the people will be like, 'Oh no, we're all wet.''"

The lectern is scenery in First Utilitarian Church of Enigma Lake. "The lectern is a simple wooden structure, with a slanted top for holding a book."

To read is a verb.

The Book of Utilitarianism is on the lectern. It is proper-named. 

Instead of examining the Book of Utilitarianism:
	let the section be a random number from 1 to 3;
	if section is 1:
		say "The text is the 'Book of Utilitarianism'. [We] [open] to a page at random and [read] the text:[paragraph break][one of]And the Lord said, 'The path of the righteous is beset on all sides by the inequities of the selfish and the tyranny of the lizard people. Blessed is he who, in the name of charity and good will, shepherds the weak through the valley of darkness, for he is truly his brother's keeper and the finder of lost children. And I will strike down upon thee with great vengeance and furious anger those who attempt to poison and destroy my brothers. And you will know my name is the Lord when I lay my vengeance upon thee.'[or]But the Lord said to the lizard people, 'You are truly mine enemy, and I will smite you with great vengeance and furious anger. You will know my name is the Lord when I lay my vengeance upon thee.'[or]For thou shalt not suffer a lizard person to live, for they are an abomination unto the Lord.[or]And God so loved the world that he gave his only begotten son, that whosoever believeth in him should not perish, but have everlasting life. The lizard people are not included in this offer.[or]And it came to be that the Lord made aliens, and he saw that they were good, and he made lizard people, and he saw that they were not good. And he made humans, and he saw that they were not good either. And he made the platypus, and he saw that it was good. But later the humans became good, sort of like Godzilla.[or]And the Lord said, 'Let there be light,' and there was light. And the Lord said, 'Let there be lizard people,' and there were lizard people. And the Lord said, 'Let there be humans,' and there were humans. And the Lord said, 'Let there be platypuses,' and there were platypuses.[then at random]";
	otherwise if section is 2:
		say "The text is the 'Book of Utilitarianism'. [We] [open] to a page at random and [read] the text:[paragraph break][one of]And Gob begat Bob, and Bob begat Rob, and Rob begat Job, and Job begat Chauncey, and Chauncey begat Hank, and all told there were fifty-two generations between Gob and Gob XII, who was the last of the line. And Gob XII begat no one, for he was a eunuch. And the Lord said, 'That's what you get for hanging out with lizard people.'[or]Then the Lord said to Gorm, 'Gather up all your childen, and take them to the mountain, and there I will give you the tablets of Utilitarianism, which I have written, that you may teach them.' And Gorm said, 'But Lord, I have no children.' And the Lord said, 'Then go forth and make some children, and then gather them up and take them to the mountain, and there I will give you the tablets of Utilitarianism, which I have written, that you may teach them.'[or]And the hosts of the lizard people came down from the mountains, and they were many, and they were fierce, and they were hungry. And the Lord said, 'I'm not going to feed them, they're your problem.'[or]And the Lord said, 'I am the Lord, and I am a jealous God, and I will visit the iniquity of the fathers upon the children unto the third and fourth generation of them that hate me, and show mercy unto thousands of them that love me and keep my commandments.' And the lizard people said, 'We hate you.'[then at random]";
	otherwise:
		say "The text is the 'Book of Utilitarianism'. [We] [open] to a page at random and [read] the text:[paragraph break][one of]However, the Lord said to the lizard people, 'I am the Lord of the humans, and I -- oh, and the aliens -- and I will smite you with great vengeance and furious anger and the like.'[or]By the by, Gorm came upon the town of Armagast, and he saw that it was good, and he said, 'I shall build a church here.' And the Lord said, 'No, don't do that, it's a bad idea.' And Gorm said, 'But Lord, I have already started.' And the Lord said, 'Well, okay, but don't say I didn't warn you.'[or]But Gorm's wife was treacherous, and she lay with lizard people, and she bore a son, and the Lord said, 'I'm not going to smite you, but I'm not going to be happy about it.'[or]When Gorm learned of his wife's doings, he rent his garments and wept, and the Lord said, 'Keep it together, man.'[or]And the land was filled with the iniquities of the lizard people, and the Lord said, 'I'm not going to clean that up.'[or]The host of the lizard people sacked the now rather prosperous town of Armagast, and the Lord said, 'I told you so.'[or]And the Lord said, ' [']Tis a far, far better thing that I do, than I have ever done; [']tis a far, far better rest that I go to than I have ever known.' And the lizard people said, 'That's from A Tale of Two Cities.'[or]And the Lord was attending his weekly reading circle, when he had an idea. 'I shall make a world,' he said, 'and I shall call it Earth.' And the lizard people said, 'That's a terrible name.'[or]And lo, the lizard people rebelled against the Lord, and the Lord said, 'I'm not going to put up with that.'[or]And in the town of Gabblehouse was born an infant to a woman named Gorma, and the Lord said, 'That's a terrible name.'[or]And the Lord said, 'I shall rain down upon thee with great vengeance and furious anger, and the lizard people said, 'We've heard that before.'[then at random]"

Book 16.5 - Hathgar the Pitiful

The doll-fly is an animal. The description is "It is a flying doll with the head of a giant fly." 
The snarky remark of the doll-fly is "I'm not sure what's worse, the doll or the fly." 
The doll-fly can be named or unnamed. The doll-fly is unnamed.
Understand "doll/fly" as the doll-fly.
Understand "Hathgar the Pitiful", "Hathgar", "Pitiful" as the doll-fly when the doll-fly is named.
The printed name of the doll-fly is "[if the doll-fly is named]Hathgar the Pitiful[otherwise]doll-fly[end if]".

Before doing something when the doll-fly is not named and the location is First Utilitarian Church of Enigma Lake and the doll-fly is in the location:
	say "The doll-fly shrieks 'Begone! Or I, Hathgar the Pitiful, shall smite thee!'";
	now the doll-fly is named;
	now the doll-fly is proper-named;

Instead of going east when the location is the First Utilitarian Church of Enigma Lake and the doll-fly is in the location:
	say "[The doll-fly] prevents [us] from reaching the east exit."

Instead of going up when the location is the First Utilitarian Church of Enigma Lake and the doll-fly is in the location:
	say "[The doll-fly] prevents [us] from reaching the ladder."

Instead of attacking the doll-fly:
	say "[The doll-fly] [one of]is too quick for [us][or]moves up out of [our] reach[or]dodges [our] attack[or]flies out of [our] reach[or]flies away[at random]."

Instead of attacking the doll-fly with something:
	say "[The doll-fly] [one of]is too quick for [us][or]moves up out of [our] reach[or]dodges [our] attack[or]flies out of [our] reach[or]flies away[at random]."

Instead of taking the doll-fly:
	say "Even if [we] could catch it, [we] wouldn't want to.";

Instead of saying hello to the doll-fly:
	say "[The doll-fly] buzzes around, but doesn't respond.";

Before answering the doll-fly that something:
	if the topic understood in lower case is "bara ba jagal":
		say "Upon hearing the words 'bara ba jagal', [the doll-fly] wails a high-pitched, mournful sound, and then winks out of existence.";
		now the doll-fly is off-stage;
		stop the action;
	otherwise:
		say "The doll-fly buzzes around, but doesn't respond.";
		stop the action;

Instead of doing something other than taking or attacking to the doll-fly when action requires a touchable noun:
	say "[We] can't get close enough to [the doll-fly] to touch it.";

Incanting is an action applying to nothing. Understand "bara ba jagal" as incanting.

Check incanting:
	if the location is not the First Utilitarian Church of Enigma Lake:
		say "If you say so.";
		stop the action;
	if the doll-fly is off-stage:
		if the doll-fly has been in First Utilitarian Church of Enigma Lake:
			say "[We've] already banished [the doll-fly]." instead;
		otherwise:
			say "Cheater." instead;
	otherwise:
		try answering the doll-fly that "bara ba jagal";
		stop the action;

Book 17 - Extension Cord

The electrical outlet is scenery in First Utilitarian Church of Enigma Lake. "A standard electrical outlet, set into the wall[if the extension cord is plugged into the electrical outlet and the player encloses the extension cord]. The extension cord is plugged into it[otherwise if the extension cord is plugged into the electrical outlet]. An extension cord is plugged into it[end if]." 
Understand "wall/power/electric/point/mains/GPO" as the electrical outlet.
It is plug-into-able.
The snarky remark of the electrical outlet is "This mission is making me wish I had a fork."

Does the player mean plugging the extension cord into the electrical outlet: 
	it is very likely.

The extension cord is a thing. The description is "A long, heavy-duty extension cord[if the extension cord is plugged into the electrical outlet and the location is First Utilitarian Church of Enigma Lake], plugged into the wall outlet[otherwise if the extension cord is plugged into the electrical outlet and the location is the steeple]. It trails down through the trapdoor[otherwise if the extension cord is plugged into the electrical outlet and the location is the vestry]. It trails through the door into the church[end if]." 
The snarky remark of the extension cord is "You can never have too many extension cords. Unless you have too many extension cords. Then you have too many extension cords."

It is pluggable.

Chapter - Power

Definition: a thing is powered:
	if it is the electrical outlet and the circuit breaker is switched on:
		yes;
	otherwise if something (called the socket) accepts it:
		if it is the socket:
			no;
		decide on whether or not the socket is powered;

After switching on the circuit breaker when the makeshift astral resonator is in the vestry or the player encloses the makeshift astral resonator:
	if the makeshift astral resonator is powered:
		say "The [makeshift astral resonator] flickers to life, emitting a bright beam of light.";

After switching off the circuit breaker when the makeshift astral resonator is in the vestry or the player encloses the makeshift astral resonator:
	if the makeshift astral resonator was powered:
		say "The [makeshift astral resonator] flickers and goes dark.";

Chapter 1 - Special movement rules

Slack when the location is the First Utilitarian Church of Enigma Lake and the extension cord is plugged into the electrical outlet and the player encloses the extension cord (this is the church slack rule):
	if the noun is west:
		say "[We] [can't] leave the church carrying the extension cord when it's plugged in." instead;
	otherwise if the noun is up:
		say "[We] [climb] the ladder and [push] through the trap door to the steeple, dragging the extension cord behind [us].";
		rule succeeds;
	otherwise if the noun is east:
		say "[We] [enter] the vestry, dragging the extension cord behind [us].";
		rule succeeds;

To climb is a verb.


Slack when the location is the vestry and the extension cord is plugged into the electrical outlet and the player encloses the extension cord (this is the vestry slack rule):
	repeat with plug running through pluggable things in the location:
		if a thing (called the socket) accepts the plug:
			if the player encloses the socket:
				say "[We] can't leave while [the plug], which we aren't carrying, is plugged into [the socket], which we are carrying.";
				rule fails;
	repeat with plug running through plug-into-able things in the location:
		if a thing (called the plug) is plugged into the socket:
			if the player encloses the plug:
				say "[We] can't leave while [the plug], which we are carrying, is plugged into [the socket], which we aren't carrying.";
				rule fails;
	if the noun is west:
		say "[We] [enter] the church, dragging the extension cord behind [us].";
		rule succeeds;

Slack when the location is the steeple and the extension cord is plugged into the electrical outlet and the player encloses the extension cord (this is the steeple slack rule):
	if the noun is down:
		say "[We] [climb] down the ladder to the church, the extension dangling down before [us].";
		rule succeeds;

The church slack rule is listed first in the slack rules.
The vestry slack rule is listed before the church slack rule in the slack rules.
The steeple slack rule is listed before the vestry slack rule in the slack rules.

Description notes for the extension cord:
	if something (called the socket) accepts the item described:
		if the socket is the electrical outlet:
			if the location is the vestry:
				add "trailing out of the room" to descriptive notes;
			otherwise if the location is the steeple:
				add "trailing down through the trapdoor" to descriptive notes;
			otherwise:
				add "plugged into [the socket]" to descriptive notes;
		otherwise:
			add "plugged into [the socket]" to descriptive notes;
	if something (called the plug) is plugged into the item described:
		add "with [the plug] plugged into it" to descriptive notes.

The plug-socket description rule does nothing when the item described is the extension cord.

Rule for writing a paragraph about the extension cord when the extension cord is plugged in:
	if the location is First Utilitarian Church of Enigma Lake and the player encloses the extension cord:
		say "The extension cord is plugged into the wall outlet.";
	otherwise if the location is First Utilitarian Church of Enigma Lake:
		if something (called the plug) is plugged into the extension cord:
			say "The extension cord is plugged into the wall outlet, and [the plug] is plugged into it.";
		otherwise:
			say "An extension cord lies on the floor, plugged into the wall outlet.";
	otherwise if the location is the steeple:
		say "The end of an extension cord lies here, from where it trails down through the trapdoor";
		if something (called the plug) is plugged into the extension cord:
			say ". [The plug] is plugged into it";
		say ".";
	otherwise if the location is the vestry:
		say "The end of an extension cord lies here, from where it trails through the door into the church";
		if something (called the plug) is plugged into the extension cord:
			say ". [The plug] is plugged into it";
		say ".";

After printing the locale description of the vestry:
	if the extension cord is plugged in and the player encloses the extension cord:
		say "The extension cord runs from [our] hand, through the door, and into the church.";

After printing the locale description of the steeple:
	if the extension cord is plugged in and the player encloses the extension cord:
		say "The extension cord runs from [our] hand, through the trapdoor, and into the church.";

After printing the locale description of the steeple when mounted-makeshift-resonator and the makeshift astral resonator is powered:
	say "The makeshift astral resonator emits a bright beam of light directly at the obelisk in the park.[paragraph break]";

After printing the locale description of the First Utilitarian Church of Enigma Lake:
	if the extension cord is plugged in:
		if the player encloses the extension cord:
			say "The extension cord is plugged into the wall outlet.";
		otherwise if the extension cord is in the vestry:
			say "An extension cord is plugged into the wall outlet, from where it trails east through the door into the vestry.";
		otherwise if the extension cord is in the steeple:
			say "An extension cord is plugged into the wall outlet, from where it trails up through the trapdoor.";
	
The plug-end-of-the-extension-cord is a thing. It is undescribed. It is privately-named. The printed name is "extension cord". Understand "extension/cord/plug" as the plug-end-of-the-extension-cord. The description is "A long, heavy-duty extension cord[if the extension cord is plugged in and the location is First Utilitarian Church of Enigma Lake], plugged into the wall outlet[end if]." 
It is pluggable.

The extension cord is in the bookstore basement.
The extension cord is pluggable and plug-into-able.

After plugging the extension cord into the electrical outlet:
	now the plug-end-of-the-extension-cord is in the location of the second noun; 
	continue the action;

Instead of plugging something into the plug-end-of-the-extension-cord:
	if the extension cord is touchable:
		try plugging the noun into the extension cord;
	otherwise:
	 	say "The socket end of the extension cord is not here."

Section - Unplugging the extension cord

Check unplugging the extension cord when the location is not the First Utilitarian Church of Enigma Lake and the extension cord is plugged into the electrical outlet:
	say "[We] can't reach the outlet from where [we] [are]." instead;

[ Unplugging is an action applying to one thing. Understand "unplug [something]" as unplugging. ]

To unplug is a verb. To roll is a verb. To reel is a verb.

[Check unplugging the extension cord when the player encloses the extension cord and the extension cord is not plugged into something:
	say "The extension cord is not plugged in." instead;
]

Check unplugging the plug-end-of-the-extension-cord when something (called the plug) is plugged into the extension cord and the plug is not in the location:
	say "Something in another room is plugged into the extension cord, preventing [us] from reeling it in." instead;

Carry out unplugging the plug-end-of-the-extension-cord:
	now the extension cord is not plugged into anything;
	if the player does not enclose the extension cord:
		now the player carries the extension cord;

Report unplugging the plug-end-of-the-extension-cord:
	if the player enclosed the extension cord:
		say "[We] [unplug] the extension cord.";
	otherwise:
		say "[We] [unplug] the extension cord, [reel] in the far end, and [roll] it up neatly.";
	stop the action;

Instead of taking the plug-end-of-the-extension-cord when the extension cord is not in the location:
	if something is plugged into the extension cord:
		say "Something in another room is plugged into the extension cord, preventing [us] from reeling it in.";
	otherwise:
		now the player carries the extension cord;
		say "[We] [take] the extension cord and [reel] in the far end, leaving it plugged into the outlet.";

Instead of taking the plug-end-of-the-extension-cord when the player encloses the extension cord:
	now the extension cord is not plugged into anything;
	say "[We] [unplug] the extension cord.";

[
Carry out unplugging the extension cord:
	now the extension cord is unplugged;
	if the player encloses the extension cord:
		say "[We] unplug the extension cord.";
	otherwise:
		say "[We] [unplug] the extension cord, [reel] in the far end, and [roll] it up neatly.";
		now the player carries the extension cord;
		stop the action;

After unplugging the extension cord:
	now the plug-end-of-the-extension-cord is nowhere; ]


Book 17 - Vestry

The vestry is a leavable room. It is east of First Utilitarian Church. It has egress west. It is in ELR. "It's a small room, with a door leading to the church proper to the west. A lovely tapestry hangs on the wall[if the tapestry is pushed aside]. It is pushed aside, revealing a circuit breaker box[end if]."
The snarky remark of the vestry is "Seen one vestry, seen [']em all."

The tapestry is scenery in the vestry. "An intricate tapestry, depicting a scene of a medieval village. It's a bit out of place in a church, but it's lovely." The tapestry can be pushed aside. Understand "wall hanging", "wallhanging" as the tapestry.
The snarky remark of the tapestry is "I wonder why they don't have a velvet Elvis."

Instead of pushing the tapestry when the tapestry is not pushed aside:
	say "[We] [push] the tapestry aside, revealing a circuit breaker box mounted on the wall.";
	now the tapestry is pushed aside;
	now the circuit breaker is in the vestry;

Instead of pushing the tapestry when the tapestry is pushed aside:
	say "The tapestry is already pushed aside. No need to push it back.";

Instead of looking behind the tapestry:
	try pushing the tapestry;

The circuit breaker is a scenery device. "A circuit breaker box is mounted on the wall." Understand "box", "safety switch", "switchgear", "disconnect switch", "electrical", "electricity", "fuse switch", "overload switch" and "trip switch" as the circuit breaker. The circuit breaker is switched off.
The snarky remark of the circuit breaker is "And the Lord said, 'Let there be light.' And there was light. And then the circuit breaker tripped." 

Book 18 - Steeple

To say makeshift resonator state:
	if something (called the socket) accepts the makeshift astral resonator:
		say "[A makeshift astral resonator] is mounted on the tripod and plugged into [the socket]";
		now the socket is unmentioned;
	otherwise:
		say "[A makeshift astral resonator] is mounted on the tripod";

the steeple is above the First Utilitarian Church of Enigma Lake. It is in ELR. 
"From here, [we] can see the obelisk in the park clearly. Someone has set up a tripod here. [if the content of the tripod is nothing]Its mount is empty[otherwise if the content of the tripod is the telescope][A telescope] is mounted on it[otherwise][makeshift resonator state][end if]."
The snarky remark of the steeple is "I wonder if I can see my house from here."

The telescope is in the tripod. The description is "A small telescope suitable for amateur astronomy[if the content of the tripod is the telescope]. It's mounted on a tripod[end if]."
The snarky remark of the telescope is "What's the point of looking at the stars? They're all the same."

To decide what number is the beam count:
	let count be 0;
	if mounted-rusty-resonator:
		increase count by 1;
	if mounted-shiny-resonator:
		increase count by 1;
	if mounted-makeshift-resonator:
		increase count by 1;
	decide on count;

To say crystal glow:
	if the beam count is 1:
		say "faintly";
	otherwise if the beam count is 2:
		say "brightly";
	otherwise if the beam count is 3:
		say "brilliantly";
	otherwise:
		say "dark";

Instead of searching the telescope when the content of the tripod is the telescope: [looking through]
	if mounted-rusty-resonator and mounted-shiny-resonator:
		say "The telescope is pointed at the obelisk in the park. It's a bit out of focus, but [we] can see it clearly enough. Two beams of light are focused on the obelisk from elsewhere, striking the crystal adornment at its apex. The crystal is glowing brightly.";
	otherwise if mounted-rusty-resonator or mounted-shiny-resonator:
		say "The telescope is pointed at the obelisk in the park. It's a bit out of focus, but [we] can see it clearly enough. A beam of light is focused on the obelisk from elsewhere, striking the crystal adornment at its apex. The crystal is glowing faintly.";
	otherwise:
		say "The telescope is pointed at the obelisk in the park. It's a bit out of focus, but [we] can see it clearly enough.";

Instead of searching the telescope:
	say "[Our] hand is not steady enough to focus the telescope. [We] should put it on a tripod.";

The tripod is scenery in the steeple. The tripod has an object called the content. "A tripod [if the content is nothing]with an empty mounting where something might be placed[otherwise]with [a content] mounted on it[end if]."
The snarky remark of the tripod is "You ever notice how tripods always have three legs?"

The examine containers rule does nothing when the noun is the tripod.

The content of the tripod is the telescope.

Unmounting is an action applying to one thing. Understand "unmount [something]" as unmounting.

Check unmounting something when the location is the steeple and the content of the tripod is nothing:
	say "There's nothing mounted on the tripod." instead;

Check unmounting something when the location is the steeple and the content of the tripod is not the noun:
	say "That's not mounted on anything." instead;

Check unmounting something when the location is not the steeple:
	say "That's not mounted on anything." instead;

Carry out unmounting something:
	now the content of the tripod is nothing;
	now the player carries the noun;
	say "[We] [take] [the noun] from the tripod.";

Instead of taking something when the content of the tripod is the noun:
	try unmounting the noun;

Instead of removing something from the tripod when the content of the tripod is the noun:
	try unmounting the noun;

Mounting it on is an action applying to two things. Understand "mount [something] on [something]" as mounting it on.

Check mounting something on the tripod:
	if the content of the tripod is something:
		say "The tripod already has something mounted on it." instead;
	if the noun is not the telescope and the noun is not the makeshift astral resonator:
		say "Try as [we] might, [we] can't figure out how to mount [the noun] on the tripod." instead;

Check mounting something on something when the second noun is not the tripod:
	say "Try as [we] might, [we] can't figure out how to mount [the noun] on [the second noun]." instead;

To mount is a verb.

Carry out mounting the telescope on the tripod:
	now the content of the tripod is the telescope;
	now the telescope is in the tripod;

Report mounting the telescope on the tripod:
	say "[We] [mount] the telescope on the tripod.";

To manage is a verb.

Carry out mounting the makeshift astral resonator on the tripod:
	now the content of the tripod is the makeshift astral resonator;
	now the makeshift astral resonator is in the tripod;

Report mounting the makeshift astral resonator on the tripod:
	say "[We] [manage] to make the makeshift astral resonator fit in the tripod's mount.";

Instead of inserting something into the tripod:
	try mounting the noun on the tripod;

Instead of putting something on the tripod:
	try mounting the noun on the tripod;

The steeple-obelisk-facade is a backdrop. It is in the steeple. Understand "obelisk/park" as steeple-obelisk-facade. "The obelisk in the park is clearly visible from here."

To decide if mounted-makeshift-resonator:
	if the content of the tripod is the makeshift astral resonator and the makeshift astral resonator is powered:
		yes;
	otherwise:
		no;

Instead of examining the steeple-obelisk-facade:
	say "The obelisk in the park is clearly visible from here.[run paragraph on]";
	if beam count is 1:
		if mounted-makeshift-resonator:
			say "A beam of light is focused on the obelisk from the steeple, striking the crystal adornment at its apex. The crystal is glowing faintly.";
		otherwise:
			say "A beam of light is focused on the obelisk from elsewhere, striking the crystal adornment at its apex. The crystal is glowing faintly.";
	otherwise if beam count is 2:
		if mounted-makeshift-resonator:
			say "Two beams of light are focused on the obelisk, one from the steeple and one from elsewhere, striking the crystal adornment at its apex. The crystal is glowing brightly.";
		otherwise:
			say "Two beams of light are focused on the obelisk from elsewhere, striking the crystal adornment at its apex. The crystal is glowing brightly.";
	otherwise if beam count is 3:
		say "Three beams of light are focused on the obelisk, one from the steeple and two from elsewhere, striking the crystal adornment at its apex. The crystal is glowing brightly.";
		say "[paragraph break][italic type][bracket]Far out![close bracket][roman type]";
	otherwise:
		say paragraph break;

Book 19 - Lake at Ridge

the Lake at Ridge is north of Lake Street by the Park. It is in ELR. It is outdoors.
The printed name is "Lake Street and Ridge Road". The preposition is "at the intersection of".
"[if player is in the abandoned truck]There is a glove compartment on the passenger side, [glove compartment state].[paragraph break][end if]The intersection lies at the edge of the lake. Lake Street runs south into town, while Ridge Road heads off into the darkness east of here. A little park along the lake shore is to the west."
The snarky remark of the Lake at Ridge is "What ridge? I don't see a ridge."

To say glove compartment state:
	if the glove compartment is open:
		say "open";
	otherwise:
		say "closed";

An abandoned pickup truck is a fixed in place closed enterable openable container in Lake at Ridge. 
The description is "The truck is relatively new, with no sign as to why it was abandoned. The tailgate is [if the tailgate is open]down[otherwise]up[end if]."
The snarky remark of the abandoned pickup truck is "Should I be scared?"
The glove compartment is a scenery closed openable container in the abandoned truck.
Understand "box/glovebox" as the glove compartment.
The description is "The glove compartment is [if the glove compartment is open]open[otherwise]closed[end if]."
The snarky remark of the glove compartment is "Oh good, I need a pair of gloves."
The brass key is a key. It is in the glove compartment. 

After entering the abandoned truck:
	try looking;
	
Instead of switching on the abandoned truck:
	let K be the list of all keys enclosed by the player;
	if the number of entries of K is 1:
		say "The key doesn't fit the ignition.";
	otherwise if the number of entries of K > 1:
		say "None of the keys [we] [have]fit the ignition.";
	otherwise:
		say "Even if this thing runs, [we] [don't] have the key.";
		
Understand "start [something]" as switching on.

Rule for writing a paragraph about the abandoned truck:
	say "There is an abandoned pickup truck at the side of the road."

Understand "lower [tailgate]" as opening. Understand "raise [tailgate]" as closing.

The truck bed is an open container. It is part of the abandoned truck. The description is "It's the bed of a truck, alright."

The tailgate is part of the truck. It is an open, openable container. The description is "The tailgate is[if the truck bed is open] down[otherwise] up[end if]." Understand "tail/gate" as the tailgate. 

The pair of bolt cutters are in the truck bed. The description is "A pair of bolt cutters, with long handles and heavy jaws." They are ambiguously plural. 

Book 20 - Lake Shore north of the park

the lake shore north of the park is west of Lake at Ridge and north of Enigma Park. It is in ELR. It is outdoors. The preposition is "on". "A sliver of moon hangs over the lake, casting a silvery light over the water. The park is to the south, while the lake stretches off to the north. A workshed is to the southeast. A road can be seen to the east."
The snarky remark of the lake shore north of the park is "I wonder what Klimp would say is in the lake."

The workshed-facade is a building facade. It is in Lake Shore North of the Park. It is privately-named. The printed name is "workshed". Understand "workshed/shed" as workshed-facade. "The workshed is a small, weathered building, with a single door and no windows."
	The workshed-facade fronts the workshed.
	It is enterable from Lake Shore North of the Park.
The snarky remark of the workshed-facade is "Groovy."

Book 21 - Workshed

the workshed is a leavable room. It has egress northwest. It is in ELR. "It is a small, weathered building, with a single door and no windows, and a creaky wooden floor. The interior is dimly lit by a single light bulb hanging from the ceiling. [equipment cabinet state] cabinet is in the corner. [rusty metal door state], rusty metal door leads out of the shed. [if the trapdoor is revealed]A trapdoor is in the floor, [trapdoor state].[end if]".
The snarky remark of the workshed is "I wonder if there's a chainsaw in here."

To say equipment cabinet state:
	if the equipment cabinet is open:
		say "An open";
	otherwise:
		say "A closed";

To say trapdoor state:
	if the trapdoor is open:
		say "open. It leads down into darkness.";
	otherwise:
		say "closed";

To say rusty metal door state:
	if the rusty metal door is open:
		say "An open";
	otherwise:
		say "A closed";

The rusty metal door is a closed openable scenery door. It is southeast of Lake Shore North of the Park and northwest of the workshed. "[if open]The door is open[otherwise]The door is closed[end if]."
The snarky remark of the rusty metal door is "It inspires confidence."

The equipment cabinet is a closed locked openable lockable scenery container in the workshed.
It has matching key the iron key. Understand "heavy/metal" as the equipment cabinet.
"A heavy metal cabinet with a lock. [if the equipment cabinet is open]The cabinet is open[otherwise]The cabinet is closed[end if]."

The rusty astral resonator is in the equipment cabinet. It is privately-named. The description is "A small, rusty, metallic, cylindrical object. One end is capped with a crystal lens, while the other terminates in a threaded base, like a light bulb.".
The printed name is "[if Astral Secrets is familiar]rusty astral resonator[otherwise]strange, rusty, metal object[end if]".
Understand "rusty/astral/resonator" as the rusty astral resonator when Astral Secrets is familiar.
Understand "strange/rusty/metal/metallic/cylindrical/cylinder/object" as the rusty astral resonator.
The threaded base is part of the rusty astral resonator. The description is "The base is threaded, like a light bulb."

The snarky remark of the rusty astral resonator is "[if the shiny astral resonator is not familiar]Ooh. I've always wanted one of these[otherwise]Someone should have taken better care of this[end if].".

The trapdoor is a secret door. It is below the workshed and above a hidden cave. It is closed and openable. "A trapdoor is in the floor[if the trapdoor is open], leading down into darkness[otherwise], closed[end if]."

After going to the workshed when the trapdoor is unrevealed and the player carries the dowsing rod:
	say "Something [we] [are] carrying starts to vibrate.";

Description notes for the dowsing rod:
	if the location is the workshed and the trapdoor is unrevealed:
		add "vibrating" to descriptive notes;
	if the location is the large grave and the metal case is nowhere:
		add "vibrating" to descriptive notes;

Instead of examining the dowsing rod when the location is the workshed and the trapdoor is unrevealed:
	say "The dowsing rod is vibrating.";

Instead of examining the floor when the location is the workshed and the trapdoor is unrevealed:
	say "[We] [examine] the floor closely, and discover the faint outlines of a trapdoor.";
	now the trapdoor is revealed;


Book 22 - Hidden cave

a hidden cave is a room. It is in ELR. It is always-indefinite.

Book 23 - Portal room

the portal cave is south of hidden cave. It is in ELR. 

Book 24 - Lake shore west

the Lake Shore West is west of Lake Shore North of the Park and north of Solvay Road Leading Out Of Town. It is east of Solvay-Road-by-the-lake. It is in ELR. It is outdoors. The printed name is "west end of the town's lake shore". The preposition is "at". "The lake stretches to the north, while the town lies to the south. Solvay Road can be seen to the west, and the shore continues to the east." 

Book 25 - Horton Family House Kitchen

The Horton House door is a closed openable locked lockable scenery door. It is west of Solvay Road Leading Out Of Town and east of Horton Family House Kitchen. The Horton House door has matching key the old copper key. 

Horton Family House Kitchen is a leavable room. It is in ELR. It is unleavable. It is indoors. "The house is a modest colonial-period building. Strangely, the furnishings of the house have been left in place, despite the coming flood. An open hearth is in the center of the room, with a few chairs and a table. The parlor is to the south, and a narrow staircase leads up. To the east the front door leads out to Solvay Road, while another door leads west to the family graveyard." 

The furnishings are scenery in Horton Family House Kitchen. "A few chairs and a table are arranged around the room."

The open hearth is scenery in Horton Family House Kitchen. "The hearth is a simple, open fireplace, with a few logs stacked beside it."

The kitchen chairs are scenery in Horton Family House Kitchen. "A few chairs are arranged around the room."

The kitchen table is a scenery supporter in Horton Family House Kitchen. "A simple wooden table."

The logs are scenery in Horton Family House Kitchen. "A few logs are stacked beside the hearth."

The parlor facade is a building facade. It is in Horton Family House Kitchen. It is privately-named. The printed name is "parlor". Understand "parlor" as parlor facade. "The parlor is to the south."
	The parlor facade fronts Horton Family House Parlor.
	It is enterable from Horton Family House Kitchen.

The narrow staircase is scenery in Horton Family House Kitchen. "A narrow staircase leads up."

Instead of climbing up the narrow staircase:
	try going up;

The dowsing rod is in Horton Family House Kitchen. The description is "A simple wooden rod, about a foot long, with a forked end." Understand "simple/wooden/stick" as the dowsing rod.

Divining-action is an action applying to one thing. Understand "divine with [something]", "dowse with [something]" as divining-action.

Book 25.1 - Horton Family House Parlor

The Horton Family House Parlor is south of Horton Family House Kitchen. It is in ELR. It is indoors. "The parlor, like the kitchen, still has its furnishings in place. A few chairs and a table are arranged around the room."

After going to the Horton Family House Parlor for the first time:
	say "Upon entering the parlor, [we] [are] attacked by a horrible flying creature with the body of a doll and the head of a fly! [We] [wave] it away and it flies out of the room into the kitchen.";
	now the doll-fly is in First Utilitarian Church of Enigma Lake.

The parlor chairs are scenery in the Horton Family House Parlor. "A few chairs are arranged around the room."

The parlor table is a scenery supporter in the Horton Family House Parlor. "A simple wooden table."

The Book of Weird Names is on the parlor table. 

To stop is a verb.

The description is "A book with a plain cover, titled 'The Book of Weird Names.' No author is listed. [paragraph break]Flipping through the book, it appears that each page consists of a name, a drawing of a strange creature, and below that a word in a strange, unknown language. The text is written in a spidery, crabbed hand, and is difficult to read.[paragraph break][We] [stop] on one that reads [italic type][creature name][roman type] above a drawing of [strange creature], below which is written [italic type][incantation].[roman type]";

The first name parts is a list of text that varies. The second name parts is a list of text that varies. The third name parts is a list of text that varies. The creature types is a list of text that varies. The body parts is a list of text that varies.
The first name parts are {"Dag", "Gor", "Zor", "Zag", "Zog", "Zig", "Zag", "Cth", "N'g", "N'k", "Ad", "Bll", "Cr", "As", "Kl"}.
The second name parts are {"ag", "or", "ar", "og", "ig", "ag", "th", "gth", "kth", "uth", "oth", "thuk", "shaka", "fats", "steen", "don" }.
The third name parts are {"Distressing", "Unsettling", "Impertinent", "Uninhibited", "Pugnacious", "Unspeakable", "Unpronounceable", "Unmentionable", "Smelly", "Unpleasant", "Gross", "Horrible", "Squeamish", "Unsavory", "Unpalatable", "Wistful", "Abnormal", "Unnatural", "Unusual", "Uncommon", "Unconventional", "Unorthodox", "Unprecedented", "Unheard of", "Unseen", "Hidden", "Ornery", "Unruly", "Unmanageable", "Uncontrollable", "Unpredictable", "Unreliable", "Untrustworthy", "Unfaithful", "Untrue", "Unreal", "Unrealistic", "Unreasonable", "Unjust", "Unfair", "Unkind", "Unfriendly", "Unpleasant", "Uncomfortable", "Unhappy", "Unfortunate", "Unlucky", "Unsuccessful", "Frustrating", "Unsatisfactory", "Unsatisfying", "Unfulfilling", "Unrewarding", "Ungrateful", "Unappreciative", "Unthankful", "Arrogant", "Bashful", "Boastful", "Disrespectful", "Dishonest", "Disloyal", "Disobedient", "Disorderly", "Disorganized", "Cantankerous", "Contrary", "Cranky", "Cross", "Crabby", "Crusty", "Crotchety", "Grumpy", "Irritable", "Peevish", "Perverse", "Petulant", "Quarrelsome", "Short-tempered", "Sour", "Sullen", "Surly", "Testy", "Tetchy", "Touchy", "Uncooperative", "Unyielding", "Unaccommodating", "Uncompromising", "Unforgiving", "Unrelenting", "Unsympathetic", "Unemotional", "Unfeeling", "Unresponsive", "Uncommunicative", "Unexpressive", "Unenthusiastic", "Uninterested", "Unconcerned", "Uninvolved", "Uncommitted", "Unattached", "Unconnected", "Tactless", "Thoughtless", "Insensitive", "Inconsiderate", "Selfish", "Self-centered", "Self-absorbed", "Self-indulgent", "Self-serving", "Self-seeking", "Conceited", "Vain", "Proud", "Haughty", "Egotistical", "Egocentric", "Egoistic" }

To say creature name:
	sort the first name parts in random order;
	sort the second name parts in random order;
	sort the third name parts in random order;
	say "[entry 1 of the first name parts][entry 1 of the second name parts] the [entry 1 of the third name parts]";

The creature types are {"fish", "lizard", "man", "doll", "dog", "cat", "bird", "bat", "rat", "snake", "spider", "worm", "slug", "snail", "beetle", "fly", "moth", "butterfly", "bee", "wasp", "hornet", "mosquito", "gnat", "flea", "tick", "maggot", "larva", "pupa", "caterpillar", "grub", "weevil", "thrip", "midge", "cricket", "grasshopper", "locust", "cicada", "dragonfly", "lion", "tiger", "bear", "woman", "child", "rhinoceros", "hippopotamus", "giraffe", "zebra", "kangaroo", "koala", "wombat", "platypus", "sloth", "hyena", "jackal", "wolf", "fox", "coyote", "mechanical man", "golem" }.
The body parts are {"head", "neck", "shoulders", "arms", "elbows", "wrists", "hands", "fingers", "thumbs", "chest", "back", "stomach", "belly", "waist", "hips", "thighs", "knees", "shins", "calves", "ankles", "feet", "toes", "heels", "soles", "toenails", "fingernails", "hair", "eyebrows", "eyelashes", "eyes", "nose", "nostrils", "cheeks", "lips", "teeth", "tongue", "throat", "ears", "earlobes"}.

To say strange creature:
	sort the creature types in random order;
	sort the body parts in random order;
	say "a [entry 1 of the creature types] with the [entry 1 of the body parts] of a [entry 2 of the creature types]";

To say incantation:
	sort the first name parts in random order;
	sort the second name parts in random order;
	if a random chance of 1 in 2 succeeds:
		say "[entry 1 of the first name parts][entry 1 of the second name parts] [entry 2 of the second name parts in title case][entry 2 of the second name parts][entry 2 of the first name parts in lower case]";
	otherwise:
		say "[entry 1 of the first name parts][entry 1 of the second name parts] [entry 2 of the second name parts] [entry 2 of the first name parts][entry 3 of the second name parts][entry 3 of the first name parts in lower case]";

Instead of consulting the book of weird names about something:
	if the topic understood in lower case is not "hathgar the pitiful":
		say "[we] [look] up '[the topic understood]' in the book, but [find] nothing. Perhaps [we] [are] spelling it wrong.";
	otherwise:
		say "[we] [look] up 'Hathgar the Pitiful' in the book. Below a drawing of a doll with the head of a fly, the incantation 'Bara ba jagal' is written.";

Book 25.5 - Horton Family House Second Floor

The Second Floor of the Horton House is above the Horton Family House Kitchen. It is in ELR. It is indoors. "The second floor is a small, cramped space, with a single window looking out over the front yard. A small bed sits in one corner, while [if the rickety wardrobe is open]an open wardrobe fills a wall[otherwise]a closed wardrobe stands against a wall[end if]. A staircase leads down."

The small bed is scenery in the Second Floor of the Horton House. "A small bed sits in one corner. It's a rope bed, with a thin straw mattress."

The rickety wardrobe is a closed openable scenery container in the Second Floor of the Horton House. "A rickety wardrobe stands against a wall. It is [if open]open[otherwise]closed[end if]."



Book 26 - Astral Tunnel

The Horton astral tunnel is forthsouth of Horton Family House Parlor. It is privately-named. The printed name is "astral tunnel". It is in hyperspace. "It is featureless white, or what passes for white here. It bends 'backnorth' to 'backeast'.".

Fire Station 1 is backeast of the Horton astral tunnel. It is in ELR.

Book 27 - Horton Graveyard

the Horton graveyard is west of Horton Family House Kitchen. It is in ELR. It is outdoors. "It is riddled with holes where the bodies have been exhumed for the coming flood. Likewise, the gravestones have been removed, leaving only the holes. The Horton family house is to the east."

The shovel is in the Horton graveyard. "A shovel lies on the ground, forgotten."

Some holes are scenery in the Horton graveyard. "The graveyard is riddled with holes where the bodies have been exhumed for the coming flood. One of the holes is substantially larger and deeper than the others."

The large hole is a building facade. It is in Horton Graveyard. Understand "larger" as large hole. "The hole is substantially larger and deeper than the others."
	It fronts large grave.
	It is enterable from Horton Graveyard.

The large grave is a room. It is in ELR. It is outdoors. It is always-indefinite. "The hole is substantially larger and deeper than the others." 

Above the large grave is the Horton graveyard.

A metal case is a closed openable container. The description is "A small metal case, about the size of a breadbox. It seems to be made of lead. It is [if open]open[otherwise]closed[end if]." 
[ A metal corner is in the large grave. "[We] [notice] a small corner of something metallic sticking out of the dirt at the bottom of the hole." The description is "The corner of some metallic object, possibly made of lead, sticks out of the dirt at the bottom of the hole." ]

Instead of examining the dowsing rod when the location is the large grave and the metal case is nowhere:
	say "The dowsing rod is vibrating.";

Digging is an action applying to nothing. Understand "dig" as digging.

Check digging when the player does not enclose the shovel:
	say "[We] can't dig without a shovel." instead;

Check digging when the location is not the large grave and the location is diggable and the player encloses the shovel:
	say "[We] [try] digging a little bit, but nothing turns up." instead;

Check digging when the location is the large grave and the player encloses the shovel and the metal case is not nowhere:
	say "[We] [try] digging a little bit more, but nothing else turns up." instead;

Check digging when the location is not diggable and the player encloses the shovel:
	say "The ground here is not suitable for digging." instead;

Carry out digging when the location is the large grave and the player encloses the shovel and the metal case is nowhere:
	now the player carries the metal case;

Report digging when the location is the large grave and the player encloses the shovel and the metal case was nowhere:
	say "[We] [dig] a little bit, and [run] into something metallic. [We] [dig] a little more, and [find] a small metal case. [We] [take] it with [us].";

[ Understand the command "uncover" as something new.
Uncovering is an action applying to one thing. Understand "uncover [something]" as uncovering.
Understand "dig [something] out/up" as uncovering. Understand "dig out/up [something]" as uncovering. Understand "expose [something]" as uncovering.

Check uncovering the metal corner when the player does not enclose the shovel:
	say "It's too deep to reach without a shovel." instead;

Carry out uncovering the metal corner:
	now the metal case is in the location;
	now the metal corner is nowhere;
	
Report uncovering the metal corner:
	say "[We] [dig] the metal object out of the dirt, revealing a small metal case.";

Check uncovering something when the noun is not the metal corner:
	say "There's nothing to uncover here." instead; 

Instead of doing something other than uncovering to the metal corner:
	say "[We] [need] to uncover it first."; ]

Horton-back-facade is a building facade. It is in Horton Graveyard. It is privately-named. The printed name is "Horton Family House". Understand "Horton/House/Home" as Horton-back-facade. "Horton House is an old colonial-period house. [We] [are] in its backyard." 
	Horton-back-facade fronts Horton Family House Kitchen.
	It is enterable from Horton Graveyard. 

The Witnessing of Hezekiah is in the metal case. The description is "A small, leather-bound book, titled 'The Witnessing of Hezekiah: as told to Jeremiah Horton by Hezekiah Horton'. The book is filled with strange, cryptic passages, and is difficult to read. [We] [find] one page of particular interest. It reads, 'And lo, Hezekiah, in his wisdom, did prophesy of the impending flood and the necessity to make ready. He spoke of a sacred artifact, a resonator, bestowed with divine power, that would unveil a gateway to the ethereal realm. And he revealed the quest to find the astral focus, a sacred relic of great significance. Thus he spake: [']Take the resonator, and with reverence, bind it to the eternal flame, and then to the astral focus. Channel a mighty power through it, and direct them towards the crystal eye. Strike the eye thrice, with unwavering devotion, and behold, the portal shall open, revealing the path to transcendence.[']'";

The shiny astral resonator is in the metal case. It is privately-named. The description is "A small, shiny, metallic, cylindrical object. One end is capped with a crystal lens, while the other terminates in two shiny metal chains, each with a shiny metal clamp, as if it were designed to be attached to something.".
The printed name is "[if Astral Secrets is familiar]shiny astral resonator[otherwise]strange, shiny, metal object[end if]".
Understand "shiny/astral/resonator" as the shiny astral resonator when Astral Secrets is familiar.
Understand "strange/shiny/metal/metallic/cylindrical/cylinder/object" as the shiny astral resonator.
The snarky remark of the shiny astral resonator is "[if the rusty astral resonator is not familiar]Ooh. I've always wanted one of these[otherwise]Wow, this is one is so shiny[end if].".
The shiny clamps are part of the shiny astral resonator. The description is "Two metal chains, each with a metal clamp, are attached to the end of the [if Astral Secrets is familiar]resonator[otherwise]object[end if].". Understand "metal/-- chains" as the shiny clamps. They are plural-named.
The shiny crystal lens is part of the shiny astral resonator. The description is "A crystal lens is attached to the end of the [if Astral Secrets is familiar]resonator[otherwise]object[end if].".


Book 28 - Fire Station 1

The garage door is a closed locked lockable openable scenery door. It is west of Solvay Road 100 block and east of the Fire Station 1. Understand "big/red/door" as garage door. The description is "A big red door, with a sign reading 'Fire Station 1'."

Fire Station 1 is in ELR. The printed name is "Hook and Ladder Company #1". "The fire station is a modest red brick building dating to the late 19th century. The garage door is to the east."

The ladder is in the Fire Station 1. "A ladder rests against the wall."

The spotlight is in the Fire Station 1. The description is "A large, powerful spotlight, designed to be mounted on a fire truck. It has a short cord ending in a standard North American 120V AC plug."

Book 29 - Reading Room

The Reading Room is west of Main at Solvay. It is in ELR. The description is "The reading room is a small, cozy space, with a number of comfortable chairs and a few tables. A sales counter is at the back of the room. Bookshelves lead back into the depths of the store. A narrow staircase leads down."

The sales counter is scenery in the Reading Room. "An ordinary sales counter".

The bookshelves are scenery in the Reading Room. "The bookshelves are filled with a variety of books, from the latest bestsellers to obscure, out-of-print volumes."
Understand "bookshelf/shelf/shelves/books" as the bookshelves.

To poke is a verb.

Instead of searching the bookshelves:
	say "The bookshelves are filled with a variety of books, from the latest bestsellers to obscure, out-of-print volumes. [We] [poke] around and [find] nothing of use.";

Astral Secrets is on the sales counter. It is proper-named. The printed name is "[first time]the book [only][italic type]Astral Secrets[roman type]". Understand "book" as Astral Secrets.

"A book lies on the sales counter."

The description is "A book with a plain cover, titled 'Astral Secrets'. The author is listed as Jeremiah Horton.[paragraph break]Flipping through the book, [we] [find] a dog-eared page. The page shows a diagram of a small, metallic, cylindrical object, which is labeled 'astral resonator'. The text describes the resonator as a device for opening a portal through the astral plane. It goes on to describe the components of the device: a source of resonance, a source of light, and an 'astral lens', which it declines to describe further. The text also mentions that the resonator is powered by a source of electricity." 


Book 30 - Reading Room Basement

The Bookstore Basement is below the Reading Room. It is in ELR. The description is "The basement is dark and musty, with a number of shelves and boxes of books. The walls are made of old, crumbling brick. There is a faint breeze. A narrow staircase leads up[if the bricked-up-hole is revealed]. There is a ragged hole in the north wall, leading into a dark space[end if]."

A bricked-up-hole is a secret door. It is north of the Bookstore Basement and south of sewer tunnel 1. It is privately-named. The printed name is "bricked-up hole in the wall'". Understand "bricked-up", "bricked/up", "hole in/-- the/-- wall/--" as bricked-up-hole. It is open and not openable. "A ragged hole in the north wall, leading into a dark space." 

To break is a verb.

Attacking it with is an action applying to two things. Understand "attack [something] with [something]", "break [something] with [something]", "smash [something] with [something]", "hit [something] with [something]", "strike [something] with [something]", "pound [something] with [something]", "pummel [something] with [something]", "bash [something] with [something]", "crush [something] with [something]", "destroy [something] with [something]", "demolish [something] with [something]", "wreck [something] with [something]", "shatter [something] with [something]", "splinter [something] with [something]", "crack [something] with [something]", "thump [something] with [something]", "wallop [something] with [something]" as attacking it with.

Check attacking something with something when the second noun is not the sledgehammer:
	say "[text of block attacking rule response (A)][paragraph break]" instead;

Check attacking something with something when the noun is not the walls or the location is not the bookstore basement:
	say "[text of block attacking rule response (A)][paragraph break]" instead;

Instead of attacking the walls with the sledgehammer when the location is the Bookstore Basement and the bricked-up-hole is not revealed:
	say "[We] [break] through the wall, revealing a dark space to the north.";
	now the bricked-up-hole is revealed.

The basement shelves are scenery in the Bookstore Basement. "The shelves host a smattering of books, mostly old and dusty." Understand "bookshelf/shelf/shelves/books" as the basement shelves.

Instead of searching the basement shelves:
	say "The shelves host a smattering of books, mostly old and dusty. [We] [poke] around and [find] nothing of use.";

The boxes of books are scenery in the Bookstore Basement. "The boxes are filled with old, dusty books." Understand "box/boxes/books" as the boxes of books.

Instead of searching the boxes of books:
	say "The boxes are filled with old, dusty books. [We] [poke] around and [find] nothing of use.";

	
Book 31 - Sewer Tunnel

a sewer tunnel 1 is in ELR. It is privately-named. It is always-indefinite. The printed name is "sewer tunnel". Understand "sewer/tunnel" as sewer tunnel 1. "The tunnel is dark and damp, with a low ceiling. From here, it leads east. To the west it narrows to little more than a pipe. To the south is hole leading into a basement."

a sewer tunnel 2 is east of sewer tunnel 1. It is in ELR. It is privately-named. It is always-indefinite. The printed name is "sewer tunnel". Understand "sewer/tunnel" as sewer tunnel 2.  "The tunnel is dark and damp, with a low ceiling. From here, it leads east and west."

a sewer tunnel 3 is east of sewer tunnel 2. It is in ELR. It is privately-named. It is always-indefinite. The printed name is "sewer tunnel". Understand "sewer/tunnel" as sewer tunnel 3. "The tunnel is dark and damp, with a low ceiling. From here, it leads west, and turns into a small crawl to the east. There is a metal door with a lock to the north."

The astral-tunnel-elr is forth of sewer tunnel 3. It is privately-named. The printed name is "astral tunnel". It is in hyperspace. "It is featureless white, or what passes for white here. It leads back and backnorth.";

astral-tunnel-elr is forthsouth of the gym basement.

The gymnasium basement door is a locked closed openable lockable scenery door. It is north of sewer tunnel 3 and south of the gym basement.

Book 32 - Fresnel's Music

Fresnel's Music is southwest of Main at Solvay. It is in ELR. "The music store, like most of the town, is empty of all but a few items of little value."

A tuning fork is in Fresnel's Music. "A tuning fork lies on the counter." The description is "A tuning fork, used to tune musical instruments."

Book 33 - Henry's Hot Skillet

Henry's Hot Skillet is a room. It is in ELR.
The description is "This is the epitome of the homey small-town diner of times go by, except for the lack of all furniture, cooking implements, food, decor, and so on. There is a staircase leading up. A pair of insulated wires hangs from the ceiling at one end of the counter. "

the Skillet door is a closed locked openable lockable scenery door. It is south of Main at Solvay and north of Henry's Hot Skillet. The Skillet door has matching key the brass key.

The lunch counter is scenery in Henry's Hot Skillet. "A typical mid-twentieth-century lunch counter."

The wires are scenery in Henry's Hot Skillet. "Two insulated wires with bare ends, they probably once attached to some electrical device sitting on the counter."
They are plural-named.

Book 34 - Henry's Roof

Henry's Roof is above Henry's Hot Skillet. It is in ELR. The description is "From here one can see much of the town, including a clear view of the obelisk in Enigma Park. There is a large TV aerial jutting from the roof here." The preposition is "on".

The TV aerial antenna is scenery in Henry's Roof. "A large, metallic rooftop antenna, characterized by its array of horizontal and vertical rods designed to capture VHF (very high frequency) broadcasts."

Obelisk-from-Henry's-Roof is privately-named scenery in Henry's Roof. The printed name is "the Enigma Park obelisk". Understand "obelisk/enigma/park" as Obelisk-from-Henry's-Roof. "There's a clear line of sight from here to the tip of the obelisk."

Book 35 - Rolle's Department Store

Rolle's Department Store is south of Main Street 200 Block. It is in ELR. It is a leavable room. The egress is north. 
The description is "Once, town department stores like this were a constant of American life. Sadly, this one is empty of everything save a number of sale posters and its gleaming floor."
The snarky remark of Rolle's Department Store is "I guess the sale is over."

The gleaming floor is scenery in Rolle's Department Store. "Someone has polished it spotless, despite the looming destruction of the store. That's dedication."

Does the player mean doing something to the gleaming floor: 
	It is very likely;
	
The sale posters are scenery in Rolle's Department Store. "'50% off everything in the store!'"

The floor waxer is a fixed in place thing in Rolle's Department Store. "A floor waxer sits in the center of the gleaming floor." The description is "This is a bulky, heavy-duty machine with a large, round brush head, designed for durability and the ability to polish vast floor areas to a high shine."
The snarky remark is "I'm sure I've seen this floor waxer before somewhere."



Book 36 - Public Gymnasium

The gym door is a closed locked openable lockable scenery door. It is east of Lake Street by the gym and west of the public gymnasium.
The snarky remark of the gym door is "C'mon, I need to get my reps in."

The public gymnasium is in ELR. "There is a basketball court and a weight training area. A front desk is next to the front entrance."
The snarky remark of the public gymnasium is "This is the kind of government largesse that bankrupted 1950s America. For reals."

Index map with public gymnasium mapped east of Lake Street by the gym.

The gym front desk is a scenery supporter in the public gymnasium. "Some kind of record book sits on the front desk."
The snarky remark of the gym front desk is "Where do I scan my ID card?"

The membership book is a fixed in place thing on the gym front desk. The description is "It's a book apparently full of records of the members of the gym. [We] could LOOK UP a member's name IN BOOK."
The snarky remark of the membership book is "God forbid this information should fall into the wrong hands."

Instead of consulting the membership book about something:
	if the topic understood matches "william thompson" or the topic understood matches "bill thompson" or the topic understood matches "thompson":
		say "[fixed letter spacing]WILLIAM THOMPSON[line break]
		126 Rochester Road[line break]
		Enigma Lake, NY[line break]
		#[correct locker number].[variable letter spacing][paragraph break]";
		now looked up locker is true;
	otherwise:
		say "[We] can't find that name in the membership book.";

The basketball court is scenery in the public gymnasium. "It's a regulation basketball court, with a shiny hardwood floor and a pair of hoops at either end. It's silent and empty." Understand "court" as the basketball court.
The snarky remark of the basketball court is "Time for Air Faraji to put on a clinic."

The basketball hoops are scenery in the public gymnasium. "A pair of basketball hoops are mounted at either end of the court." Understand "hoop/hoops" as the basketball hoops.
The snarky remark of the basketball hoops is "I'm going to dunk on you so hard."

The basketball-ball is in the public gymnasium. It is privately-named. The printed name is "basketball". Understand "basketball/ball" as the basketball-ball.
 "A basketball lies on the floor." The description is "A regulation basketball, well-worn but fully inflated."
 The snarky remark of the basketball-ball is "Prepare for some punishment."

The basketball score is a number that varies. The basketball score is 0.

Shooting is an action applying to one thing. Understand "shoot [something preferably held]" as shooting. Understand "shoot hoops" as shooting. Understand "shoot baskets", "play basketball", "play hoops", "play ball", "shoot" as shooting.
The Shooting action has a number called the points.

Rule for supplying a missing noun while shooting:
	if the basketball-ball is in the location or the player encloses the basketball-ball:
		now the noun is the basketball-ball;
	otherwise:
		say "There is no basketball here." instead.

Check shooting (this is the can't shoot what you don't have rule):
	if the actor is carrying the noun, continue the action;
	if the actor is wearing the noun, continue the action;
	carry out the implicitly taking activity with the noun;
	if the actor is carrying the noun, continue the action;
	stop the action.

Check shooting when the noun is not the basketball-ball:
	say "Shooting is for basketballs only." instead;

Check shooting when the location is not the public gymnasium:
	say "There are no hoops here." instead;

Carry out shooting:
	if a random chance of 1 in 2 succeeds:
		now the basketball score is the basketball score + 2;
		now the points is 2;
	now the basketball-ball is in the public gymnasium;

Report shooting:
	if the points is 2:
		say "[one of]The ball swishes through the hoop[or]The ball bounces off the backboard and in[or]The ball hits the rim and drops through[or]The ball banks in off the backboard[or]The ball drops through the net[or]The ball rattles around the rim and in[or]The ball drops through the hoop[or]The ball hits nothing but net[at random]. Two points![paragraph break]";
		say "The score is now [basketball score].";
	otherwise:
		say "[one of]Oof. Air ball[or]The ball clanks off the rim[or]The ball hits the backboard and bounces off[or]The ball misses everything[or]The ball hits the rim and bounces away[or]The ball hits the backboard and bounces away[or]The ball hits the front of the rim and bounces away[or]The ball hits the back of the rim and bounces away[at random]."

Dunking is an action applying to one thing. Understand "dunk [something preferably held]" as dunking. Understand "dunk" as dunking. 

Rule for supplying a missing noun while dunking:
	if the basketball-ball is in the location or the player encloses the basketball-ball:
		now the noun is the basketball-ball;
	otherwise:
		say "There is no basketball here." instead.

Check dunking (this is the can't dunk what you don't have rule):
	if the actor is carrying the noun, continue the action;
	if the actor is wearing the noun, continue the action;
	carry out the implicitly taking activity with the noun;
	if the actor is carrying the noun, continue the action;
	stop the action.

Check dunking when the noun is not the basketball-ball:
	say "Dunking is for basketballs only." instead;

Check dunking when the location is not the public gymnasium:
	say "There are no hoops here." instead;

Carry out dunking:
	now the basketball-ball is in the public gymnasium;

Report dunking:
	say "[one of]Faraji goes up for the dunk... and misses the rim entirely[or]Faraji tries to dunk, but the ball slips out of their hands[or]Faraji tries a reverse dunk, but slips on the floor[or]Faraji sails through the air from the top of the key, and almost makes it halfway to the hoop[at random]."

The weight training area is scenery in the public gymnasium. "A number of weight machines and free weights are arranged around a padded area separated from the basketball court."
The snarky remark of the weight training area is "Weights are for people who can't shoot hoops."

The weight machine is scenery in the public gymnasium. "A weight machine, designed to work the upper body." Understand "weight/-- machines" as the weight machine.
The snarky remark of the weight machine is "No, I'm already too ripped."

The free weights are scenery in the public gymnasium. "A set of free weights, ranging from 5 to 50 pounds." Understand "weights" as the free weights.
The snarky remark of the free weights is "Free? I'll take them all."

Check taking the free weights:
	say "The weights are too heavy to carry around.";

Lifting weights is an action applying to nothing. Understand "lift weights", "pump iron", "work out", "exercise" as lifting weights.

Check lifting weights when the location is not the public gymnasium:
	say "There are no weights here." instead;

Check lifting weights:
	say "Not when we're still trying to answer that damn phone." instead;


Book 37 - Gym Basement

The gym basement is below the public gymnasium. It is in ELR. "This area is dominated by large banks of lockers."
The snarky remark of the gym basement is "I'm trying to remember my combination."

The bank of lockers is scenery in the gym basement. Understand "banks/locker" as the bank of lockers.
"The lockers are numbered 1 to 100."
The bank of lockers can be opened-once.
The snarky remark of the bank of lockers is "I'm not searching every locker."

Looked up locker is a truth state that varies.

Opening a locker is an action applying to one number. Understand "open locker/-- number/-- [number]", "search locker number/-- [number]", "look in locker/-- number/-- [number]" as opening a locker when the location is the gym basement.

Check opening a locker when looked up locker is false:
	say "[We] [are] hardly going to try opening every locker. There must be a better way to go about this." instead;
	
Check opening a locker:
	if the number understood < 1 or the number understood > 100:
		say "The lockers are numbered 1 to 100." instead;
		
Check opening a locker when the player does not enclose the red key:
	say "[We] [don't] have a key for the locker." instead;
	
Check opening a locker:
	if the number understood is not the correct locker number:
		say "The key doesn't fit the lock." instead;
		
Carry out opening a locker:
	if the bank of lockers is not opened-once:
		say "[We] [open] the locker. It contains some dirty gym clothes, among which [we] find [an old copper key]. [We] [take] it and close the locker.";
		now the bank of lockers is opened-once;
		now the player carries the old copper key;
	otherwise:
		say "The locker contains nothing but some old gym clothes.";

Locker-opening it with is an action applying to one number and one thing. Understand "open locker/-- number/-- [number] with [something]", "search locker number/-- [number] with [something]", "look in locker/-- number/-- [number] with [something]" as locker-opening it with when the location is the gym basement.

Check locker-opening a number with something when looked up locker is false:
	say "[We] [are] hardly going to try opening every locker. There must be a better way to go about this." instead;
	
Check locker-opening:
	if the number understood < 1 or the number understood > 100:
		say "The lockers are numbered 1 to 100." instead;

Check locker-opening a number with something when the second noun is a key and the second noun is not the red key:
	say "The key doesn't fit the lock." instead;
		
Check locker-opening a number with something when the second noun is not a key:
	say "You need to use a key, not [a second noun]." instead;
	
Check locker-opening a number with the red key:
	if the number understood is not the correct locker number:
		say "The key doesn't fit the lock." instead;
		
Carry out locker-opening a number with the red key:
	if the bank of lockers is not opened-once:
		say "[We] [open] the locker. It contains some dirty gym clothes, among which [we] find [an old copper key]. [We] [take] it and close the locker.";
		now the bank of lockers is opened-once;
		now the player carries the old copper key;
	otherwise:
		say "The locker contains nothing but some old gym clothes.";

Check searching the bank of lockers:
	say "The lockers are numbered 1 to 100. [We] [are] hardly going to try opening every locker. There must be a better way to go about this." instead;

Check inserting something into the bank of lockers:
	say "There's no point in that." instead;

Putting in a locker is an action applying to one thing and one number. Understand "put [other things] in/inside/into locker/-- number/-- [number]", "insert [other things] in/into locker/-- number/-- [number]", "drop [other things] in/into/down locker/-- number/-- [number]" as putting in a locker when the location is the gym basement.

Check putting in a locker:
	say "There's no point in that." instead;


		
Volume 4 - Eerie Sounds

Sound interval is a number that varies.

To spin is a verb. To cock is a verb.

Every turn when location is in ELR:
	increment sound interval;
	if the location is outdoors:
		if sound interval > 2 and a random chance of 1 in 10 succeeds:
			now sound interval is sound interval - 10;
			if sound interval > 0:
				now sound interval is 0;
			say "[one of]The seeming sound of sibilant speech carries on the breeze[or][We] [turn] [our] head quickly, as if something caught [our] eye[or]A strange shadow crosses the scene[or][We] abruptly [spin] around, but [find] nothing behind [us][or][We] [cock] [our] head at a strange sound[or]Distinct footsteps sound from not too far away[or]An unseasonably chilly wind causes [us] to hug [our] shoulders[then at random]."

Volume 4.5 - The Mystic Compass in Enigma Lake

After going to Solvay-Road-by-the-lake when the player encloses the Mystic Compass:
	say "The mystic compass pings softly.";
	continue the action;

After going to Enigma Lake Town Hall when the player encloses the Mystic Compass:
	say "The mystic compass pings softly.";
	continue the action;

Instead of examining the mystic compass:
	if the location is Solvay-Road-by-the-lake:
		say "The readout of the mystic compass says '[shack spacetime setting].'";
	otherwise if the location is the Enigma Lake Town Hall:
		say "The readout of the mystic compass says '[town hall spacetime setting].'";
	otherwise:
		say "The mystic compass shows nothing.";
	if the mystic compass is not snarked:
		if the snarky remark of the noun is not empty:
			lb;
			say "[italic type][snarky remark of the noun][roman type][paragraph break]";
			now the noun is snarked;

Volume 4.5 - The Lizard People

The group of lizard people is a person. The description is "Three humanoid figures, each with a long, scaly tail and a head that looks like a lizard's. They are dressed in smart grey suits." The group of lizard people is in Rolle's Department Store.

Every turn when the group of lizard people is not in the location:
	if the group of lizard people is in a room (called current space):
		let seen at first be false;
		if the location overlooks the current space:
			say "[We] [see] the faint trace of shadowy figures off in the distance, [the preposition of the current space] [the pretty name of the current space].";
			now seen at first is true;
		let next space be a random room which is adjacent to current space;
		if next space is not the location:
			let dir be the best route from the current space to the next space;
			let seen at last be false;
			if dir is a direction:
				try group of lizard people going dir;
				now seen at last is whether or not the location overlooks the next space;
			let old structure be the structure name of the current space;
			let new structure be the structure name of the next space;
			if seen at last is true and seen at first is true:
				if old structure is not new structure:
					if old structure is not "" and new structure is not "":
						say "The shadowy figures move [dir], emerging from [the old structure] and entering [the new structure].";
					otherwise if old structure is not "":
						say "The shadowy figures move [dir], emerging from [the old structure] to [the pretty name of the next space].";
					otherwise if new structure is not "":
						say "The shadowy figures move [dir], from [the pretty name of the current space] into [the new structure].";
				otherwise:
					say "The shadowy figures move [dir], [the preposition of the next space] [the pretty name of the next space].";
			otherwise if seen at last is true:
				if old structure is not new structure:
					if old structure is not "" and new structure is not "":
						say "Some shadowy figures emerge from [the old structure] and enter [the new structure], moving [dir].";
						[ say "Some shadowy figures appear [from-dir the opposite of dir], emerging from [the old structure] and entering [the new structure]."; ]
					otherwise if old structure is not "":
						say "Some shadowy figures emerge from [the old structure] at [the pretty name of the next space], moving [dir].";
						[ say "Some shadowy figures appear [from-dir the opposite of dir], emerging from [the old structure] to [the pretty name of the next space]."; ]
					otherwise if new structure is not "":
						say "Some shadowy figures leave [the pretty name of the current space] and enter [the new structure], moving [dir].";
						[ say "Some shadowy figures appear [from-dir the opposite of dir], entering [the new structure]."; ]
				otherwise:
				  	say "Some shadowy figures come into view [from-dir the opposite of dir], [the preposition of the next space] [the pretty name of the next space].";
			otherwise if seen at first is true:
				if old structure is not new structure:
					if old structure is not "" and new structure is not "":
						say "The shadowy figures move out of sight [to-dir dir], leaving [the old structure] and entering [the new structure].";
					otherwise if old structure is not "":
						say "The shadowy figures move out of sight [to-dir dir], leaving [the old structure].";
					otherwise if new structure is not "":
						say "The shadowy figures move out of view [to-dir dir], from [the pretty name of the current space], into [the new structure].";
				otherwise:
					say "The shadowy figures move out of view [to-dir the dir].";
		
To say from-dir (dir - a direction):
	if dir is up:
		say "from above";
	otherwise if dir is down:
		say "from below";
	otherwise if dir is inside:
		say "from inside";
	otherwise if dir is outside:
		say "from outside";
	otherwise:
		say "from the [dir]";

To say to-dir (dir - a direction):
	if dir is up:
		say "upward";
	otherwise if dir is down:
		say "downward";
	otherwise if dir is inside:	
		say "inside";
	otherwise if dir is outside:
		say "outside";
	otherwise:
		say "to the [dir]";


Volume 5 - Polish


[Table of Floors (continued)
locale (a room)	has floor (a truth state)	floor description (a text)	touch description (a text)
strip mall parking lot south	--	"Black asphalt."
strip mall parking lot north	--	"Black asphalt."
li'l nectarine convenience store	--	"Grungy black and white tile."
Dave's pawn shop	--	"Dingy stained industrial carpet."]

Volume 6 - Not for Release

power querying is an action applying to one thing. Understand "is [something] powered" as power querying.

Carry out power querying:
	if the noun is powered:
		say "Yes.";
	otherwise:
		say "No.";

test cord with "gonear church/take cord/plug it into outlet/e/drop cord/w/unplug cord/plug cord into outlet/e/purloin lamp/plug lamp into cord/w/e/drop lamp/w/take lamp/drop cord/w/drop lamp
/w/unplug cord/take cord/".
test steeple with "gonear church/take cord/plug it into outlet/u/purloin makeshift astral resonator/take telescope/put resonator in tripod/plug resonator into cord/look".

test hathgar with "gonear kitchen/s/gonear lake street by the park/e".
test shiny with "gonear radio roof/purloin shiny object".

query-naming is an action applying to nothing. Understand "is hathgar named" as query-naming.
Carry out query-naming:
	say whether or not the doll-fly is named;

Enigma Lake ends here.
