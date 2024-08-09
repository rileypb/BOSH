Enigma Lake by Philip Riley begins here.

Use authorial modesty.

Include Swimming by Philip Riley.
Include Building Facades by Philip Riley.
Include Scheduled People by Philip Riley.
Include Secret Doors by Gavin Lambert.
Include Plugging by Philip Riley.
Include Simple Conversation by Philip Riley.
Include New Light by Philip Riley.
Include Books by Philip Riley.
Include Container Types by Philip Riley.
Include Extension Cord by Philip Riley.
Include State Update by Philip Riley.

Volume 1 - Some Stuff

ELR is a region.

The correct locker number is a number that varies.

When play begins:
	if DEBUG is false:
		now the correct locker number is a random number from 11 to 89;
	otherwise:
		now the correct locker number is 1;

To decide if mounted-rusty-resonator:
	decide on whether or not the rusty astral resonator is in the threaded socket and the clean battery is hooked up;

To decide if mounted-shiny-resonator:
	decide on whether or not the platform supports the shiny astral resonator and the power switch is switched on;


Book 1 - The Weather

weather is a kind of value. The weathers are clear, cloudy, drizzling, raining, and storming. 

The current weather is a weather that varies. The current weather is clear.

The weather clock is a number that varies. The weather clock is 0.

The weather-backdrop is a backdrop. It is in ELR. It is privately-named. The printed name is "weather".

Understand "drizzle/rain" as the weather-backdrop when the current weather is drizzling.
Understand "rain" as the weather-backdrop when the current weather is raining.
Understand "rain/storm/rainstorm/thunder/lightning" as the weather-backdrop when the current weather is storming.
Understand "weather" as the weather-backdrop.

Instead of examining the weather-backdrop:
	describe the current weather.

To describe (W1 - a value) changing to (W2 - a value):
	if W1 is clear and W2 is cloudy:
		say "The sky clouds over, and the air grows cooler. The moon disappears behind a veil of clouds.";
	if W1 is cloudy and W2 is clear:
		say "The clouds part, and the moon shines down on the town.";
	if W1 is cloudy and W2 is drizzling:
		say "A light drizzle begins to fall, chilly in the night air.";
	if W1 is drizzling and W2 is cloudy:
		say "The drizzle stops, at least for now.";

To decide what weather is a tick up from (W - a weather):
	if W is clear:
		decide on cloudy;
	if W is cloudy:
		decide on drizzling;
	if W is drizzling:
		decide on raining;
	decide on storming;

To decide what weather is a tick down from (W - a weather):
	if W is storming:
		decide on raining;
	if W is raining:
		decide on drizzling;
	if W is drizzling:
		decide on cloudy;
	decide on clear;

weather described is a truth state that varies. weather described is false.

Last every turn rule:
	now weather described is false.

Every turn when location is in ELR (this is the weather changing rule):
	increase the weather clock by 1;
	let original weather be the current weather;
	if the weather clock is 4:
		now the current weather is cloudy;
	otherwise if the weather clock is 8:
		now the current weather is drizzling;
	otherwise if a random chance of 1 in 10 succeeds:
		now the current weather is a tick up from the current weather;
	otherwise if a random chance of 1 in 10 succeeds:
		now the current weather is a tick down from the current weather;
		if the current weather is clear:
			now the current weather is cloudy;
	if the location is outdoors:
		if original weather is not the current weather:
			describe original weather changing to current weather;
		otherwise if a random chance of 1 in 10 succeeds:
			describe the current weather;

To describe the current weather:
	if weather described is false:
		if the location is indoors:
			say "You can't see the weather from here";
			if the current weather is storming:
				say ", but you can hear the storm outside.";
			otherwise:
				say ".";
			stop;
		if the current weather is clear:
			say "[one of]The sky is clear, and the moon shines down on the town[or]The moon is bright in the clear sky[or]The stars twinkle in the clear sky[or]The moon is full and bright, casting a silvery light over the town[or]Clear skies grace the town of Enigma Lake[or]The stars are out tonight[at random].";
		if the current weather is cloudy:
			say "[one of]The sky is overcast, and the moon is hidden behind the clouds[or]The clouds obscure the moon[or]The moon occasionally peeks from behind the clouds[or]The clouds obscure the stars[or]The sky is overcast[or]The moon is hidden behind the clouds[or]Clouds have gathered over the town[or]The sky is void of stars tonight[at random].";
		if the current weather is drizzling:
			say "[one of]The drizzle picks up a bit, and the air grows colder[or]The drizzle falls steadily, chilling the air[or]The chill of the drizzle seeps into [our] bones[or]The drizzle falls steadily, soaking the ground[or]The sad drizzle soaks [us][at random].";
		if the current weather is raining:
			say "[one of]The rain falls steadily, soaking the ground[or]The rain falls in a steady downpour[or]The rain falls in a steady rhythm[or]The cold rain pelts Faraji[or]Faraji shivers in the cold rain[or]Large drops of rain fall from the dark sky[at random].";
		if the current weather is storming:
			say "[one of]The storm rages, lightning flashing and thunder rolling[or]The storm rages, the wind howling and the rain falling in sheets[or]The storm rages, the air filled with the sound of thunder and the smell of ozone[or]Faraji is pelted by the storm[at random].";
		now weather described is true;

After going from somewhere (called S) to somewhere (called T) when the location is in ELR:
	if S is indoors and T is outdoors:
		describe the current weather;
	continue the action;

Understand "clouds/cloud" as the ceiling when the location is in ELR and the current weather is not clear.

Instead of examining ceiling when the location is in ELR and the location is outdoors:
	describe the current weather;

The moon is a backdrop. It is in ELR. 
The stars are a backdrop. They are in ELR. Understand "star" as the stars.

Instead of examining the moon:
	if the location is indoors:
		say "You can't see the moon from here.";
		stop;
	if the current weather is clear:
		say "The moon is full and bright, casting a silvery light over the town.";
	otherwise:
		say "The moon is hidden behind the clouds.";
	now weather described is true;

Instead of examining the stars:
	if the location is indoors:
		say "You can't see the stars from here.";
		stop;
	if the current weather is clear:
		say "The stars twinkle in the clear sky.";
	otherwise:
		say "The stars are hidden behind the clouds.";	
	now weather described is true;

Volume 2 - Special Items

The old copper key is a key. The description is "A heavy, old-fashioned key, made of copper." 

An astral resonator type is a kind of thing.

The makeshift astral resonator is an astral resonator type. It is pluggable.
The description is "A makeshift astral resonator, cobbled together from a tuning fork, a spotlight, and the astral lenses[if the makeshift astral resonator is powered]. A beam of light shoots from the lens[end if][if the content of the tripod is the makeshift astral resonator]. It is mounted on a tripod[end if]."
It is privately-named. The printed name is "[if Astral Secrets is read]makeshift astral resonator[otherwise]strange wooden object[end if]".
Understand "makeshift/astral/resonator" as the makeshift astral resonator when Astral Secrets is read.
Understand "strange/wooden/object" as the makeshift astral resonator.

Instead of examining the makeshift astral resonator:
	say "The [makeshift astral resonator] is a cobbled-together device, made from a tuning fork, a spotlight, and the astral lenses. A short cord with a plug dangles from the end opposite the lenses";
	if the makeshift astral resonator is plugged into the electrical outlet:
		say ", plugged into the electrical outlet";
	if the makeshift astral resonator is plugged into the extension cord or the makeshift astral resonator is plugged into the socket-end:
		say ", plugged into the extension cord";
	if mounted-makeshift-resonator:
		say ". It sits on a tripod, and a beam of light shoots from the lens, striking the obelisk in the park. The crystal is glowing [crystal glow].";
	otherwise if the makeshift astral resonator is powered:
		say ". A beam of light shoots from the lens, striking a wall.";
	otherwise if content of the tripod is the makeshift astral resonator:
		say ". It is mounted on a tripod.";
	otherwise:
		say ".";



[ Description notes for the makeshift astral resonator:
	if the makeshift astral resonator is powered:
		add "providing light" to descriptive notes; ]

The wristwatch is a thing. Understand "watch" as the wristwatch. The description is "A simple wristwatch. The initials 'DM' are engraved on the back."
Understand "DM" as the wristwatch.

Volume 3 - Geography



Book 0.5 - Directions

A room has a real number called the x-coordinate. A room has a real number called the y-coordinate.

Book 1 - Town Hall

the Enigma Lake town hall is a leavable room. It is in ELR. It is unleavable. It is indoors.
"The building has been cleared of furniture and other items ahead of the imminent flooding. A permanent fixture, the information desk sits near the front entrance (to the south). Taped to it is what looks to be a work schedule. There is also a back entrance onto the park to the north."
The snarky remark is "Time travel should be accompanied by more fanfare."
The x-coordinate of the Enigma Lake town hall is 0. The y-coordinate of the Enigma Lake town hall is 0.

The information desk is scenery in the Enigma Lake town hall. Understand "info desk", "help desk", "front desk", "permanent/fixture" as information desk. "A work schedule is taped to the desk."

The bell is on the information desk. The description is "A small brass bell, used to summon the attention of the town hall staff."

Chiming is an action applying to one thing. Understand "ring [something]" as Chiming.
Understand "push [bell]", "hit [bell]" as Chiming.

Instead of Chiming the bell when the location is the Enigma Lake town hall:
	say "Faraji rings the bell. It makes a clear, high-pitched sound that quickly fades away.";

Instead of Chiming the bell:
	say "Faraji rings the bell. It makes a clear, high-pitched sound.";

Instead of Chiming something when the noun is not the bell:
	say "That's not something [we] can ring.";

The backpack is a closed openable container. It is behind the information desk. The description is "Stitched into the fabric are the initials 'WGT'.".
Understand "back/pack/rucksack/ruck/sack/knapsack/knap" as the backpack. It is wearable.

Before doing something to the backpack when the backpack is worn:
	if the current action is taking off the backpack:
		continue the action;
	otherwise if the current action is dropping the backpack:
		continue the action;
	otherwise:
		say "You'll have to take off the backpack first.";
		stop the action;

After dropping the backpack:
	say "You slide the backpack off your shoulders and drop it to the floor.";

The red key is a key. It is inside the backpack. Understand "ELG", "gym/gymnasium key" as the red key. The description is "The letters ELG are printed on the key, labeling it the property of Enigma Lake Gymnasium.".

The work schedule is scenery in the Enigma Lake town hall. 
"[fixed letter spacing] +---------------------------------+[line break]
|Name            Shift            |[line break]
+---------------------------------+[line break]
|Monday          Edward Alpha     |[line break]
|                Arthur Davenport |[line break]
|                Margot Fenn      |[line break]
|                Rosemary Tamsin  |[line break]
|Tuesday         Mary Huff        |[line break]
|                Andrew Kline     |[line break]
|                Leonard Mink     |[line break]
|                Pauline Nettles  |[line break]
|Wednesday       Bill Thompson    |[line break]
|                Harriet Underwood|[line break]
|                Victor Xander    |[line break]
|                Yolanda Zane     |[line break]
|Thursday        Edward Alpha     |[line break]
|                Arthur Davenport |[line break]
|                Oren Fenn        |[line break]
|                Maggie Vickers   |[line break]
|Friday          Rosemary Tamsin  |[line break]
|                Leonard Mink     |[line break]
|                Zephram Nettles  |[line break]
|                Daphne O'Leary   |[line break]
|Saturday        Mary Huff        |[line break]
|                Leola Root       |[line break]
|                Thomas Sander    |[line break]
|                Ursula Tamsin    |[line break]
+---------------------------------+[variable letter spacing]".

After examining the work schedule when the backpack is nowhere:
	say "Faraji notices something behind the desk.";

The building is scenery in the Enigma Lake town hall.

Instead of examining the building:
	try examining the Enigma Lake town hall;

After examining the information desk when the backpack is nowhere:
	now the player carries the backpack;
	say "[We] [find] a backpack behind the information desk and [take] it.";
	now the backpack is not behind the information desk;
	continue the action;

Chapter 1 - Town Hall backdrop

The Town Hall Facade is a building facade. 
	It is in Main Street 200 Block, Main at Solvay, Solvay Road 100 block, Solvay Road leading out of town, Enigma Park, Lake Street by the park, Lake Street by the gym, and Main at Lake. It is privately-named. The printed name is "town hall". 
	Understand "town/city/hall" as the Town Hall Facade. 
	"The archetypical town hall of the northeastern US, it's a white-sided building the size of a large house, exuding a sense of civic duty. [if location is Main Street 200 block]The front entrance is to the north[otherwise if location is Enigma Park]The back entrance is to the south[otherwise]There are no entrances on this side[end if]."
	The town hall facade fronts the Enigma Lake town hall.
	The town hall facade is enterable from Main Street 200 Block. 
	The town hall facade is enterable from Enigma Park.

Book 2 - Enigma Park

To explore is a verb.

Enigma Park is a leavable room. It is north of Enigma Lake town hall. It is unleavable. Enigma Park is in ELR. It is outdoors.
"[first time]It's probably beautiful during the day, but tonight the deep shadows among the trees seem ominous. Faraji is watchful and tense as they explore the park. 

[only]The central focus of the park is a large obelisk inscribed with the names of the town's citizens lost in the Great War. Firs and maples line the paths. The town hall is to the south, and other exits are to the north, west, and east. Other egress is blocked by stone walls[park beam description][if obelisk-ladder is revealed]

The obelisk has moved, revealing a ladder leading down into the ground[end if]."


To say park beam description:
	beam description, in the park;

To beam description, in the park:
	let bc be beam count;
	if bc > 0:
		let sources be a list of texts;
		if mounted-shiny-resonator:
			add "the broadcast tower" to sources;
		if mounted-rusty-resonator:
			add "Henry's Hot Skillet" to sources;
		if mounted-makeshift-resonator:
			add "the steeple" to sources;
		let source string be the substituted form of "[sources]";
		if in the park:
			if bc is 1:
				say ".[paragraph break]A bright beam of light shoots from [source string], striking the obelisk. The crystal is glowing [crystal glow]";
			otherwise:
				say ".[paragraph break]Bright beams of light shoot from [source string], striking the obelisk. The crystal is glowing [crystal glow]";
		otherwise:
			if bc is 1:
				say "A bright beam of light shoots from [source string], striking the obelisk in the park. The crystal is glowing [crystal glow]";
			otherwise:
				say "Bright beams of light shoot from [source string], striking the obelisk in the park. The crystal is glowing [crystal glow]";

After printing the locale description when beam count > 0 and the location is outdoors and the location is in ELR and the location is not Enigma Park:
	beam description;
	say ".[paragraph break]";

The x-coordinate of Enigma Park is 0. The y-coordinate of Enigma Park is 1.

Some trees are scenery in Enigma Park. Understand "tree/fir/firs/maple/maples" as trees. "A mixture of sturdy firs and maples, unaware of the pending cataclysm."

Some shadows are scenery in Enigma Park. "Without a lantern, it's inadvisable to venture into the shadows."

The obelisk is scenery in Enigma Park. Understand "monument/names/citizens" as the obelisk. "Its faux Egyptian design is incongruous adjacent to the adamantly traditional town hall. [We] [can] just make out a small crystal adornment rising from the top."

The names are scenery in Enigma Park. "The names of the town's citizens lost in the Great War are inscribed on the obelisk." Understand "citizens" as names.					

The adornment is scenery in Enigma Park. "From what [we] can make out, it's a clear crystal held aloft by some kind of metal fitting." Understand "crystal/ornament/decoration/fitting" as the adornment.
Understand "beam/beams" as the adornment when beam count > 0.

Instead of examining the adornment:
	if beam count > 0:
		say "The crystal is glowing [crystal glow].";
	otherwise:
		say "From what [we] can make out, it's a clear crystal held aloft by some kind of metal fitting.";

Check climbing up:
	say "[We] can't climb that." instead;
	
Check climbing up the obelisk:
	say "The obelisk offers no handholds adequate for climbing." instead;
	
Check climbing up trees:
	say "[We] would rather not break [our] leg." instead;
	
Park facade is a building facade. It is in Solvay Road leading out of town, the lake shore north of the park, Lake Street by the park, and Enigma Lake Town Hall. It is privately-named. The printed name is "Enigma Park". Understand "enigma/park" as Park facade. "[if location is Enigma Lake Town Hall]Faraji can't see much from here[otherwise]A shadowy clump of trees marks the edge of Enigma Park[end if]."
	It is enterable from Solvay Road leading out of town.
	It is enterable from Lake shore north of the park.
	It is enterable from Lake Street by the park.
	It is enterable from Enigma Lake Town Hall.
	It fronts Enigma Park.

Book 3 - Main Street 200 Block

the Main Street 200 block is south of Enigma Lake Town Hall. It is in ELR. It is outdoors. The printed name is "200 block of Main Street". The preposition is "on".

The description is "The street runs east and west from here. South is the edifice of Rolle's Department Store. North is the town hall."
The x-coordinate of the Main Street 200 block is 0. The y-coordinate of the Main Street 200 block is -1.

Rolle's facade is a building facade in Main Street 200 block. It is privately-named. The printed name is "Rolle's Department Store". Understand "rolle's/rolle/department/store/shop" as Rolle's facade. "Once, town department stores like this were a constant of American life before they were gobbled up by the big box stores."
	Rolle's facade fronts Rolle's Department Store.
	It is enterable from Main Street 200 Block.

Book 4 - Main at Solvay

Main at Solvay is west of Main Street 200 Block. It is in ELR. It is outdoors. The printed name is "Main and Solvay". The preposition is "on the corner of".

The description is "Main Street runs east from here, while Solvay Road heads north. South of here, Henry's Hot Skillet promises all of the comforts of the mid-twentieth-century diner. A bookstore named The Reading Room lies to the west, while Fresnel's Music is southwest."
The x-coordinate of Main at Solvay is -1. The y-coordinate of Main at Solvay is -1.

Henry's facade is a building facade. It is in Main at Solvay. It is privately-named. The printed name is "Henry's Hot Skillet".  Understand "Henry/Henry's/Hot/Skillet/diner/restaurant" as Henry's facade. "Henry's, the local diner, is closed, the neon skillet dark and motionless."
	Henry's facade fronts Henry's Hot Skillet.
	It is enterable from Main at Solvay.

The neon skillet is scenery in Main at Solvay. "The neon skillet is dark and motionless."

Reading-Room-Facade is a building facade. It is in Main at Solvay. It is privately-named. The printed name is "Reading Room". Understand "Reading/Room/bookstore/store" as Reading-room-facade. "The store window is dark. [We] can see rows and rows of books inside."
	Reading-Room-Facade fronts the Reading Room.
	It is enterable from Main at Solvay.

Fresnel Facade is a building facade. It is in Main at Solvay. It is privately-named. The printed name is "Fresnel's Music". Understand "fresnel/fresnel's/music/store" as Fresnel Facade. "A display of brass instruments dominates the front window." 
	Fresnel Facade fronts Fresnel's Music.
	It is enterable from Main at Solvay.

Book 6 - Solvay Road 100 block

Solvay Road 100 block is north of Main at Solvay. It is in ELR. It is outdoors. The preposition is "walking on".
The x-coordinate of Solvay Road 100 block is -1. The y-coordinate of Solvay Road 100 block is 0.

The description is "Solvay heads north and south. To the west is the fire station, while to the east is the side of the town hall."

The fire facade is a building facade. It is in Solvay Road 100 block. It is privately-named. The printed name is "fire station". Understand "fire/station/firehouse/house" as fire facade. "The sign over the big door says 'Hook and Ladder Company #1'."

Instead of entering the fire facade:
	say "The garage door is locked up tight." instead;


Book 7 - Solvay Road leading out of town

Solvay Road leading out of town is north of Solvay Road 100 block and west of Enigma Park. It is in ELR. It is outdoors. The preposition is "walking on".

The description is "Solvay Road bends here, leading northwest out of town and south back into town. East is the park, and to the west is Horton House. One can walk down to the lake shore to the north."
The x-coordinate of Solvay Road leading out of town is -1. The y-coordinate of Solvay Road leading out of town is 1.

Horton facade is a building facade. It is in Solvay Road leading out of town. It is privately-named. The printed name is "Horton House". Understand "Horton/Family/House/Home" as Horton facade. "Horton House is an old colonial-period house. The sign by the door marks it as the oldest remaining house in the Enigma Lake area. Its builder, Hezekiah Horton, was purported to be a supernaturalist of some renown."
	Horton facade fronts Horton Family House Kitchen.
	It is enterable from Solvay Road leading out of town.


Book 8 - Solvay Road by the lake

The lake-backdrop is a backdrop. It is in Solvay-Road-by-the-lake, lake shore west, lake shore north of the park, and lake at ridge. It is privately-named. The printed name is "lake". Understand "lake/water", "enigma lake" as the lake-backdrop. "[description of lake]."

Rule for supplying a missing noun while swimming when lake-backdrop is in the location:
	now the noun is lake-backdrop;

Instead of swimming lake-backdrop:
	try entering lake-backdrop;

Instead of entering lake-backdrop:
	say "Things aren't that desperate yet." instead; 

Instead of entering lake-backdrop when the location is lake at ridge:
	say "Faraji will have to go west to reach the water." instead;

Rule for clarifying the parser's choice of the lake-backdrop:
	do nothing;

Solvay-Road-by-the-lake is northwest of Solvay Road leading out of town. It is in ELR. It is outdoors. The preposition is "walking on". It is privately-named. The printed name is "Solvay Road by the lake". Understand "Solvay/Road/by/the/lake" as Solvay-Road-by-the-lake.

The description is "Solvay Road runs by the lake shore here. It continues out of town to the northwest, while to the southeast it leads back into town. A dirty shack stands opposite the lake to the west. A path along the shore leads to the east."
The x-coordinate of Solvay-Road-by-the-lake is -2. The y-coordinate of Solvay-Road-by-the-lake is 2.


The lake-shore-1 is scenery in Solvay-Road-by-the-lake. "The lake shore is rocky and uneven, with a few small trees and bushes growing along the edge." It is privately-named. The printed name is "lake shore". Understand "lake shore", "shore" as lake-shore-1.

The solvay-road-path is scenery in Solvay-Road-by-the-lake. "The path is narrow and winds along the shore." It is privately-named. The printed name is "path". Understand "path" as solvay-road-path.

The solvay-road-town is scenery in Solvay-Road-by-the-lake. "The road leads back into town." It is privately-named. The printed name is "town". Understand "town" as solvay-road-town.

It is unsnarkable.

The foliage is scenery in Solvay-Road-by-the-lake. "The foliage is thick and green, with a few small flowers growing among the leaves." It is privately-named. Understand "tree/trees/bush/bushes" as foliage.
The foliage is unsnarkable.

To say description of lake:
	if the location is lake at ridge:
		say "The lake is a little too far to the west to see clearly";
	otherwise:
		if the current weather is clear:
			say "The lake is calm and still, reflecting the moonlight like a mirror";
		if the current weather is cloudy:
			say "The lake is dark and still, reflecting the overcast sky";
		if the current weather is drizzling:
			say "The continuous drizzle falls on the lake, creating ripples on the surface";
		if the current weather is raining:
			say "The rain falls steadily on the lake, creating ripples on the surface";
		if the current weather is storming:
			say "The storm rages over the lake, lightning flashing and thunder rolling";

The shack facade is a building facade. It is in Solvay-Road-by-the-lake. It is privately-named. The printed name is "shack". Understand "shack" as the shack facade. "A dirty shack stands opposite the lake."
	The shack facade fronts the dirty shack.
	It is enterable from Solvay-Road-by-the-lake.

Book 9 - Shack

a dirty shack is a leavable room. It has egress east. It is west of Solvay-Road-by-the-lake. It is always-indefinite. It is in ELR. It is indoors. "Someone lives here, though not at all luxuriously. Plates are stacked up by the sink, and there's a pile of used paper coffee cups in the corner. The whole place stinks of cat."
The x-coordinate of the dirty shack is -3. The y-coordinate of the dirty shack is 2.

Some plates are scenery in the dirty shack. "Dirty and precariously stacked."
Understand "plate/dish/dishes" as plates.

The pile of used coffee cups are scenery in the dirty shack. "A pile of used paper coffee cups. This guy must love his coffee." They are ambiguously plural.

A mangy cat is in a dirty shack. The description is "A mangy, old, stripey orange cat."
Rule for writing a paragraph about the mangy cat:
	say "[one of]A mangy orange cat peeks out from under the bed[or]A stripey orange cat sits in a corner of the room, grooming itself[or]An orange cat stretches out on the bed[purely at random].";
	  

Instead of taking the mangy cat:
	say "The cat hisses and scratches [us].";
	
Petting is an action applying to one thing. Understand "pet [something]" as petting. Understand the command "pat", "stroke", "scratch" as "pet".

Check petting something that is not the mangy cat:
	say "That's just silly." instead;
	
Check petting a person:
	say "[The noun] probably wouldn't appreciate that." instead;

Report petting the mangy cat:
	say "[one of]The cat purrs and leans into [our] hand[or]The cat purrs and rubs against [our] leg[or]The cat purrs and stretches out on the bed, looking content[or]The cat purrs and licks [our] hand[at random].";

Hutz is a man in dirty shack. Hutz is privately-named. "[A Hutz] is reclining on a narrow bed." The description is "[A Hutz] is more or less a skeleton in overalls." Hutz is adaptively-named and anonymous and not proper-named. 
	Understand "bony/old/man" as Hutz. 
	Understand "town/groundskeeper" as Hutz when Hutz is not anonymous.
	Understand "Hutz" as Hutz when Hutz is met.
The snarky remark of Hutz is "Kind of Crypt Keeper meets Groundskeeper Willie."
	
Rule for writing a paragraph about Hutz:
	if the dirty shack is not visited:
		say "[A Hutz] lies on a bed in a corner of the shack. He stirs sleepily and says 'Ah, there you are, there you are. Knew you'd be around eventually.'"

The narrow bed is scenery in the dirty shack. "Clean enough, but awfully narrow, it holds [if Hutz is known]the bony figure of Hutz[otherwise][Hutz][end if], the town groundskeeper."

The sink is a scenery container in the dirty shack. "The sink is piled high with dirty dishes."

The sledgehammer is in the dirty shack. Understand "hammer" as sledgehammer. The description is "A heavy sledgehammer, the head of which is covered in rust."
The snarky remark of the sledgehammer is "I'm sure violence is the answer to something. Let's go look."

for-a-screwdriver-hutz is a questioning quip.
	It is privately-named. The printed name is "for a screwdriver". [The true-name is "for-a-screwdriver-clerk".] Understand "for/a/screwdriver" as for-a-screwdriver-hutz.
	It mentions the screwdriver.
	The comment is "[We] [ask], 'Would you happen to have a screwdriver I could borrow?'".
	The reply is "'No, not anymore. Got angry and threw mine in the lake one day.'".
	It quip-supplies Hutz.
	
An availability rule for for-a-screwdriver-hutz:	
	if the player knows vent-screws and the red screwdriver is not handled:
		always available;

Who-is-Hutz is a questioning quip.
	The printed name is "who he is".
	Understand "who are you", "who/he/is" as who-is-hutz.
	The comment is "[We] [ask], 'You seem to know me, but who are you?'"
	The reply is "'Name's Hutz. I'm the town groundskeeper. Or was, I guess. Not much to keep now.'"
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
	It is privately-named.
	The printed name is "how he can help [us]".
	Understand "for help", "help me" as how-can-you-help-me.
	Understand "how/can/you/he/help/us/me/them/Faraji" as how-can-you-help-me.
	Understand "how can you help me/them/Faraji/--", "how he can help me/them/Faraji/--", "how he can help me/them/Faraji/--" as how-can-you-help-me.
	[ Understand "how/can/you/he/help/me/us/them/her/him" as how-can-you-help-me. ]
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
	Understand "hutz/-- for help" as help-me.
	Understand "for help" as help-me.
	Understand "about help" as help-me.
	Understand "please/-- help me/-- please/--" as help-me.
	The comment is "[We] [say], 'Okay, how can you help?'"
	The reply is "'Oh yes, how was I going to help? Afraid I can't remember, sorry. Can't seem to focus.'"
	It quip-supplies Hutz.
	It follows How-can-you-help-me.

Instead of requesting Hutz for help-me:
	try discussing help-me;

Instead of imploring Hutz for "help":
	try discussing help-me;

Now-can-you-help-me is a questioning quip.
	The printed name is "if he can now help [us]".
	Understand "for help" as now-can-you-help-me.
	Understand "can you help me/us/them/Faraji/-- now/--" as now-can-you-help-me. 
	Understand "if he can help me/us/them/Faraji/-- now/--" as now-can-you-help-me.
	Understand "if/for/he/you/can/help/me/us/them/Faraji/now" as now-can-you-help-me.
	The comment is "'Now, you've had your coffee. Can you help me?' [we] [ask]."
	The reply is "'I found something. Something that might help you. It's in the workshed. In the cabinet. You'll need the key.' At this, Hutz pulls out a rusty key ring, pulls off an iron key and hands it to [us]."
	It quip-supplies Hutz.

The iron key is a key. The description is "A heavy iron key, it looks like it might fit a padlock."

After discussing Now-can-you-help-me:
	now the player carries the iron key;

Hutz-needs-coffee is a truth state that varies. Hutz-needs-coffee is false.

After discussing Help-me:
	now Hutz-needs-coffee is true;

Hutz can be satiated.

Instead of giving the cup of coffee to Hutz when Hutz-needs-coffee is true:
	if the hotness of the cup of coffee < 24:
		if the hotness of the cup of coffee > 20:
			say "Hutz takes the coffee and sniffs it. 'Cold,' he says, even though the stuff is still plenty hot. 'I can't drink this.' He tosses the coffee into the pile of used cups.";
			now the player knows hutz-needs-hot-coffee;
		otherwise:
			say "Hutz takes the coffee and sniffs it. 'Cold,' he says. 'I can't drink this.' He tosses the coffee into the pile of used cups.";
			now the player knows hutz-needs-hot-coffee;
		now the cup of coffee is nowhere;
	otherwise:
		say "Hutz takes the coffee and drinks it down in one gulp. 'Ah, that's the stuff,' he says. 'Now, what can I do for you?'";
		now hutz interjection timer is a random number from 2 to 5;
		now Hutz-needs-coffee is false;
		now the cup of coffee is nowhere;
		now Hutz is satiated;
		queue Hutz with Now-can-you-help-me;

Hutz interjection timer is a number that varies. Hutz interjection timer is 5.

Every turn when Hutz interjection timer is not 0 and Hutz is in the location:
	decrease Hutz interjection timer by 1;
	if Hutz interjection timer is 0:
		interject Hutz;

Before discussing when Hutz is in the location:
	now Hutz interjection timer is a random number from 2 to 5;

Before quizzing someone about something when Hutz is in the location:
	now Hutz interjection timer is a random number from 2 to 5;
	continue the action;

Before implicit-quizzing something when Hutz is in the location:
	now Hutz interjection timer is a random number from 2 to 5;

To interject Hutz:
	sort Table of Hutz Interjections in random order;
	if there is a used of false in the Table of Hutz Interjections:
		choose the row with a used of false in the Table of Hutz Interjections;
		say "[Hutz interjection entry][line break]";
		now the used entry is true;
		increase Hutz interjection timer by a random number from 2 to 5;

Table of Hutz Interjections
Hutz interjection	used (a truth state)
"Hutz raises his head and says, 'Thinking I just might go down with the town, you know?'"	false
"Hutz rolls over on his back. The cat jumps up and starts kneading his stomach. 'Cat doesn't care about the flood,' he says."	false
"Hutz sits up and says, 'Never bothered to name the cat. Just call him Cat.'"	false
"Hutz smiles sadly. 'You know, I used to be a dancer, back before they bulldozed the dance hall and built the radio station.'"	false
"Hutz puts his arm under his head. 'You're the first person to come by in a long time. Stay as long as you like.'"	false
"Hutz says, 'Something's running around out there. Something not human.'"	false
"Hutz scratches his arm. 'Wish this rain would let up. Makes one hell of a racket on the roof.'"	false

The flood is a subject. 
Enigma-Lake-subject is a subject. It is privately-named. The printed name is "Enigma Lake". Understand "Enigma/Lake" as Enigma-Lake-subject.
Henry-subject is a subject. It is privately-named. The printed name is "Henry's Hot Skillet". Understand "Henry's/Henry/Henrys/Hot/Skillet" as Henry-subject.
astral-resonator-subject is a subject. It is privately-named. The printed name is "astral resonator". Understand "astral/resonator/rusty/shiny/makeshift" as astral-resonator-subject.
lizard-people-subject is a subject. It is privately-named. The printed name is "lizard people". Understand "lizard/people/lizardmen/lizardpeople" as lizard-people-subject. 
daniels-subject is a subject. It is privately-named. The printed name is "Daniels". Understand "Daniels" as daniels-subject.

Table of Quiz Topics (continued)
subject (a thing)	interlocutor (a person)	comment (a text)	reply (a text)
mangy cat	Hutz	"'Is that your cat?' Faraji asks."	"'What does it mean to be a cat's owner?' Hutz replies."
sledgehammer	Hutz	"'What's the sledgehammer for?' Faraji asks."	"'That's the only thing left of my old friend Josef,' Hutz replies."
plates	Hutz	"'What's with all the dirty dishes?' Faraji asks."	"'What's with your ugly face?' Hutz replies."
pile of used coffee cups	Hutz	"'Why so many coffee cups?' Faraji asks."	"'I like the coffee at Henry's,' Hutz replies."
narrow bed	Hutz	"'What's with the narrow bed?' Faraji asks."	"'I like to sleep on my side,' Hutz replies."
flood	Hutz	"'Aren't you worried about the flood?' Faraji asks."	"'Uh, yeah, of course I am. I'm leaving tomorrow morning,' Hutz replies."
Enigma Lake	Hutz	"'Tell me about Enigma Lake,' Faraji asks."	"'It's a lake,' Hutz replies. 'Or did you mean the town? I'll miss it. Good little town. Or rather, a crappy little town with a good diner.'"
Henry-subject	Hutz	"'What's the deal with Henry's Hot Skillet?' Faraji asks."	"'Henry's? Oh, it's a diner. Good coffee. They have a good TV. I used to drink coffee and watch TV,' Hutz replies."
astral-resonator-subject	Hutz	"'What's the deal with the astral resonator?' Faraji asks."	"'A what? I have no idea what you're talking about,' Hutz replies."
lizard-people-subject	Hutz	"'What's the deal with the lizard people?' Faraji asks."	"'Lizard people? What are you talking about?' Hutz replies."
daniels-subject	Hutz	"'What's the deal with Daniels?' Faraji asks."	"'Daniels? Who's Daniels?' Hutz replies."


Book 10 - Main at Lake

Main at Lake is east of Main Street 200 Block. It is in ELR. It is outdoors. The printed name is "Main and Lake". The preposition is "at the intersection of". "Main goes west, while Lake runs north. The corner of the town hall is to the northwest, although it cannot be entered there. Southeast is the entrance to WGXC 'Galaxy' Radio. There is a broadcast tower on top of the building." 
The x-coordinate of Main at Lake is 1. The y-coordinate of Main at Lake is -1.

The radio station facade is a building facade. It is in Main at Lake. It is privately-named. The printed name is "WGXC 'Galaxy' Radio". Understand "WGXC/Galaxy/Radio/station/building" as radio station facade. "The sign over the door says 'WGXC [']Galaxy['] Radio 1055 AM'."
	The radio station facade fronts Radio Station WGXC.
	It is enterable from Main at Lake.

The broadcast-tower is scenery in Main at Lake. It is privately-named. The printed name is "broadcast tower". Understand "broadcast/tower/radio/antenna" as broadcast-tower. "The broadcast tower rises many feet above the radio station."

Does the player mean examining the broadcast-tower:
	It is very likely.

Book 11 - WGXC "Galaxy" Radio

Radio Station WGXC is a leavable room. It has egress northwest. It is southeast of Main at Lake. It is in ELR. It is indoors. "This is the town radio station. An eye-catching sign over the door reads 'WGXC [']Galaxy['] Radio 1055 AM'.

A staircase runs upwards, presumably to the roof and the broadcast antenna. The broadcast booth is to the south. The exit is northwest."

The x-coordinate of Radio Station WGXC is 2. The y-coordinate of Radio Station WGXC is -2.

The WGXC stairs are scenery in Radio Station WGXC. "The stairs run up to the roof."
Understand "staircase/stair" as WGXC stairs.

Instead climbing up the WGXC stairs:
	try going up.

The broadcast-booth-facade is a building facade. It is in Radio Station WGXC. It is privately-named. The printed name is "broadcast booth". Understand "broadcast/booth" as broadcast-booth-facade. "The broadcast booth is a small room with a window looking out over the main lobby."
	The broadcast-booth-facade fronts the broadcast booth.
	It is enterable from Radio Station WGXC.

Book 11.5 - The broadcast booth

The broadcast booth is a leavable room. It is south of Radio Station WGXC. It is in ELR. It is indoors. "The broadcast booth is a small empty room, as all the broadcasting equipment has been moved out. There is an empty bin that would normally hold the records currently in rotation, and another bin marked 'trash', filled with discarded records. An old turntable has been discarded here. A couple of old speakers have been left attached at the top of the wall. The exit is north."

It has egress north.

The x-coordinate of the broadcast booth is 2. The y-coordinate of the broadcast booth is -3.

The old turntable is a scenery supporter in the broadcast booth. "The turntable looks old but functional. Its power and output are wired directly into the wall." It has carrying capacity 1.

Old speakers are scenery in the broadcast booth. "The speakers are old and dusty, but they look like they still work."

The rotation bin is a scenery container in the broadcast booth. "The bin is empty." Understand "bin" as rotation bin.

The trash-bin is a scenery open transparent container in the broadcast booth. It is privately-named. The printed name is "trash bin". Understand "trash/bin" as trash-bin.

Instead of examining the trash-bin:
	if nothing is in the trash-bin:
		say "The trash bin is empty.";
	otherwise:
		say "The trash bin is filled with discarded records, including ";
		say "[list of things in the trash-bin].";

A record is a kind of thing. A record has a text called the title. A record has a text called the artist. A record has a text called the music description.
The title of a record is usually "". The artist of a record is usually "".
The printed name of a record is "[italic type][title][roman type] by [artist]".
The description of a record is "It's a typical 7[quotation mark] vinyl record, with a label on one side."

booboo is a record. It is in the trash-bin. The title of booboo is "Boo boo ba-doo boo boo boo". The artist of booboo is "The Four Mouths". Understand "boo/ba-doo/four/mouths" as booboo.
The music description of booboo is "'Boo boo ba-doo boo boo boo, boo boo ba-doo boo boo boo, boo boo ba-doo boo boo boo, boo boo ba-doo boo boo boo.'"

strange-record is a record. It is in the trash-bin. The title of strange-record is "Isn't It Strange I Don't Love You?". The artist of strange-record is "Peggy Patti".
Understand "Isn't/Strange/I/Don't/Love/You/Peggy/Patti" as strange-record.
Understand "Isn't it" as strange-record.
Understand "Isn't it strange/I/don't love you" as strange-record.
The music description of strange-record is "'Isn't it strange I don't love you? Isn't it strange I don't care? Isn't it strange I don't want you? Isn't it strange I'm not there?'"

callmeonthetelephonedarling is a record. It is in the trash-bin. The title of callmeonthetelephonedarling is "Stop Calling Me on the Telephone, Darling". The artist of callmeonthetelephonedarling is "Deanna and the Deans".
The music description of callmeonthetelephonedarling is "'I've got a new number, I've got a new line, I've got a new life, and you're not in mine.'".

Understand "Stop/Calling/Me/on/the/Telephone/Darling/Deanna/Deans" as callmeonthetelephonedarling.
norbert is a record. It is in the trash-bin. The title of norbert is "Norbert the Narwhal". The artist of norbert is "The ABCs".
Understand "Norbert/the/Narwhal/ABCs" as norbert.
The music description of norbert is "'Norbert the Narwhal, swimming in the sea, Norbert the Narwhal, happy as can be.'"

silly is a record. It is in the trash-bin. The title of silly is "Silly Little Love Song". The artist of silly is "Patti Peggy".
Understand "Silly/Little/Love/Song/Patti/Peggy" as silly.
The music description of silly is "'You are my silly little guy, and I am your silly little girl, and we are silly together in our silly little world.'"

moron is a record. It is in the trash-bin. The title of moron is "I'd Never Call You a Moron". The artist of moron is "Peggy Perry".
Understand "I'd/Never/Call/You/a/Moron/Peggy/Perry" as moron.
The music description of moron is "'Just because you're not so bright, doesn't mean you're not alright, and I'd never call you a moron.'"

record playing is an action applying to one thing. Understand "play [something]" as record playing. 

anonymous record playing is an action applying to nothing. Understand "play record" as anonymous record playing.

record playing backwards is an action applying to one thing. Understand "play [something] backwards" as record playing backwards.

anonymous record playing backwards is an action applying to nothing. Understand "play record backwards" as anonymous record playing backwards.

Understand "play [old turntable]" as a mistake ("Put the record on the turntable and then say PLAY RECORD.").

To put the right record on the turntable:
	if there is something (called the old record) on the old turntable:
		if the old record is not the noun:
			say "Faraji takes [the old record] off the turntable and puts [the noun] on instead.";
			now the player carries the old record;
			now the noun is on the old turntable;
		otherwise:
			say "[The noun] is already on the turntable.";
	otherwise:
		say "Faraji puts [the noun] on the turntable.";
		now the noun is on the old turntable;

Instead of record playing:
	if the noun is not a record:
		say "That's not something you can play.";
	otherwise:
		put the right record on the turntable;
		try anonymous record playing;

Instead of record playing backwards:
	if the noun is not a record:
		say "That's not something you can play.";
	otherwise:
		put the right record on the turntable;
		try anonymous record playing backwards;

Check anonymous record playing:
	if nothing is on the old turntable:
		say "There's nothing on the turntable to play." instead;

Check anonymous record playing backwards:
	if nothing is on the old turntable:
		say "There's nothing on the turntable to play." instead;

Carry out anonymous record playing:
	let current record be a random record on the old turntable;
	if the power switch is switched on:
		say "Faraji starts the turntable. The record spins, and the speakers crackle to life, playing [italic type][the title of the current record][roman type] by [the artist of the current record].[paragraph break]";
		say "[music description of the current record][line break]";
	otherwise:
		say "Faraaji starts the turntable, but nothing happens. There seems to be no power.";

Carry out anonymous record playing backwards:
	let current record be a random record on the old turntable;
	if the power switch is switched on:
		say "Faraji starts the turntable. The record spins, and the speakers crackle to life, playing [italic type][the title of the current record][roman type] by [the artist of the current record] backwards.[paragraph break]";
		if the current record is strange-record:
			say "The backwards music is eerie and unsettling, but a message can be made out clearly: 'Congratulations, you've found the secret of Enigma Lake! Well, one of them, anyway. This is just the little one. The big one is still out there. In any case, the first person to email the secret phrase WGXC [']GALAXY['] RADIO ROCKS ENIGMA LAKE to rileypb@gmail.com will win a prize!'";
		otherwise:
			say "All Faraji can make out is a lot of gibberish.";
	otherwise:
		say "Faraji starts the turntable, but nothing happens. There seems to be no power.";


Book 12 - Radio Station Roof

The radio station roof is a leavable room. It is above Radio Station WGXC. It has egress down. It is in ELR. It is outdoors.
"[We] can see the obelisk in the park clearly from here. The broadcast tower[if the power switch is switched on], humming loudly,[end if] rises many feet above [us]. The exit is down. A metal cabinet is attached to the foot of the tower[if the metal cabinet is locked], held shut by a padlock[otherwise if the metal cabinet is closed], closed[otherwise], hanging open. Inside it is a power switch[end if].[if mounted-shiny-resonator] [A shiny astral resonator] is mounted on a platform in the tower, and a beam of light shoots out of it, striking the obelisk in the park. The crystal is glowing [crystal glow].[end if]".
The preposition is "on".
The x-coordinate of the radio station roof is 2. The y-coordinate of the radio station roof is -2.

The metal cabinet is a closed, locked, openable, scenery container in the radio station roof. "The metal cabinet is attached to the foot of the broadcast tower[if the metal cabinet is locked], held shut by a padlock[otherwise if the metal cabinet is closed], closed[otherwise], hanging open. Inside it is a power switch, [power switch state][end if]." 

To say power switch state:
	if the power switch is switched on:
		say "set to on";
	otherwise:
		say "set to off";

Report opening the metal cabinet:
	say "Faraji opens the metal cabinet, revealing a power switch inside. It is set to [if the power switch is switched on]on[otherwise]off[end if].";
	stop the action;

Chapter 1 - The padlock

The padlock is scenery in radio station roof. The description is "[if the metal cabinet is locked]A keyed padlock secures the cabinet shut[otherwise]A keyed padlock, attached to nothing[end if]." Understand "lock", "pad lock" as the padlock.


Instead of unlocking the padlock with a key:
	say "That key doesn't fit." instead;

Instead of unlocking the padlock with something:
	say "That wouldn't be very productive." instead;

Instead of opening the padlock:
	say text of the can't open what's locked rule response (A);
	say line break;

The broken lock is a thing. The description is "A broken padlock." Understand "padlock", "pad lock" as the broken lock.


Check cutting the padlock:
	if the player encloses the bolt cutters:
		try cutting the padlock with the bolt cutters instead;

Cutting it with is an action applying to two things. Understand "cut [something] with/using [something]"  as cutting it with.

Opening it with is an action applying to two things. Understand "open [metal cabinet] with/using [bolt cutters]", "unlock [metal cabinet] with/using [bolt cutters]", "open [padlock] with/using [bolt cutters]", "unlock [padlock] with/using [bolt cutters]" as opening it with.

Check opening something with the bolt cutters:
	if the noun is the metal cabinet:
		try cutting the padlock with the bolt cutters instead;
	try cutting the noun with the bolt cutters instead;

Check cutting something with something when the noun is not the padlock:
	say "That wouldn't be very productive." instead;

Check cutting the padlock with something when the second noun is not the bolt cutters:
	say "That wouldn't be very productive." instead;

Carry out cutting the padlock with the bolt cutters:
	now the metal cabinet is unlocked;
	now the player carries the broken lock;
	now the padlock is nowhere;
	silently try opening the metal cabinet;

Report cutting the padlock with the bolt cutters:
	say "The bolt cutters make short work of the padlock. The cabinet is now open, revealing a power switch, set to off.";

Chapter 2 - The rest of it

The power switch is a scenery device in the metal cabinet. ["The power switch is set to [if the power switch is switched on]on[otherwise]off[end if]."]
The power switch is indescribable.

After switching on the power switch:
	if mounted-shiny-resonator:
		say "Faraji switches the power switch on. The broadcast tower begins to hum loudly, and a beam of light shoots out of [the shiny astral resonator], striking the obelisk in the park. The crystal is glowing [crystal glow].";
	otherwise:
		say "Faraji switches the power switch on. The broadcast tower begins to hum loudly.";

After switching off the power switch:
	if the shiny astral resonator is on the platform:
		say "Faraji switches the power switch off. The broadcast tower's hum dies away, and the beam of light fades from the obelisk. [if the beam count is 0]The crystal is no longer glowing[otherwise]The crystal is still glowing [crystal glow][end if].";	
	otherwise:
		say "Faraji switches the power switch off. The broadcast tower's hum dies away.";

The broadcast tower is scenery in the radio station roof. "A tall, steel lattice structure, rising prominently above the building. This kind of tower was designed to maximize the height for better signal transmission and reception in the era before widespread cable and satellite technology. Strangely, the bars of the tower near roof-level are bent inward to form a small platform. It's almost as if something is meant to be mounted there." Understand "radio tower", "antenna" as the broadcast tower.

The platform is part of the broadcast tower. It is a supporter. It is indescribable.

Check putting something on the platform:
	if the platform supports something that is not the noun:
		say "The platform is already occupied." instead;

Instead of examining the platform when the shiny astral resonator is on the platform:
	if the power switch is switched on:
		say "The platform is a small, square area formed by the inward-bent bars of the broadcast tower. It's just large enough to hold a small object. There are two rings set into the back of the platform, allowing something to be attached there. 
		
		[A shiny astral resonator] is mounted on the platform, and a beam of light shoots out of it, striking the obelisk in the park. The crystal is glowing [crystal glow].";
	otherwise:
		say "The platform is a small, square area formed by the inward-bent bars of the broadcast tower. It's just large enough to hold a small object. There are two rings set into the back of the platform, allowing something to be attached there. 
		
		[A shiny astral resonator] is mounted on the platform.";

Instead of examining the platform when the shiny astral resonator is not on the platform:
	say "The platform is a small, square area formed by the inward-bent bars of the broadcast tower. It's just large enough to hold a small object. There are two rings set into the back of the platform, allowing something to be attached there.";


The rings are part of the platform. The description is "Two metal rings are set into the back of the platform, allowing something to be attached there." They are plural-named. 
The rings are unsnarkable.

To hook up the shiny resonator: 
	now the shiny astral resonator is on the platform;
	if the power switch is switched on:
		say "[We] [push] [the shiny astral resonator] onto the platform, attaching the clamps to the rings. A beam of light shoots out of it and strikes the obelisk in the park. The crystal is glowing [crystal glow].";
	otherwise:
		say "[We] [push] [the shiny astral resonator] onto the platform, attaching the clamps to the rings.";

Instead of inserting something into the platform:
	try putting the noun on the platform;

Check putting something on the platform when the noun is not the shiny astral resonator:
	say "That doesn't seem to be the right thing to put there." instead;

Instead of putting the shiny astral resonator on the platform:
	if the platform supports something:
		say "The platform is already occupied.";
		stop the action;
	hook up the shiny resonator;

After taking the shiny astral resonator when the shiny astral resonator was on the platform:
	if the power switch is switched on:
		say "Faraji removes [the shiny astral resonator] from the platform, and the light fades. In the distance, the beam of light fades from the obelisk. [if the beam count is 0]The crystal is no longer glowing[otherwise]The crystal is still glowing [crystal glow][end if].";
	otherwise:
		say "Faraji removes [the shiny astral resonator] from the platform.";

Instead of tying the shiny astral resonator to the rings:
	try putting the shiny astral resonator on the platform;

Instead of tying the shiny clamps to the rings:
	try putting the shiny astral resonator on the platform;

Instead of tying the shiny clamps to the platform:
	try putting the shiny astral resonator on the platform;

Instead of tying the shiny astral resonator to the rings:
	try putting the shiny astral resonator on the platform;

Instead of tying the rings to the shiny clamps:
	try putting the shiny astral resonator on the platform;

Instead of tying the rings to the shiny astral resonator:
	try putting the shiny astral resonator on the platform;

Instead of tying the shiny astral resonator to the platform:
	try putting the shiny astral resonator on the platform;

Instead of tying the shiny astral resonator to the broadcast tower:
	try putting the shiny astral resonator on the platform;

Instead of inserting the shiny astral resonator into the broadcast tower:
	try putting the shiny astral resonator on the platform;

Instead of putting the shiny astral resonator on the broadcast tower:
	try putting the shiny astral resonator on the platform;

Instead of climbing up the broadcast tower:
	say "[We] [are] afraid of heights.";
	
Instead of going up when the location is the radio station roof:
	say "[We] [are] afraid of heights.";
	
The radio-obelisk-facade is a backdrop. It is in the radio station roof. Understand "obelisk/enigma/park/crystal/adornment" as radio-obelisk-facade. "The obelisk in the park is clearly visible from here." It is unsnarkable.

Instead of examining the radio-obelisk-facade:
	say "The obelisk in the park is clearly visible from here. [run paragraph on]";
	if beam count is 1:
		if mounted-shiny-resonator:
			say " A beam of light is focused on the obelisk from here, striking the crystal adornment at its apex. The crystal is glowing faintly.";
		otherwise:
			say " A beam of light is focused on the obelisk from elsewhere, striking the crystal adornment at its apex. The crystal is glowing faintly.";
	otherwise if beam count is 2:
		if mounted-shiny-resonator:
			say " Two beams of light are focused on the obelisk, one from here and one from elsewhere, striking the crystal adornment at its apex. The crystal is glowing brightly.";
		otherwise:
			say " Two beams of light are focused on the obelisk from elsewhere, striking the crystal adornment at its apex. The crystal is glowing brightly.";
	otherwise if beam count is 3:
		say " Three beams of light are focused on the obelisk, one from here and two from elsewhere, striking the crystal adornment at its apex. The crystal is glowing brilliantly.";
	otherwise:
		say line break;



Book 14 - Lake Street by the gym

Lake Street by the gym is north of Main at Lake. It is in ELR. It is outdoors. The preposition is "walking on".
The description is "Lake Street runs north and south from here. To the east is the public gymnasium, while to the west is the town hall, which is not enterable from here."
The x-coordinate of Lake Street by the gym is 1. The y-coordinate of Lake Street by the gym is 0.

The gymnasium facade is a building facade. It is in Lake Street by the gym. It is privately-named. The printed name is "public gymnasium". Understand "public/gymnasium/gym" as gymnasium facade. "The sign over the door says 'Enigma Lake Gymnasium'."
	The gymnasium facade fronts the public gymnasium.
	It is enterable from Lake Street by the gym.

Does the player mean examining the gymnasium facade:
	it is very likely.

Does the player mean entering the gymnasium facade:
	it is very likely.


Book 15 - Lake Street by the Park

Lake Street by the park is north of Lake Street by the gym and east of Enigma Park. It is in ELR. It is outdoors. The preposition is "walking on". The description is "Lake Street runs north and south from here. To the west is the park, while to the east is the First Utilitarian Church of Enigma Lake."
The x-coordinate of Lake Street by the park is 1. The y-coordinate of Lake Street by the park is 1.

The church facade is a building facade. It is in Lake Street by the park. It is privately-named. The printed name is "First Utilitarian Church of Enigma Lake". Understand "church" as church facade. "The church is a dignified example of Gothic Revival architecture, its façade dominated by a steeply pitched roof and a slender steeple piercing the sky."
	The church facade fronts the First Utilitarian Church of Enigma Lake.
	It is enterable from Lake Street by the park.

Book 16 - First Utilitarian Church of Enigma Lake

The First Utilitarian Church of Enigma Lake is a leavable room. It has egress west. It is east of Lake Street by the Park. It is in ELR. It is indoors. "The interior is dimly lit by the stained glass windows, and the pews are arranged in neat rows facing the pulpit. A standard electrical outlet is set into the wall. To the east is the vestry. Faraji can also take a ladder up to the steeple, or stairs down to the basement. The exit is to the west."
The x-coordinate of the First Utilitarian Church of Enigma Lake is 2. The y-coordinate of the First Utilitarian Church of Enigma Lake is 1.

The church stairs are scenery in First Utilitarian Church of Enigma Lake. "The stairs lead down to the basement."

The church ladder is scenery in First Utilitarian Church of Enigma Lake. "The ladder leads up to the steeple. It is solidly affixed to the wall."

Some religious art is scenery in First Utilitarian Church of Enigma Lake. "The best piece in the bunch is a painting of a lizard person being smote by a bolt of lightning."

Instead of doing something other than examining to the doll-fly:
	say "[We] [can't] get close enough to [the doll-fly] to do that.";

The stained glass windows are scenery in First Utilitarian Church of Enigma Lake. "As is traditional in Utilitarian churches, the stained glass windows are all plain glass, allowing the maximum amount of light to enter the building."

The pews are scenery in First Utilitarian Church of Enigma Lake. "The pews are arranged in neat rows, facing the pulpit."

The church altar is scenery in First Utilitarian Church of Enigma Lake. "The altar is a simple wooden table, with a white cloth draped over it."

The pulpit is scenery in First Utilitarian Church of Enigma Lake. "The pulpit is a simple wooden structure with a lectern which holds [italic type]The Holy Bible[roman type]."

The lectern is scenery in First Utilitarian Church of Enigma Lake. "The lectern is a simple wooden structure, with a slanted top that holds [italic type]The Holy Bible[roman type]." It is unsnarkable.

The Holy Bible is scenery on the lectern. "The Bible's cover is worn and the pages are yellowed with age. There is a bookmark at Leviticus 11:29: 'These also shall be unclean to you among the creeping things that creep on the earth: the mole, the mouse, and the large lizard after its kind; the gecko, the monitor lizard, the sand reptile, the sand lizard, and the chameleon.'"

To read is a verb.

The Book of Utilitarianism is fixed in place. It is proper-named. The printed name is "[italic type]The Book of Utilitarianism[roman type]". It is indescribable. Understand "BOU" as the Book of Utilitarianism. 

The cursed word is text that varies. The cursed word is "".

The Book of Utilitarianism can be unsuccessfully read.
The Book of Utilitarianism can be successfully read.

PREAMBLE is always "The text is the [italic type]Book of Utilitarianism[roman type]. [We] [open] to a page at random and [read]:[paragraph break]".

The verses are a list of texts that varies.
The verses are {
	"And the Lord said, 'The path of the righteous is beset on all sides by the inequities of the selfish and the tyranny of the lizard people. Blessed is he who smites the lizard people, even if only with a rutabaga.",
	"But the Lord said to the lizard people, 'You are truly mine enemy, and I will smite you with great vengeance and furious anger. You will know my name is the Lord when I lay my vengeance upon thee.'",
	"For thou shalt not suffer a lizard person to live, for they are an abomination unto the Lord.",
	"And God so loved the world that he gave his only begotten son, that whosoever believeth in him should not perish, but have everlasting life. The lizard people are not included in this offer.",
	"And it came to be that the Lord made aliens, and he saw that they were good, and he made lizard people, and he saw that they were not good. And he made humans, and he saw that they were not good either. And he made the platypus, and he saw that it was good. But later the humans became good, sort of like Godzilla.",
	"And the Lord said, 'Let there be light,' and there was light. And the Lord said, 'Let there be lizard people,' and there were lizard people. And the Lord said, 'Let there be humans,' and there were humans. And the Lord said, 'Let there be platypuses,' and there were platypuses.",
	"And Gob begat Bob, and Bob begat Rob, and Rob begat Job, and Job begat Chauncey, and Chauncey begat Hank, and all told there were fifty-two generations between Gob and Gob XII, who was the last of the line. And Gob XII begat no one, for he was a eunuch. And the Lord said, 'That's what you get for hanging out with lizard people.'",
	"Then the Lord said to Gorm, 'Gather up all your childen, and take them to the mountain, and there I will give you the tablets of Utilitarianism, which I have written, that you may teach them.' And Gorm said, 'But Lord, I have no children.' And the Lord said, 'Then go forth and make some children, and then gather them up and take them to the mountain, and there I will give you the tablets of Utilitarianism, which I have written, that you may teach them.'",
	"And the hosts of the lizard people came down from the mountains, and they were many, and they were fierce, and they were hungry. And the Lord said, 'I'm not going to feed them, they're your problem.'",
	"And the Lord said, 'I am the Lord, and I am a jealous God, and I will visit the iniquity of the fathers upon the children unto the third and fourth generation of them that hate me, and show mercy unto thousands of them that love me and keep my commandments.' And the lizard people said, 'We hate you.'",
	"However, the Lord said to the lizard people, 'I am the Lord of the humans, and I -- oh, and the aliens -- and I will smite you with great vengeance and furious anger and the like.'",
	"By the by, Gorm came upon the town of Armagast, and he saw that it was good, and he said, 'I shall build a church here.' And the Lord said, 'No, don't do that, it's a bad idea.' And Gorm said, 'But Lord, I have already started.' And the Lord said, 'Well, okay, but don't say I didn't warn you.'",
	"But Gorm's wife was treacherous, and she lay with lizard people, and she bore a son, and the Lord said, 'I'm not going to smite you, but I'm not going to be happy about it.'",
	"When Gorm learned of his wife's doings, he rent his garments and wept, and the Lord said, 'Keep it together, man.'",
	"And the land was filled with the iniquities of the lizard people, and the Lord said, 'I'm not going to clean that up.'",
	"The host of the lizard people sacked the now rather prosperous town of Armagast, and the Lord said, 'I told you so.'",
	"'And the Lord said, '[']Tis a far, far better thing that I do, than I have ever done; [']tis a far, far better rest that I go to than I have ever known.' And the lizard people said, 'That's from A Tale of Two Cities.'",
	"And the Lord was attending his weekly reading circle, when he had an idea. 'I shall make a world,' he said, 'and I shall call it Earth.' And the lizard people said, 'That's a terrible name.'",
	"And lo, the lizard people rebelled against the Lord, and the Lord said, 'I'm not going to put up with that.'",
	"And in the town of Gabblehouse was born an infant to a woman named Gorma, and the Lord said, 'That's a terrible name.'",
	"And the Lord said, 'I shall rain down upon thee with great vengeance and furious anger,' and the lizard people said, 'We've heard that before.'"}.

The cursed countdown is a number that varies. The cursed countdown is 0.

Instead of examining the Book of Utilitarianism when the doll-fly is not in the location:
	if the player wears the astral lenses:
		say "Looking at the [italic type]Book of Utilitarianism[roman type] through the astral lenses is unbearable. The text is a jumble of letters and colors, and the words seem to twist and writhe on the page.";
		now the Book of Utilitarianism is unsuccessfully read;
		stop;
	now the Book of Utilitarianism is successfully read;
	let just set the word be false;
	if the cursed word is "":
		sort the verses in random order;
		add "And behold the Lord created the rutabaga, and the lizard people tasted of it and were repulsed, and the Lord said, 'I shall smite thee with the rutabaga,' and the lizard people said, 'No, not the rutabaga!'" at entry 1 in the verses;
		now the cursed word is the substituted form of "[one of]ontogeny[or]ontology[or]reification[or]epistemology[or]hermeneutics[or]deconstruction[or]postmodernism[or]paradigm[or]synergy[or]heuristic[or]praxis[or]dialectic[or]teleology[or]deontological[or]phenomenology[or]existentialism[or]semiotics[or]semantics[or]epistemology[at random]";
	if the cursed countdown is 0:
		say "The text is the [italic type]Book of Utilitarianism[roman type]. [We] [open] to a page at random and [read]:[paragraph break]And the Lord so hated the lizard people that he smote them with a mighty smiting, and he said the cursèd word '[cursed word]', and the lizard people screamed and ran away like scared little children.";
		now the cursed countdown is a random number from 3 to 5;
	otherwise:
		let the verse be entry 1 of the verses;
		remove the verse from the verses;
		add the verse to the verses;
		say "[PREAMBLE][the verse][paragraph break]";
		decrement the cursed countdown;

Book 16.5 - The Doll-Fly

The Rod of Hezekiah is carried by the doll-fly. The description is "A rod of blackened wood, it seems to pulse with a vital energy." The indefinite article is "the".

Chapter 1 - Figuring its name

The first names is a list of text that varies. 
The first names are { "Hathgar", "Pezzex", "Xapnix", "Zorax", "Grover", "Hobnop", "Bazell", "Hoozum", "Gorblax" }.

To decide what text is the doll-fly-name:
	sort the first names in random order;
	sort the third name parts in random order;
	now the secret first name of the doll-fly is entry 1 of the first names;
	now the secret last name of the doll-fly is entry 1 of the third name parts;
	decide on the substituted form of "[entry 1 of the first names] the [entry 1 of the third name parts]".

Chapter 2 - All the rest of it

The doll-fly is an animal. The description is "It is a flying doll with the head of a giant fly." 
The doll-fly has a text called the secret name. The doll-fly has a text called the secret first name. The doll-fly has a text called the secret last name.  The doll-fly has text called the incantation.
The doll-fly can be named or unnamed. The doll-fly is unnamed.
Understand "doll/fly" as the doll-fly.
[ Understand "Hathgar the Pitiful", "Hathgar", "Pitiful" as the doll-fly when the doll-fly is named. ]
Understand the secret name property as describing the doll-fly when the doll-fly is named.
Understand the secret first name property as describing the doll-fly when the doll-fly is named.
Understand the secret last name property as describing the doll-fly when the doll-fly is named.
The printed name of the doll-fly is "[if the doll-fly is named][secret name of the doll-fly][otherwise]doll-fly[end if]".

Rule for writing a paragraph about the doll-fly:
	say "[The doll-fly] buzzes menacingly around the sanctuary, its eyes glowing with an eerie light.";

Before doing something when the doll-fly is not named and the location is First Utilitarian Church of Enigma Lake and the doll-fly is in the location:
	now the secret name of the doll-fly is the doll-fly-name;
	now the secret name of the hint-doll-fly is the secret name of the doll-fly;
	now the secret first name of the hint-doll-fly is the secret first name of the doll-fly;
	now the secret last name of the hint-doll-fly is the secret last name of the doll-fly;
	now the doll-fly is named;
	now the doll-fly is proper-named;
	say "The doll-fly shrieks 'Begone! Or I, [doll-fly], shall smite thee!'";

Instead of going east when the location is the First Utilitarian Church of Enigma Lake and the doll-fly is in the location:
	say "[The doll-fly] prevents [us] from reaching the east exit."

Instead of going up when the location is the First Utilitarian Church of Enigma Lake and the doll-fly is in the location:
	say "[The doll-fly] prevents [us] from reaching the ladder."

Instead of going down when the location is the First Utilitarian Church of Enigma Lake and the doll-fly is in the location:
	say "[The doll-fly] prevents [us] from reaching the stairs."

Instead of attacking the doll-fly:
	say "[The doll-fly] [one of]is too quick for [us][or]moves up out of [our] reach[or]dodges [our] attack[or]flies out of [our] reach[or]flies too high[at random]."

Instead of attacking the doll-fly with something:
	say "[The doll-fly] [one of]is too quick for [us][or]moves up out of [our] reach[or]dodges [our] attack[or]flies out of [our] reach[or]flies too high[at random]."

Instead of taking the doll-fly:
	say "Even if [we] could catch it, [we] wouldn't want to.";

Instead of saying hello to the doll-fly:
	say "[The doll-fly] buzzes around, but doesn't respond.";

Before answering the doll-fly that something:
	if the topic understood in lower case is the incantation of the doll-fly in lower case:
		say "Upon hearing the incantation [italic type][incantation of the doll-fly][roman type], [the doll-fly] wails a high-pitched, mournful sound, and then winks out of existence. It seems to have dropped something.";
		now the doll-fly is off-stage;
		now the Rod of Hezekiah is in the location;
		[ say "[italic type][bracket]Yeah, that's right, you heard me: [incantation of the doll-fly]![close bracket][roman type][paragraph break]"; ]
		stop the action;
	otherwise:
		say "The doll-fly buzzes around, but doesn't respond.";
		stop the action;

Instead of doing something other than taking or attacking to the doll-fly when action requires a touchable noun:
	say "[We] can't get close enough to [the doll-fly] to touch it.";

After reading a command:
	if the player's command in lower case is the incantation of the doll-fly in lower case:
		change the text of the player's command to "say [the incantation of the doll-fly]"; 

doll-fly interjection timer is a number that varies. doll-fly interjection timer is 5.

Every turn when doll-fly interjection timer is not 0 and doll-fly is in the location:
	decrease doll-fly interjection timer by 1;
	if doll-fly interjection timer is 0:
		interject doll-fly;

To interject doll-fly:
	sort Table of doll-fly Interjections in random order;
	if there is a used of false in the Table of doll-fly Interjections:
		choose the row with a used of false in the Table of doll-fly Interjections;
		say "[doll-fly interjection entry][line break]";
		now the used entry is true;
		increase doll-fly interjection timer by a random number from 2 to 5;

Table of doll-fly Interjections
doll-fly interjection	used
"[The doll-fly] shrieks and dive-bombs Faraji. They duck just in time."	false
"[The doll-fly] howls, 'Thou shalt not pass!'"	false
"[The doll-fly] buzzes around, making a nuisance of itself."	false
"[The doll-fly] taunts, 'You humans smell even worse than the lizard people!'"	false
"[The doll-fly] buzzes, 'Your family thinks you're a failure!'"	false
"[The doll-fly] screams, 'The Bureau of Strange Happenings is a joke!'"	false
"[The doll-fly] shrieks, 'No one will ever love you!'"	false
"[The doll-fly] buzzes, 'You're a terrible person!'"	false
"[The doll-fly] howls, 'I'm so angry about the ending of Game of Thrones and I'm going to take it out on you!'"	false
"[The doll-fly] buzzes, 'The floor waxer doesn't do anything important!'"	false
"[The doll-fly] taunts, 'I once played a game where EXAMINE and SEARCH were different commands and boy was I pissed!'"	false
"[The doll-fly] shouts, 'Hi, I'm Larch Faraji, and I'm a big jerk!'"	false
"[The doll-fly] buzzes, 'Go home and cry, you freak!'"	false
"[The doll-fly] howls, 'You dress terribly, and your hair is a mess!'"	false

Book 17 - Extension Cord

The electrical outlet is in First Utilitarian Church of Enigma Lake. 

Does the player mean plugging something into the electrical outlet: 
	it is very likely.

Rule for supplying a missing second noun while plugging something into:
	if the location is the First Utilitarian Church of Enigma Lake:
		now the second noun is the electrical outlet;
	otherwise:
		rule fails;
		
After plugging the makeshift astral resonator into the electrical outlet:
	now the makeshift astral resonator is in the location;
	continue the action;
		
After plugging the table lamp into the electrical outlet:
	now the table lamp is in the location;
	continue the action;
		
After plugging the spotlight into the electrical outlet:
	now the spotlight is in the location;
	continue the action;

Check taking the makeshift astral resonator when the makeshift astral resonator is plugged into the electrical outlet:
	say "(first unplugging [the makeshift astral resonator])[command clarification break]";
	try unplugging the makeshift astral resonator;
	silently try taking the makeshift astral resonator instead;

Chapter - Power

Definition: a thing is powered:
	if it is the electrical outlet and the circuit breaker is switched on:
		yes;
	otherwise if something (called the socket) accepts it:
		if it is the socket:
			no;
		decide on whether or not the socket is powered;
	otherwise if it is the socket-end:
		decide on whether or not the plug-end is powered;
	no;


After switching on the circuit breaker when the makeshift astral resonator is in the vestry or the player encloses the makeshift astral resonator:
	if the makeshift astral resonator is powered:
		say "The [makeshift astral resonator] flickers to life, emitting a bright beam of light.";
	otherwise:
		continue the action;

After switching off the circuit breaker when the makeshift astral resonator is in the vestry or the player encloses the makeshift astral resonator:
	if the makeshift astral resonator was powered:
		say "The [makeshift astral resonator] flickers and goes dark.";
	otherwise:
		continue the action;


Book 17 - Vestry

The vestry is a leavable room. It is east of First Utilitarian Church. It has egress west. It is in ELR. It is indoors. "It's a small room, with an exit leading to the church proper to the west. A lovely tapestry hangs on the wall[if the tapestry is pushed aside]. It is pushed aside, revealing a circuit breaker[end if]."
The x-coordinate of the vestry is 3. The y-coordinate of the vestry is 1.

The tapestry is scenery in the vestry. "An intricate tapestry, depicting a scene of a medieval village. It's a bit out of place in a church, but it's lovely." The tapestry can be pushed aside. Understand "wall hanging", "wallhanging", "medieval/village" as the tapestry.

Instead of pushing the circuit breaker:
	if the circuit breaker is switched off:
		try switching on the circuit breaker;
	otherwise:
		try switching off the circuit breaker;

Instead of pulling the circuit breaker:
	if the circuit breaker is switched off:
		try switching on the circuit breaker;
	otherwise:
		try switching off the circuit breaker;

Instead of pushing the tapestry when the tapestry is not pushed aside:
	say "[We] [push] the tapestry aside, revealing a circuit breaker switch mounted on the wall.";
	now the tapestry is pushed aside;
	now the circuit breaker is in the vestry;

Instead of pushing the tapestry when the tapestry is pushed aside:
	say "The tapestry is already pushed aside. No need to push it back.";

Instead of looking behind the tapestry:
	try pushing the tapestry;

The circuit breaker is a scenery device. "A single circuit breaker switch is mounted on the wall." Understand "switch", "safety switch", "switchgear", "disconnect switch", "electrical", "electricity", "fuse switch", "overload switch" and "trip switch" as the circuit breaker. The circuit breaker is switched off.

Book 17.5 - The church basement

The church basement is below the First Utilitarian Church of Enigma Lake. It is in ELR. It is indoors. It is dark. "The basement is a shock to behold after the simple church above. It's a large, open space, with walls painted with scenes of humans and lizard people in battle, with aliens and platypuses looking on in horror. There is an ornate altar at the far end of the room. The exit is up.

It looks like the fluorescent tubes in the ceiling are burned out."

The fluorescent tubes are scenery in the church basement. "The fluorescent tubes in the ceiling are burned out."
They are far away. Understand "tube/light/lights" as the fluorescent tubes.

The paintings are scenery in the church basement. "The walls are painted with scenes of humans and lizard people in battle, with aliens and platypuses looking on in horror." Understand "painting", "mural", "murals", "humans/human/lizard/people/person/aliens/alien/platypuses/platypus" as paintings.

Does the player mean examining the Book of Utilitarianism when the location is the church basement:
	it is very likely.

The church basement can be witnessed in darkness.

After going to church basement:
	if in darkness:
		now the church basement is witnessed in darkness;
	continue the action;


The basement altar is a scenery supporter in the church basement. "The altar is a strange, ornate thing, more like a pagan idol than a Utilitarian altar."

The Book of Utilitarianism is on the altar. 


Book 18 - Steeple

To say makeshift resonator state:
	if something (called the socket) accepts the makeshift astral resonator:
		say "[A makeshift astral resonator] is mounted on the tripod and plugged into [the socket]";
		now the socket is unmentioned;
	otherwise:
		say "[A makeshift astral resonator] is mounted on the tripod";

the steeple is above the First Utilitarian Church of Enigma Lake. It is in ELR. It is outdoors.
"From here, [we] can see the obelisk in the park clearly. Someone has set up a tripod here. [if the content of the tripod is nothing]Its mount is empty[otherwise if the content of the tripod is the telescope][A telescope] is mounted on it[otherwise][makeshift resonator state][end if].

A ladder leads down to the church proper."
The x-coordinate of the steeple is 2. The y-coordinate of the steeple is 1.

The steeple ladder is scenery in the steeple. "The ladder leads down to the church proper."

Some stained-glass-window-steeples are scenery in the steeple. They are privately-named. The printed name is "stained glass windows". Understand "stained/glass/windows" as stained-glass-window-steeples. "The steeple is surrounded by the typical Utilitarian perfectly clear stained glass windows.".
stained-glass-window-steeples are unsnarkable.

The telescope is in the tripod. The description is "A small telescope suitable for amateur astronomy[if the content of the tripod is the telescope]. It's mounted on a tripod[end if]."

Instead of turning the telescope:
	say "The telescope is fixed in place, pointing at the obelisk in the park.";

Focussing is an action applying to one thing. Understand "focus [something]" as focussing.

check focussing:
	if the noun is not the telescope:
		say "That's not something [we] can focus." instead;

Carry out focussing:
	say "The focussing ring on the telescope is jammed. Faraji can't adjust it.";

Looking through it at is an action applying to one thing and one visible thing. Understand "look at [something] through [something]" as looking through it at (with nouns reversed).
Understand "look through [something] at [something]" as looking through it at.

Peering through it at is an action applying to one thing and one topic. Understand "look at [text] through [something]" as peering through it at (with nouns reversed).
Understand "look through [something] at [text]" as peering through it at.

Check looking through it at:
	if the noun is not the telescope:
		say "That's not something [we] can look through." instead;
	if the second noun is the telescope:
		say "That's just silly." instead;
	if the second noun is the tripod:
		say "That's just silly." instead;
	if the second noun is not the steeple-obelisk-facade:
		say "The telescope is fixed in place, pointing at the obelisk in the park." instead;

Check peering through it at:
	if the noun is not the telescope:
		say "That's not something [we] can look through." instead;
	say "The telescope is fixed in place, pointing at the obelisk in the park." instead;

Carry out looking through it at:
	try examining the second noun;

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

portal opened is a truth state that varies. portal opened is false.

To open the portal:
	now portal opened is true;
	now circular chamber is not dark;
	now the ethereal portal is in the circular chamber;

Every turn when beam count is 3 and portal opened is false:
	open the portal;
	if the player is in Henry's Hot Skillet:
		say "Something is happening outside. Faraji runs up to the roof to see. [run paragraph on]";
	if the player is in the First Utilitarian Church of Enigma Lake:
		say "Something is happening outside. Faraji runs up to the roof to see. [run paragraph on]";
	if the player is in the vestry:
		say "Something is happening outside. Faraji runs up to the roof to see. [run paragraph on]";
	say "The obelisk itself has begun to glow. The light from the crystal at its apex grows brighter and brighter, until it's almost blinding. Shielding their eyes, Faraji watches as the space around the obelisk shimmers and distorts. The previously gentle breeze is now a gale, [if location is the steeple or the location is the First Utilitarian Church of Enigma Lake or the location is the vestry]screaming through the steeple[otherwise if location is the radio station roof]howling through the struts of the radio tower[otherwise]shivering the television aerial[end if]. Then, with a huge crack, a bolt of lightning strikes the crystal. One can almost sense the electricity penetrating the earth. searching for something. And then, it's found it. Below the obelisk, something has woken.";
	say line break;
	continue;
	if the player is in Henry's Hot Skillet:
		now the player is in Henry's Roof;
	if the player is in the vestry or the player is in the First Utilitarian Church of Enigma Lake:
		now the player is in the steeple;

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

The examine hood contents rule does nothing when the noun is the tripod.

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

Mounting it on is an action applying to two things. Understand "mount [something] on/in/onto [something]" as mounting it on.
Understand "mount [something] on/in/onto [the platform]" as inserting it into.
Understand "mount [something] on/in/onto [the broadcast tower]" as inserting it into.

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
	say "[We] [manage] to make the [makeshift astral resonator] fit in the tripod's mount[if the extension cord accepts the makeshift astral resonator], dropping the extension cord as they do so[end if]";
	if the extension cord accepts the makeshift astral resonator:
		now the extension cord is in the steeple; 
	if the makeshift astral resonator is powered:
		say ". The beam of light focuses on the obelisk in the park, striking the crystal adornment at its apex. The crystal is glowing [crystal glow].";
	otherwise:
		say ".";

Check taking the extension cord:
	if the extension cord accepts the makeshift astral resonator and the content of the tripod is the makeshift astral resonator:
		say "The extension cord is plugged into the [makeshift astral resonator]. [We] can't take it without unplugging it first." instead;

Instead of inserting something into the tripod:
	try mounting the noun on the tripod;

Instead of putting something on the tripod:
	try mounting the noun on the tripod;

The steeple-obelisk-facade is a backdrop. It is privately-named. The printed name is "obelisk". It is in the steeple. Understand "obelisk/enigma/park/crystal/adornment" as steeple-obelisk-facade. "The obelisk in the park is clearly visible from here."

To decide if mounted-makeshift-resonator:
	if the content of the tripod is the makeshift astral resonator and the makeshift astral resonator is powered:
		yes;
	otherwise:
		no;

The Plugging it into action has a truth state called resonator originally powered.
The Unplugging action has a truth state called x.

Setting action variables for plugging something into:
	now resonator originally powered is whether or not the makeshift astral resonator is powered;

Setting action variables for unplugging:
	now x is whether or not the makeshift astral resonator is powered;

After plugging the makeshift astral resonator into something:
	say "Faraji plugs the [makeshift astral resonator] into [the second noun]";
	if the makeshift astral resonator is powered:
		say ". It flickers to life, emitting a bright beam of light";
		if the content of the tripod is the makeshift astral resonator:
			say " that focuses on the obelisk in the park, striking the crystal adornment at its apex. The crystal is glowing [crystal glow].";
		otherwise:
			say " that strikes a wall.";
	otherwise:
		say ".";

After unplugging the makeshift astral resonator when x is true:
	say "Faraji unplugs the [makeshift astral resonator] from [the socket unplugged from]. It flickers and goes dark.";
	now the makeshift astral resonator is unlit;

After plugging the extension cord into the electrical outlet:
	say "Faraji plugs the extension cord into [the electrical outlet]";
	if the makeshift astral resonator is powered:
		say ". [The makeshift astral resonator] flickers to life, emitting a bright beam of light";
		if the content of the tripod is the makeshift astral resonator:
			say " that focuses on the obelisk in the park, striking the crystal adornment at its apex. The crystal is glowing [crystal glow].";
		otherwise:
			say " that strikes a wall.";
	otherwise:
		say ".";
	if the table lamp is powered and the table lamp is switched on:
		say ". [The table lamp] flickers to life.";
	otherwise:
		say ".";

After unplugging the extension cord when x is true:
	if the makeshift astral resonator is not powered:
		say "Faraji unplugs the extension cord from [the electrical outlet]. [The makeshift astral resonator] flickers and goes dark.";
	otherwise:
		continue the action;

Instead of examining the steeple-obelisk-facade:
	say "The obelisk in the park is clearly visible from here. [run paragraph on]";
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
		[ say "[paragraph break][italic type][bracket]Far out![close bracket][roman type]"; ]
	otherwise:
		say paragraph break;

Book 19 - Lake at Ridge

the Lake at Ridge is north of Lake Street by the Park. It is in ELR. It is outdoors.
The printed name is "Lake Street and Ridge Road". The preposition is "at the intersection of".
"[if player is in the abandoned pickup truck]There is a glove compartment on the passenger side, [glove compartment state].[paragraph break][end if]The intersection lies at the edge of the lake. Lake Street runs south into town, while Ridge Road heads off into the darkness east of here. A little path along the lake shore is to the west."
The x-coordinate of the Lake at Ridge is 1. The y-coordinate of the Lake at Ridge is 2.

The intersection is scenery in the Lake at Ridge. "This is the intersection of Lake Street, which runs south into town, and Ridge Road, which heads off into the darkness east of here."

The ridge-path-scenery is scenery in the Lake at Ridge. It is privately-named. The printed name is "path". Understand "little/-- path" as the ridge-path-scenery. "The lake shore path runs off to the west."
The ridge-path-scenery is unsnarkable.

Lake-Street is scenery in the Lake at Ridge. "Lake Street runs south into town." It is privately-named. The printed name is "Lake Street". Understand "lake street" as Lake-Street.

Ridge-Road is scenery in the Lake at Ridge. "Ridge Road heads off into the darkness east of here." It is privately-named. The printed name is "Ridge Road". Understand "ridge road" as Ridge-Road.

To say glove compartment state:
	if the glove compartment is open:
		say "open";
	otherwise:
		say "closed";

After opening the abandoned pickup truck:
	say "Faraji opens the door of the abandoned truck.";

Does the player mean taking the brass key when the player is in the abandoned pickup truck:
	it is very likely.

An abandoned pickup truck is a fixed in place closed enterable openable transparent container in Lake at Ridge. 
"There is an abandoned pickup truck at the side of the road[if the hood is open]. The hood is open[end if]." 
The description is "The truck, a Ford F-1, is relatively new, with no sign as to why it was abandoned. The tailgate is [if the tailgate is open]down[otherwise]up[end if]. The hood is slightly crumpled, as if it has been in a minor accident[if the hood is open]. The hood is open[end if][if the bolt cutters are in the truck bed]. The truck bed contains a pair of bolt cutters[end if]."
Understand "ford", "f-1", "door" as the abandoned pickup truck.
The glove compartment is a scenery closed openable container in the abandoned pickup truck.
Understand "box/glovebox" as the glove compartment.
The description is "The glove compartment is [if the glove compartment is open]open[otherwise]closed[end if]."
The brass key is a key. It is in the glove compartment. The description is "A simple brass key".

Before entering the abandoned pickup truck when the abandoned pickup truck is closed:
	say "(first opening the abandoned pickup truck)[command clarification break]";
	silently try opening the abandoned pickup truck;

Before exiting when the player is in the abandoned pickup truck and the abandoned pickup truck is closed:
	say "(first opening the abandoned pickup truck)[command clarification break]";
	silently try opening the abandoned pickup truck;

The truck hood is a part of the abandoned pickup truck. It is a closed openable container. The description is "The hood is slightly crumpled, as if it has been in a minor accident. It is [if the hood is open]open[otherwise]closed[end if]." Understand "bonnet" as the truck hood. 
It is unsnarkable.

Instead of doing something to something when the action requires a touchable noun and (the noun is not enclosed by the abandoned pickup truck or the noun is enclosed by the truck bed) and the noun is not the abandoned pickup truck and the player is in the abandoned pickup truck:
	say "Faraji can't do that from inside the truck.";

Instead of doing something to something when the action requires a touchable noun and the noun is enclosed by the abandoned pickup truck and the noun is not enclosed by the truck bed and the noun is not the abandoned pickup truck and the noun is not the truck hood and the player is not in the abandoned pickup truck:
	say "Faraji can't do that from here.";

The hood contains a dirty car battery. 

Instead of opening the truck hood when the player is in the abandoned pickup truck:
	say "Faraji must be outside the truck to open the hood.";

Instead of closing the truck hood when the player is in the abandoned pickup truck:
	say "Faraji must be outside the truck to close the hood.";

Instead of entering the truck bed:
	say "Faraji doesn't see any point in climbing into the truck bed.";

The description of the dirty battery is "The battery is dirty and corroded. Acid has leaked from the terminals. It's unlikely to be of any use."

After examining the dirty battery:
	now the player knows dirty-battery;

Instead of doing something to the dirty battery when the action requires a touchable noun:
	say "With so much acid on the battery, it's probably best not to touch it with bare hands. To be honest, the battery looks like it's a lost cause anyway.";

After entering the abandoned pickup truck:
	try looking;

Instead of searching the abandoned pickup truck when the player is not in the abandoned pickup truck:
	say "The interior of the truck is visible through [if the abandoned pickup truck is open]the open door[otherwise]the window[end if] but Faraji can't see anything much from where they are[if the glove compartment is open]. The glove compartment is open but it's impossible to see what, if anything, is in it[end if][if something is in the truck bed]. The truck bed contains [a list of things in the truck bed][end if].";

Instead of driving the abandoned pickup truck:
	try switching on the abandoned pickup truck;
	
Instead of switching on the abandoned pickup truck:
	let K be the list of all keys enclosed by the player;
	if the number of entries of K is 1:
		say "The key doesn't fit the ignition.";
	otherwise if the number of entries of K > 1:
		say "None of the keys [we] [have]fit the ignition.";
	otherwise:
		say "Even if this thing runs, [we] [don't] have the key.";
		
Understand "start [something]" as switching on.

Understand "lower [tailgate]" as opening. Understand "raise [tailgate]" as closing.

The truck bed is an open container. It is part of the abandoned pickup truck. The description is "It's a perfectly ordinary truck bed."
It is unsnarkable.

The tailgate is part of the abandoned pickup truck. It is an open, openable container. The description is "The tailgate is[if the truck bed is open] down[otherwise] up[end if]." Understand "tail/gate" as the tailgate. 
It is unsnarkable.

After doing something to the tailgate when the bolt cutters are in the truck bed:
	if the tailgate is open:
		say "Faraji lowers the tailgate. They notice a pair of bolt cutters in the truck bed.";
	otherwise:
		say "Faraji raises the tailgate and sees a pair of bolt cutters in the truck bed.";

The pair of bolt cutters are in the truck bed. The description is "A pair of bolt cutters, with long handles and heavy jaws." They are ambiguously plural. 

Book 20 - Lake Shore north of the park

the lake shore north of the park is west of Lake at Ridge and north of Enigma Park. It is in ELR. It is outdoors. The preposition is "on". "[description of lake]. The park is to the south, while the lake stretches off to the north, and the shore goes west. A workshed is to the southeast. A road can be seen to the east."
Understand "water" as the lake shore north of the park.

The x-coordinate of the lake shore north of the park is 0. The y-coordinate of the lake shore north of the park is 2.

The workshed-facade is a building facade. It is in Lake Shore North of the Park. It is privately-named. The printed name is "workshed". Understand "workshed/shed/building" as workshed-facade. "The workshed is a small, weathered building, with a single door and no windows."
	The workshed-facade fronts the workshed.
	It is enterable from Lake Shore North of the Park.

road-scenery is scenery in the lake shore north of the park. "A road can be seen to the east."
It is privately-named. The printed name is "road". Understand "road" as road-scenery.
The road-scenery is unsnarkable.

[ enigma-park-scenery is scenery in the lake shore north of the park. "The park is to the south."
It is privately-named. The printed name is "park". Understand "enigma/park" as enigma-park-scenery.
The enigma-park-scenery is unsnarkable. ]

Book 21 - Workshed

the workshed is a leavable room. It has egress northwest. It is in ELR. It is indoors. "It is a small, weathered building, with a single door and no windows, and a creaky wooden floor. [if the light bulb is in the hanging socket]The interior is dimly lit by a single light bulb hanging from the ceiling. [otherwise]The interior is almost dark. An empty light socket hangs from the ceiling. [end if][equipment cabinet state] cabinet is in the corner. [rusty metal door state] rusty metal door leads out of the shed.".

The light bulb is a thing. The description is "A standard 60W light bulb."
The light bulb is unsnarkable.

Understand "screw [the light bulb] in/into [the hanging socket]", "mount [the light bulb] on/onto/in/into [the hanging socket]" as inserting it into.
Understand "screw [the rusty astral resonator] in/into [the hanging socket]", "mount [the rusty astral resonator] on/onto/in/into [the hanging socket]" as inserting it into.
Understand "unscrew [the light bulb]" as taking when the light bulb is in the hanging socket.
Understand "unscrew [the light bulb] from [the hanging socket]" as removing it from when the light bulb is in the hanging socket.

Failing to screw it into is an action applying to two things.
Understand "screw [something] in/into [something]" as failing to screw it into.

Instead of failing to screw the rusty astral resonator into the aerial:
	try inserting the rusty astral resonator into the threaded socket;

Check failing to screw into:
	say "Faraji can't screw [the noun] into [the second noun].";

After taking the light bulb when light bulb was in the hanging socket:
	say "Faraji unscrews the light bulb from the socket.";

After inserting the light bulb into the hanging socket:
	say "Faraji screws the light bulb into the socket.";

Instead of inserting something into the hanging socket when the noun is not the light bulb:
	say "[The noun] doesn't fit in the hanging light socket."

The hanging socket is a scenery single item container in the workshed. The light bulb is in the hanging socket. Understand "light" as the hanging socket. 
"[if the light bulb is in the hanging socket]The light bulb is in the socket[otherwise]The socket is empty[end if]."

Understand "building/shed" as the workshed.

The x-coordinate of the workshed is 0.5. The y-coordinate of the workshed is 1.5.

To say equipment cabinet state:
	if the equipment cabinet is open:
		say "An open";
	otherwise:
		say "A closed";


To say rusty metal door state:
	if the rusty metal door is open:
		say "An open";
	otherwise:
		say "A closed";

The rusty metal door is a closed openable scenery door. It is southeast of Lake Shore North of the Park and northwest of the workshed. "[if the rusty metal door is open]The door is open[otherwise]The door is closed[end if]."
It is unsnarkable.

The equipment cabinet is a closed locked openable lockable scenery container in the workshed.
It has matching key the iron key. Understand "heavy/metal/lock" as the equipment cabinet.
"A heavy metal cabinet with a lock. [if the equipment cabinet is open]The cabinet is open[otherwise]The cabinet is closed[end if]."


The rusty astral resonator is in the equipment cabinet. It is privately-named. The description is "A small, rusty, metallic, cylindrical object. One end is capped with a lens, while the other terminates in a threaded base, like that of a light bulb.".
The printed name is "[if Astral Secrets is read]rusty astral resonator[otherwise]strange, rusty, metal object[end if]".
Understand "rusty/astral/resonator" as the rusty astral resonator when Astral Secrets is read.
Understand "strange/rusty/metal/metallic/cylindrical/cylinder/object" as the rusty astral resonator.
The threaded base is part of the rusty astral resonator. The description is "The base is threaded, like a light bulb."
The rusty lens is part of the rusty astral resonator. The description is "The device is capped with a lens on one end."

Description notes for the dowsing rod:
	if the location is a large grave and the shiny astral resonator is nowhere:
		add "vibrating" to descriptive notes;

Book 23 - Portal room

The obelisk-ladder is a secret door. It is below Enigma Park and above the circular chamber. It is privately-named. It is scenery. The printed name is "ladder". Understand "ladder" as the obelisk-ladder. "A ladder leads down into the darkness below the obelisk."

The circular chamber is in ELR. It is indoors. The circular chamber is dark. It is always-indefinite.
"The walls are rough-hewn stone and the ceiling is low. A ladder leads up to the obelisk above."

A door appearance rule for the obelisk-ladder:
	rule succeeds with result whether or not the obelisk-ladder is revealed.

The ethereal portal is fixed in place. "A shimmering portal hovers in the center of the chamber, casting a faint light over the room."
The description is "This portal seems to be natural, if that's indeed a possibility. It's a shimmering white oval, about six feet high and four feet wide. It's not clear where it leads."

Instead of entering the ethereal portal:
	say "Faraji steps through the portal. The circular chamber vanishes, and...";
	initialize the boss battle;
	now the player is in the old root cellar;
	now the current interlocutor is Daniels;

Book 23.5 - Old Root Cellar

An old root cellar is a room. It is always-indefinite. "The chamber is dark and damp, smelling of earth and old vegetable matter. The walls, floor, and ceiling are packed earth. Around the walls are numerous woven baskets for storing vegetables. Light filters in from a passage to the north."

Instead of looking when the location is the old root cellar and the old root cellar is unvisited:
	say "The chamber is dark and damp, smelling of earth and old vegetable matter. The walls, floor, and ceiling are packed earth. Around the walls are numerous woven baskets for storing vegetables. Light filters in from a passage to the north.

Faraji finds themself in the midst of a hostile confrontation. On one side are the same [group of lizard people] they banished from Enigma Park; on the other, a lone bedraggled man, clutching a root vegetable and wearing a very nice watch. Despite their superior numbers, the lizard people seem to be wary of their opponent. Presumably, the bedraggled man is the [Daniels] that Faraji was sent to find.
	
The lizard people turn to Faraji. 'You!' one of them hisses. 'You thought you could banish us, but we have returned to snatch your victory from the jaws of our defeat... or something or other. And now we are on the threshold of our greatest triumph! Soon the Dragon will be ours!'

Presumably-Daniels speaks up.  'Seriously guys, you're always so over-dramatic. Besides, I've got you right where I want you. Just watch.' He shakes his potato at the lizard people. As he does, you notice his right arm looks injured.
";
	say line break;
	say boss battle banner;
	say paragraph break;
	now the old root cellar is visited;

To say boss battle banner:
	say "[fixed letter spacing]";
	center "<<< BOSS BATTLE! >>>";
	say "[variable letter spacing]".

Understand "cellar/cave/chamber" as the old root cellar.


Daniels is a man in the old root cellar. 
[ "[one of]A tired-looking man sits on the floor of the cellar. He looks up as Faraji appears. 'Ah, you must be the help I was promised,' he says. 'I'm Daniels. Agent of the hyperspace field office of the Bureau of Strange Happenings and owner of the A+ Laundromat in Swamp Park, Maryland. I'm dead tired, and ready to get out of here.'[or]Daniels, ragged and dirty, sits on the floor of the cellar. He looks tired.[stopping]". ]
The description is "Daniels looks weary. He's dressed in a tattered suit, and his hair is unkempt."
Understand "man/agent" as Daniels. 

Rule for deciding the concealed possessions of Daniels:
	no;

A root-vegetable is a kind of thing. 
A root-vegetable can be out of reach or within-reach. A root-vegetable is usually within-reach.
A rutabaga, a turnip, and a potato are root-vegetables.

The description of the turnip is "A rather large, hefty turnip."
The description of the potato is "A large, fresh potato."
The description of the rutabaga is "A weighty rutabaga."

Instead of eating a root-vegetable:
	say "Uncooked, [the noun] is not very appetizing.";

Instead of giving something to Daniels when the group of lizard people is in the old root cellar:
	say "Daniels is too far away for that.";

The woven basket is a closed, openable scenery container in the old root cellar. "The basket is woven from reeds[if the woven basket is open]. It's open[otherwise]. It's closed[end if]." 
Understand "baskets" as the woven basket.
The rutabaga and the turnip are in the woven basket. 
Daniels carries the potato.

The root vegetables are scenery in the old root cellar. "Looks like the vegetables are well-preserved."

The passage is scenery in the old root cellar. "The passage leads to the north. From the light filtering in, it probably leads outside." Understand "light" as the passage.
It is unsnarkable.


Chapter 1 - The Lizard People part 2

faraji health is a number that varies.
lizard people health is a number that varies.
battle turn is a number that varies.

Rule for constructing the status line when the location is the old root cellar and the group of lizard people is in the old root cellar:
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
	now Lizard people facing us is true;
	now turn countdown is 0;
	now notable Daniels event this turn is false;
	now notable lizard event this turn is false;
	now Daniels is familiar;
	now potato is familiar;
	now rutabaga is familiar;
	now turnip is familiar;
	now woven basket is familiar;
	now root vegetables are familiar;

Lizard people facing us is a truth state that varies. Lizard people facing us is true.
Turn countdown is a number that varies. Turn countdown is 0.
Notable Daniels event this turn is a truth state that varies. Notable Daniels event this turn is false.
Notable lizard event this turn is a truth state that varies. Notable lizard event this turn is false.
Faraji distracted this turn is a truth state that varies. Faraji distracted this turn is false.

After reading a command:
	now notable Daniels event this turn is false;
	now notable lizard event this turn is false;
	now faraji distracted this turn is false.

To banish the lizard people for good:
	now the lizard people are nowhere;
	queue Daniels with about-the-laundromat;
	queue Daniels with how he got here;
	queue Daniels with where-we-are;
	now the current interlocutor is Daniels.

Before doing something when the location is the old root cellar and the group of lizard people is in the old root cellar:
	let act be the action name part of the current action;
	if act is examining action:
		if the noun is not the group of lizard people:
			now faraji distracted this turn is true;
	otherwise if act is not the waiting action and act is not the throwing it at action and act is not the defending action:
		now faraji distracted this turn is true;

Instead of doing something other than examining or quizzing to Daniels when the group of lizard people is in the old root cellar:
	say "Faraji is too distracted by the lizard people to pay attention to Daniels.";

Instead of doing something to a root-vegetable when the noun is out of reach:
	say "Faraji would have to get past the lizard men to do that.";

Every turn when the location is the old root cellar and the group of lizard people is in the old root cellar:
	if the remainder after dividing the battle turn by 10 is 0:
		say "The lizard people hiss, spewing forth a cloud of noxious vapor. Faraji can't avoid breathing it in.";
		hit faraji;
		now notable lizard event this turn is true;

Every turn when the location is the old root cellar and notable daniels event this turn is false and the group of lizard people is in the old root cellar:
	[ if the rutabaga is in the old root cellar and rutabaga is out of reach and a random chance of 1 in 2 succeeds:
		try Daniels taking the rutabaga;
		now rutabaga is within-reach; ]
	if Daniels does not carry a root-vegetable and a root-vegetable (called RV) is in the old root cellar and RV is out of reach and a random chance of 1 in 2 succeeds:
		try Daniels taking RV;
		now RV is within-reach;
		now notable daniels event this turn is true;
	otherwise if the group of lizard people does not carry a root-vegetable and a root-vegetable (called RV) is in the old root cellar:
		if the RV is the rutabaga:
			say "One of the lizard people looks at the nearby rutabaga and distinctly moves away from it.";
		otherwise if a random chance of 2 in 3 succeeds:
			try lizard people taking RV;
			now RV is within-reach;
			now notable lizard event this turn is true;

After the group of lizard people taking a root-vegetable:
	if a random number from 1 to 5 is:
		-- 1:
			say "One of the lizard people picks up [the noun].";
		-- 2:
			say "One of the lizard people snatches [the noun] from the ground.";
		-- 3:
			say "One of the lizard people grabs [the noun].";
		-- 4:
			say "One of the lizard people takes [the noun].";
		-- 5:
			say "One of the lizard people seizes [the noun].";

Every turn when the location is the old root cellar and Daniels carries a root-vegetable (called RV) and the lizard people are in the old root cellar and notable daniels event this turn is false:
	say "Daniels throws [the RV] at the lizard people. His hurt arm makes his throw weak, and [the RV] merely rolls past the lizard people. It is now within Faraji's reach.";
	now the RV is in the old root cellar;
	now notable daniels event this turn is true;

lizard-attack-this-turn is a truth state that varies. lizard-attack-this-turn is false.

Last every turn rule:
	now lizard-attack-this-turn is false.

Every turn when the location is the old root cellar and the lizard people carry a root-vegetable (called RV) and the lizard people are in the old root cellar and lizard people facing us is true and notable lizard event this turn is false:
	now the RV is in the old root cellar;
	now notable lizard event this turn is true;
	now lizard-attack-this-turn is true;
	if faraji distracted this turn is true:
		say "One of the lizard people [one of]throws[or]hurls[or]flings[or]launches[or]fires[or]slings[at random] [the RV] at Faraji. It hits them right on the [one of]head[or]shoulder[or]arm[or]leg[or]foot[at random] and bounces away. It remains within Faraji's reach.";
		hit faraji;
	otherwise if defending-this-turn is true:
		say "One of the lizard people [one of]throws[or]hurls[or]flings[or]launches[or]fires[or]slings[at random] [the RV] at Faraji. They [one of]dodge[or]duck[or]dodge and weave[or]sidestep[or]jump aside[at random], and it bounces away. It remains within Faraji's reach.";
	otherwise:
		say "One of the lizard people [one of]throws[or]hurls[or]flings[or]launches[or]fires[or]slings[at random] [the RV] at Faraji. It [one of]misses[or]goes wide[or]falls short[or]bounces off the wall[or]hits the floor[at random], and is now within Faraji's reach.";

Every turn when the location is the old root cellar and the lizard people are in the old root cellar and defending-this-turn is true and lizard-attack-this-turn is false:
	say "Faraji [one of]spins around to avoid an attack which never comes[or]ducks to avoid an attack which never comes[or]parries an attack which never comes[or]blocks an attack which never comes[or]deflects an attack which never comes[or]evades an attack which never comes[or]protects themself from an attack which never comes[or]shields themself from an attack which never comes[or]wards off an attack which never comes[at random].";

Every turn when lizard people facing us is false and the lizard people are in the old root cellar and the location is the old root cellar and notable lizard event this turn is false:
	decrement turn countdown;
	if turn countdown is 0:
		now lizard people facing us is true;
		say "The lizard people turn to face Faraji. [one of]They hiss furiously[or]One of them rushes Faraji, but they scurry to a safer place[or]Faraji sticks out their tongue at them[or]One of them makes what Faraji assumes is a rude gesture for a lizard person[or]They hiss and growl at them[or]They shake their fists at them[at random].";
		now notable lizard event this turn is true;

After waiting when the group of lizard people is in the location and the location is the old root cellar:
	if a random number from 1 to 5 is:
		-- 1: 
			if lizard people facing us is false:
				say "The lizard people make a menacing movement towards Daniels. He backs away strategically.";
			otherwise:
				say "The lizard people make a menacing movement towards Faraji. They back away strategically.";
		-- 2:
			if lizard people facing us is false:
				say "The lizard people hiss and growl at Daniels.";
			otherwise:
				say "The lizard people hiss and growl at Faraji.";
		-- 3:
			if lizard people facing us is false:
				say "The lizard people shake their fists at Daniels.";
			otherwise:
				say "The lizard people shake their fists at Faraji.";
		-- 4:
			if lizard people facing us is false:
				say "The lizard people make what Faraji assumes is a rude gesture for a lizard person.";
			otherwise:
				say "The lizard people make what Faraji assumes is a rude gesture for a lizard person.";
		-- 5:
			if lizard people facing us is false:
				say "The lizard people hiss furiously at Daniels.";
			otherwise:
				if Faraji carries a root-vegetable that is not a rutabaga:
					let RV be a random root-vegetable that is not a rutabaga carried by Faraji;
					say "The lizard people rush Faraji all at once, causing them to drop [the RV] they are carrying. The lizard people grab it and retreat.";
					now the group of lizard people carry the RV;
					now notable lizard event this turn is true;
				otherwise:
					say "The lizard people hiss furiously at Faraji.";
	[ otherwise:
		say "Faraji waits, but the lizard people do not seem inclined to make the first move."; ]



Every turn when the location is the old root cellar and Daniels does not carry the rutabaga and the lizard people are in the old root cellar and notable daniels event this turn is false:
	if lizard people facing us is true and a random chance of 1 in 4 succeeds:
		say "Daniels yells rudely at the lizard people. [one of]'You're all a bunch of jerks!'[or]'Your suits fit poorly!'[or]'Lizard people smell like old socks!'[or]'Your parents liked your siblings better!'[or]'Ever notice that all lizard people are really stupid?'[or]'No one likes you!'[or]'Gah! What is that smell?'[or]'Hey look at me! I'm a lizard person, and I'm so stupid!'[at random][line break]The lizard people hiss in anger and turn to face Daniels. [one of]They rush him, but he dodges nimbly[or]They shriek, 'You'll pay for that!' and shake their fists[or]Daniels sticks out his tongue at them[or]They shout, 'You'll regret that!' and bare their teeth[or]They retort, 'Sticks and stones!' and stamp their feet[or]They hiss and growl at him[at random].";
		now lizard people facing us is false;
		now turn countdown is 2;
		now notable daniels event this turn is true;

Instead of throwing a root-vegetable at Daniels:
	say "Faraji throws [the noun] at Daniels. He catches it and looks at Faraji quizzically.";
	now Daniels carries the noun;

Instead of throwing something at when the noun is not a root-vegetable and the location is the old root cellar and the lizard people are in the location:
	say "Faraji throws [the noun] at the lizard people. They shrug it aside.";
	now the noun is in the old root cellar;
	add the noun to collectible stuff;

After taking something when the location is the old root cellar and the lizard people are in the location:
	if the noun is listed in collectible stuff:
		remove the noun from collectible stuff;
	continue the action;

collectible stuff is a list of things that varies. 

To collect our stuff:
	while the number of entries in collectible stuff > 0:
		let the item be entry 1 in collectible stuff;
		remove the item from collectible stuff;
		now Faraji carries the item;

To decide whether there exists collectible stuff:
	if the number of entries in collectible stuff is greater than 0:
		yes;
	otherwise:
		no;

Instead of throwing a root-vegetable at the lizard people:
	if lizard people facing us is true:
		say "Faraji [one of]throws[or]hurls[or]flings[or]launches[or]fires[or]slings[at random] [the noun] at the lizard people. ";
		if a random number from 1 to 5 is:
			-- 1: 
				say "They easily dodge the flying vegetable.";
			-- 2:
				say "It almost hits the tallest one, but he (she?) ducks at the last moment.";
			-- 3:
				say "It falls short and rolls to the far side of the chamber.";
			-- 4:
				say "It bounces off the wall and lands not far from Daniels.";
			-- 5:
				say "It hits the floor and rolls to a stop.";
		now the noun is in the old root cellar;
		now the noun is out of reach;
	otherwise if the noun is the rutabaga:
		now the rutabaga is in the old root cellar;
		now rutabaga is within-reach;
		say "Faraji hurls the rutabaga at the lizard people, who in their anger at Daniels are oblivious to Faraji's action. The rutabaga strikes the leader in the head. He hisses in pain and surprise, then shrieks in terror. 'No! My allergies!' The chamber fills with a white vapor. When it clears, the lizard people are nowhere to be seen.
		
		[bold type]The lizard people have been KO'd![roman type][line break]";
		say "[fixed letter spacing]";
		center "<<< FARAJI IS VICTORIOUS! >>>";
		say "[variable letter spacing]";
		say "[if there exists collectible stuff]

		Faraji stops and collects their stuff[end if].
		
		Daniels approaches Faraji. 'Nice throw,' he says. 'Glad you came when you did. As you can see, my throwing arm is worse than useless right now.
		
		'I'm Daniels. Agent of the hyperspace field office of the Bureau of Strange Happenings and owner of the A+ Laundromat in Swamp Park, Maryland. Did Doris send you?'";
		banish the lizard people for good;
		collect our stuff;
		queue Daniels with Doris sent me;
		now the current interlocutor is Daniels;
	otherwise:
		now the noun is in the old root cellar;
		now the noun is out of reach;
		say "Faraji [one of]throws[or]hurls[or]flings[or]launches[or]fires[or]slings[at random] [the noun] at the lizard people, who in their anger at Daniels are oblivious to Faraji's action. ";
		if a random number from 1 to 5 is:
			-- 1:
				say "[The noun] strikes the leader in the head. He hisses in pain and surprise.";
			-- 2:
				say "[The noun] hits the tallest one in the shoulder. He (she?) hisses in pain.";
			-- 3:
				say "[The noun] bounces off the stout one's head. He hisses in pain.";
			-- 4:
				say "[The noun] hits one of them right in the nose. He hisses in pain.";
			-- 5:
				say "[The noun] strikes the shortest one in the chest. He hisses in pain.";
		hit lizard people;

Instead of attacking the lizard people:
	say "Faraji has never been much of a fighter, and the lizard people are too numerous to take on alone.";
	
Instead of saying yes when the current interlocutor is Daniels and Doris sent me is q-available:
	try discussing Doris sent me with Daniels;
	
Doris sent me is an informative quip.
	The comment is "Faraji says, 'Yes, Doris sent me to find you.'".
	The reply is "'Good old Doris,' Daniels says. 'Always the man with the plan.'".
	It quip-supplies Daniels.

Description notes for a root-vegetable (called RV):
	if RV is out of reach:
		add "out of reach" to descriptive notes;

Lizard interjection timer is a number that varies. Lizard interjection timer is 4.
Lizard interjection this turn is a truth state that varies.

Every turn (this is the reset Lizard interjection this turn rule): 
	now Lizard interjection this turn is false.

Every turn when Lizard interjection timer is not 0 and the location is the old root cellar and the lizard people are in the old root cellar and notable lizard event this turn is false:
	decrease Lizard interjection timer by 1;
	if Lizard interjection timer is 0:
		interject Lizard;
		now notable lizard event this turn is true;

Before discussing when the group of lizard people is in the location:
	now Lizard interjection timer is a random number from 2 to 4;
	continue the action;

Before quizzing someone about something when group of lizard people is in the location:
	now Lizard interjection timer is a random number from 2 to 4;
	continue the action;

Before implicit-quizzing something when group of lizard people is in the location:
	now Lizard interjection timer is a random number from 2 to 4;

To interject Lizard:
	sort Table of Lizard Interjections in random order;
	if there is a used of false in the Table of Lizard Interjections:
		choose the row with a used of false in the Table of Lizard Interjections;
		say "[Lizard interjection entry][line break]";
		now used entry is true;
		increase Lizard interjection timer by a random number from 2 to 4;

Table of Lizard Interjections
Lizard interjection	used (a truth state)
"The short lizard person says, 'Faraji, you are a fool!'"	false
"The stout lizard person says, 'Give up, Faraji!'"	false
"The tallest lizard person says, 'Give us the Dragon, Faraji!'"	false
"One of the lizard people says, 'This is a waste of time, Faraji. Tell us where the Dragon is!'"	false
"One of the lizard people says, 'Even if you defeat us now, Faraji, victory will be ours eventually!'"	false
"The short lizard person says, 'Even now, Faraji, our spies are destroying BOSH from within.' The stout lizard person elbows him in the ribs and hisses, 'Shut up!'"	false
"The tallest lizard person says, 'You cannot defeat us, Faraji!'"	false

Last every turn:
	if the location is the old root cellar and the group of lizard people is in the old root cellar:
		increment battle turn;

Chapter 2 - Daniels

about-the-laundromat is a questioning quip.
	It is privately-named. The printed name is "about the laundromat". Understand "about/the/laundromat" as about-the-laundromat.
	The comment is "Faraji asks, 'You own the laundromat? Dave's looking for his screwdriver.'".
	The reply is "'Um, yeah,' Daniels says. 'I'm afraid I misplaced it.'".
	It quip-supplies Daniels.

how he got here is a questioning quip. 
	Understand "how did you get here" as how he got here.
	The comment is "Faraji says, 'How did you end up stranded here?'".
	The reply is "'I was hunting down Savra's minions,' Daniels says, 'but they caught me and sent me way back to the past. I've been stuck here ever since.'".
	It quip-supplies Daniels.

where-we-are is a questioning quip. 
	It is privately-named.
	The printed name is "where we are".
	Understand "where are we", "where we are", "where"  as where-we-are.
	The comment is "Faraji asks, 'Where are we?'". 
	The reply is "'We're in an old Onondaga root cellar in upstate New York. Well not so old now, I guess. I've managed to make friends with the locals well enough, so they let me sleep in here.'".
	It quip-supplies Daniels.

what's next is a questioning quip. 
	Understand "what's next", "what next" as what's next.
	The comment is "Faraji asks, 'What do we do next?'". 
	The reply is "'Doris must have given you a recall button. I can rejigger it to send me to the hyperspace office and send you back to Swamp Park. I own the laundromat, by the way. Sorry I wasn't there to greet you. Alright, give me the button.'".
	It quip-supplies Daniels.
	It follows how he got here.
	It follows where-we-are.

The recall button can be rejiggered.

After discussing what's next:
	if the player encloses the recall button:
		say "Faraji hands the recall button to Daniels. Daniels fiddles with the device for a moment, then hands it back. 'There you go. You can do the honors.'";
		now the recall button is rejiggered;
	otherwise:
		say "Daniels' face falls. 'What? You don't have the recall button? Do you know what that means? We have no way back!' He looks around the room, then back at Faraji. 'We're stuck here.'";
		end the story saying "Faraji is stranded in the past with Daniels."

Instead of pushing the recall button when the player is in the old root cellar and the recall button is not rejiggered and the group of lizard people are not in the location:
	say "'Wait!' Daniels exclaims. Faraji stops. Daniels continues, 'Don't leave without me! I can rejigger the recall button to send me to the hyperspace office and send you back to Swamp Park. Alright, give me the button.'
	
	Faraji hands the recall button to Daniels. Daniels fiddles with the device for a moment, then hands it back. 'There you go. You can do the honors.'";
	now the recall button is rejiggered.

Instead of pushing the recall button when the player is in the old root cellar and the group of lizard people are not in the location:
	say "Faraji is just about to push the recall button when Daniels exclaims, 'Wait! I forgot to give you this.' He pushes a small metal object into Faraji's hand. 
	
	Faraji doesn't have time to look at object before their finger slips and pushes the button. The room spins and fades away, and Faraji finds themself back in Swamp Park.";
	now the player carries the wristwatch;
	now the current interlocutor is nothing;
	move the player to the inside-the-dumpster;
	now the recall button is nowhere;

Book 24 - Lake shore west

the Lake Shore West is west of Lake Shore North of the Park and north of Solvay Road Leading Out Of Town. It is east of Solvay-Road-by-the-lake. It is in ELR. It is outdoors. The printed name is "west end of the town's lake shore". The preposition is "at". "The lake stretches to the north, while the town lies to the south. Solvay Road can be seen to the west, and the shore continues to the east." 


The x-coordinate of the Lake Shore West is -1. The y-coordinate of the Lake Shore West is 2.

The town-lake-shore-scenery is scenery in the Lake Shore West. "The town, empty and silent, lies to the south." It is privately-named. The printed name is "town". Understand "town" as town-lake-shore-scenery.
The town-lake-shore-scenery is unsnarkable.

solvay-road-scenery is scenery in the Lake Shore West. "Solvay Road is west of here." It is privately-named. The printed name is "Solvay Road". Understand "solvay/road" as solvay-road-scenery.
The solvay-road-scenery is unsnarkable.

Book 25 - Horton Family House Kitchen

A door can be tried.

Before opening a door (this is the try the door on opening rule):
	now the noun is tried;

Before unlocking a door with (this is the try the door on unlocking rule):
	now the noun is tried;

The try the door on opening rule is listed before the opening doors before entering rule in the before rulebook.

The try the door on unlocking rule is listed before the unlocking before opening rule in the before rulebook.

The old wooden door is a closed openable locked lockable scenery door. It is west of Solvay Road Leading Out Of Town and east of Horton Family House Kitchen. The old wooden door has matching key the old copper key. 
"A modest wooden door leads into the Horton family house. It has been fitted with a modern lock."

Instead of unlocking the horton facade with something:
	try unlocking the old wooden door with the second noun;

Horton Family House Kitchen is a leavable room. It is in ELR. It is unleavable. It is indoors. "The house is a modest colonial-period building. Strangely, the furnishings of the house have been left in place, despite the coming flood. An open hearth is in the center of the room, with a few chairs and a table. The parlor is to the south, and a narrow staircase leads up. To the east the front door leads out to Solvay Road, while another exit leads west to the family graveyard." 


The x-coordinate of Horton Family House Kitchen is -2. The y-coordinate of Horton Family House Kitchen is 1.

The furnishings are scenery in Horton Family House Kitchen. "A few chairs and a table are arranged around the room."

The open hearth is scenery in Horton Family House Kitchen. "The hearth is a simple, open fireplace, with a few logs stacked beside it." Understand "fireplace" as the open hearth.

The kitchen chairs are enterable scenery supporters in Horton Family House Kitchen. "A few chairs are arranged around the room."
Understand "chair" as kitchen chairs.

The snarky remark of the kitchen chairs is "They look like they were designed by someone who hates sitting."

The kitchen table is a scenery supporter in Horton Family House Kitchen. "A simple wooden table."
It is unsnarkable.

Does the player mean doing something to the kitchen table: it is likely.

The logs are scenery in Horton Family House Kitchen. "A few logs are stacked beside the hearth."
It is unsnarkable. Understand "log/firewood" as logs. It is plural-named.

The parlor facade is a building facade. It is in Horton Family House Kitchen. It is privately-named. The printed name is "parlor". Understand "parlor" as parlor facade. "The parlor is to the south."
	The parlor facade fronts Horton Family House Parlor.
	It is enterable from Horton Family House Kitchen.

The narrow staircase is scenery in Horton Family House Kitchen. "A narrow staircase leads up."
Understand "stairs/stair/rickety" as the narrow staircase.

Instead of climbing up the narrow staircase:
	try going up;

The dowsing rod is in Horton Family House Kitchen. The description is "A simple wooden rod, about a foot long, with a forked end." Understand "simple/wooden/stick" as the dowsing rod.


Divining-action is an action applying to nothing. Understand "divine", "dowse" as divining-action.

Check divining-action:
	if the player does not carry the dowsing rod:
		carry out the implicitly taking activity with the dowsing rod;
		if the player does not carry the dowsing rod:
			say "Faraji doesn't have a dowsing rod." instead;

Report divining-action:
	if the player is in the large grave and the wooden frame is nowhere:
		say "Faraji holds the dowsing rod and walks around the grave. The rod starts to vibrate and pulling towards a spot in the dirt at the center of the grave. There must be something buried there!";

Wooden beams is a backdrop. Understand "white/plaster" as wooden beams.

It is in Horton Family House Kitchen, Horton Family House Parlor, and Second Floor of the Horton Family House. "The house is built of sturdy wooden beams and plaster."

Book 25.1 - Horton Family House Parlor

The Horton Family House Parlor is south of Horton Family House Kitchen. It is in ELR. It is indoors. "Faraji finds something creepy about this room, as if charged with the residue of strange events long past. Which is very peculiar, considering Faraji doesn't believe in ghosts. Perhaps it's the creepy doll-fly that flew out of here.

The parlor, like the kitchen, still has its furnishings in place. A few chairs and a table are arranged around the room[if the book of weird names is on the table]. A strange-looking book is on the table[end if].

The kitchen is to the north."


The x-coordinate of the Horton Family House Parlor is -2. The y-coordinate of the Horton Family House Parlor is 0.5.

After going to the Horton Family House Parlor for the first time:
	say "Upon entering the parlor, [we] [are] attacked by a horrible flying creature with the body of a doll and the head of a fly! [We] [wave] it away and it flies out of the room to the north.";
	now the doll-fly is in First Utilitarian Church of Enigma Lake;
	continue the action;

The parlor chairs are enterable scenery supporters in the Horton Family House Parlor. "A few chairs are arranged around the room." Understand "chair" as parlor chairs.

The parlor table is a scenery supporter in the Horton Family House Parlor. "A simple wooden table."

Does the player mean doing something to the parlor table: it is likely.

The snarky remark of the parlor table is "I wonder if there's a screwdriver under it."

Instead of looking under the parlor table:
	say "Faraji looks under the table, but there's no screwdriver there.";

The kitchen facade is a building facade. It is in Horton Family House Parlor. It is privately-named. The printed name is "kitchen". Understand "kitchen" as kitchen facade. "The kitchen is to the north."
	The kitchen facade fronts Horton Family House Kitchen.
	It is enterable from Horton Family House Parlor.

The Book of Weird Names is on the parlor table. The printed name is "[italic type]The Book of Weird Names[roman type]". It is proper-named. It is unsnarkable. Understand "strange-looking/strange/looking" as the Book of Weird Names. It is indescribable. 

Doll-fly-looked-up is a truth state that varies. Doll-fly-looked-up is false.

To stop is a verb.

The Book of Weird Names can be read.

Instead of examining the Book of Weird Names:
	now the book of weird names is read;
	say "A book with a plain cover, titled [italic type]The Book of Weird Names[roman type]. No author is listed. [paragraph break]Flipping through the book, it appears that each page consists of a name, a drawing of a strange creature, and below that a word in a strange, unknown language. The text is written in a spidery, crabbed hand, and is difficult to read.";
	let name be the creature name;
	let creature be the strange creature;
	let incantation be the strange incantation;
	say "[line break]Faraji stops on one that reads [italic type][name][roman type] above a drawing of [creature], below which is written [italic type][incantation][roman type].[first time]
	[line break]Faraji can also LOOK UP a creature name IN THE BOOK OF WEIRD NAMES to see the creature and incantation.[only]";
	choose a blank row in the Table of Weird Names;
	now the name entry is name;
	now the description entry is creature;
	now the incantation entry is incantation;

The first name parts is a list of text that varies. The second name parts is a list of text that varies. The third name parts is a list of text that varies. The creature types is a list of text that varies. The body parts is a list of text that varies.
The first name parts are {"Dag", "Gor", "Zor", "Zag", "Zog", "Zig", "Zag", "Cth", "N't", "N'k", "Ad", "Bll", "Cr", "As", "Kl"}.
The second name parts are {"ag", "or", "ar", "og", "ig", "ag", "th", "gth", "kth", "uth", "oth", "thuk", "shaka", "fats", "steen", "don" }.
The third name parts are {"Distressing", "Unsettling", "Impertinent", "Uninhibited", "Pugnacious", "Unspeakable", "Unpronounceable", "Unmentionable", "Smelly", "Unpleasant", "Gross", "Horrible", "Squeamish", "Unsavory", "Unpalatable", "Wistful", "Abnormal", "Unnatural", "Unusual", "Uncommon", "Unconventional", "Unorthodox", "Unprecedented", "Unheard of", "Unseen", "Hidden", "Ornery", "Unruly", "Unmanageable", "Uncontrollable", "Unpredictable", "Unreliable", "Untrustworthy", "Unfaithful", "Untrue", "Unreal", "Unrealistic", "Unreasonable", "Unjust", "Unfair", "Unkind", "Unfriendly", "Unpleasant", "Uncomfortable", "Unhappy", "Unfortunate", "Unlucky", "Unsuccessful", "Frustrating", "Unsatisfactory", "Unsatisfying", "Unfulfilling", "Unrewarding", "Ungrateful", "Unappreciative", "Unthankful", "Arrogant", "Bashful", "Boastful", "Disrespectful", "Dishonest", "Disloyal", "Disobedient", "Disorderly", "Disorganized", "Cantankerous", "Contrary", "Cranky", "Cross", "Crabby", "Crusty", "Crotchety", "Grumpy", "Irritable", "Peevish", "Perverse", "Petulant", "Quarrelsome", "Short-tempered", "Sour", "Sullen", "Surly", "Testy", "Tetchy", "Touchy", "Uncooperative", "Unyielding", "Unaccommodating", "Uncompromising", "Unforgiving", "Unrelenting", "Unsympathetic", "Unemotional", "Unfeeling", "Unresponsive", "Uncommunicative", "Unexpressive", "Unenthusiastic", "Uninterested", "Unconcerned", "Uninvolved", "Uncommitted", "Unattached", "Unconnected", "Tactless", "Thoughtless", "Insensitive", "Inconsiderate", "Selfish", "Self-centered", "Self-absorbed", "Self-indulgent", "Self-serving", "Self-seeking", "Conceited", "Vain", "Proud", "Haughty", "Egotistical", "Egocentric", "Egoistic", "Pointless", "Purposeless", "Meaningless", "Worthless", "Valueless", "Insignificant", "Trivial", "Unimportant", "Negligible", "Paltry", "Piddling", "Piffling", "Puny", "Miserable", "Wretched", "Pathetic" }

To decide what text is the creature name:
	sort the first name parts in random order;
	sort the second name parts in random order;
	sort the third name parts in random order;
	decide on the substituted form of "[entry 1 of the first name parts][entry 1 of the second name parts] the [entry 1 of the third name parts]";

The creature types are {"fish", "lizard", "man", "doll", "dog", "cat", "bird", "bat", "rat", "snake", "spider", "worm", "slug", "snail", "beetle", "fly", "moth", "butterfly", "bee", "wasp", "hornet", "mosquito", "gnat", "flea", "tick", "maggot", "larva", "pupa", "caterpillar", "grub", "weevil", "thrip", "midge", "cricket", "grasshopper", "locust", "cicada", "dragonfly", "lion", "tiger", "bear", "woman", "child", "rhinoceros", "hippopotamus", "giraffe", "zebra", "kangaroo", "koala", "wombat", "platypus", "sloth", "hyena", "jackal", "wolf", "fox", "coyote", "mechanical man", "golem" }.
The body parts are {"head", "neck", "shoulders", "arms", "elbows", "wrists", "hands", "fingers", "thumbs", "chest", "back", "stomach", "belly", "waist", "hips", "thighs", "knees", "shins", "calves", "ankles", "feet", "toes", "heels", "soles", "toenails", "fingernails", "hair", "eyebrows", "eyelashes", "eyes", "nose", "nostrils", "cheeks", "lips", "teeth", "tongue", "throat", "ears", "earlobes"}.

To decide what text is the strange creature:
	sort the creature types in random order;
	sort the body parts in random order;
	decide on the substituted form of "a [entry 1 of the creature types] with the [entry 1 of the body parts] of a [entry 2 of the creature types]";

The incantations is a list of texts that varies.
The incantations are { "bara ba jagal", "fooblitzky", "tuvix", "thelonium", "gravlax", "brobdingnag", "plover", "xvart", "guncho", "flibbertigibbet" }.

To decide what text is the strange incantation:
	sort the first name parts in random order;
	sort the second name parts in random order;
	if a random chance of 1 in 2 succeeds:
		decide on the substituted form of "[entry 1 of the first name parts][entry 1 of the second name parts] [entry 2 of the second name parts in title case][entry 2 of the second name parts][entry 2 of the first name parts in lower case]";
	otherwise:
		decide on the substituted form of "[entry 1 of the first name parts][entry 1 of the second name parts] [entry 2 of the second name parts] [entry 2 of the first name parts][entry 3 of the second name parts][entry 3 of the first name parts in lower case]";

Instead of consulting the book of weird names about something:
	repeat through Table of Weird Names:
		if the name entry in lower case is the topic understood in lower case:
			say "[We] [look] up [italic type][the name entry][roman type] in the book. Below a drawing of [description entry], the word [italic type][incantation entry][roman type] is written.";
			stop;
	if the doll-fly is not named:
		say "[We] [look] up '[the topic understood]' in the book, but [find] nothing. Perhaps [we] [are] spelling it wrong.";
	otherwise if the topic understood in lower case is not the secret name of the doll-fly in lower case:
		say "[We] [look] up '[the topic understood]' in the book, but [find] nothing. Perhaps [we] [are] spelling it wrong.";
	otherwise:
		sort the incantations in random order;
		now the incantation of the doll-fly is entry 1 of the incantations;
		now doll-fly-looked-up is true;
		say "[We] [look] up [italic type][secret name of the doll-fly][roman type] in the book. Below a drawing of a doll with the head of a fly, the word [italic type][incantation of the doll-fly][roman type] is written.";

Instead looking something up in the book of weird names:
	say "[We] [look] up '[noun]' in the book, but [find] nothing."

Table of Weird Names
name (a text)	description (a text)	incantation (a text)
with 100 blank rows.

Book 25.5 - Horton Family House Second Floor

The Second Floor of the Horton House is above the Horton Family House Kitchen. It is in ELR. It is indoors. "The second floor is a small, cramped space, with a single window looking out over the front yard. A small bed sits in one corner, while [if the rickety wardrobe is open]an open wardrobe fills a wall[otherwise]a closed wardrobe stands against a wall[end if]. A staircase leads down."


The x-coordinate of the Second Floor of the Horton House is -2. The y-coordinate of the Second Floor of the Horton House is 1.

The second floor window is scenery in the Second Floor of the Horton House. "A single window looks out over the front yard."

The front yard is scenery in the Second Floor of the Horton House. "The front yard, visible through the window, is a small rectangle of grass along Solvay Road."

The small bed is an enterable scenery supporter in the Second Floor of the Horton House. "A small bed sits in one corner. It's a rope bed, with a thin straw mattress." Understand "rope" as the small bed.

reclining on is an action applying to one thing. Understand "lie on [something]" as reclining on.

Check reclining on:
	if the noun is not the small bed:
		say "Faraji can't lie on [the noun]." instead;

Instead of reclining on the small bed:
	try entering the small bed;

reclining is an action applying to nothing. Understand "lie down" as reclining.

Check reclining:
	say "Faraji can't lie down here." instead;

Instead of reclining when the location is the Second Floor of the Horton House:
	try entering the small bed;

The thin straw mattress is part of the small bed. The description is "The mattress is thin and lumpy, but it's better than sleeping on the floor."

The rickety wardrobe is a closed openable enterable scenery container in the Second Floor of the Horton House. "A rickety wardrobe stands against a wall. It is [if open]open[otherwise]closed[end if]."

After entering the rickety wardrobe:
	say "Faraji steps inside the wardrobe. Despite their hopes of finding a lion or a screwdriver, the wardrobe is empty.";

The wooden frame is an open, openable container. The description is "A strange, bulbous wooden container, with [if the wooden frame is open]an open wooden lid[otherwise]a closed wooden lid[end if]."

Understand "container/strange/bulbous/lid" as the wooden frame.

The stairs-second-floor is scenery in the Second Floor of the Horton House. "A staircase leads down."
It is privately-named. The printed name is "staircase". Understand "staircase/stairs/stair" as stairs-second-floor.
The stairs-second-floor is unsnarkable.

Instead climbing up the stairs-second-floor:
	try going down.

Book 26 - Astral Tunnel

The Horton astral tunnel is forthsouth of Horton Family House Parlor. It is privately-named. The printed name is "astral tunnel". It is in hyperspace. "It is featureless white, or what passes for white here. It bends 'backnorth' to 'backeast'.".


Fire Station 1 is backeast of the Horton astral tunnel. It is in ELR. It is indoors.

Book 27 - Horton Graveyard

the Horton graveyard is west of Horton Family House Kitchen. It is in ELR. It is outdoors. "It is riddled with holes where the bodies have been exhumed for the coming flood. Likewise, the gravestones have been removed, leaving only the holes. The Horton family house is to the east."


The x-coordinate of the Horton graveyard is -3. The y-coordinate of the Horton graveyard is 1.

The shovel is in the Horton graveyard. "A shovel lies on the ground, forgotten." The description is "A simple shovel, with a wooden handle and a metal blade." Understand "simple/wooden/spade" as the shovel.

Some neatly-dug holes are scenery in the Horton graveyard. "The graveyard is riddled with holes where the bodies have been exhumed for the coming flood. One of the holes is substantially larger and deeper than the others." 

Instead of entering the neatly-dug holes:
	say "(the large hole)[command clarification break]";
	try entering the large dirt hole;

The large dirt hole is a building facade. It is in Horton Graveyard. It is privately-named. Understand "large/larger/deep/deeper/hole", "hole/grave" as large dirt hole. "The hole is substantially larger and deeper than the others[if the metal ladder is in the large grave]. A ladder is set up against the side of the hole[end if]."
	It fronts a large grave.
	It is enterable from Horton Graveyard.

After deciding the scope of player when the location is the Horton graveyard and the metal ladder is in the large grave:
	place the metal ladder in scope;

A rule for reaching inside the large grave when the metal ladder is in the large grave and the noun is the metal ladder:
	allow access;

Instead of taking the metal ladder when the location is the Horton graveyard and the metal ladder is in the large grave:
	now the player carries the metal ladder;
	say "Faraji pulls the ladder out of the large grave.";

Instead of examining the metal ladder when the location is the Horton graveyard and the metal ladder is in the large grave:
	say "A ladder is set up against the side of the hole, making it easier to climb in and out of the grave.";


Before going to the large grave:
	if the metal ladder is in the large grave:
		say "Faraji climbs down the ladder into the large grave.";
	otherwise:
		say "The hole is too deep to climb down into unaided.";
		stop the action;

Before going from the large grave:
	if the metal ladder is in the large grave:
		say "Faraji climbs up the ladder out of the large grave.";
	otherwise:
		say "The hole is too deep to climb out of unaided.";
		stop the action;

Instead of inserting the metal ladder into the large dirt hole:
	say "Faraji sets the ladder up against the side of the hole, making it easier to climb down into the large grave.";
	now the metal ladder is in the large grave;

Instead of inserting the metal ladder into the neatly-dug holes:
	say "Faraji chooses the largest hole and sets the ladder up against the side of the hole, making it easier to climb down into the large grave.";
	now the metal ladder is in the large grave;

After dropping the metal ladder when the location is the large grave:
	say "Faraji sets the ladder up against the side of the hole, making it easier to climb out of the large grave.";

Rule for writing a paragraph about the metal ladder when the location is the large grave:
	say "A ladder is set up against the side of the hole, making it easier to climb out of the grave.";

a large grave is a room. It is in ELR. It is outdoors. It is always-indefinite. "The hole is substantially larger and deeper than the others." 


The x-coordinate of the large grave is -3. The y-coordinate of the large grave is 1.

Above the large grave is the Horton graveyard.

After going to the large grave when the wooden frame is nowhere and the player encloses the dowsing rod:
	say "Something [we] [are] carrying starts to vibrate.";
	continue the action;

After going from the large grave when the wooden frame is nowhere and the player encloses the dowsing rod:
	say "The vibrations cease.";
	continue the action;

Instead of examining the dowsing rod when the location is the large grave and the wooden frame is nowhere and the player encloses the dowsing rod:
	say "The dowsing rod is vibrating.";

Digging is an action applying to nothing. Understand "dig" as digging.

Check digging when the player does not enclose the shovel:
	say "[We] can't dig without a shovel." instead;

Check digging when the location is not the large grave and the location is diggable and the player encloses the shovel:
	say "[We] [try] digging a little bit, but nothing turns up." instead;

Check digging when the location is the large grave and the player encloses the shovel and the wooden frame is not nowhere:
	say "[We] [try] digging a little bit more, but nothing else turns up." instead;

Check digging when the location is not diggable and the player encloses the shovel:
	say "The ground here is not suitable for digging." instead;

Carry out digging when the location is the large grave and the player encloses the shovel and the wooden frame is nowhere:
	now the player carries the wooden frame;

Report digging when the location is the large grave and the player encloses the shovel and the wooden frame was nowhere:
	say "[We] [dig] a little bit, and [run] into something wooden. [We] [dig] a little more, and [find] [a wooden frame]. [We] [take] it with [us][if the player encloses the dowsing rod]. The vibrations cease[end if].";

Horton-back-facade is a building facade. It is in Horton Graveyard. It is privately-named. The printed name is "Horton Family House". Understand "Horton/House/Home" as Horton-back-facade. "Horton House is an old colonial-period house. [We] [are] in its backyard." 
	Horton-back-facade fronts Horton Family House Kitchen.
	It is enterable from Horton Graveyard. 

The Witnessing of Hezekiah is in the wardrobe. It is proper-named. The printed name is "[italic type]The Witnessing of Hezekiah[roman type]". Understand "book" as The Witnessing of Hezekiah.  
The description is "A small, leather-bound book, titled 'The Witnessing of Hezekiah: as told to Jeremiah Horton by Hezekiah Horton'. The book is filled with strange, cryptic passages, and is difficult to read. [We] [find] one page of particular interest. It reads, 'And lo, Hezekiah, in his wisdom, did prophesy of the impending flood and the necessity to make ready. He spoke of a sacred artifact, a resonator, bestowed with divine power, that would unveil a gateway to the ethereal realm. And he revealed the quest to find the lost astral traveler who would guide the faithful out of the coming darkness. Thus spake Hezekiah: [']First form from the wood of the ash tree a frame. Put into it the resonant instrument, the ghostly source of light, and the astral focus. Strike the frame with my Rod to create the astral resonator. Ascend the ladder and channel a mighty power through the resonator, directing it towards the crystal eye. Once thou hast done this, illuminate the eye likewise twice more, and the portal shall open, revealing the path to transcendence.[']'".
It is unsnarkable. The Witnessing of Hezekiah can be read.

The shiny astral resonator is a thing. It is privately-named. The description is "A small, shiny, metallic, cylindrical object. One end is capped with a lens, while the other terminates in two shiny metal chains, each with a shiny metal clamp, as if it were designed to be attached to something.".
The printed name is "[if Astral Secrets is read]shiny astral resonator[otherwise]strange, shiny, metal object[end if]".
Understand "shiny/astral/resonator" as the shiny astral resonator when Astral Secrets is read.
Understand "strange/shiny/metal/metallic/cylindrical/cylinder/object" as the shiny astral resonator.
The shiny clamps are part of the shiny astral resonator. The description is "Two metal chains, each with a metal clamp, are attached to the end of the [if Astral Secrets is read]resonator[otherwise]object[end if].". Understand "metal/-- chains", "clamp" as the shiny clamps. They are plural-named. They are unsnarkable.
The shiny lens is part of the shiny astral resonator. The description is "A lens is attached to the end of the [if Astral Secrets is read]resonator[otherwise]object[end if].". It is unsnarkable.

After examining the Witnessing of Hezekiah:
	now the Witnessing of Hezekiah is read;

Book 28 - Fire Station 1

The garage door is a closed scenery door. It is west of Solvay Road 100 block and east of the Fire Station 1. Understand "big/red/door" as garage door. The description is "[if the location is Solvay Road 100 block]A big red door, with a sign reading 'Fire Station 1'[otherwise]It's a big red door[end if]. It is [if the garage door is open]open[otherwise]closed[end if]."
It is unsnarkable.

Fire Station 1 is in ELR. The printed name is "Hook and Ladder Company #1". "The fire station is a modest red brick building dating to the late 19th century. The garage door, [if the garage door is closed]closed[otherwise]open[end if], is to the east. There is a large blue button mounted on the wall."
Understand "hook/and/ladder/company/#1" as Fire Station 1. 


The x-coordinate of the Fire Station 1 is -2. The y-coordinate of the Fire Station 1 is 0.

The metal ladder is in Fire Station 1. "A ladder rests against the wall." The description is "A metal ladder, about 6 feet long. It looks sturdy and well-maintained."

Part 1 - Stupid ladder tricks

Leaning it against is an action applying to one carried thing and one thing. Understand "lean [the metal ladder] against/on [something]" as leaning it against. Understand the command "prop" as "lean". Understand "put [the metal ladder] against [something]" as leaning it against.

Check leaning the metal ladder against:
	let ladder loc be the convenient ladder location;
	if ladder loc is the floor:
		say "[The second noun] is not ideal for leaning the ladder against. Faraji might drop the ladder instead." instead;
	if the second noun is not ladder loc:
		say "[The second noun] is not ideal for leaning the ladder against. Faraji might have luck leaning it against [the ladder loc] instead." instead;
		stop the action;

Carry out leaning the metal ladder against:
	silently try dropping the metal ladder;

To decide what object is the convenient ladder location:
	if the location is:
		-- featureless hyperplane:
			if the Ethereal Pillar is in the featureless hyperplane:
				decide on the Ethereal Pillar;
			otherwise:
				decide on the floor;
		-- field office reception:
			decide on the walls;
		-- field office hallway:
			decide on the walls;
		-- Minerva's office:
			decide on the walls;
		-- field office chief's office:
			decide on the walls;
		-- Christy's office:
			decide on the walls;
		-- Portal Room 1:	
			decide on the portal to the past;
		-- Portal Room 2:
			decide on the auxiliary portal;
		-- Strip Mall Parking Lot South:
			decide on the floor;
		-- astral-tunnel-1:
			decide on the walls;
		-- astral-tunnel-2:
			decide on the walls;
		-- astral-tunnel-3:
			decide on the walls;
		-- back lot:
			decide on the dumpster;
		-- laundromat back room:
			decide on the walls;
		-- laundromat basement:
			decide on the walls;
		-- back basement:
			decide on the walls;
		-- Li'l Nectarine Convenience Store:
			decide on the shelves;
		-- Enigma Lake town hall:
			decide on the floor;
		-- Main Street 200 block:
			decide on the floor;
		-- Main at Solvay:
			decide on the floor;
		-- Solvay Road leading out of town:
			decide on the floor;
		-- Solvay Road 100 block:
			decide on the floor;
		-- Enigma Park:
			decide on the obelisk;
		-- Lake Street by the park:
			decide on the floor;
		-- Lake Street by the gym:
			decide on the floor;
		-- Main at Lake:
			decide on the floor;
		-- Lake shore north of the park:
			decide on the workshed-facade;
		-- Rolle's department store:
			decide on the walls;
		-- Henry's Hot Skillet:
			decide on the lunch counter;
		-- Reading Room:
			decide on the bookshelves;
		-- Fresnel's Music:
			decide on the counter;
		-- Horton Family House Kitchen:	
			decide on the walls;
		-- Solvay-Road-by-the-lake:	
			decide on the floor;
		-- Lake Shore west:
			decide on the floor;
		-- Lake at Ridge:
			decide on the pickup truck;
		-- dirty shack:
			decide on the floor;
		-- Radio Station WGXC:
			decide on the floor;
		-- radio station roof:
			decide on the broadcast tower;
		-- public gymnasium:
			decide on the floor;
		-- First Utilitarian Church of Enigma Lake:
			decide on the walls;
		-- vestry:
			decide on the walls;
		-- church basement:
			decide on the walls;
		-- steeple:
			decide on the walls;
		-- workshed:
			decide on the walls;
		-- circular chamber:
			decide on the walls;
		-- old root cellar:
			decide on the floor;
		-- Horton Family House Parlor:
			decide on the walls;
		-- Second Floor of the Horton House:
			decide on the walls;
		-- Horton astral tunnel:
			decide on the walls;
		-- Fire Station 1:
			decide on the walls;
		-- Horton Graveyard:
			decide on the floor;
		-- large grave:
			decide on the walls;
		-- Bookstore Basement:
			decide on the walls;
		-- sewer tunnel 1:
			decide on the walls;
		-- sewer tunnel 2:
			decide on the walls;
		-- sewer tunnel 3:
			decide on the walls;
		-- gym basement:
			decide on the walls;
		-- Henry's roof:
			decide on the floor;
		-- Biff's Office:
			decide on the walls;
		-- dumpster:
			decide on the walls;
		-- BOSH office hallway:
			decide on the walls;
		-- BOSH chief's office:
			decide on the walls;
		-- Moira's office:
			decide on the walls;
		-- utility closet:
			decide on the walls;
		-- otherwise:
			decide on the floor;

After dropping the metal ladder:
	if the location is:
		-- featureless hyperplane:
			if the Ethereal Pillar is in the featureless hyperplane:
				say "Faraji sets the ladder up against the pillar.";
			otherwise:
				say "Faraji lies the ladder on the 'ground'.";
		-- field office reception:
			say "Faraji leans the ladder against the wall.";
		-- field office hallway:
			say "Faraji leans the ladder against the wall.";
		-- Minerva's office:
			say "Faraji leans the ladder against the wall.";
		-- field office chief's office:
			say "Faraji leans the ladder against the wall.";
		-- Christy's office:
			say "Faraji leans the ladder against the wall.";
		-- Portal Room 1:
			say "Faraji leans the ladder against the portal arch.";
		-- Portal Room 2:
			say "Faraji leans the ladder against the portal arch.";
		-- Strip Mall Parking Lot South:
			say "Faraji lays the ladder on the asphalt.";
		-- front office:
			say "Faraji leans the ladder against the wall.";
		-- laundromat:
			say "Faraji leans the ladder against a nearby dryer.";
		-- Dave's pawn shop:
			say "Faraji leans the ladder against the front counter.";
		-- Strip Mall Parking Lot North:
			say "Faraji lays the ladder on the asphalt.";
		-- astral-tunnel-1:
			say "Faraji leans the ladder against the 'wall'.";
		-- astral-tunnel-2:
			say "Faraji leans the ladder against the 'wall'.";
		-- astral-tunnel-3:
			say "Faraji leans the ladder against the 'wall'.";
		-- back lot:
			say "Faraji leans the ladder against the dumpster.";
		-- laundromat back room:
			say "Faraji leans the ladder against the wall.";
		-- laundromat basement:
			say "Faraji leans the ladder against the wall.";
		-- back basement:
			say "Faraji leans the ladder against the wall.";
		-- Li'l Nectarine Convenience Store:
			say "Faraji leans the ladder against a shelf.";
		-- Enigma Lake town hall:
			say "Faraji places the ladder on the polished wooden floor.";
		-- Main Street 200 block:
			say "Faraji lays the ladder on the pavement.";
		-- Main at Solvay:
			say "Faraji lays the ladder on the pavement.";
		-- Solvay Road leading out of town:
			say "Faraji lays the ladder on the pavement.";
		-- Solvay Road 100 block:
			say "Faraji lays the ladder on the pavement.";
		-- Enigma Park:
			say "Faraji leans the ladder against the obelisk.";
		-- Lake Street by the park:
			say "Faraji lays the ladder on the pavement.";
		-- Lake Street by the gym:
			say "Faraji lays the ladder on the pavement.";
		-- Main at Lake:
			say "Faraji lays the ladder on the pavement.";
		-- Lake shore north of the park:
			say "Faraji leans the ladder up against the workshed.";
		-- Rolle's department store:
			say "Faraji leans the ladder against the wall.";
		-- Henry's Hot Skillet:
			say "Faraji leans the ladder against the lunch counter.";
		-- Reading Room:
			say "Faraji leans the ladder against a bookshelf.";
		-- Fresnel's Music:
			say "Faraji leans the ladder against the counter.";
		-- Horton Family House Kitchen:
			say "Faraji leans the ladder against the wall.";
		-- Solvay-Road-by-the-lake:
			say "Faraji lays the ladder on the pavement.";
		-- Lake Shore west:
			say "Faraji lays the ladder on the sand.";
		-- Lake at Ridge:
			say "Faraji leans the ladder against the pickup truck.";
		-- dirty shack:
			say "Faraji lays the ladder on the floor.";
		-- Radio Station WGXC:
			say "Faraji lays the ladder on the terrazzo floor.";
		-- radio station roof:
			say "Faraji leans the ladder against the broadcast tower.";
		-- public gymnasium:
			say "Faraji lays the ladder on the wooden floor.";
		-- First Utilitarian Church of Enigma Lake:
			say "Faraji leans the ladder against the wall.";
		-- vestry: 
			say "Faraji leans the ladder against the wall.";
		-- church basement:
			say "Faraji leans the ladder against the wall.";
		-- steeple:
			say "Faraji leans the ladder against the wall.";
		-- workshed:
			say "Faraji leans the ladder against the wall.";
		-- circular chamber:
			say "Faraji leans the ladder against the wall.";
		-- old root cellar:
			say "Faraji lays the ladder on the dirt floor.";
		-- Horton Family House Parlor:
			say "Faraji leans the ladder against the wall.";
		-- Second Floor of the Horton House:
			say "Faraji leans the ladder against the wall.";
		-- Horton astral tunnel:
			say "Faraji leans the ladder against the wall.";
		-- Fire Station 1:
			say "Faraji leans the ladder against the wall.";
		-- Horton graveyard:
			say "Faraji lays the ladder on the ground.";
		-- large grave:
		 	say "Faraji sets the ladder up against the side of the hole, making it easier to climb out of the large grave.";
		-- Bookstore Basement:
			say "Faraji leans the ladder against the wall.";
		-- sewer tunnel 1:
			say "Faraji leans the ladder against the wall.";
		-- sewer tunnel 2:
			say "Faraji leans the ladder against the wall.";
		-- sewer tunnel 3:
			say "Faraji leans the ladder against the wall.";
		-- gym basement:
			say "Faraji leans the ladder against the wall.";
		-- Henry's roof:
			say "Faraji lays the ladder on the roof.";
		-- Biff's Office:
			say "Faraji leans the ladder against the wall.";
		-- dumpster:
			say "Faraji leans the ladder against the wall of the dumpster.";
		-- BOSH office hallway:
			say "Faraji leans the ladder against the wall.";
		-- BOSH chief's office:
			say "Faraji leans the ladder against the wall.";
		-- Moira's office:
			say "Faraji leans the ladder against the wall.";
		-- utility closet:
			say "Faraji leans the ladder against the wall.";
		-- otherwise:
			say "Faraji lays the ladder on the [if the location is indoors]floor[otherwise]ground[end if].";


Rule for writing a paragraph about the metal ladder:
	if the location is:
		-- featureless hyperplane:
			if the Ethereal Pillar is in the featureless hyperplane:
				say "A ladder is set up against the side of the pillar, making it easier to climb up and down.";
			otherwise:
				say "A ladder rests on the 'ground'.";
		-- field office reception:
			say "A ladder rests against the wall.";
		-- field office hallway:
			say "A ladder rests against the wall.";
		-- Minerva's office:
			say "A ladder rests against the wall.";
		-- field office chief's office:
			say "A ladder rests against the wall.";
		-- Christy's office:
			say "A ladder rests against the wall.";
		-- Portal Room 1:
			say "A ladder leans against the portal arch.";
		-- Portal Room 2:
			say "A ladder leans against the portal arch.";
		-- Strip Mall Parking Lot South:
			say "A ladder lies on the asphalt.";
		-- front office:
			say "A ladder rests against the wall.";
		-- laundromat:
			say "A ladder leans against a nearby dryer.";
		-- Dave's pawn shop:
			say "A ladder leans against the front counter.";
		-- Strip Mall Parking Lot North:
			say "A ladder lies on the asphalt.";
		-- astral-tunnel-1:
			say "A ladder rests against the 'wall'.";
		-- astral-tunnel-2:
			say "A ladder rests against the 'wall'.";
		-- astral-tunnel-3:
			say "A ladder rests against the 'wall'.";
		-- back lot:
			say "A ladder leans against the dumpster.";
		-- laundromat back room:
			say "A ladder leans against the wall.";
		-- laundromat basement:
			say "A ladder leans against the wall.";
		-- back basement:
			say "A ladder leans against the wall.";
		-- Li'l Nectarine Convenience Store:
			say "A ladder leans against a shelf.";
		-- Enigma Lake town hall:
			say "A ladder lies on the polished wooden floor.";
		-- Main Street 200 block:
			say "A ladder lies on the pavement.";
		-- Main at Solvay:
			say "A ladder lies on the pavement.";
		-- Solvay Road leading out of town:
			say "A ladder lies on the pavement.";
		-- Solvay Road 100 block:
			say "A ladder lies on the pavement.";
		-- Enigma Park:
			say "A ladder leans up against the obelisk. It is not tall enough to reach the top.";
		-- Lake Street by the park:
			say "A ladder lies on the pavement.";
		-- Lake Street by the gym:
			say "A ladder lies on the pavement.";
		-- Main at Lake:
			say "A ladder lies on the pavement.";
		-- Lake shore north of the park:
			say "A ladder leans up against the workshed.";
		-- Rolle's department store:
			say "A ladder leans against the wall.";
		-- Henry's Hot Skillet:
			say "A ladder leans against the lunch counter.";
		-- Reading Room:
			say "A ladder leans against a bookshelf.";
		-- Fresnel's Music:
			say "A ladder leans against the counter.";
		-- Horton Family House Kitchen:
			say "A ladder leans against the wall.";
		-- Solvay-Road-by-the-lake:
			say "A ladder lies on the pavement.";
		-- Lake Shore west:
			say "A ladder rests on the sand.";
		-- Lake at Ridge:
			say "A ladder leans against the pickup truck.";
		-- dirty shack:
			say "A ladder lies on the floor.";
		-- Radio Station WGXC:
			say "A ladder lies on the terrazzo floor.";
		-- radio station roof:
			say "A ladder leans against the broadcast tower.";
		-- public gymnasium:
			say "A ladder lies on the wooden floor.";
		-- First Utilitarian Church of Enigma Lake:
			say "A ladder leans against the wall.";
		-- vestry: 
			say "A ladder leans against the wall.";
		-- church basement:
			say "A ladder leans against the wall.";
		-- steeple:
			say "A ladder rests against a wall.";
		-- workshed:
			say "A ladder leans against the wall.";
		-- circular chamber:
			say "A ladder leans against the wall.";
		-- old root cellar:
			say "A ladder lies on the dirt floor.";
		-- Horton Family House Parlor:
			say "A ladder leans against the wall.";
		-- Second Floor of the Horton House:
			say "A ladder leans against the wall.";
		-- Horton astral tunnel:
			say "A ladder leans against the 'wall'.";
		-- Fire Station 1:
			say "A ladder rests against the wall.";
		-- Horton graveyard:
			say "A ladder lies on the ground.";
		-- large grave:
		 	stop;
		-- Bookstore Basement:
			say "A ladder leans against the wall.";
		-- sewer tunnel 1:
			say "A ladder leans against the wall.";
		-- sewer tunnel 2:
			say "A ladder leans against the wall.";
		-- sewer tunnel 3:
			say "A ladder leans against the wall.";
		-- gym basement:
			say "A ladder leans against the wall.";
		-- Henry's roof:
			say "A ladder lies on the roof.";
		-- Biff's Office:
			say "A ladder leans against the wall.";
		-- dumpster:
			say "A ladder leans against the wall of the dumpster.";
		-- BOSH office hallway:
			say "A ladder leans against the wall.";
		-- BOSH chief's office:
			say "A ladder leans against the wall.";	
		-- Moira's office:
			say "A ladder leans against the wall.";
		-- utility closet:
			say "A ladder leans against the wall, making this cramped space even more so.";
		-- otherwise:
			say "A ladder lies on the [if location is inside]floor[otherwise]ground[end if].";

Instead of climbing up the metal ladder when the metal ladder is enclosed by the location and the player does not enclose the ladder:
	if the metal ladder is enclosed by the player:
		say "Try as they might, Faraji is unable to climb the ladder while carrying it.";
		stop;
	if the location is:
		-- featureless hyperplane:
			if the Ethereal Pillar is in the featureless hyperplane:
				say "Faraji climbs up the ladder to the top of the pillar. The view is much the same as it was from the ground.";
			otherwise:
				say "Faraji cannot climb the ladder while it lies on the 'ground'.";
		-- field office reception:
			say "Maggie turns and stares at Faraji as they attempt to climb the ladder. Faraji, suddenly self-conscious, climbs back down.";
		-- field office hallway:
			say "There's not much room overhead here.";
		-- Minerva's office:
			say "Minerva watches Faraji with a curious expression as they attempt to climb the ladder. Faraji climbs back down.";
		-- field office chief's office:
			say "Doris exclaims, 'No, no! We have a strict 'no climbing' policy here!' Faraji climbs back down.";
		-- Christy's office:
			say "Christy gives Faraji a dubious look as they attempt to climb the ladder. Faraji climbs back down.";
		-- Portal Room 1:
			say "The ladder slips as Faraji tries to climb it, propelling them through the portal.";
			try entering the portal to the past;
		-- Portal Room 2:
			say "The ladder slips as Faraji tries to climb it, propelling them through the portal.";
			try entering the auxiliary portal;
		-- front office:
			say "Margaret looks at Faraji incredulously. 'Larch?' she says, 'Are you okay?' Faraji climbs back down.";
		-- Dave's pawn shop:
			say "Dave gives Faraji a sharp look. 'Cut that out or I'll have to ask you to leave,' he says. Faraji climbs back down.";
		-- astral-tunnel-1:
			say "Faraji climbs quickly up and down the ladder. That was fun.";
		-- astral-tunnel-2:
			say "Faraji climbs quickly up and down the ladder. That was fun.";
		-- astral-tunnel-3:
			say "Faraji climbs quickly up and down the ladder. That was fun.";
		-- back lot:
			say "Faraji climbs up the ladder and peers into the dumpster. It's full of cardboard, mostly. Faraji climbs back down.";
		-- laundromat back room:
			say "Faraji climbs quickly up and down the ladder. That was fun.";
		-- laundromat basement:
			say "Faraji climbs quickly up and down the ladder. That was fun.";
		-- back basement:
			say "Faraji climbs quickly up and down the ladder. That was fun.";
		-- Li'l Nectarine Convenience Store:
			say "The clerk looks at Faraji with a puzzled expression. 'Um,' he says. Faraji climbs back down.";
		-- Enigma Lake town hall:
			say "Faraji climbs quickly up and down the ladder. That was fun.";
		-- Enigma Park:
			say "Faraji climbs up the ladder and looks out over the park. It's a nice view. Unfortunately, they cannot reach the ornament at the top. Faraji climbs back down.";
		-- Lake shore north of the park:
			say "Faraji climbs up the ladder onto the workshed roof. Unfortunately, the roof is not sturdy enough to accomodate them. The roof collapses, and Faraji falls into the shed below. The floor gives way as they land, and they fall through it onto a surface hard enough to cause major injury.";
			end the story saying "Faraji has died.";
		-- Rolle's department store:
			say "Faraji climbs quickly up and down the ladder. That was fun.";
		-- Henry's Hot Skillet:
			say "Faraji climbs quickly up and down the ladder. That was fun.";
		-- Reading Room:
			say "Faraji climbs quickly up and down the ladder. That was fun.";
		-- Fresnel's Music:
			say "Faraji climbs quickly up and down the ladder. That was fun.";
		-- Horton Family House Kitchen:
			say "Faraji climbs quickly up and down the ladder. That was fun.";
		-- Lake at Ridge:
			say "Faraji climbs quickly up and down the ladder. That was fun.";
		-- radio station roof:
			say "Faraji climbs up the ladder. The view of the lake is nice. Faraji climbs back down.";
		-- First Utilitarian Church of Enigma Lake:
			say "Faraji climbs quickly up and down the ladder. That was fun.";
		-- vestry: 
			say "Faraji climbs quickly up and down the ladder. That was fun.";
		-- church basement:
			say "Faraji climbs quickly up and down the ladder. That was fun.";
		-- steeple:
			say "Faraji climbs quickly up and down the ladder. That was fun.";
		-- workshed:
			say "Faraji climbs quickly up and down the ladder. That was fun.";
		-- circular chamber:
			say "Faraji climbs quickly up and down the ladder. That was fun.";
		-- Horton Family House Parlor:
			say "Faraji climbs quickly up and down the ladder. That was fun.";
		-- Second Floor of the Horton House:
			say "Faraji climbs quickly up and down the ladder. That was fun.";
		-- Horton astral tunnel:
			say "Faraji climbs quickly up and down the ladder. That was fun.";
		-- Fire Station 1:
			say "Faraji climbs quickly up and down the ladder. That was fun.";
		-- large grave:
		 	try going up instead;
		-- Bookstore Basement:
			say "Faraji climbs quickly up and down the ladder. That was fun.";
		-- sewer tunnel 1:
			say "Faraji climbs quickly up and down the ladder. That was fun.";
		-- sewer tunnel 2:
			say "Faraji climbs quickly up and down the ladder. That was fun.";
		-- sewer tunnel 3:
			say "Faraji climbs quickly up and down the ladder. That was fun.";
		-- gym basement:
			say "Faraji climbs quickly up and down the ladder. That was fun.";
		-- Biff's Office:
			say "Faraji climbs quickly up and down the ladder. That was fun.";
		-- dumpster:
			try going up instead;
		-- BOSH office hallway:
			say "Faraji climbs quickly up and down the ladder. That was fun.";
		-- BOSH chief's office:
			say "Klimp barks 'No climbing!' Faraji climbs back down.";	
		-- Moira's office:
			say "Moira looks strangely at Faraji. 'What are you doing?' she asks. Faraji climbs back down.";
		-- utility closet:
			say "There's not enough room for that.";
		-- otherwise:
			say "Faraji can't climb the ladder when it's lying on the [if location is inside]floor[otherwise]ground[end if].";

Instead of climbing up the metal ladder when the metal ladder is in the large grave and the location is the horton graveyard:
	try going down;

Part 2 - Other stuff

The spotlight is a thing. The description is "A small spotlight, designed to be hand-held. On the side is the branding 'Spectre'. The light has a short cord ending in a standard North American 120V AC plug." It is pluggable.

Instead of examining the spotlight:
	say "A small spotlight, designed to be hand-held. On the side is the branding 'Spectre'. The light has a short cord ending in a standard North American 120V AC plug";
	if the spotlight is plugged into something (called the socket):
		say ", plugged into [a socket]";
	otherwise:
		say "";
	if the spotlight is lit:
		say ". The spotlight is on.";
	otherwise:
		say ". The spotlight is off.";

The spotlight can be already lit.

For device updating the spotlight:
	if the spotlight is unlit:
		if the spotlight is powered:
			now the spotlight is lit;
			now the spotlight is already lit;
			add the spotlight to changed things;
	otherwise:
		if spotlight is not powered:
			now the spotlight is unlit;
			add the spotlight to changed things;

For state change reporting the spotlight:
	if the spotlight is lit:
		if the spotlight is visible:
			say "The spotlight is now on.[line break]";
	otherwise:
		if the spotlight is visible:
			say "The spotlight is now off.[line break]";

The blue button is scenery in the Fire Station 1. "A large blue button, mounted on the wall."

Does the player mean doing something to the blue button: 
	it is very likely.

Instead of pushing the blue button when the garage door is closed:
	say "Faraji pushes the blue button. A klaxon sounds, and the garage door opens.";
	now the garage door is open.

Instead of pushing the blue button when the garage door is open:
	say "Faraji pushes the blue button. The garage door closes.";
	now the garage door is closed.

Instead of opening the garage door when the garage door is closed:
	say "The garage door is too large and heavy to open unaided.";

Instead of closing the garage door when the garage door is open:
	say "The garage door is too large and heavy to close unaided.";

Book 29 - Reading Room

The Reading Room is west of Main at Solvay. It is a leavable room. It is in ELR. It is indoors. The egress is east. The description is "The reading room is a small, cozy space, with a number of comfortable chairs and a few tables. A sales counter is at the back of the room. Bookshelves lead back into the depths of the store. A narrow staircase leads down and the front door is east."


The x-coordinate of the Reading Room is -2. The y-coordinate of the Reading Room is -1.

The bookstore chairs are scenery enterable supporters in the Reading Room. "A number of comfortable chairs are arranged around the room."
Understand "chair/seats/seat" as the bookstore chairs.

The bookstore tables are scenery supporters in the Reading Room. "A few tables are scattered around the room." 
Understand "table" as the bookstore tables.

The bookstore staircase is a building facade in the Reading Room. "A narrow staircase leads down."
	It fronts the Bookstore Basement.
	It is enterable from the Reading Room.
Understand "narrow/stairs/stair/steps/step" as the bookstore staircase.

The sales counter is scenery in the Reading Room. "An ordinary sales counter.".
It is exposed.

The bookshelves are scenery in the Reading Room. 
"The bookshelves are filled with a variety of books, from the latest bestsellers to obscure, out-of-print volumes. You choose one at random:[paragraph break][book report]".

Before examining the bookshelves: 
	if the book-index is 0:
		sort the booklist in random order;
	increment the book-index;

After examining the bookshelves:
	if the book-index is the number of entries in the booklist:
		now book-index is 0.

bookstore-reading is an action applying to one thing. Understand "examine [any bookstore-book]", "read [any bookstore-book]", "look at [any bookstore-book]", "look [any bookstore-book]" as bookstore-reading when the location is the Reading Room.

After deciding the scope of the player while taking when the location is the Reading Room:
	repeat with item running through the booklist:
		place item in scope;

Instead of taking a bookstore-book:
	say "Tsk, tsk. That would be stealing." instead;

[ Rule for reaching inside the Room of Stuff while bookstore-reading:
	allow access;

Rule for reaching inside the Room of Stuff while taking when the location is the Reading Room:
	allow access; ]

Carry out bookstore-reading:
	say "[italic type][title of the noun][roman type] by [author of the noun][line break]Genre: [genre of the noun]

	[blurb of the noun][line break]";

[ Rule for deciding the scope of the player while taking when the location is the Reading Room:
	repeat with item running through the booklist:
		place item in scope; ]

Check taking a bookstore-book:
	say "Faraji decides to save space for more important items." instead;

book-index is a number that varies. book-index is 0.

To say book report:
	let the random-book be entry book-index of the booklist;
	say "[italic type][title of the random-book][roman type] by [author of the random-book][line break]Genre: [genre of the random-book]

	[blurb of the random-book]";


Understand "bookshelf/shelf/shelves/books" as the bookshelves.

To poke is a verb.

Instead of searching the bookshelves:
	say "The bookshelves are filled with a variety of books, from the latest bestsellers to obscure, out-of-print volumes. [We] [poke] around and [find] nothing of use.";

Astral Secrets is in the Reading Room. It is proper-named. The printed name is "[italic type]Astral Secrets[roman type]". Understand "brown/plain/book" as Astral Secrets. Astral Secrets can be read.
"A brown book titled [italic type]Astral Secrets[roman type] lies on the sales counter."

The description is "A book with a plain brown cover, titled 'Astral Secrets'. The author is listed as Jeremiah Horton.[paragraph break]Flipping through the book, [we] [find] a dog-eared page. The page shows a diagram of a small, metallic, cylindrical object, which is labeled 'astral resonator'. The text describes the resonator as a device for opening a portal through the astral plane. It goes on to describe the components of the device: a source of resonance, a source of light, and an 'astral lens', which it declines to describe further. The text also mentions that the resonator is powered by a source of electricity." 

After examining Astral Secrets for the first time:
	let resonators be a list of things;
	repeat with item running through astral resonator types:
		if the player encloses item:
			add item to resonators;
	if the number of entries in resonators > 0:
		say "The book perfectly describes [the resonators] you are carrying.";
	now Astral Secrets is read.


Book 30 - Reading Room Basement

The Bookstore Basement is below the Reading Room. It is in ELR. It is indoors. The description is "The basement is dark and musty, with a number of shelves and boxes of books. The walls are made of old, crumbling brick. There is a faint breeze. A narrow staircase leads up[if the bricked-up-hole is revealed]. There is a ragged hole in the north wall, leading into a dark space[end if]."

The x-coordinate of the Bookstore Basement is -2. The y-coordinate of the Bookstore Basement is -1.

Understand "old/crumbling/brick/bricks" as the walls when the location is the Bookstore Basement.

A door appearance rule for a bricked-up-hole:
	rule succeeds with result whether or not the bricked-up-hole is revealed.

The basement stairs is a building facade in the Bookstore Basement. "A narrow staircase leads up."
	It fronts the Reading Room.
	It is enterable from the Bookstore Basement.
Understand "narrow/staircase/stair/steps/step" as the basement stairs.

The breeze is scenery in the Bookstore Basement. "An almost imperceptible breeze wafts through the basement, smelling faintly of sewage."

The extension cord is in the Bookstore Basement. 

The Ecology of Root Vegetables is in the Bookstore Basement. It is proper-named. The printed name is "[italic type]The Ecology of Root Vegetables[roman type]". Understand "green/cover/book" as The Ecology of Root Vegetables. The Ecology of Root Vegetables can be read.
"A book with a green cover titled [italic type]The Ecology of Root Vegetables[roman type] lies on the floor here."

The description of The Ecology of Root Vegetables is "A book with a green cover, titled 'The Ecology of Root Vegetables'. The author is listed as Dr. A. Zilman. The book is a comprehensive study of root vegetables. There is a whole chapter on the rutabaga, including its history, cultivation, and uses in various cultures. One passage mentions its potential use as a weapon against 'evil earth demons'."

A bricked-up-hole is a secret door. It is north of the Bookstore Basement and south of a sewer tunnel 1. It is privately-named. The printed name is "bricked-up hole in the wall". Understand "bricked-up", "bricked/up", "hole in/-- the/-- wall/--" as bricked-up-hole. It is open and not openable. "A ragged hole in the north wall, [if the location is the bookstore basement]leading into a dark space[otherwise]leading into the bookstore basement[end if]." 
It is unsnarkable.

To break is a verb.

Attacking it with is an action applying to one thing and one carried thing. Understand "attack [something] with [something]", "break [something] with [something]", "smash [something] with [something]", "hit [something] with [something]", "strike [something] with [something]", "pound [something] with [something]", "pummel [something] with [something]", "bash [something] with [something]", "crush [something] with [something]", "destroy [something] with [something]", "demolish [something] with [something]", "wreck [something] with [something]", "shatter [something] with [something]", "splinter [something] with [something]", "crack [something] with [something]", "thump [something] with [something]", "wallop [something] with [something]", "tap [something] with [something]" as attacking it with.
Understand "swing [something] at [something]" as attacking it with (with nouns reversed).

Check attacking something with something when the second noun is not the sledgehammer:
	say "[text of block attacking rule response (A)][paragraph break]" instead;

Check attacking something with something when the noun is not the walls or the location is not the bookstore basement:
	say "[text of block attacking rule response (A)][paragraph break]" instead;

Instead of attacking the walls with the sledgehammer when the location is the Bookstore Basement and the bricked-up-hole is not revealed:
	say "[We] [break] through the wall, revealing a dark space to the north.";
	now the bricked-up-hole is revealed.

The basement shelves are scenery in the Bookstore Basement. "The shelves host a smattering of books, mostly old and dusty." Understand "bookshelf/shelf/shelves" as the basement shelves.

Instead of searching the basement shelves:
	say "The shelves host a smattering of books, mostly old and dusty. [We] [poke] around and [find] nothing of use.";

The boxes of books are scenery in the Bookstore Basement. "The boxes are filled with old, dusty books." Understand "box/boxes/books" as the boxes of books.

Instead of searching the boxes of books:
	say "The boxes are filled with old, dusty books. [We] [poke] around and [find] nothing of use.";

	
Book 31 - Sewer Tunnel

a sewer tunnel 1 is in ELR. It is privately-named. It is always-indefinite. The printed name is "sewer tunnel". Understand "sewer/tunnel" as sewer tunnel 1. "The tunnel is dark and damp, with a low ceiling. From here, it leads east. To the west it narrows to little more than a pipe. To the south is a hole leading into a basement."

The snarky remark of sewer tunnel 1 is "Wait, am I back in Swamp Park?"

The x-coordinate of sewer tunnel 1 is -2. The y-coordinate of sewer tunnel 1 is 0.5.

The pipe is scenery in sewer tunnel 1. "Thankfully, nothing is coming out of it right now." 

a sewer tunnel 2 is east of sewer tunnel 1. It is in ELR. It is indoors. It is privately-named. It is always-indefinite. The printed name is "sewer tunnel". Understand "sewer/tunnel" as sewer tunnel 2.  "The tunnel is dark and damp, with a low ceiling. From here, it leads east and west."

The snarky remark of sewer tunnel 2 is "Actually it smells better than Swamp Park."

The x-coordinate of sewer tunnel 2 is 0. The y-coordinate of sewer tunnel 2 is 0.5.

a sewer tunnel 3 is east of sewer tunnel 2. It is in ELR. It is indoors. It is privately-named. It is always-indefinite. The printed name is "sewer tunnel". Understand "sewer/tunnel" as sewer tunnel 3. "The tunnel is dark and damp, with a low ceiling. From here, it leads west, and turns into a small crawl to the east. There is a metal door to the north."


The x-coordinate of sewer tunnel 3 is 2. The y-coordinate of sewer tunnel 3 is 0.5.

[ The astral-tunnel-elr is forth of sewer tunnel 3. It is privately-named. The printed name is "astral tunnel". It is in hyperspace. "It is featureless white, or what passes for white here. It leads back and backnorth.";


astral-tunnel-elr is forthsouth of the gym basement. ]

The gymnasium basement door is a closed openable lockable scenery door. It is north of sewer tunnel 3 and south of the gym basement. "A heavy metal door." 

After opening the gymnasium basement door:
	say "Faraji manages to force the door open.";

Book 32 - Fresnel's Music

Fresnel's Music is southwest of Main at Solvay. It is a leavable room. The egress is northeast. Fresnel's Music is in ELR. It is indoors. "The music store, like most of the town, is empty of all but a few items of little value. The exit is to the northeast."

The snarky remark of Fresnel's Music is "It's like John Cage's 4[']33' in store form."

The x-coordinate of Fresnel's Music is -2. The y-coordinate of Fresnel's Music is -2.

A tuning fork is in Fresnel's Music. "A tuning fork lies on the counter." The description is "A tuning fork, used to tune musical instruments."

The music store counter is a scenery supporter in Fresnel's Music. "A typical store counter, bare of most items." 
It is exposed.

Fresnel items are scenery in Fresnel's Music. "A few items of little value are scattered around the store." Understand "few/item" as Fresnel items. They are plural-named.

striking is an action applying to one thing. Understand "strike [the tuning fork]", "sound [the tuning fork]", "ring [the tuning fork]", "tap [the tuning fork]", "hit [the tuning fork]" as striking.
Carry out striking the tuning fork:
	say "Faraji strikes the tuning fork. It sounds a pure 440 Hz tone which stretches for several seconds.";
	if the player encloses the rusty astral resonator:
		if the player encloses the shiny astral resonator:
			if Astral Secrets is read:
				say "[line break]The tone resonates with the two astral resonators you are carrying.";
			otherwise:
				say "[line break]The tone resonates with the strange shiny object and strange rusty object.";
		otherwise:
			if Astral Secrets is read:
				say "[line break]The tone resonates with the astral resonator you are carrying.";
			otherwise:
				say "[line break]The tone resonates with the rusty object you are carrying.";
	otherwise if the player encloses the shiny astral resonator:
		if Astral Secrets is read:
			say "[line break]The tone resonates with the astral resonator you are carrying.";
		otherwise:
			say "[line break]The tone resonates with the shiny object you are carrying.";

Instead of attacking the bell with the tuning fork:
	say "Faraji strikes the tuning fork against the bell. The two tones produce a perfect fifth, but the bell doesn't have the deep resonant overtones of the tuning fork.";

Book 33 - Henry's Hot Skillet

Henry's Hot Skillet is a leavable room. It is in ELR. It is indoors. It has egress north.
The description is "This is the epitome of the homey small-town diner of times gone by, except for the lack of all furniture, cooking implements, food, decor, and so on. There is a staircase leading up, and the exit is north. A pair of insulated wires hangs from the ceiling at one end of the counter[if the clean battery is on the lunch counter and the clean battery is hooked up]. The wires are attached to a battery resting on the counter[otherwise if the clean battery is on the lunch counter]. A battery rests on the counter[end if][other counter contents]." 
Understand "diner/restaurant" as Henry's Hot Skillet.

To say other counter contents:
	let L be the list of things on the lunch counter;
	if the clean battery is listed in L:
		remove the clean battery from L;
	if the number of entries in L > 1:
		say ". Also on the counter are [L with indefinite articles]";
	otherwise if the number of entries in L is 1:
		say ". Also on the counter is [L with indefinite articles]";

Description notes for the clean battery:
	if the clean battery is hooked up:
		add "attached to wires" to the descriptive notes.

The diner staircase is scenery in Henry's Hot Skillet. "A staircase leads up, probably to the roof." 
Understand "stair/stairs", "stair case" as the diner staircase.

The snarky remark of Henry's Hot Skillet is "It's a diner without any food or furniture. So, just a room, really."

The x-coordinate of Henry's Hot Skillet is -1. The y-coordinate of Henry's Hot Skillet is -2.

the Skillet door is a closed locked openable lockable scenery door. It is south of Main at Solvay and north of Henry's Hot Skillet. The Skillet door has matching key the brass key.
"An old-fashioned swinging door, it reads 'Henry's Hot Skillet'."

Before opening the Skillet door when the Skillet door is locked:
	now the player knows skillet-door-locked;

The lunch counter is a scenery supporter in Henry's Hot Skillet. "A typical mid-twentieth-century lunch counter."

The wires are scenery in Henry's Hot Skillet. "Two insulated wires with bare ends, they probably once attached to some electrical device sitting on the counter[if the clean battery is hooked up]. Right now, the wires are attached to a battery resting on the counter[end if]."

They are plural-named.

The clean battery can be hooked up. 

Understand "hook up [something] to [something]", "hook [something] up to [something]" as tying it to.

Instead of tying the wires to the shiny astral resonator:
	say "The clamps on the astral resonator won't attach securely to the wires.";

Instead of putting the wires on the clean battery:
	try tying the wires to the clean battery instead;

Instead of putting the clean battery on the wires:
	try tying the wires to the clean battery instead;

Instead of tying the wires to the clean battery when the clean battery is not hooked up:
	if the clean battery is on the lunch counter:
		say "Faraji attaches the wires to the battery.";
		now the clean battery is hooked up;
	otherwise:
		if the player does not enclose the clean battery:
			carry out the implicitly taking activity with the clean battery;
		if the player encloses the clean battery:
			say "Faraji puts the battery on the counter and attaches the wires to it.";
			now the clean battery is on the lunch counter;
			now the clean battery is hooked up;

Instead of tying the wires to the clean battery when the clean battery is hooked up:
	say "The wires are already attached to the battery.";

Understand "connect [something] to [something]" as tying it to.

Instead of tying the table lamp to the wires:
	say "The lamp doesn't have any exposed wires to attach to.";

Check tying the clean battery to the wires:
	try tying the wires to the clean battery instead;
	
Instead of taking the clean battery when the clean battery is hooked up:
	say "Faraji can't take the battery while it's tied to the wires.";

Untying it from is an action applying to two things. Understand "untie [something] from [something]", "detach [something] from [something]", "disconnect [something] from [something]", "unhook [something] from [something]", "separate [something] from [something]" as untying it from.

Instead of untying the wires from the clean battery when the clean battery is hooked up:
	say "Faraji unties the wires from the battery.";
	now the clean battery is not hooked up;

Instead of untying the wires from the clean battery when the clean battery is not hooked up:
	say "The wires are not attached to anything.";

Check untying the clean battery from the wires:
	try untying the wires from the clean battery;

Check untying:
	say "You can't untie that from that." instead;

Book 34 - Henry's Roof

Henry's Roof is above Henry's Hot Skillet. It is in ELR. It is outdoors. The description is "From here one can see much of the town, including a clear view of the obelisk in Enigma Park. There is a large TV aerial jutting from the roof here[if the rusty astral resonator is in the threaded socket]. A [rusty astral resonator] is screwed into a threaded socket on the antenna[end if]."
The preposition is "on".


The x-coordinate of Henry's Roof is -1. The y-coordinate of Henry's Roof is -2.

The TV aerial antenna is scenery in Henry's Roof. "A large, metallic rooftop antenna, characterized by its array of horizontal and vertical rods designed to capture VHF (very high frequency) broadcasts. Strangely, someone has mounted a threaded socket, such as might hold a light bulb, on one of the rods. [if the rusty astral resonator is in the threaded socket][A rusty astral resonator] is screwed into it. [end if]A pair of insulated wires runs from the antenna and through a hole in the roof."

The insulated wires are part of the TV aerial antenna. The description is "A pair of insulated wires, running from the antenna and through a hole in the roof." They are plural-named. Understand "wire" as the insulated wires.

The hole-in-the-roof is scenery in Henry's Roof. It is privately-named. The printed name is "hole in the roof". Understand "hole in/-- the/-- roof/--" as the hole-in-the-roof. "A hole in the roof, through which a pair of insulated wires run. It's not big enough to do anything with."

The threaded socket is part of the TV aerial antenna. It is a single item container. The description is "A threaded socket, like that of a light bulb, is mounted on one of the rods of the antenna." Understand "light/bulb/lightbulb" as the threaded socket.
It is unsnarkable.

Instead of inserting the rusty astral resonator into the aerial:
	try inserting the rusty astral resonator into the threaded socket;

Does the player mean inserting the rusty astral resonator into the threaded socket:
	it is very likely.	

To hook up the rusty resonator:
	now the rusty resonator is in the threaded socket;
	if the clean battery is hooked up:
		say "Faraji hooks up [the rusty astral resonator] to the threaded socket on the TV aerial antenna. A beam of light shoots out of it and strikes the obelisk in the park. The crystal is glowing [crystal glow].";
		now the player knows rusty-resonator-has-been-activated;
	otherwise:
		say "Faraji screws [the rusty astral resonator] into the threaded socket on the TV aerial antenna.";

After taking the rusty astral resonator when the rusty astral resonator was in the threaded socket:
	if the clean battery is hooked up:
		say "Faraji removes [the rusty astral resonator] from the threaded socket on the TV aerial antenna. In the distance, the beam of light fades from the obelisk. [if the beam count is 0]The crystal is no longer glowing[otherwise]The crystal is still glowing [crystal glow][end if].";
	otherwise:
		continue the action;

Understand "screw [the rusty astral resonator] in/into/to [the threaded socket]", "mount [the rusty astral resonator] on/onto/in/into [the threaded socket]" as inserting it into.
Understand "screw [the light bulb] in/into/to [the threaded socket]", "mount [the light bulb] on/onto/in/into [the threaded socket]" as inserting it into.
Understand "screw [the light bulb] in/into/to [the light socket]", "mount [the light bulb] on/onto/in/into [the light socket]" as inserting it into.
Understand "screw [the light bulb] in/into/to [the table lamp]", "mount [the light bulb] on/onto/in/into [the table lamp]" as inserting it into.

Understand "unscrew [the rusty astral resonator]", "unmount [the rusty astral resonator]" as taking.
Understand "unscrew [the rusty astral resonator] from [the threaded socket]", "unmount [the rusty astral resonator] from [the threaded socket]" as removing it from.

Check inserting something into the threaded socket:
	if the noun is not the rusty astral resonator:
		say "That doesn't fit.";
		stop the action;

Instead of inserting the rusty astral resonator into the threaded socket when the rusty resonator is not hooked up:
	hook up the rusty resonator;

Instead of inserting the rusty astral resonator into the threaded socket when the rusty resonator is hooked up:
	say "[The rusty astral resonator] is already in the socket.";

After taking the rusty astral resonator when the rusty astral resonator was hooked up:
	if the clean battery is hooked up:
		say "Faraji removes [the rusty astral resonator] from the threaded socket on the TV aerial antenna. In the distance, the beam of light fades from the obelisk. [if the beam count is 0]The crystal is no longer glowing[otherwise]The crystal is still glowing [crystal glow][end if].";

Obelisk-from-Henry's-Roof is privately-named scenery in Henry's Roof. The printed name is "the Enigma Park obelisk". Understand "obelisk/enigma/park/crystal/adornment" as Obelisk-from-Henry's-Roof. "There's a clear line of sight from here to the tip of the obelisk."

Instead of examining the Obelisk-from-Henry's-Roof:
	say "The obelisk in the park is clearly visible from here. [run paragraph on]";
	if beam count is 1:
		if mounted-rusty-resonator:
			say " A beam of light is focused on the obelisk from here, striking the crystal adornment at its apex. The crystal is glowing faintly.";
		otherwise:
			say " A beam of light is focused on the obelisk from elsewhere, striking the crystal adornment at its apex. The crystal is glowing faintly.";
	otherwise if beam count is 2:
		if mounted-rusty-resonator:
			say " Two beams of light are focused on the obelisk, one from here and one from elsewhere, striking the crystal adornment at its apex. The crystal is glowing brightly.";
		otherwise:
			say " Two beams of light are focused on the obelisk from elsewhere, striking the crystal adornment at its apex. The crystal is glowing brightly.";
	otherwise if beam count is 3:
		say " Three beams of light are focused on the obelisk, one from here and two from elsewhere, striking the crystal adornment at its apex. The crystal is glowing brightly.";
	otherwise:
		say line break;

The town-from-Henry's-Roof is privately-named scenery in Henry's Roof. The printed name is "the town". Understand "town" as the town-from-Henry's-Roof. "The town is spread out below, with the obelisk in the park clearly visible."

Book 35 - Rolle's Department Store

Rolle's Department Store is south of Main Street 200 Block. It is in ELR. It is indoors. It is a leavable room. The egress is north. 
The description is "Once, town department stores like this were a constant of American life. Sadly, this one is almost empty of everything. The exit is to the north."

The x-coordinate of Rolle's Department Store is 0. The y-coordinate of Rolle's Department Store is -2.

The table lamp is a device in Rolle's Department Store. "A scuffed-up table lamp sits discarded in a corner." The description is "A table lamp, with a red enameled base and missing a shade. It's meant to plug into an outlet. It looks like it's seen better days. On the base is the branding 'Spectre'[if the table lamp is lit]. It is lit[otherwise]. It is dark[end if]." 
It is pluggable. 

Instead of examining the table lamp:
	say "An ordinary table lamp, with a red enameled base";
	if the bulb is not in the light socket:
		say ", no bulb, and no shade";
	otherwise:
		say ", a light bulb in the socket, but no shade";
	say ". It looks like it's seen better days. On the base is the branding 'Spectre'";
	if the table lamp is plugged into something (called the socket):
		say ". It is plugged into [the socket]";
	otherwise:
		say ". The power cord hangs free";
	If the table lamp is lit:
		say ". The lamp is lit.";
	otherwise:
		say ". The lamp is dark.";

Understand "screw [the light bulb] in/into [the light socket]", "mount [the light bulb] on/onto/in/into [the light socket]" as inserting it into.
Understand "screw [the rusty astral resonator] in/into [the light socket]", "mount [the rusty astral resonator] on/onto/in/into [the light socket]" as inserting it into.
Understand "unscrew [the light bulb]" as taking when the light bulb is in the light socket.
Understand "unscrew [the light bulb] from [the light socket]" as removing it from.

Understand "screw [the light bulb] in/into [the table lamp]", "mount [the light bulb] on/onto/in/into [the table lamp]" as inserting it into.
Understand "screw [the rusty astral resonator] in/into [the table lamp]", "mount [the rusty astral resonator] on/onto/in/into [the table lamp]" as inserting it into.

The light socket is a single item container. It is part of the table lamp. The description is "A light socket for a light bulb." 

Instead of inserting something into the table lamp:
	try inserting the noun into the light socket instead;

The red enameled base is part of the table lamp. The description is "A red enameled base, scuffed and tarnished."

Instead of inserting the rusty astral resonator into the light socket:
	say "The [rusty astral resonator] doesn't fit in the table lamp."

Check inserting something into the light socket:
	if the noun is not the light bulb:
		say "That doesn't fit.";
		stop the action;

Carry out inserting something into the light socket (this is the update lamp on inserting rule):
	carry out the device updating activity with the table lamp;

The update lamp on inserting rule is listed last in the carry out inserting it into rules.

Carry out removing something from the light socket (this is the update lamp on removing rule):
	carry out the device updating activity with the table lamp;

The update lamp on removing rule is listed last in the carry out removing it from rules.

The table lamp can be already lit. 

For device updating the makeshift astral resonator:
	if the makeshift astral resonator is lit:
		if the makeshift astral resonator is not powered:
			now the makeshift astral resonator is unlit;
			add the makeshift astral resonator to changed things;
	otherwise:
		if the makeshift astral resonator is powered:
			now the makeshift astral resonator is lit;
			add the makeshift astral resonator to changed things;

For state change reporting the makeshift astral resonator:
	if the makeshift astral resonator is lit:
		if the makeshift astral resonator is visible:
			puts "The makeshift astral resonator is now lit.[line break]";
	otherwise:
		if the makeshift astral resonator is visible:
			puts "The makeshift astral resonator is now unlit.[line break]";


For device updating the table lamp:
	if the table lamp is lit:
		if the table lamp is not powered or the table lamp is not switched on or the light bulb is not in the light socket:
			now the table lamp is unlit;
			add the table lamp to changed things;
	otherwise:
		if the table lamp is powered and the table lamp is switched on and the light bulb is in the light socket:
			now the table lamp is lit;
			now the table lamp is already lit;
			add the table lamp to changed things;

For state change reporting the table lamp:
	if the table lamp is lit:
		if the table lamp is visible:
			puts "The table lamp is now lit.[line break]";
	otherwise:
		if the table lamp is visible:
			puts "The table lamp is now unlit.[line break]";

Description notes for the table lamp:
	If the light bulb is in the light socket:
		add "with a bulb in the socket" to descriptive notes;
	otherwise:
		add "missing a bulb" to descriptive notes;

After switching on the table lamp:
	if the table lamp is not lit:
		say "Faraji flips the switch on the table lamp";
		if the light bulb is in the light socket:
			say ". The bulb remains dark.";
		otherwise:
			say ". Without a light bulb the lamp remains dark.";
	otherwise:
		continue the action;

After taking the light bulb when the light bulb was in the light socket:
	say "Faraji unscrews the light bulb from the table lamp.";


The gleaming floor is scenery in Rolle's Department Store. "Someone has polished it spotless, despite the looming destruction of the store. That's dedication."


Does the player mean doing something to the gleaming floor: 
	It is very likely;
	
The sale posters are scenery in Rolle's Department Store. "'50% off everything in the store!'"
Understand "poster/signs/sign" as the sale posters.

The floor waxer is a fixed in place device in Rolle's Department Store. "A floor waxer sits in the center of the gleaming floor." 
The description is "This is a bulky, heavy-duty machine with a large, round brush head, designed for durability and the ability to polish vast floor areas to a high shine."
Understand "switch/machine/brush/brushes/head" as the floor waxer.

Report switching on the floor waxer:
	say "Faraji flips the switch on the floor waxer. It hums to life, and the brush head begins to spin.";
	stop the action;

Report switching off the floor waxer:
	say "Faraji flips the switch on the floor waxer. It powers down, and the brush head stops spinning.";
	stop the action;

Instead of pushing the floor waxer to north:
	say "[We] can't manage to open the door while pushing the floor waxer, or get it over the threshold.";

Waxing is an action applying to nothing. Understand "wax floor/--", "polish floor/--", "shine floor/--" as waxing.

Check waxing when the floor waxer is not in the location:
	say "There is no floor waxer here." instead;

Check waxing when the floor waxer is switched off:
	say "The floor waxer is not running." instead;

Report waxing:
	say "Faraji pushes the floor waxer around the room, polishing the floor to a superfluously high shine.";


The big letters are scenery in Rolle's Department Store. "Big letters on the wall spell out 'ROLLE'S'." 


Book 36 - Public Gymnasium

The gym door is a closed locked openable lockable scenery door. It is east of Lake Street by the gym and west of the public gymnasium. It has matching key the green key. The description is "A strong, institutional, double door, painted a dark green. A sign on the door reads 'Public Gymnasium'."

The x-coordinate of the public gymnasium is 2. The y-coordinate of the public gymnasium is 0.

The public gymnasium is in ELR. "There is a basketball court and a weight training area. A front desk is next to the front entrance to the west. Some kind of book sits on the front desk. Faraji may also go down to the basement."
Understand "gym" as the public gymnasium.
The public gymnasium is a leavable room. The egress is west.

Index map with public gymnasium mapped east of Lake Street by the gym.

The gym front desk is a scenery supporter in the public gymnasium. "Some kind of record book sits on the front desk."

The green key is a key in the public gymnasium. "A green key hangs on a hook." The description is "A plain green key."

The hook is scenery in the public gymnasium. "A plain hook mounted on the wall[if the green key is not handled]. A green key hangs from it[end if]."

The membership book is fixed in place scenery on the gym front desk. The description is "It's a book apparently full of records of the members of the gym. [We] could LOOK UP a member's name IN BOOK." Understand "record", "gym/gymnasium book" as membership book.

Does the player mean:
	if the current action is consulting:
		if the noun is the membership book:
			it is very likely;
		if the second noun is the membership book:
			it is very likely;
	if the current action is looking up in:
		if the noun is the membership book:
			it is very likely;
		if the second noun is the membership book:
			it is very likely;

Instead of consulting the membership book about something:
	if the topic understood matches "william thompson" or the topic understood matches "bill thompson" or the topic understood matches "thompson" or the topic understood matches "william" or the topic understood matches "bill":
		say "[fixed letter spacing]WILLIAM THOMPSON[line break]
		126 Rochester Road[line break]
		Enigma Lake, NY[line break]
		#[correct locker number].[variable letter spacing][paragraph break]";
		now looked up locker is true;
	otherwise:
		say "[We] can't find that name in the membership book.";

Instead of looking something up in the membership book:
	say "[We] can't find that name in the membership book.";

	

The basketball court is scenery in the public gymnasium. "It's a regulation basketball court, with a shiny hardwood floor and a pair of hoops at either end. It's silent and empty." Understand "court" as the basketball court.

The basketball hoops are scenery in the public gymnasium. "A pair of basketball hoops are mounted at either end of the court." Understand "hoop/hoops" as the basketball hoops.

The basketball-ball is in the public gymnasium. It is privately-named. The printed name is "basketball". Understand "basketball/ball" as the basketball-ball.
 "A basketball lies on the floor." The description is "A regulation basketball, well-worn but fully inflated."

The basketball score is a number that varies. The basketball score is 0.

Shooting is an action applying to one thing. Understand "shoot [something preferably held]" as shooting. Understand "shoot hoops" as shooting. Understand "shoot baskets", "play basketball", "play hoops", "play ball", "shoot" as shooting.
The Shooting action has a number called the points.

Dribbling is an action applying to one thing. Understand "dribble [basketball-ball]" as dribbling. Understand "dribble" as dribbling. Understand the command "bounce" as "dribble".

Rule for supplying a missing noun while dribbling:
	if the basketball-ball is in the location or the player encloses the basketball-ball:
		now the noun is the basketball-ball;
	otherwise:
		say "There is no basketball here." instead.

Check dribbling (this is the can't dribble what you don't have rule):
	if the actor is carrying the noun, continue the action;
	carry out the implicitly taking activity with the noun;
	if the actor is carrying the noun, continue the action;
	stop the action;

Carry out dribbling:
	if a random chance of 1 in 5 succeeds:
		now the basketball-ball is in the location;

Report dribbling something when the player carries the basketball-ball:
	say "[one of]Faraji dribbles the ball up the court, weaving through imaginary defenders[or]Faraji dribbles the ball between their legs, then behind their back[or]Faraji dribbles the ball behind their back, then between their legs[or]Faraji dribbles the ball with their left hand, then their right[or]Faraji dribbles the ball with their right hand, then their left[or]Faraji dribbles the ball with their left hand, then spins and dribbles with their right[at random].";

Report dribbling something when the player does not carry the basketball-ball:
	say "[one of]Faraji dribbles the ball up the court, then loses control of it. The ball rolls away[or]Faraji dribbles the ball between their legs, then loses control of it. The ball rolls away[or]Faraji bounces the ball of their foot and it rolls away[at random]."; 

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

The weight machine is scenery in the public gymnasium. "A weight machine, designed to work the upper body." Understand "weight/-- machines" as the weight machine.

The free weights are scenery in the public gymnasium. "A set of free weights, ranging from 5 to 50 pounds." Understand "weights" as the free weights.

Check taking the free weights:
	say "The weights are too heavy to carry around." instead;

Lifting weights is an action applying to nothing. Understand "lift weights", "pump iron", "work out", "exercise" as lifting weights.

Check lifting weights when the location is not the public gymnasium:
	say "There are no weights here." instead;

Check lifting weights:
	say "Not when we're still trying to answer that damn phone." instead;


Book 37 - Gym Basement

The gym basement is below the public gymnasium. It is in ELR. It is indoors. "This area is dominated by large banks of lockers. One can go up to the gym proper."

The x-coordinate of the gym basement is 2. The y-coordinate of the gym basement is 0.

The bank of lockers is scenery in the gym basement. Understand "banks/locker" as the bank of lockers.
"The lockers are numbered 1 to 100."
The bank of lockers can be opened-once.
The snarky remark of the bank of lockers is "I'm not searching every locker."

Instead of opening the bank of lockers:
	say "The lockers are numbered 1 to 100. [We] [are] hardly going to try opening every locker. There must be a better way to go about this.";

Looked up locker is a truth state that varies.

Opening a locker is an action applying to one number. Understand "open locker/-- number/-- [number]", "search locker/-- number/-- [number]", "look in locker/-- number/-- [number]", "unlock locker/-- number/-- [number]" as opening a locker when the location is the gym basement.

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
		say "[We] [open] the locker with the red key. It contains some dirty gym clothes, among which [we] find [an old copper key]. [We] [take] it and close the locker.";
		now the bank of lockers is opened-once;
		now the player carries the old copper key;
	otherwise:
		say "The locker contains nothing but some old gym clothes.";

Locker-opening it with is an action applying to one number and one thing. Understand "open locker/-- number/-- [number] with [something]", "search locker/-- number/-- [number] with [something]", "look in locker/-- number/-- [number] with [something]", "unlock locker/-- number/-- [number] with [something]" as locker-opening it with when the location is the gym basement.

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

Locker-examining is an action applying to one number. Understand "examine locker/-- number/-- [number]", "look at locker number/-- [number]", "inspect locker/-- number/-- [number]" as locker-examining when the location is the gym basement.

Check locker-examining:
	if the number understood < 1 or the number understood > 100:
		say "The lockers are numbered 1 to 100." instead;
	say "There's nothing special about this particular locker.";

Check searching the bank of lockers:
	say "The lockers are numbered 1 to 100. [We] [are] hardly going to try opening every locker. There must be a better way to go about this." instead;

Check inserting something into the bank of lockers:
	say "There's no point in that." instead;

Putting in a locker is an action applying to one thing and one number. Understand "put [other things] in/inside/into locker/-- number/-- [number]", "insert [other things] in/into locker/-- number/-- [number]", "drop [other things] in/into/down locker/-- number/-- [number]" as putting in a locker when the location is the gym basement.

Check putting in a locker:
	say "There's no point in that." instead;

Book 38 - Light sources

There is a fluorescent light source in Enigma Lake town hall called town hall light source.
There is a fluorescent light source in Radio Station WGXC called radio station light source.
There is a fluorescent light source in the broadcast booth called broadcast booth light source.
There is a fluorescent light source in Rolle's Department Store called Rolle's light source.
There is a fluorescent light source in Henry's Hot Skillet called Henry's light source.
There is a fluorescent light source in Reading Room called Reading Room light source.
There is a fluorescent light source in Fresnel's Music called Fresnel's light source.
		
Volume 4 - Eerie Sounds

[ Sound interval is a number that varies.

To spin is a verb. To cock is a verb.

Every turn when location is in ELR:
	increment sound interval;
	if the location is outdoors:
		if sound interval > 2 and a random chance of 1 in 10 succeeds:
			now sound interval is sound interval - 10;
			if sound interval > 0:
				now sound interval is 0;
			say "[one of]The seeming sound of sibilant speech carries on the breeze[or][We] [turn] [our] head quickly, as if something caught [our] eye[or]A strange shadow crosses the scene[or][We] abruptly [spin] around, but [find] nothing behind [us][or][We] [cock] [our] head at a strange sound[or]Distinct footsteps sound from not too far away[or]An unseasonably chilly wind causes [us] to hug [our] shoulders[then at random]." ]

Volume 4.25 - The Mystic Compass in Enigma Lake

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


Volume 4.5 - The Lizard People


The group of lizard people is an animal. "[lizard people appearance][run paragraph on]";

To say lizard people appearance:
	if location is in ELR:
		say "Three humanoid figures are here, each with a long, scaly tail and a head that looks like a lizard's. They are dressed in smart grey suits. They are hissing loudly in what seems to be intelligent communication. One is carrying some kind of shiny metal object.";
		if lizard countdown is 1:
			say "[line break]They notice you and stop talking. One of them steps forward and says in a guttural hiss, [one of]'So it is one of Doris's friends. We have been expecting you. You will not hinder us[or]'Surface vermin! You will not stop us[or]'No one will be allowed to interfere with our plans. Begone[or]'Silly human. You will fail[or]'You are too late to stop us. We will have the Dragon[at random]!'[run paragraph on]";
	otherwise:
		say "Three humanoid figures are here, each with a long, scaly tail and a head that looks like a lizard's. They are dressed in smart grey suits. They seem highly agitated.[run paragraph on]";

Understand "lizards/lizardmen/men/retiles/reptile/reptoid/figures/figure" as the group of lizard people.
The description is "There are three of them, each one seemingly a reptilian humanoid. They are dressed in grey suits with matching ties. They are obviously of intelligence comparable to humans. They are hissing loudly in what seems to be intelligent communication[describe stance]."

To say describe stance:
	if location is the old root cellar:
		if lizard people facing us is true:
			say ". They are facing you, leering menacingly";
		otherwise:
			say ". They are facing away from you, threatening Daniels";

The group of lizard people carry the strange shiny metal object. 
The description of the strange shiny metal object is "You can't see much while the lizard person is holding it."

They are unsnarkable.

The group of lizard people is in Lake at Ridge.

To decide what text is the heading from (R1 - a room) to (R2 - a room):
	let wediff be the x-coordinate of R1 minus the x-coordinate of R2 + 0.01;
	let nsdiff be the y-coordinate of R2 minus the y-coordinate of R1 + 0.01;
	let fbdiff be 0.01;
	let nsdir be "";
	let wedir be "";
	let fbdir be "";
	if nsdiff >= 0:
		let nsdir be "north";
	otherwise:
		let nsdir be "south";
	if wediff >= 0:
		let wedir be "west";
	otherwise:
		let wedir be "east";
	if fbdiff >= 0:
		let fbdir be "forth";
	otherwise:
		let fbdir be "back";
	let nsdivwe be nsdiff / wediff;
	now nsdivwe is absolute value of nsdivwe;
	let nsdivfb be nsdiff / fbdiff;
	now nsdivfb is absolute value of nsdivfb;
	let wedivfb be wediff / fbdiff;
	now wedivfb is absolute value of wedivfb;	
	let nsscore be nsdivwe + nsdivfb;
	let wescore be 1 / nsdivwe + wedivfb;
	let fbscore be 1 / wedivfb + 1 / nsdivfb;
	let dir be "";
	let count be 1;
	if fbscore >= wescore and fbscore >= nsscore:
		now dir is fbdir;
		let x be 2 * nsscore;
		if fbscore < x:
			increment count;
			now dir is "[dir][nsdir]";
		now x is 2 * wescore;
		if fbscore < x and count < 2:
			now dir is "[dir][wedir]";
		decide on dir;
	if nsscore >= wescore and nsscore >= fbscore:
		now dir is nsdir;
		if nsscore < 2 * wescore:
			increment count;
			now dir is "[dir][wedir]";
		if nsscore < 2 * fbscore and count < 2:
			now dir is "[fbdir][dir]";
		decide on dir;
	if wescore >= nsscore and wescore >= fbscore:
		now dir is wedir;
		let x be 2 * nsscore;
		if wescore < 2 * nsscore:
			increment count;
			now dir is "[nsdir][dir]";
		if wescore < 2 * fbscore and count < 2:
			now dir is "[fbdir][dir]";
		decide on dir;
	decide on dir;


Every turn when the group of lizard people is not in the location and the location is in ELR and location of the lizard people is not the old root cellar:
	if the group of lizard people is in a room (called current space):
		let seen at first be false;
		if the location overlooks the current space:
			[ say "[We] [see] the faint trace of shadowy figures off in the distance, [the preposition of the current space] [the pretty name of the current space]."; ]
			now seen at first is true;
		let next space be a random room which is adjacent to current space;
		if next space is not the location and next space is not First Utilitarian Church of Enigma Lake:
			let dir be the best route from the current space to the next space;
			let seen at last be false;
			if dir is a direction:
				try group of lizard people going dir;
				now seen at last is whether or not the location overlooks the next space;
			let dirtext be "";
			if seen at first is true:
				now dirtext is the heading from the location to the current space;
			otherwise:
				now dirtext is the heading from the location to the next space;
			let old structure be the structure name of the current space;
			let new structure be the structure name of the next space;
			if seen at last is true and seen at first is true:
				if old structure is not new structure:
					if old structure is not "" and new structure is not "":
						say "To the [dirtext], the shadowy figures move [dir], emerging from [the old structure] and entering [the new structure].";
					otherwise if old structure is not "":
						say "To the [dirtext], the shadowy figures move [dir], emerging from [the old structure] to [the pretty name of the next space].";
					otherwise if new structure is not "":
						say "To the [dirtext], the shadowy figures move [dir], from [the pretty name of the current space] into [the new structure].";
				otherwise:
					say "To the [dirtext], the shadowy figures move [dir], [the preposition of the next space] [the pretty name of the next space].";
			otherwise if seen at last is true:
				if old structure is not new structure:
					if old structure is not "" and new structure is not "":
						say "To the [dirtext], some shadowy figures emerge from [the old structure] and enter [the new structure], moving [dir].";
						[ say "Some shadowy figures appear [from-dir the opposite of dir], emerging from [the old structure] and entering [the new structure]."; ]
					otherwise if old structure is not "":
						say "To the [dirtext], some shadowy figures emerge from [the old structure] at [the pretty name of the next space], moving [dir].";
						[ say "Some shadowy figures appear [from-dir the opposite of dir], emerging from [the old structure] to [the pretty name of the next space]."; ]
					otherwise if new structure is not "":
						say "To the [dirtext], some shadowy figures leave [the pretty name of the current space] and enter [the new structure], moving [dir].";
						[ say "Some shadowy figures appear [from-dir the opposite of dir], entering [the new structure]."; ]
				otherwise:
				  	say "To the [dirtext], some shadowy figures come into view [from-dir the opposite of dir], [the preposition of the next space] [the pretty name of the next space].";
			otherwise if seen at first is true:
				if old structure is not new structure:
					if old structure is not "" and new structure is not "":
						say "To the [dirtext], the shadowy figures move out of sight [to-dir dir], leaving [the old structure] and entering [the new structure].";
					otherwise if old structure is not "":
						say "To the [dirtext], the shadowy figures move out of sight [to-dir dir], leaving [the old structure].";
					otherwise if new structure is not "":
						say "To the [dirtext], the shadowy figures move out of view [to-dir dir], from [the pretty name of the current space], into [the new structure].";
				otherwise:
					say "To the [dirtext], the shadowy figures move out of view [to-dir the dir].";
		
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

After printing the locale description of a room:
	if the group of lizard people is in a room (called current space):
		if the location overlooks the current space:
			let dirtext be the heading from the location to the current space;
			say "[We] [see] the faint trace of shadowy figures off to the [dirtext], [the preposition of the current space] [the pretty name of the current space].";

The Room of Stuff is a room. 
The shadowy figures are a thing in the room of stuff. The description is "Faraji can't make out much detail from this distance. They are humanoid, that much is clear."
Understand "figure/shadow/shadows" as the shadowy figures.

After deciding the scope of the player when the location overlooks the location of the group of lizard people:
	place the shadowy figures in scope;

Rule for reaching inside the room of stuff when the noun is the shadowy figures:
	allow access;

Lizard countdown is a number that varies. Lizard countdown is 0.

After going when the group of lizard people is in the location:
	now the lizard countdown is 1;
	now the current interlocutor is the group of lizard people;
	continue the action;

The lizard teleportation targets is a list of rooms that varies.
The lizard teleportation targets are { Enigma Lake Town Hall, Enigma Park, Main Street 200 block, Main at Solvay, Solvay Road 100 block, Solvay Road leading out of town, Solvay-Road-by-the-lake, Main at Lake, Radio Station WGXC, radio station roof, Lake Street by the gym, Lake Street by the park, First Utilitarian Church of Enigma Lake, Lake at Ridge, lake shore north of the park, workshed, Lake Shore West, Reading Room, Bookstore Basement, Fresnel's Music, Rolle's Department Store }.

To teleport the player:
	let target be the location;
	while the target is the location:
		sort the lizard teleportation targets in random order;
		now target is entry 1 of the lizard teleportation targets;
	let printed newline be false;
	repeat with I running through the list of immobile things carried by the player:
		if the player carries I: [in case an earlier drop caused this item to be dropped as well.]
			if printed newline is false:
				say "[line break]";
				now printed newline is true;
			say "(first dropping [I])[command clarification break]";
			silently try dropping I;
	move the player to the target;
	now the current interlocutor is nothing;

Instead of answering something that when the group of lizard people is in the location:
	if cursed word is "" or cursed word is not the topic understood and the location is the old root cellar:
		say "The lizard people seem to find your words amusing. They hiss, creating a strange cloud of thick vapor. Faraji feels light-headed and disoriented. When the vapor clears, Faraji is somewhere else...";
		teleport the player;
	otherwise if the location is in ELR:
		say "At your word, the lizard people scream and hiss, creating a strange cloud of thick vapor. When the vapor clears, they are gone, but they have left something behind. There is [a shiny astral resonator] on the ground![run paragraph on]";
		lb;
		set pronouns from shiny astral resonator;
		[ say "[italic type][bracket]Yes, run away, you stupid... lizard people![close bracket][roman type][paragraph break]"; ]
		now the group of lizard people is in the old root cellar;
		now the shiny astral resonator is in the location;
		now the lizard countdown is 0;
		now the current interlocutor is nothing;
		now the strange shiny metal object is nowhere;
	otherwise if the location is the old root cellar and the cursed word is the topic understood:
		say "The lizard people laugh uproariously, in their strange hissing way. 'You thought that would work twice? Foolish human!'";
	otherwise:
		say "The lizard people seem to find your words amusing.";

After reading a command:
	if the player's command in lower case is the cursed word in lower case:
		change the text of the player's command to "say [the cursed word]"; 

Before doing something when group of lizard people is in the location:
	decrement the lizard countdown;

Every turn when the lizard countdown <= 0 and the group of lizard people is in the location and the location is in ELR:
	say "The lizard people hiss, creating a strange cloud of thick vapor. Faraji feels light-headed and disoriented. When the vapor clears, they are somewhere else...";
	teleport the player;

Instead of going when the group of lizard people is in the location:
	say "The lizard people block the way.";

Defending is an action applying to nothing. Understand "defend" as defending when the location is the old root cellar. Understand the commands "dodge", "parry", "block", "deflect", "evade", "protect", "shield", "ward", "duck" as "defend".

Defending-this-turn is a truth state that varies.

Last every turn rule: 
	now defending-this-turn is false.

Carry out defending:
	now defending-this-turn is true;

Doris-subject is a subject. It is privately-named. The printed name is "Doris". Understand "doris" as Doris-subject.
Dragon-subject is a subject. It is privately-named. The printed name is "Dragon". Understand "dragon" as Dragon-subject.
plans-subject is a subject. It is privately-named. The printed name is "plans". Understand "plans" as plans-subject.

Table of Quiz Topics (continued)
subject (a thing)	interlocutor (a person)	comment (a text)	reply (a text)
group of lizard people	group of lizard people	"'Who are you?' asks Faraji.'"	"The lizard people hiss as if in laughter. 'We are the first ones and the last ones. You will all learn our names.'"
Doris-subject	group of lizard people	"'Doris sent me,' says Faraji."	"'Doris is a fool,' hisses the lizard person. 'He will not stop us.'"
Enigma-Lake-subject	group of lizard people	"'What are you doing here?' asks Faraji."	"'We are here to stop you. We will have the Dragon,' hisses the lizard person."
senator-savra-subject	group of lizard people	"'What do you know about Senator Savra?' asks Faraji."	"'Savra, our great leader, will have the Dragon,' hisses the lizard person."
Dragon-subject	group of lizard people	"'Who is the Dragon?' asks Faraji."	"'The Greatest of All, corrupted by the surface vermin,' hisses the lizard person."
strange shiny metal object	group of lizard people	"'What is that shiny object?' asks Faraji."	"'It is ours,' hisses the lizard person. 'You will not have it.'"
Larch Faraji	group of lizard people	"'What do you want with me?' asks Faraji."	"'We want nothing with you,' hisses the lizard person. 'You are nothing to us.'"
Daniels	group of lizard people	"'What do you want with Daniels?' asks Faraji."	"'Daniels will take us to the Dragon, or he will die,' hisses the lizard person."
rutabaga	group of lizard people	"'What's with the rutabaga?' asks Faraji."	"'The rutabaga means nothing,' hisses the lizard person. 'We are certainly not afraid of it. No, definitely not. At all. Ever.'"
turnip	group of lizard people	"'I'm going to smack you with a turnip,' says Faraji."	"'Then we will be happy, for turnips are our favorite food,' hisses the lizard person."
potato	group of lizard people	"'I'm going to thwack you with a potato,' says Faraji."	"'We fear no potato,' hisses the lizard person. 'It is a weak weapon.'"
chief-huffton-klimp-subject	group of lizard people	"'What do you know about Chief Huffton Klimp?' asks Faraji."	"'Klimp is a good fr-- um, I mean enemy of the lizard people,' hisses the tall lizard person."
woven basket	group of lizard people	"'What's with the woven basket?' asks Faraji."	"'What?' hisses the lizard person. 'We have no interest in woven baskets.'"
root vegetables	group of lizard people	"'What's with the root vegetables?' asks Faraji."	"'Root vegetables?' hisses the lizard person. 'We have no interest in root vegetables. Least of all rutabagas.'"
plans-subject	group of lizard people	"'What are your plans?' asks Faraji."	"'Our plans are our own,' hisses the lizard person. 'You will not stop us.'"

Instead of pushing the recall button when the group of lizard people is in the location:
	say "It doesn't do anything. The lizard people hiss in amusement.";

Volume 4.75 - Building the Makeshift Astral Resonator

Check plugging the table lamp into something when the table lamp is in the wooden frame:
	say "The table lamp can't be plugged into something while it's in the wooden frame." instead;

[ After inserting the astral lenses into the wooden frame:
	say "Faraji inserts the astral lenses into the wooden frame. They fit perfectly in a long, narrow slot cut into the wood. The frame now holds [the list of things contained by the wooden frame].";
	if the number of things contained by the wooden frame is 3:
		make the makeshift astral resonator; ]

Before inserting the table lamp into the wooden frame:
	if the table lamp is plugged in:
		say "(first unplugging the table lamp)[command clarification break]";
		try unplugging the table lamp;
		if the table lamp is plugged in:
			stop the action;

After inserting the table lamp into the wooden frame:
	maybe condense the extension cord;
	continue the action;

[ After inserting the table lamp into the wooden frame:
	say "Faraji inserts the table lamp into the wooden frame. It fits snugly into a round hole cut into the wood. The frame now holds [the list of things contained by the wooden frame].";
	if the number of things contained by the wooden frame is 3:
		make the makeshift astral resonator;

After inserting the tuning fork into the wooden frame:
	say "Faraji inserts the tuning fork into the wooden frame. It fits into a small, round hole cut into the wood. The frame now holds [the list of things contained by the wooden frame].";
	if the number of things contained by the wooden frame is 3:
		make the makeshift astral resonator; ]

Instead of attacking the wooden frame with the Rod of Hezekiah:
	if the number of entries in the list of things contained by the wooden frame is 3:
		if the astral lenses are in the wooden frame and the table lamp is in the wooden frame and the tuning fork is in the wooden frame:
			if the light bulb is not in the light socket:
				say "Faraji taps the wooden frame with the Rod of Hezekiah. The frame glows for a moment, then fades. The frame [if the wooden frame is open]and its contents [end if]are unchanged.";
				stop;
			say "Faraji taps the wooden frame with the Rod of Hezekiah. The frame glows with a bright light. Faraji is momentarily blinded. When they can see again, the frame and its contents have fused into a [makeshift astral resonator].";
			make the makeshift astral resonator;
			stop;
	say "Faraji taps the wooden frame with the Rod of Hezekiah. Nothing happens.";
	
Does the player mean attacking the wooden frame with the dowsing rod:
	it is very unlikely.

Understand "tap [something]" as attacking.

Instead of attacking the wooden frame when the Rod of Hezekiah is touchable:
	try attacking the wooden frame with the Rod of Hezekiah;

To make the makeshift astral resonator:
	if the player encloses the wooden frame:
		now the player carries the makeshift astral resonator;
	otherwise:
		now the makeshift astral resonator is in the location;
	now the wooden frame is nowhere;


[ Check inserting something into the wooden frame:
	if the wooden frame is in the special frame room:
		say "The wooden frame is gone!" instead;
	if the player does not enclose the wooden frame:
		say "Faraji needs to be holding the wooden frame to insert anything into it." instead;
	if the noun is not the astral lenses and the noun is not the table lamp and the noun is not the tuning fork:
		say "That doesn't fit into the wooden frame." instead; ]


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

test steeple with "gonear church/take cord/plug it into outlet/u/purloin makeshift astral resonator/take telescope/put resonator in tripod/plug resonator into cord/look".

test hathgar with "gonear kitchen/s/gonear lake street by the park/e".

test shiny with "gonear radio roof/purloin shiny object/put object on platform/purloin cutters/cut chain with cutters/open cabinet/flip switch".
test rusty with "purloin astral secrets/read it/gonear lunch counter/purloin clean battery/tie wires to battery/u/purloin rusty astral resonator/put rusty astral resonator in threaded socket".
test makeshift with "gonear pulpit/purloin makeshift astral resonator/purloin cord/plug resonator into cord/plug cord into wall/e/move tapestry/flip switch/w/u/take telescope/put resonator in tripod".

test cave with "test shiny/test rusty/test makeshift/gonear circular chamber".

test build with "purloin tuning fork/purloin spotlight/lens/purloin wooden frame/insert tuning fork into frame/insert spotlight into frame/insert astral lenses into frame".

test power with "gonear pulpit/purloin makeshift astral resonator/purloin cord/e/move tapestry/flip switch/w";

setting the resonators is an action out of world. Understand "set the resonators" as setting the resonators.

Carry out setting the resonators:
	now the platform supports the shiny astral resonator;
	now the power switch is switched on;
	now the rusty astral resonator is in the threaded socket;
	now the clean battery is hooked up;
	now the makeshift astral resonator is plugged into the cord;
	now the extension cord is plugged into the electrical outlet;
	now the circuit breaker is switched on;
	now the content of the tripod is the makeshift astral resonator;


setting most resonators is an action out of world. Understand "set most resonators" as setting most resonators.

Carry out setting most resonators:
	now the platform supports the shiny astral resonator;
	now the power switch is switched on;
	now the rusty astral resonator is in the threaded socket;
	now the clean battery is hooked up;
	now the makeshift astral resonator is plugged into the cord;
	now the extension cord is plugged into the electrical outlet;
	now the circuit breaker is switched off;
	now the content of the tripod is the makeshift astral resonator;

opening the portal is an action applying to nothing. Understand "cheat open portal" as opening the portal.

Carry out opening the portal:
	open the portal;

coffeeing is an action out of world. Understand "cheat starbucks" as coffeeing.

Carry out coffeeing:
	now the player is carrying the cup of coffee;
	now the hotness of the cup of coffee is 30;
	say "bing! you have coffee!";

query-naming is an action applying to nothing. Understand "is hathgar named" as query-naming.
Carry out query-naming:
	say whether or not the doll-fly is named;

banishing is an action out of world. Understand "cheat banish" as banishing.

Carry out banishing:
	now the shiny astral resonator is carried by the player;
	now the group of lizard people is nowhere;

Before answering the doll-fly that when DEBUG is true:
	say "The doll-fly has been banished.";
	now the doll-fly is nowhere;
	stop the action;

framing is an action applying to nothing. Understand "cheat frame" as framing.

Carry out framing:
	now the player is carrying the wooden frame;
	now the player is carrying the extension cord;
	now the player is carrying the table lamp;
	now the player is carrying the tuning fork;
	now the player is carrying the astral lenses;
	now the light bulb is in the light socket;
	now the player is in First Utilitarian Church of Enigma Lake;
	now the player carries the Rod of Hezekiah;

lizarding is an action applying to nothing. Understand "cheat lizard" as lizarding.

Carry out lizarding:
	now the group of lizard people is in the location;

endgaming is an action applying to nothing. Understand "cheat endgame" as endgaming.

Carry out endgaming:
	now the lizard people are in the old root cellar;
	now player carries the recall button;
	now the strange shiny metal object is nowhere;
	now the player carries the Ecology of Root Vegetables;
	open the portal;
	now the player is in the circular chamber;
	now the cursed word is "banish";

booking is an action applying to nothing. Understand "cheat book" as booking.

Carry out booking:
	now the player carries the book of Utilitarianism;

hurting is an action applying to nothing. Understand "cheat hurt" as hurting.

Carry out hurting:
	hit faraji;					

eastering is an action applying to nothing. Understand "cheat easter" as eastering.

Carry out eastering:
	now the power switch is switched on;
	now the player is in the broadcast booth;

Enigma Lake ends here.
