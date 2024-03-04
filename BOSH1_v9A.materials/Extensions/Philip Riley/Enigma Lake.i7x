Enigma Lake by Philip Riley begins here.

Include Building Facades by Philip Riley.
Include Scheduled People by Philip Riley.
Include Secret Doors by Gavin Lambert.

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

the Enigma Lake town hall is a leavable room. It is in ELR. It is unleavable.
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
	
Park facade is a building facade. It is in Solvay Road leading out of town, Lake shore north of the park, and Lake Street by the park. It is privately-named. The printed name is "Enigma Park". Understand "enigma/park" as Park facade. "A shadowy clump of trees marks the edge of Enigma Park."
	It is enterable from Solvay Road leading out of town.
	It is enterable from Lake shore north of the park.
	It is enterable from Lake Street by the park.
	It fronts Enigma Park.

Book 3 - Main Street 200 Block

the Main Street 200 block is south of Enigma Lake Town Hall. It is in ELR. It is outdoors. The printed name is "200 block of Main Street". The preposition is "on the".

The description is "The street runs east and west from here. South is the edifice of Rolle's Department Store. North is the town hall."

Rolle's facade is a building facade in Main Street 200 block. It is privately-named. The printed name is "Rolle's Department Store". Understand "rolle's/rolle/department/store" as Rolle's facade. "Once, town department stores like this were a constant of American life before they were gobbled up by the big box stores."
	Rolle's facade fronts Rolle's Department Store.
	It is enterable from Main Street 200 Block.

Book 4 - Main at Solvay

Main at Solvay is west of Main Street 200 Block. It is in ELR. It is outdoors. The printed name is "Main and Solvay". The preposition is "on the corner of".

The description is "Main Street runs east from here, while Solvay Road heads north. South of here, Henry's Hot Skillet promises all of the comforts of the mid-twentieth-century diner. A bookstore named The Reading Room lies to the west, while Fresnel's Music is southwest."

Henry's facade is a building facade. It is in Main at Solvay. It is privately-named. The printed name is "Henry's Hot Skillet".  Understand "Henry/Henry's/Hot/Skillet/diner/restaurant" as Henry's facade. "Henry's, the local diner, is closed, the neon skillet dark and motionless."
	Henry's facade fronts Henry's Hot Skillet.
	It is enterable from Main at Solvay.

Reading-Room-Facade is a building facade. It is in Main at Solvay. It is privately-named. The printed name is "Reading Room". Understand "Reading/Room/bookstore/store" as Reading-room-facade. "The store window is dark. You can see rows and rows of books inside."
	Reading-Room-Facade fronts the Reading Room.
	It is enterable from Main at Solvay.

Fresnel Facade is a building facade. It is in Main at Solvay. It is privately-named. The printed name is "Fresnel's Music". Understand "fresnel/fresnel's/music/store" as Fresnel Facade. "A display of brass instruments dominates the front window." 
	Fresnel Facade fronts Fresnel's Music.
	It is enterable from Main at Solvay.

Book 6 - Solvay Road 100 block

Solvay Road 100 block is north of Main at Solvay. It is in ELR. It is outdoors. The preposition is "walking on".

The description is "Solvay heads north and south. To the west is the fire station, while to the east is the side of the town hall."

The fire facade is a building facade. It is in Solvay Road 100 block. It is privately-named. The printed name is "fire station". Understand "fire/station/house" as fire facade. "The sign over the big door says 'Hook and Ladder Company #1'."
	Instead of entering the fire facade:
		say "The garage door is locked up tight." instead;

Book 7 - Solvay Road leading out of town

Solvay Road leading out of town is north of Solvay Road 100 block and west of Enigma Park. It is in ELR. It is outdoors. The preposition is "walking on".

The description is "Solvay Road bends here, leading northwest out of town and south back into town. East is the park, and to the west is Horton House."

Horton facade is a building facade. It is in Solvay Road leading out of town. It is privately-named. The printed name is "Horton House". Understand "Horton/House/Home" as Horton facade. "Horton House is an old colonial-period house. The sign by the door marks it as the oldest remaining house in the Enigma Lake area. Its builder, Jeremiah Horton, was purported to be a supernaturalist of some renown."
	Horton facade fronts Horton Family House.
	It is enterable from Solvay Road leading out of town.

Book 8 - Solvay Road by the lake

Solvay-Road-by-the-lake is northwest of Solvay Road leading out of town. It is in ELR. It is outdoors. The preposition is "walking on". It is privately-named. The printed name is "Solvay Road by the lake". Understand "Solvay/Road/by/the/lake" as Solvay-Road-by-the-lake.

The description is "Solvay Road runs by the lake shore here. It continues out of town to the northwest, while to the southeast it leads back into town. A dirty shack stands opposite the lake to the west. A path along the shore leads to the east."

Instead of going nowhere from the Solvay-Road-by-the-lake:
	let dir be noun part of current action;
	if dir is northwest:
		say "That would take [us] too far out of town.";
	otherwise: 
		continue the action;
	stop the action;

The shack facade is a building facade. It is in Solvay-Road-by-the-lake. It is privately-named. The printed name is "shack". Understand "shack" as the shack facade. "A dirty shack stands opposite the lake."
	The shack facade fronts the dirty shack.
	It is enterable from Solvay-Road-by-the-lake.

Book 9 - Shack

a dirty shack is a leavable room. It has egress east. It is west of Solvay-Road-by-the-lake. It is always-indefinite. It is in ELR. "Someone lives here, though not at all luxuriously. Plates are stacked up by the sink, and there's a pile of used coffee cups in the corner. The whole place stinks of cat."

Some plates are scenery in the dirty shack. "Dirty and precariously stacked."

The used coffee cups are scenery in the dirty shack. "A pile of used paper coffee cups. This guy must love his coffee."

A mangy cat is in a dirty shack. The description is "A mangy, old, stripey orange cat."
Rule for writing a paragraph about the mangy cat:
	say "[one of]A mangy orange cat peeks out from under the bed[or]A stripey orange cat sits in a corner of the room, grooming itself[or]An orange cat stretches out on the bed[purely at random].";
	
Petting is an action applying to one thing. Understand "pet [something]" as petting. Understand "pat [something]" as petting.

Check petting something:
	say "That's just silly." instead;
	
Check petting a person:
	say "[The noun] probably wouldn't appreciate that." instead;

Check petting the mangy cat:
	say "The cat purrs and leans into [our] hand." instead;

Hutz is a man in dirty shack. Hutz is privately-named. "[A Hutz] is reclining on a narrow bed." The description is "[A Hutz] is more or less a skeleton in overalls." Hutz is adaptively-named and anonymous and not proper-named. 
	Understand "bony/old/man" as Hutz. 
	Understand "town/groundskeeper" as Hutz when Hutz is not anonymous.
	Understand "Hutz" as Hutz when Hutz is met.
	
Rule for writing a paragraph about Hutz:
	if the dirty shack is not visited:
		say "[A Hutz] lies on a bed in a corner of the shack. He stirs sleepily and says 'Ah, there you are, there you are. Knew you'd be around eventually.'"

The narrow bed is scenery in the dirty shack. "Clean enough, but awfully narrow, it holds [if Hutz is known]the bony figure of Hutz[otherwise][Hutz][end if], the town groundskeeper."

The sledgehammer is in the dirty shack. Understand "hammer" as sledgehammer.

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
	The reply is "'I found something. Something that might help you. It's in the supply shed. In the cabinet. You'll need the key.' At this, Hutz pulls out a rusty key ring, pulls off an iron key and hands it to you."
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

The radio station facade is a building facade. It is in Main at Lake. It is privately-named. The printed name is "WGXC 'Galaxy' Radio". Understand "WGXC/Galaxy/Radio/station" as radio station facade. "The sign over the door says 'WGXC 'Galaxy' Radio'."
	The radio station facade fronts Radio Station WGXC.
	It is enterable from Main at Lake.

Book 11 - WGXC "Galaxy" Radio

Radio Station WGXC is a leavable room. It has egress northwest. It is southeast of Main at Lake. It is in ELR. It is indoors. "This is the town radio station. South is the entrance to the broadcast booth. A staircase runs upwards, presumably to the roof and the broadcast antenna."

Book 12 - Radio Station Roof

The radio station roof is a leavable room. It is above Radio Station WGXC. It has egress down. It is in ELR. "[We] can see the obelisk in the park clearly from here. The broadcast tower rises many feet above [us]." The preposition is "on"

The broadcast tower is scenery in the radio station roof. "A tall, steel lattice structure, rising prominently above the building. This kind of tower was designed to maximize the height for better signal transmission and reception in the era before widespread cable and satellite technology."

Instead of climbing up the broadcast tower:
	say "[We] [are] afraid of heights.";
	
Instead of going up when the location is the radio station roof:
	say "[We] [are] afraid of heights.";
	
Book 13 - Broadcast Booth

The broadcast booth is south of Radio Station WGXC. It is in ELR. "The broadcast booth is a small room with a window looking out into the rest of the station. A microphone is set up on a stand, and a soundboard is set into the wall."

The microphone is scenery in the broadcast booth. "A microphone is set up on a stand."

The soundboard is scenery in the broadcast booth. "The soundboard is a complex piece of equipment, with many sliders and buttons. It's not clear how it works."

Book 14 - Lake Street by the gym

Lake Street by the gym is north of Main at Lake. It is in ELR. It is outdoors. The preposition is "walking on".
The description is "Lake Street runs north and south from here. To the east is the public gymnasium, while to the west is the town hall, which is not enterable from here."

The gymnasium facade is a building facade. It is in Lake Street by the gym. It is privately-named. The printed name is "public gymnasium". Understand "gymnasium/gym" as gymnasium facade. "The sign over the door says 'Enigma Lake Gymnasium'."
	The gymnasium facade fronts Enigma Lake Gymnasium.
	It is enterable from Lake Street by the gym.

Instead of entering the gymnasium facade:
	say "The door is locked.";

Book 15 - Lake Street by the Park

Lake Street by the park is north of Lake Street by the gym and east of Enigma Park. It is in ELR. It is outdoors. The preposition is "walking on". The description is "Lake Street runs north and south from here. To the west is the park, while to the east is the First Utilitarian Church of Enigma Lake."

The church facade is a building facade. It is in Lake Street by the park. It is privately-named. The printed name is "First Utilitarian Church of Enigma Lake". Understand "church" as church facade. "The church is a dignified example of Gothic Revival architecture, its façade dominated by a steeply pitched roof and a slender steeple piercing the sky."
	The church facade fronts First Utilitarian Church of Enigma Lake.
	It is enterable from Lake Street by the park.

Book 16 - First Utilitarian Church of Enigma Lake

First Utilitarian Church of Enigma Lake is a leavable room. It has egress west. It is east of Lake Street by the Park. It is in ELR. "The interior is dimly lit by the stained glass windows, and the pews are arranged in neat rows facing the pulpit. A standard electrical outlet is set into the wall."

The stained glass windows are scenery in First Utilitarian Church of Enigma Lake. "As is traditional in Utilitarian churches, the windows are plain glass, allowing the maximum amount of light to enter the building."

The pews are scenery in First Utilitarian Church of Enigma Lake. "The pews are arranged in neat rows, facing the pulpit."

The pulpit is scenery in First Utilitarian Church of Enigma Lake. "The pulpit is a simple wooden structure with a lectern."

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
		say "The text is the 'Book of Utilitarianism'. [We] [open] to a page at random and [read] the text:[paragraph break][one of]However, the Lord said to the lizard people, 'I am the Lord of the humans, and I -- oh, and the aliens -- and I will smite you with great vengeance and furious anger and the like.'[or]By the by, Gorm came upon the town of Armagast, and he saw that it was good, and he said, 'I shall build a church here.' And the Lord said, 'No, don't do that, it's a bad idea.' And Gorm said, 'But Lord, I have already started.' And the Lord said, 'Well, okay, but don't say I didn't warn you.'[or]But Gorm's wife was treacherous, and she lay with lizard people, and she bore a son, and the Lord said, 'I'm not going to smite you, but I'm not going to be happy about it.'[or]When Gorm learned of his wife's doings, he rent his garments and wept, and the Lord said, 'Keep it together, man.'[or]And the land was filled with the iniquities of the lizard people, and the Lord said, 'I'm not going to clean that up.'[or]The host of the lizard people sacked the now rather prosperous town of Armagast, and the Lord said, 'I told you so.'[or]And the Lord said, ' 'Tis a far, far better thing that I do, than I have ever done; 'tis a far, far better rest that I go to than I have ever known.' And the lizard people said, 'That's from A Tale of Two Cities.'[or]And the Lord was attending his weekly reading circle, when he had an idea. 'I shall make a world,' he said, 'and I shall call it Earth.' And the lizard people said, 'That's a terrible name.'[or]And lo, the lizard people rebelled against the Lord, and the Lord said, 'I'm not going to put up with that.'[or]And in the town of Gabblehouse was born an infant to a woman named Gorma, and the Lord said, 'That's a terrible name.'[or]And the Lord said, 'I shall rain down upon thee with great vengeance and furious anger, and the lizard people said, 'We've heard that before.'[then at random]"

The electrical outlet is scenery in First Utilitarian Church of Enigma Lake. "A standard electrical outlet, set into the wall[if the extension cord is plugged and the player encloses the extension cord]. The extension cord is plugged into it[otherwise if the extension cord is plugged]. An extension cord is plugged into it[end if]." 


Book 17 - Extension Cord

The extension cord is a thing. The description is "A long, heavy-duty extension cord[if the extension cord is plugged and the location is First Utilitarian Church of Enigma Lake], plugged into the wall outlet[otherwise if the extension cord is plugged and the location is the steeple]. It trails down through the trapdoor[otherwise if the extension cord is plugged and the location is the vestry]. It trails through the door into the church[end if]." 

The extension cord can be plugged or unplugged. The extension cord is unplugged.

Plugging in is an action applying to two things. Understand "plug [something] in" as plugging in.
Understand "plug in [something]" as plugging in. Understand "plug [something] into [something]" as plugging in. Understand "plug in [something] to [something]" as plugging in.

Check plugging in the extension cord when the extension cord is plugged:
	say "The extension cord is already plugged in." instead;

Check plugging in the extension cord when the second noun is not the electrical outlet:
	say "That's not something you can plug the extension cord into." instead;

Carry out plugging in:
	now the extension cord is plugged;
	say "The extension cord is now plugged in.";

Rule for supplying a missing second noun while plugging in:
	if the noun is the extension cord and the location of the noun is First Utilitarian Church of Enigma Lake:
		now the second noun is the electrical outlet;
	otherwise:
		say "You need to specify what to plug it into." instead;

Check going west when the extension cord is plugged and player encloses the extension cord and the location is First Utilitarian Church of Enigma Lake:
	say "You can't leave the church carrying the extension cord when it's plugged in." instead;

Rule for writing a paragraph about the extension cord when the extension cord is plugged:
	if the location is First Utilitarian Church of Enigma Lake and the player encloses the extension cord:
		say "The extension cord is plugged into the wall outlet.";
	otherwise if the location is First Utilitarian Church of Enigma Lake:
		say "An extension cord lies on the floor, plugged into the wall outlet.";
	otherwise if the location is the steeple:
		say "The end of an extension cord lies here, from where it trails down through the trapdoor.";
	otherwise if the location is the vestry:
		say "The end of an extension cord lies here, from where it trails through the door into the church.";

After printing the locale description of the vestry:
	if the extension cord is plugged and the player encloses the extension cord:
		say "The extension cord runs from your hand, through the door, and into the church.";

After printing the locale description of the steeple:
	if the extension cord is plugged and the player encloses the extension cord:
		say "The extension cord runs from your hand, through the trapdoor, and into the church.";

After printing the locale description of the First Utilitarian Church of Enigma Lake:
	if the extension cord is plugged:
		if the player encloses the extension cord:
			say "The extension cord is plugged into the wall outlet.";
		otherwise if the extension cord is in the vestry:
			say "An extension cord is plugged into the wall outlet, from where it trails east through the door into the vestry.";
		otherwise if the extension cord is in the steeple:
			say "An extension cord is plugged into the wall outlet, from where it trails up through the trapdoor.";
	
The plug-end-of-the-extension-cord is a thing. It is undescribed. It is privately-named. Understand "extension/cord/plug" as the plug-end-of-the-extension-cord. The description is "A long, heavy-duty extension cord[if the extension cord is plugged and the location is First Utilitarian Church of Enigma Lake], plugged into the wall outlet[end if]." 

The extension cord is in the First Utilitarian Church of Enigma Lake.

After plugging in the extension cord:
	now the plug-end-of-the-extension-cord is in the location of the second noun;

Section - Unplugging the extension cord

Unplugging is an action applying to one thing. Understand "unplug [something]" as unplugging.

To unplug is a verb. To roll is a verb. To reel is a verb.

Check unplugging the extension cord when the player encloses the extension cord and the extension cord is unplugged:
	say "The extension cord is not plugged in." instead;

Check unplugging the extension cord when the player encloses the extension cord and the extension cord is plugged and the location is not First Utilitarian Church of Enigma Lake:
	say "This end of the extension coord is not plugged into anything." instead;

Carry out unplugging the plug-end-of-the-extension-cord:
	now the extension cord is unplugged;
	if the player encloses the extension cord:
		say "You unplug the extension cord.";
	otherwise:
		say "[We] [unplug] the extension cord, [reel] in the far end, and [roll] it up neatly.";
		now the player carries the extension cord;
		stop the action;

Carry out unplugging the extension cord:
	now the extension cord is unplugged;
	if the player encloses the extension cord:
		say "You unplug the extension cord.";
	otherwise:
		say "[We] [unplug] the extension cord, [reel] in the far end, and [roll] it up neatly.";
		now the player carries the extension cord;
		stop the action;

After unplugging the extension cord:
	now the plug-end-of-the-extension-cord is nowhere;

Section - Taking the extension cord

Check taking the extension cord when the extension cord is plugged and the location is First Utilitarian Church of Enigma Lake and the player does not enclose the extension cord:
	try unplugging the extension cord instead; 

Check taking the plug-end-of-the-extension-cord when the extension cord is plugged and the location of the extension cord is not First Utilitarian Church of Enigma Lake:
	silently try unplugging the plug-end-of-the-extension-cord instead;

Book 17 - Vestry

The vestry is a leavable room. It is east of First Utilitarian Church. It has egress west. It is in ELR. "It's a small room, with a door leading to the church proper to the west. A lovely tapestry hangs on the wall[if the tapestry is pushed aside]. It is pushed aside, revealing a circuit breaker box[end if]."

The tapestry is scenery in the vestry. "An intricate tapestry, depicting a scene of a medieval village. It's a bit out of place in a church, but it's lovely." The tapestry can be pushed aside. 

Instead of pushing the tapestry when the tapestry is not pushed aside:
	say "[We] [push] the tapestry aside, revealing a circuit breaker box mounted on the wall.";
	now the tapestry is pushed aside;
	now the circuit breaker is in the vestry;

Instead of pushing the tapestry when the tapestry is pushed aside:
	say "The tapestry is already pushed aside. No need to push it back.";

Instead of looking behind the tapestry:
	try pushing the tapestry;

The circuit breaker is a scenery device. "A circuit breaker box is mounted on the wall."

Book 18 - Steeple

the steeple is above the First Utilitarian Church of Enigma Lake. It is in ELR. 


Book 19 - Lake at Ridge

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

Book 20 - Lake Shore north of the park

the lake shore north of the park is west of Lake at Ridge and north of Enigma Park. It is in ELR. It is outdoors. The preposition is "on". "A sliver of moon hangs over the lake, casting a silvery light over the water. The park is to the south, while the lake stretches off to the north. A workshed is to the southeast."

The workshed-facade is a building facade. It is in Lake Shore North of the Park. It is privately-named. The printed name is "workshed". Understand "workshed/shed" as workshed-facade. "The workshed is a small, weathered building, with a single door and no windows."
	The workshed-facade fronts the workshed.
	It is enterable from Lake Shore North of the Park.

Book 21 - Workshed

the workshed is a leavable room. It has egress northwest. It is in ELR. "It is a small, weathered building, with a single door and no windows, with a creaky wooden floor. The interior is dimly lit by a single light bulb hanging from the ceiling. [equipment cabinet state] cabinet is in the corner. [rusty metal door state], rusty metal door leads out of the shed. [if the trapdoor is not obscured]A trapdoor is in the floor, [trapdoor state].[end if]"

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

The equipment cabinet is a closed locked openable lockable scenery container in the workshed.
It has matching key the iron key.

The rusty astral resonator is in the equipment cabinet.

The trapdoor is a scenery door. It is undescribed. It is below workshed and above the hidden cave.
The trapdoor can be obscured. The trapdoor is obscured.
Instead of doing something to the trapdoor when the trapdoor is obscured:
	say "[text of parser error internal rule response (E)][line break]";

Book 22 - Hidden cave

a hidden cave is a room. It is in ELR. It is always-indefinite.

Book 23 - Portal room

the portal cave is south of hidden cave. It is in ELR. 

Book 24 - Lake shore west

the Lake Shore West is west of Lake Shore North of the Park and north of Solvay Road Leading Out Of Town. It is east of Solvay-Road-by-the-lake. It is in ELR. It is outdoors. The printed name is "west end of the town's lake shore". The preposition is "at".

Book 25 - Horton Family House

The Horton House door is a closed openable locked lockable scenery door. It is west of Solvay Road Leading Out Of Town and east of Horton Family House. The Horton House door has matching key the old copper key.

Horton Family House is a room. It is in ELR.

Book 26 - Astral Tunnel

Fire Station 1 is forthsouth of Horton Family House. It is in ELR

Book 27 - Horton Graveyard

the Horton graveyard is west of Horton Family House. It is in ELR.

Some gravestones are scenery in the Horton graveyard.

Horton-back-facade is a building facade. It is in Horton Graveyard. It is privately-named. The printed name is "Horton Family House". Understand "Horton/House/Home" as Horton-back-facade. "Horton House is an old colonial-period house. [We] [are] in its backyard." 
	Horton-back-facade fronts Horton Family House.
	It is enterable from Horton Graveyard. 

Book 28 - Fire Station 1

The garage door is a closed locked lockable openable scenery door. It is west of Solvay Road 100 block and east of the Fire Station 1. Understand "big/red/door" as garage door. The description is "A big red door, with a sign reading 'Fire Station 1'."

Fire Station 1 is in ELR. The printed name is "Hook and Ladder Company #1". 

The ladder is in the Fire Station 1.

The spotlight is in the Fire Station 1. The description is "A large, powerful spotlight, designed to be mounted on a fire truck."

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

The description is "A book with a plain cover, titled 'Astral Secrets'. The author is listed as Hezekiah Horton.[paragraph break]Flipping through the book, [we] [find] a dog-eared page. The page shows a diagram of a large, metallic, cylindrical object, which is labeled 'astral resonator'. The text describes the resonator as a device for opening a portal through the astral plane. It goes on to describe the components of the device: a source of resonance, a source of light, and an 'astral lens', which it declines to describe further. The text also mentions that the resonator is powered by a source of electricity." 


Book 30 - Reading Room Basement

The Bookstore Basement is below the Reading Room. It is in ELR. The description is "The basement is dark and musty, with a number of shelves and boxes of books. The walls are made of old, crumbling brick. There is a faint breeze. A narrow staircase leads up[if the bricked-up-hole is not obscured]. There is a ragged hole in the north wall, leading into a dark space[end if]."

A bricked-up-hole is a secret door. It is north of the Bookstore Basement and south of sewer tunnel 1. It is privately-named. The printed name is "bricked-up hole in the wall'". Understand "hole in/-- the/-- wall/--" as bricked-up-hole. It is open and not openable. "A ragged hole in the north wall, leading into a dark space." 

a door appearance rule for the bricked-up-hole (this is the bricked-up-hole appearance rule):
	if the bricked-up-hole is revealed:
		rule succeeds with result true;
	rule succeeds with result false;

To break is a verb.

Attacking it with is an action applying to two things. Understand "attack [something] with something" as attacking it with. 

Check attacking something with something when the second noun is not the sledgehammer:
	say "Futile.";

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

Book 34 - Henry's Roof

Henry's Roof is above Henry's Hot Skillet. It is in ELR. The description is "From here one can see much of the town, including a clear view of the obelisk in Enigma Park. There is a large TV aerial jutting from the roof here." The preposition is "on".

The TV aerial antenna is scenery in Henry's Roof. "A large, metallic rooftop antenna, characterized by its array of horizontal and vertical rods designed to capture VHF (very high frequency) broadcasts."

Obelisk-from-Henry's-Roof is privately-named scenery in Henry's Roof. The printed name is "the Enigma Park obelisk". Understand "obelisk/enigma/park" as Obelisk-from-Henry's-Roof. "There's a clear line of sight from here to the tip of the obelisk."

Book 35 - Rolle's Department Store

Rolle's Department Store is south of Main Street 200 Block. It is in ELR.
The description is "Once, town department stores like this were a constant of American life. Sadly, this one is empty of everything save a number of sale posters and its gleaming floor."
Main Street 200 Block is outside from Rolle's Department Store.

The gleaming floor is scenery in Rolle's Department Store. "Someone has polished it spotless, despite the looming destruction of the store. That's dedication."

Does the player mean doing something to the gleaming floor: 
	It is very likely;
	
The sale posters are scenery in Rolle's Department Store. "'50% off everything in the store!'"

The floor waxer is a fixed in place thing in Rolle's Department Store. "A floor waxer sits in the center of the gleaming floor." The description is "This is a bulky, heavy-duty machine with a large, round brush head, designed for durability and the ability to polish vast floor areas to a high shine."



Book 36 - Public Gymnasium

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

Book 37 - Gym Basement

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
		
Volume 5 - Polish


[Table of Floors (continued)
locale (a room)	has floor (a truth state)	floor description (a text)	touch description (a text)
strip mall parking lot south	--	"Black asphalt."
strip mall parking lot north	--	"Black asphalt."
li'l nectarine convenience store	--	"Grungy black and white tile."
Dave's pawn shop	--	"Dingy stained industrial carpet."]

Enigma Lake ends here.
