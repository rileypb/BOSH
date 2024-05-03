Swamp Park by Philip Riley begins here.

Use authorial modesty.

Include Snarky Remarks by Philip Riley.

Include Essentials by Philip Riley.

Include New Light by Philip Riley.    

Include Door Varieties by Philip Riley.

Include Exit Lister by Eric Eve.

Include BOSH Polish by Philip Riley.

Include Tutorial by Philip Riley.

Book 1 - Outside HQ 

Swamp Park is a region. 

Chapter 1 - Strip Mall Parking Lot South

The Strip Mall Parking Lot South is a room. The printed name is "south end of the strip mall parking lot". It is east of the front office. It is in Swamp Park. It is outdoors.  The preposition is "at". front office is inside from the Strip Mall Parking Lot South. Understand "end/of/the" as the Strip Mall Parking Lot South.
The description of the Strip Mall Parking Lot South is "From here one can see just how humble BOSH's state has become: the office is to the west, between a pawn shop (to the southwest) and a run-down laundromat (to the northwest) and across from an automatic car wash. To the south is a swampy area separating the lot from the interstate. The parking lot continues north."
[ The snarky remark of The Strip Mall Parking Lot South is "This is nice. At least we don't have to worry about anyone finding us." ]
The tutorial message of the Strip Mall Parking Lot South is "Enter HELP for instructions"

Carry out helping for the first time:
	now the tutorial message of Strip Mall Parking Lot South is "";

[Index map with Strip Mall Parking Lot South mapped east of front office.]

The Office_ is an unenterable room in Parking Lot South. The printed name is "office". "[We] [gaze] stoically at the sad little storefront that is the new BOSH office. The sign from the previous tenant is still up: 'Angel[']s Department Store'[if margaret is in the Front Office]. Through the front window can be seen Margaret, in her usual manic work mode[end if].".
The snarky remark of the Office_ is "I'm sure the Bureau will be back on its feet in no time."
The Office_ is an edifice.

Instead of entering the office_:
	try going west;
	
Margaret at a distance is a woman. She is part of the Office_.  She is privately-named. The printed name is "Margaret". The description is "Even from here one can sense [Margaret]'s irrepressible energy." Understand "Margaret/Chao" as Margaret at a distance when the location is Parking Lot South. She is female. She is not neuter.
The snarky remark of Margaret at a distance is "Better get in there and slow her down before she explodes."
Margaret at a distance is obstructed.

Instead of doing something to Margaret at a distance when Margaret is not in the front office:
	say "You can't see Margaret right now." instead;

The office window is a part of the Office_. It is privately-named. The printed name is "office window". Understand "front/office/-- window/windows" as the office window. The description is "[if margaret is in the front office]Through the window, [we] can see Margaret, in her usual manic work mode[else]No one is visible inside[end if]."

The office window is unsnarkable.
	
The department store sign is a part of the office_. Understand "angel/angel's/wings", "BOSH sign" as the department store sign. The description is "It's adorned with a pair of angel's wings."
The snarky remark of the department store sign is "What I wouldn't give for a pair of wings right now."
The department store sign is far away.
	 
Understand "office/bosh/hq/headquarters/bureau/storefront", "new office" as the office_.

An automobile is a kind of thing.

Driving is an action applying to one thing. Understand "drive [something]" as driving.
Check driving something that is not a car:
	say "You can't drive that." instead;

Car 1 is an automobile in Strip Mall Parking Lot South. It is privately-named. The printed name is "[our] Hyundai". 
"[Our] bright red Hyundai Accent is parked nearby[if the Hyundai hood is open]. The hood is open[end if]."
Understand "red", "car", "hyundai", "accent", "automobile", "auto", "my car", "faraji's car", "larch's car" as car 1. It is fixed in place. The description is "An old bright red Hyundai Accent, it's been [our] personal means of transportation for years. And since the Bureau lost its fleet, it's [our] work car too.".
The snarky remark of Car 1 is "They asked me if I wanted the flashy car, but I said no -- it just didn't fit my downscale image."
Car 1 is an edifice.

Instead of entering or opening or driving car 1:
	say "[Agent]'s job is here for now.";

To say battery state:
	if the clean battery is not in the Hyundai hood:
		say ", and the battery is missing";

The Hyundai hood is a part of Car 1. It is an openable closed container. The description is "The hood is [if the Hyundai hood is closed]closed[otherwise]open[battery state][end if]."

The Hyundai hood is unsnarkable.

Does the player mean driving Car 1:
	it is very likely;

The clean car battery is in the Hyundai hood. The description is "The battery is clean and new[if the clean battery is hooked up]. Two wires are attached to the terminals[end if]."
The snarky remark of the clean battery is "Just got it replaced last week."

This is the examine hood contents rule:
	if the noun is a container:
		if the noun is open or the noun is transparent:
			if something described which is not scenery is in the noun and something which
				is not the player is in the noun:
				if the noun is the Hyundai hood or the noun is the truck hood:
					say "Under [the noun] ";
				otherwise:	
					say "In [the noun] " (A);
				list the contents of the noun, as a sentence, tersely, not listing
					concealed items, prefacing with is/are;
				say ".";
				now examine text printed is true;
			otherwise if examine text printed is false:
				if the player is in the noun:
					make no decision;
				say "[The noun] [are] empty." (B);
				now examine text printed is true;

The examine hood contents rule is listed instead of the examine containers rule in the carry out examining rulebook.

Car 2 is an automobile. It is privately-named. The printed name is "[Chief Huffton Klimp]'s Porsche". Understand "car/Klimp's/Porsche/automobile/auto" as car 2. The initial appearance of car 2 is "Klimp's Porsche takes up two spots." It is fixed in place. The description is "Klimp drives a sleek 2017 Porsche 911 Turbo Cabriolet."
The snarky remark of Car 2 is "I guess the Bureau's not as broke as they say."
Car 2 is an edifice.

Instead of entering or opening or driving car 2:
	say "That isn't [Agent]'s car.";

The Porsche hood is a part of Car 2. It is an openable closed container. The description is "The hood is closed."

The Porsche hood is unsnarkable.

Instead of opening the Porsche hood:
	say "Faraji would rather not mess with Klimp's car.";

	
To make is a verb.

Check pushing an automobile: 
	say "[We] could probably push the car if [we] put it in neutral and released the parking brake, but why would [we]?" instead;

Check turning an automobile: 
	say "It's not clear what you mean for [us] to do." instead;	
 
The Laundromat-facade is a privately-named unenterable room in Parking Lot South. The printed name is "A-plus laundromat". Understand "A-plus/plus/laundromat" as the laundromat-facade. "[We] [peer] through the windows of the laundromat at the rows of aging machines. A sign on the door says 'Closed for renovations'. [We] [turn] away, unimpressed." 
The snarky remark of the Laundromat-facade is "Looks like the renovations are going to take a while."
Instead of entering the laundromat-facade:
	try going northwest;
	
The laundromat-facade is an edifice.
	
Does the player mean entering the laundromat-facade:
	it is very likely;
	
The laundromat sign is a part of the Laundromat-facade. It is privately-named. The printed name is "laundromat sign". Understand "laundromat/-- sign", "stationery" as the laundromat sign. The description is "It's just a piece of stationery marked up with Sharpie and taped to the door. It says 'Closed for renovations'."
It is obstructed.

The laundromat window is a part of the Laundromat-facade. It is privately-named. The printed name is "laundromat window". Understand "laundromat/-- window/windows" as the laundromat window. The description is "They haven't been washed for a while. Through them you can see the sad state of the crumbling laundromat."

The washing-machines are a part of the Laundromat-facade. They are privately-named. The printed name is "washing machines". Understand "washing/-- machine/machines", "washer/washers" as the washing-machines. The description is "From here, the machines look old and worn."
They are obstructed.

The snarky remark of the washing-machines is "I'm sure they're all in perfect working order."
	
The laundromat door is a closed, back-locked, and front-locked scenery shop-door. It is privately-named. The printed name is "laundromat door". Understand "laundromat/-- door" as the laundromat door. It is northwest of the parking lot south and southeast of the laundromat-store. The front description is "It's a typical glass door. Taped to it is a sign that says 'Closed for renovations'." The frontside is the strip mall parking lot south. The back description is "It's a typical glass door." 
The laundromat door is indescribable.

The snarky remark of the laundromat door is "The gateway to paradise, either way you go through it."
	
Check going northwest from the strip mall parking lot south when the player does not know break-in-to-laundromat and the laundromat door is front-locked and the laundromat door is back-locked: 
	now the player knows laundromat-front-door-is-locked;
	say "A sign on the laundromat door says 'Closed for renovations'." instead;
	
Check going northwest from the strip mall parking lot south when the player knows break-in-to-laundromat and the laundromat door is front-locked and the laundromat door is back-locked: 
	now the player knows laundromat-front-door-is-locked;
	say "Predictably, the laundromat door is locked." instead;

Before opening the laundromat door when the laundromat door is front-locked:
	now the player knows laundromat-front-door-is-locked;
	
The swamp-facade is a privately-named unenterable room in Parking Lot South. The printed name is "swamp". Understand "swamp/swampy/area/marsh/water/wetland/wet/land" as the swamp-facade. "Swamp Park is, as one might expect, dotted with these little bits of wetland."
The snarky remark of the swamp-facade is "Swamp Park delivers on its name."

Instead of entering, searching, or touching the swamp-facade:
	try going south;

Pawn-Shop-facade is a privately-named unenterable room in Parking Lot South. It is proper-named. The printed name is "Dave's pawn shop". Understand "dave's", "dave", "pawn", "shop" as the pawn-shop-facade. "[We] [observe] the pawn shop with obvious distaste. The flashing neon sign in the window advertises 'Cash for gold!'".
The snarky remark of the Pawn-Shop-facade is "I wonder if they take Bureau badges."
The pawn-shop-facade is an edifice.

The flashing neon sign is part of the Pawn-Shop-facade. [Understand "pawn/shop/cash/gold" as flashing neon sign.] The description is "Its flash rate is just a bit over the threshold of irritating."
The snarky remark of the flashing neon sign is "At least they have style."
It is obstructed.
	
The pawn-shop-door is a closed scenery shop-door. It is southwest of the parking lot south and northeast of the Dave's pawn shop. It is privately-named. The printed name is "pawn shop door". Understand "pawn shop door" as the pawn-shop-door. Understand "door" as the pawn-shop-door. The front description is "It's a typical glass door. The light within is too dim to see much." The frontside is the strip mall parking lot south. The back description is "It's a typical glass door."
The pawn-shop-door is indescribable.

The pawn-shop-door is unsnarkable.

Instead of entering the pawn-shop-facade:
	try going southwest;

The pawn-shop-window is scenery in Strip Mall Parking Lot South. The description is "The blinds inside are closed." It is privately-named. The printed name is "pawn shop window". Understand "pawn shop window", "blinds" as the pawn-shop-window. 
	
Instead of going nowhere from the Parking Lot South:
	let dir be noun part of current action;
	if dir is south: 
		say "The swamp would just muck up [agent]'s clothes."; 
	otherwise if dir is east:
		say "An automatic car wash isn't of much use when one is on foot.";
	otherwise:
		continue the action;
	stop the action.
	
The automatic car wash is an unenterable room in Strip Mall Parking Lot South. The description is "Much like any other automatic car wash." Understand "carwash" as the automatic car wash.
The snarky remark of the automatic car wash is "These things sprout like weeds."

Instead of entering the automatic car wash:
	try going east;
	
The interstate is scenery in Strip Mall Parking Lot South. Understand "highway/road/expressway/freeway" as the interstate. "A ways off past the swamp, the highway carries most travelers right past this glum little village."
The snarky remark of the interstate is "Drive on, folks. Nothing to see here."
It is far away.
	
strip mall parking lot south is outside from the Dave's pawn shop.

Section 1 - Dave Conversation

pawn-shop-subject is a subject. It is privately-named. The printed name is "Dave's pawn shop". Understand "Dave's/pawn/shop" as pawn-shop-subject.

Table of Quiz Topics (continued)
subject (a thing)	interlocutor (a person)	comment (a text)	reply (a text)
pawn-shop-subject	Dave	"Faraji asks, 'This your shop?'"	"Dave grunts, 'Yeah, what of it?'"
blinds	Dave	"Faraji asks, 'Why are the blinds closed?'"	"'I'm extremely photosensitive.'"
glass counter	Dave	"Faraji asks, 'What's in the glass counter?'"	"'Stuff.'"
jewelry	Dave	"Faraji asks, 'Is this jewelry all real?"	"Dave huffs, 'Miss, everything in this shop is genuine.'"
firearms	Dave	"Faraji asks, 'What gun do you recommend?'"	"Dave says, 'Depends. How dead do you want'em?'"
tattoo	Dave	"Faraji asks, 'What's your tattoo of?'"	"Dave says, 'It's Butterfree, so?'"
Dave	Dave	"Faraji asks, 'How are you?'"	"Dave grunts, 'Been better.'"


Chapter 2 - Strip Mall Parking Lot North

The Strip Mall Parking Lot North is a room. It is north of The Strip Mall Parking Lot South. It is in Swamp Park. It is outdoors. The printed name is "north end of the strip mall parking lot". Understand "end/of/the" as the Strip Mall Parking Lot North. Understand "shopping center" as Strip Mall Parking Lot North. The preposition is "at".
"This end is no more auspicious than the other. A convenience store lies to the east. To the west is a military recruitment center. North of here the parking lot exits onto a busy road. There is a rusty sign by the road naming the shopping center: Park Place. South is BOSH headquarters, among other things." 
The snarky remark of The Strip Mall Parking Lot North is "Ah, Swamp Park. The hidden jewel of the state of Maryland."

Understand "Park/place" as Strip Mall Parking Lot North.

Instead of going nowhere from the Parking Lot North:
	let dir be noun part of current action;
	if dir is north:
		say "[We] [have] things to do here.";
	otherwise if dir is west:
		say "[We] will think about joining the military once the Bureau shuts down.";
	otherwise:
		continue the action;
	stop the action.
	
The convenience-store-facade is an unenterable room in strip mall parking lot north. It is privately-named. The printed name is "Li'l Nectarine Convenience Store". Understand "li'l/nectarine/convenience/store" as the convenience-store-facade. "It's marked by a sign with a big nectarine on it."
The snarky remark of the convenience-store-facade is "I'm sure the nectarines are fresh."

Instead of entering the convenience-store-facade:
	try going east;

The nectarine sign is a part of the convenience-store-facade. Understand "nectarine/store/-- sign" as the nectarine sign. The description is "It's a big nectarine."
	
The military-facade is an unenterable room in strip mall parking lot north. It is privately-named. The printed name is "Military Recruitment Center". Understand "military/recruitment/center" as the military-facade. "Patriotic posters paper the windows."
The snarky remark of the military-facade is "Looks like I have career options after all."

Patriotic posters are scenery in the strip mall parking lot north. Understand "military posters", "poster/slogan/slogans" as patriotic posters. "The new slogan is 'Answer the Call!'".
The snarky remark of the patriotic posters is "[if the player encloses the green smartphone]I would, but my phone is out of batteries[otherwise]I would, but the phone is stuck in my desk[end if]."
They are plural-named.

Instead of entering the military-facade:
	try going west;
	
The busy road is scenery in strip mall parking lot north. "The main business thoroughfare of Swamp Park."
The snarky remark of the busy road is "Ah, les boulevards de Swamp Park."
It is far away.

The rusty sign is scenery in strip mall parking lot north. "It says 'Park Place'."
The snarky remark of the rusty sign is "Yes, it's a place to park, alright."
It is far away.

BOSH-headquarters-to-the-south is scenery in strip mall parking lot north. It is privately-named. The printed name is "BOSH headquarters". Understand "bosh/headquarters/HQ/office" as BOSH-headquarters-to-the-south. "The BOSH headquarters are to the south."
It is far away.
It is unsnarkable.
	
Book 2 - Dave's pawn shop
	
Dave's pawn shop is a room. It is proper-named. "This is more the seedy, gloomy stereotype of a pawn shop than the glitzy sanitized version of TV reality shows. The blinds in the windows are closed to only allow the barest slant of sunlight in, leaving the sickly fluorescent lights to illuminate the room. There is the distinct smell of cigar smoke. The glass counter is filled with a large collection of possibly valuable items. Behind it is an impressive array of firearms.

The exit is northeast."
The snarky remark of Dave's Pawn Shop is "I've known public restrooms that had better ambience."

The destination name is "Dave's pawn shop".

The sunlight is scenery in Dave's pawn shop. "A few bands of sunlight filter through the blinds. It's not enough to dispel the gloom."

The cigar smoke is scenery in Dave's pawn shop. "The smell of cigar smoke is thick in the air."

The blinds are scenery in Dave's pawn shop. "The blinds are closed, leaving the room in a dim light." Understand "windows/blind/window" as the blinds.
The snarky remark of the blinds is "Typical for an establishment run by a vampire."

Instead of opening the blinds:
	say "Dave might prefer them closed.";

The fluorescent lights are scenery in Dave's pawn shop. "The lights are flickering and buzzing." Understand "light" as the fluorescent lights.
The snarky remark of the fluorescent lights is "I'm sure they're good for the complexion."
They are far away.

The glass counter is a supporter in Dave's pawn shop. It is scenery. "The counter is arrayed with displays of jewelry, watches, and the like."
The snarky remark of the glass counter is "What fine lady wouldn't want a ring from here?"

Some jewelry is scenery in Dave's pawn shop. "[We] [don't] need any of this stuff." Understand "necklace/necklaces/ring/rings/bracelet/bracelets/watch/watches" as jewelry.
The snarky remark of the jewelry is "I'm sure they're all genuine."
It is obstructed.

The firearms are scenery in Dave's pawn shop. "Although as an agent [we] [have] the right to carry a firearm, [we] [don't] feel the need." Understand "gun/guns/firearm/firearms" as firearms.
The snarky remark of the firearms is "In this line of work, if you need a gun, call Ghostbusters."
They are far away.

There is a fluorescent light source in Dave's pawn shop called pawn-light.

Dave's pawn shop is in Swamp Park.

A man called Dave is in the pawn shop. Understand "owner" as Dave. "A man, presumably Dave, stands behind the main counter eyeing [Player]." The description is "He's dressed in polyester, as if he were still wearing last night's bowling shirt. A bit of tattoo peeks out from his open collar."
The snarky remark of Dave is "He's good at hiding his fangs."

The polyester shirt is part of Dave. The description is "It's not a bowling shirt, but it's damn close."

The tattoo is part of Dave. The description is "It's hard to know what it looks like since just a bit peeks out from his collar."

The snarky remark of the tattoo is "I'm sure it's a butterfly."

Greeting response for Dave:
	say "[Dave] grunts hello.";

a Li'l Nectarine Gift Card is a thing. The description is "A five dollar gift card to the Li'l Nectarine Convenience Store."  

The snarky remark of the Li'l Nectarine Gift Card is "Gee, I hope Dave didn't break the bank."

Instead of giving the wristwatch to Dave:
	say "Dave smiles when [we] [hand] him the watch. 'I've been looking for this,' he says. 'Here you go, five bucks for your trouble.' He hands [us] a Li'l Nectarine Gift Card.";
	now the player carries the Li'l Nectarine Gift Card;
	remove the wristwatch from play;

Instead of showing the wristwatch to Dave:
	say "Dave smiles when [we] [hand] him the watch. 'I've been looking for this,' he says. 'Here you go, five bucks for your trouble.' He hands [us] a Li'l Nectarine Gift Card.";
	now the player carries the Li'l Nectarine Gift Card;
	remove the wristwatch from play;
	
[The how-are-you-reply of Dave is "Been better.".]
	
for-a-screwdriver-pawn is a questioning quip.
	It is privately-named. The printed name is "for a screwdriver". 
	Understand "for/a/screwdriver" as for-a-screwdriver-pawn.
	It mentions the red screwdriver.
	The comment is "[We] [lean] on the counter and [ask], 'Do you happen to have a screwdriver I could borrow for a few minutes? I'm from the Bureau office next door.'".
	The reply is "The man shakes his head and says, 'Sorry. I had one, but the guy who runs the laundromat borrowed it and didn't bring it back.'".
	It quip-supplies Dave.
	
An availability rule for for-a-screwdriver-pawn:
	if the player knows vent-screws:
		always available;
	
After discussing for-a-screwdriver-pawn:
	now player knows screwdriver-in-laundromat;
	continue the action;
	
about the laundromat owner is a questioning quip.
	The comment is "[We] [say], 'How do you suppose I might get in touch with this man who runs the laundromat? I really could use a screwdriver.'".
	The reply is "'Well, that's a tricky one. Laundromat's been closed for almost two weeks now, since the owner just split for some reason he didn't bother to share. Not likely to get ahold of him. If you're not averse to a little trespassing, though, see if you come across a watch. Another thing he borrowed.'"
	It quip-supplies Dave.
	It follows for-a-screwdriver-pawn.
	
After discussing about the laundromat owner:
	now player knows break-in-to-laundromat;
	[ move Chief Huffton Klimp to Chief's office;
	now klimp's door is unlocked;
	now klimp's door is open; ]
	move car 2 to Strip Mall Parking Lot South;
	say "The sound of a car door slamming outside catches Faraji's attention.";
	move Chief Huffton Klimp to Strip Mall Parking Lot South;
	add behavior arrival to Chief Huffton Klimp;
	[ activate the Table of Chief Klimp Hints; ]
	continue the action;

about the watch is a questioning quip.
	The comment is "[We] [ask], 'What's so special about this watch?'"
	The reply is "'It's a family heirloom. I'd like to get it back.'"
	It quip-supplies Dave.
	It follows about the laundromat owner.
	
Dave interjection timer is a number that varies. Dave interjection timer is 5.

Every turn when Dave interjection timer is not 0 and Dave is in the location and player knows break-in-to-laundromat:
	decrease Dave interjection timer by 1;
	if Dave interjection timer is 0:
		interject Dave;

Before discussing when Dave is in the location:
	now Dave interjection timer is a random number from 2 to 5;

Before quizzing someone about something when Dave is in the location:
	now Dave interjection timer is a random number from 2 to 5;
	continue the action;

To interject Dave:
	sort Table of Dave Interjections in random order;
	if there is a used of false in the Table of Dave Interjections:
		choose the row with a used of false in the Table of Dave Interjections;
		say "[Dave interjection entry][line break]";
		now the used entry is true;
		increase Dave interjection timer by a random number from 2 to 5;

Table of Dave Interjections
Dave interjection	used (a truth state)
"Dave scratches his belly. 'I bet you could just buy a screwdriver at the Li'l Nectarine.'"	false
"Dave leans on the counter. 'Now, the key to breaking and entering is to not get caught.'"	false
"Dave rubs his chin thoughtfully. 'That laundromat owner was a strange one. Wrong in the head, I'd say.'"	false
"Dave fiddles with a pen. 'How you liking Swamp Park? Heh. Nobody likes Swamp Park.'"	false
"Dave looks at the ceiling. 'You know, I've been thinking about getting another tattoo. I think this one will be Snorlax.'"	false
"Dave looks at the door. 'I've heard of you BOSH people. You're all kind of crazy, right?'"	false
"Dave cracks his knuckles. 'My wife says I should sell the place so we can move to the tropics. I say, [']What? And leave Swamp Park?[']'"	false

Book 3 - Laundromat

Chapter 1 - The Astral Tunnel

The astral-tunnel-1 is back of the back lot. It is privately-named. The printed name is "astral tunnel". It is in hyperspace. "It is featureless white, or what passes for white here. It leads 'forth' at one end and north at the other.".
The snarky remark of the astral-tunnel-1 is "What do you know? Klimp was onto something."

The astral-tunnel-1-facade is a building facade. 
	It is in the back lot.
	It is privately-named. The printed name is "astral tunnel".
	Understand "astral/tunnel" as the astral-tunnel-1-facade.
	"It is featureless white, or what passes for white here. It extends 'back' from here.".
	The astral-tunnel-1-facade fronts the astral-tunnel-1.
	The astral-tunnel-1-facade is enterable from the back lot.

The snarky remark of the astral-tunnel-1-facade is "[if astral-tunnel-1 is not visited]No way I'm going in there, right?[otherwise]It's not so bad, as long as you don't mind be stuck in a featureless white void[end if]."

The astral-tunnel-2 is north of astral-tunnel-1. It is privately-named. The printed name is "astral tunnel". It is in hyperspace. "It is featureless white, or what passes for white here. It leads south at one end and 'forth.' at the other.";

The snarky remark of the astral-tunnel-2 is "I wonder if there's one of these leading into my apartment."

The astral-tunnel-2-facade is a building facade. 
	It is in the laundromat back room.
	It is privately-named. The printed name is "astral tunnel".
	Understand "astral/tunnel" as the astral-tunnel-2-facade.
	"It is featureless white, or what passes for white here. It extends 'back' from here.".
	The astral-tunnel-1-facade fronts the astral-tunnel-2.
	The astral-tunnel-1-facade is enterable from the laundromat back room.

The snarky remark of the astral-tunnel-2-facade is "So, does our universe look like swiss cheese with all these holes in it?"

Chapter 2 - The Laundromat Proper

laundromat-region is a region. It is in Swamp Park.

The laundromat-store is a leavable room.
It is privately-named. The printed name is "laundromat". Understand "A-plus/plus/laundromat" as the laundromat-store. It is in laundromat-region. It has egress southeast.
"The deserted laundromat is [if the light switch is switched on]lit by a flickering fluorescent light[otherwise]lit dimly by the light filtering in from outside[end if]. The machines are old and worn, but still seemingly functional. An opening leads west to the back room."
The snarky remark of the laundromat-store is "I'm sure the renovations will be worth it."

The flickering fluorescent light is scenery in the laundromat-store. "The light is flickering and buzzing."
The snarky remark of the flickering fluorescent light is "It's the atmosphere that makes a good laundromat."
It is far away.

The washing machines are scenery in the laundromat-store. "The machines are old and worn, but still seemingly functional. A few are out of order." Understand "machine/dryer/dryers" as the washing machines.
The snarky remark of the washing machines is "I'm trying to think of a good joke about washing machines, but I'm coming up empty."

The opening_ is scenery in the laundromat-store. "The opening leads west to the back room." Understand "doorway" as the opening_. It is privately-named. The printed name is "opening".
It is unsnarkable.

The handtruck is in the laundromat-store. It is pushable between rooms.
Understand "hand/truck/trolley/dolly/stack/trundler", "box cart", "sack barrow", "cart", "sack truck", "two wheeler", "bag barrow" as the handtruck. The description is "A handtruck sits in the corner, ready to be used."
The snarky remark of the handtruck is "But can it carry the weight that burdens my soul?"

Instead of taking the handtruck:
	say "The handtruck is a bit unwieldy to carry. Better push it instead.";

Instead of pushing the handtruck to down when the location is the laundromat back room:
	now the player knows handtruck-no-stairs;
	say "The stairs are much too steep to maneuver the handtruck down them.";

Instead of pushing the handtruck to up when the location is the laundromat basement:
	say "The stairs are much too steep to maneuver the handtruck up them.";

The laundromat back room is west of the laundromat-store. It is in laundromat-region.
It is forth of astral-tunnel-2.
"A desk sits in the corner covered with papers. An opening leads east to the laundromat proper, while a steep set of stairs leads down. The back door is to the south."
The snarky remark of the laundromat back room is "Definitely worth the trouble of breaking in."

The opening-2 is scenery in the laundromat back room. It is privately-named. The printed name is "opening". Understand "doorway" as the opening-2. "The opening leads east to the laundromat proper."
It is unsnarkable.

The laundromat desk is a scenery desk in the laundromat back room. "The desk is cluttered with papers. It has a single drawer, which is [if the laundromat desk's drawer is open]open[otherwise]closed[end if]."
The snarky remark of the laundromat desk is "For a place that supposedly gets things clean, this place is a mess."
The laundromat desk's drawer has description "The drawer is [if the laundromat desk's drawer is open]open[otherwise]closed[end if]."

The laundromat-papers is scenery in the laundromat back room. It is privately-named. Understand "paper/papers/receipt/receipts/invoice/invoices" as the laundromat-papers. "The papers are mostly receipts and invoices[if the strange piece of paper is nowhere]. One piece, however, consists of strange sketches and diagrams. In one corner is scrawled the cryptic phrase 'Save the Dragon'[end if]." It is plural-named.
The snarky remark of the laundromat-papers is "I'm sure it's all very important."

The large key is a key in the laundromat desk's drawer. The description is "It's a large key, probably for a door."

The laundromat door has matching key the large key.

The strange piece of paper is a thing. The description is "The paper is covered with strange sketches and diagrams. In one corner is scrawled the cryptic phrase 'Save the Dragon'." Understand "sketch/sketches/and/diagram/diagrams" as the strange piece of paper.
The snarky remark of the strange piece of paper is "Dragon? What dragon? Must be laundromat slang."

After examining the laundromat-papers for the first time:
	now the strange piece of paper is on the laundromat desk;

The laundromat stairs are a backdrop. They are in the laundromat back room and the laundromat basement. "The stairs are steep and narrow."
The snarky remark of the laundromat stairs is "I'm sure they're up to code."
Instead of taking the laundromat stairs:
	if the location is the laundromat back room:
		try going down;
	otherwise:
		try going up;

The laundromat basement is below the laundromat back room. It is in laundromat-region.
"A few boxes of supplies sit here and there in the otherwise empty space. Stairs lead up, while a doorway leads south."
The snarky remark of the laundromat basement is "Hey Daddy-o, I don't wanna go down to the basement."

Some boxes of supplies are scenery in the laundromat basement. "The boxes are completely uninteresting. Unless you really like detergent." Understand "box/supplies/detergent" as boxes of supplies.
The snarky remark of the boxes of supplies is "Maybe Margaret would like to sort through these."

Instead of opening the boxes of supplies:
	say "The boxes are full of detergent and similar things.";

Instead of searching the boxes of supplies:
	say "The boxes are full of detergent and similar things.";

The opening-3 is scenery in the laundromat basement. It is privately-named. The printed name is "opening". Understand "doorway" as the opening-3. "The opening leads south." It is unsnarkable.

The back basement is south of the laundromat basement. It is in laundromat-region.
"The basement ends here. There is a switch on the wall, currently [if the light switch is switched on]on[otherwise]off[end if]. A doorway leads north.

[if the broken washing machine is nowhere]A strange glow emanates from behind some stacks of large crates[otherwise]A old broken-down washing machine peeks out from between two stacks of crates[end if]."
The snarky remark of the back basement is "Strange things are afoot at the Circle K."

After printing the description of a dark room when the location is the back basement and in darkness:
	say line break;
	say "There is a glow-in-the-dark light switch on the wall here, currently [if the light switch is switched on]on[otherwise]off[end if].";
	say line break;
	if the broken washing machine is nowhere:
		say "There is a strange glow emanating from behind some large dark objects.";
	otherwise:
		say "A washing machine is revealed in the darkness by the glow emanating from its drum.";
		
The broken washing machine is an enterable, closed, openable container. It is scenery. "It's a front-loading model. The inside of the drum is obscured by a shimmering curtain of light."
The snarky remark of the broken washing machine is "Looks inviting, doesn't it?" It is transparent. Understand "drum/washer" as the broken washing machine.

The strange glow is scenery in the back basement. "The glow is blue-white and flickering."
The snarky remark of the strange glow is "I'm sure it's nothing to worry about."
It is far away.
		
After deciding the scope of the player when the location is the back basement and in darkness:
	place the light switch in scope;
	place the strange glow in scope;
	place stacks of crates in scope;
	if the broken washing machine is in the back basement:
		place the broken washing machine in scope;

Before examining the light switch when the location is the back basement and in darkness:
	say "[description of the light switch][paragraph break]";
	snark the light switch;
	stop the action;

Before examining the strange glow when the location is the back basement and in darkness:
	say "[description of the strange glow][paragraph break]";
	snark the strange glow;
	stop the action;

Before examining the stacks of crates when the location is the back basement and in darkness:
	say "[description of the stacks of crates][paragraph break]";
	snark the stacks of crates;
	stop the action;

Before examining the broken washing machine when the location is the back basement and in darkness:
	say "[description of the broken washing machine][paragraph break]";
	snark the broken washing machine;
	stop the action;

[ The can't act in the dark rule does nothing when the location is the back basement. ]

Understand  "large/dark/objects/object" as stacks of crates when in darkness.

laundromat back room is dark.
laundromat basement is dark.
back basement is dark.
There is a fluorescent light source in laundromat-store called ls-light. It is unsnarkable.
There is a fluorescent light source in laundromat back room called lbr-light. It is unsnarkable.
There is a fluorescent light source in laundromat basement called lb-light. It is unsnarkable.
There is a fluorescent light source in back basement called bb-light. It is unsnarkable.


moving it with is an action applying to two things. Understand "move [something] with [something]" as moving it with.

Some stacks of crates are scenery in the back basement. They are privately-named. Understand "stack/stacks/of/crates/crate/box/boxes" as stacks of crates when not in darkness.
The printed name is "[if in darkness]dark objects[otherwise]stacks of crates[end if]".
The snarky remark of the stacks of crates is "[if the broken washing machine is nowhere]C'mon, you're blocking the view[otherwise]Ha, ha, thought you could keep me from seeing that, did you[end if]."

To say crates description:
	if in darkness:
		say "You feel around. The dark objects seem to be large crates";
	otherwise:
		if the broken washing machine is nowhere:
			say "The crates are stacked high and deep, making it difficult to see what's behind them";
		otherwise:
			say "The crates are stacked high and deep, but there is a gap between two of them, revealing a broken-down washing machine";

The description of the stacks of crates is "[crates	description]."

Check moving something with:
	say "That isn't very helpful.";
	
Instead of moving the stacks of crates with the handtruck:
	if the broken washing machine is nowhere:
		say "You move the crates out of the way and uncover an old front-loading washing machine. There is a strange glow inside the drum.";
		now the broken washing machine is in the back basement;
		now the strange glow is in the broken washing machine;
		now the strange glow is closeby;
	otherwise:
		say "There's no point in moving the cabinets around any further.";

After entering the broken washing machine:
	say "There is a flash of light and [we] [find] [ourselves] somewhere else...";
	now the player is in Featureless Hyperplane;

Instead of entering the strange glow:
	say "There is a flash of light and [we] [find] [ourselves] somewhere else...";
	now the player is in Featureless Hyperplane;

After touching the strange glow:
	say "There is a flash of light and [we] [find] [ourselves] somewhere else...";
	[ end the story saying "Thanks for testing my game. This is the end of Part 1."; ]
	now the player is in Featureless Hyperplane;
	
The light switch is a scenery device in the back basement. It is switched on. Understand "glow-in-the-dark", "glowing" as the light switch. 
The description is "It's a standard glow-in-the-dark light switch."
The snarky remark of the light switch is "I wonder what it does."

After switching off the light switch:
	now ls-light is not lit;
	now lbr-light is not lit;
	now lb-light is not lit;
	now bb-light is not lit;
	continue the action;

After switching on the light switch:
	now ls-light is lit;
	now lbr-light is lit;
	now lb-light is lit;
	now bb-light is lit;
	continue the action;

To remove is a verb.

Every turn:
	if the location is fluorescent-lit and the player is wearing the pair of astral lenses and not in darkness:
		say "Wearing the astral lenses in fluorescent light is blinding. [We] quickly [remove] the glasses.";
		now the hyperlight is unlit;
		now the player carries the pair of astral lenses;
		
The astral-tunnel-3 is forth of back basement and backsouth of the laundromat-store. It is privately-named. The printed name is "astral tunnel". It is in hyperspace. "It is featureless white, or what passes for white here. It leads 'back' at one end and 'forthnorth.' at the other.".
The snarky remark of the astral-tunnel-3 is "I wonder how many of these things there are."

The astral-tunnel-3-facade is a building facade. 
	It is in the back basement.
	It is privately-named. The printed name is "astral tunnel".
	Understand "astral/tunnel" as the astral-tunnel-3-facade.
	"It is featureless white, or what passes for white here. It extends 'forth' from here.".
	The astral-tunnel-3-facade fronts the astral-tunnel-3.
	The astral-tunnel-3-facade is enterable from the back basement.
	It is unsnarkable.

The astral-tunnel-3-facade-2 is a building facade. 
	It is in the laundromat-store.
	It is privately-named. The printed name is "astral tunnel".
	Understand "astral/tunnel" as the astral-tunnel-3-facade-2.
	"It is featureless white, or what passes for white here. It extends 'backsouth' from here.".
	The astral-tunnel-3-facade-2 fronts the astral-tunnel-3.
	The astral-tunnel-3-facade-2 is enterable from the laundromat-store.
	It is unsnarkable.

Book 4 - Convenience Store

The Li'l Nectarine Convenience Store is east of the Parking Lot North. It is in Swamp Park. It is indoors. 
"Li'l Nectarine offers great service and low prices, or so they say. This one's cluttered aisles and sparse shelves could make one wonder if that's true. Behind the counter is the typical array of cigarettes and lottery tickets. Under the counter is a glass case containing various useful items."
The snarky remark of the Li'l Nectarine Convenience Store is "I'm not sure I'd eat fruit from here."

The destination name is "Li'l Nectarine Convenience Store".
 
The store clerk is a man in the Convenience Store. "The clerk, a scruffy man in his mid-twenties, is leaning against the counter, looking bored." The description is "The clerk looks as if he'd rather be anywhere else. He's wearing jeans and a white t-shirt with something inscrutable scrawled on it. His hair sticks up every which way." Understand "man" as the store clerk.
The snarky remark of the store clerk is "Finally a source of fashion advice."

A ballpoint pen is carried by the clerk. The description is "A cheap ballpoint pen."
A battered cellphone is carried by the clerk. The description is "Looks like it's been dropped a few times. And then run over by a truck."
A manga magazine is carried by the clerk. The description is "It's a manga fanzine, titled Kimyōna dekigoto."


The t-shirt is part of the store clerk. The description is "The t-shirt is white with something inscrutable scrawled on it. It might say 'X/e\32A', but Faraji can't be sure." Understand "t/tee/shirt" as the t-shirt.

The shop counter is a supporter in the nectarine store. It is scenery. "The counter is arrayed with displays of CBD oil, antacids, and the like."
It is unsnarkable.

Some CBD oil is scenery in the convenience store. "[We] [don't] need any of this stuff." 
The snarky remark of the CBD oil is "Well, when I have a CBD, I'll know where to come for lubricant."

Some antacids are scenery in the convenience store. "[We] [feel] fine for now."
The snarky remark of the antacids is "Maybe after the next Bureau meeting."

Some cigarettes are scenery in the convenience store. "[We] [have] no interest in smoking." Understand "smokes/smoke/packs/pack" as cigarettes.
The snarky remark of the cigarettes is "In Swamp Park, they call these 'air fresheners'."
Some lottery tickets are scenery in the convenience store. "[We] [feel] no urge to gamble." Understand "scratch-off/scratch-offs/ticket" as lottery tickets.
The snarky remark of the lottery tickets is "Have you noticed my luck lately?"

Some aisles are scenery in the Convenience Store. They are plural-named. "The aisles are cluttered with numerous stacks of unshelved items." Understand "cluttered/stacks/stack/unshelved/items" as aisles.
The snarky remark of the aisles is "There's an organizational system here, I'm sure of it."

The store shelves are a thing in the Convenience Store. They are scenery. "[We] hardly [need] bread, ketchup, or potato chips." Understand "shelf" as store shelves.
The snarky remark of the store shelves is "Yep, I thought so. It all costs money. More precisely, more than zero dollars."

Some groceries are a thing in the Convenience Store. They are scenery. "We're not here to go grocery shopping." Understand "bread/ketchup/catsup/potato/chips" as groceries.
The snarky remark of the groceries is "Who knows where they've been?"

The flashlight is a device. Understand "light/torch" as the flashlight. The description is "A small, sturdy flashlight."
The snarky remark of the flashlight is "I might need it to whack Klimp over the head."

Instead of switching on the flashlight:
	now the flashlight is lit.
	
Instead of switching off the flashlight:
	now the flashlight is not lit. 

Instead of buying the red screwdriver with the Li'l Nectarine Gift Card:
	say "The clerk takes the gift card and hands you the red screwdriver. 'Thanks,' he says.";
	now the player carries the red screwdriver;
	remove the Li'l Nectarine Gift Card from play;

Instead of buying something with something when the second noun is not the Li'l Nectarine Gift Card:
	say "[The second noun] is not legal currency.";

Instead of buying something with the Li'l Nectarine Gift Card:
	if the player owns the noun:
		say "[We] already [own] that.";
	otherwise if someone (called the owner) owns the noun and the owner is willing to sell the noun:
		say "[We] [don't] have enough money ([price of the noun]) for that.";
	otherwise if no one owns the noun:
		say "No one seems to own that.";
	otherwise:
		say "[The owner of the noun] doesn't seem to want to sell that.";

Rule for supplying a missing second noun while buying the red screwdriver with:
	if the player encloses the Li'l Nectarine Gift Card:
		now the second noun is the Li'l Nectarine Gift Card;

The glass case is a container in the Convenience Store. it is openable. It is closed and locked. it is scenery. It is transparent. In the glass case is the flashlight, a red screwdriver, a laptop computer, and some wireless earbuds. The wireless earbuds are plural-named. 
Understand "useful/items" as the glass case.
The glass case is indescribable.
The snarky remark of the glass case is "Quality merchandise, I'm sure."

The clerk owns the flashlight. The clerk is willing to sell the flashlight.
The price of the flashlight is $6.
The clerk owns the red screwdriver. The clerk is willing to sell the red screwdriver.
The price of the red screwdriver is $5.
The clerk owns the laptop. The clerk is willing to sell the laptop.
The price of the laptop is $1200.  
The clerk owns the earbuds. The clerk is willing to sell the earbuds. 
The price of the earbuds is $85.
   
After printing the locale description for the Li'l Nectarine Convenience Store when the player knows margaret-no-screwdriver and the player does not know store-sells-screwdrivers:
	say "As you enter the store, you catch a glimpse of a red screwdriver in the glass case under the counter.";
	now the player knows store-sells-screwdrivers;

The description of the red screwdriver is "A medium-length flat head screwdriver with a red plastic handle."
Understand "flat/head/plastic/handle/flathead/red" as the red screwdriver.
The snarky remark of the red screwdriver is "[if the player knows vent-screws]There it is, just a few inches away, yet so far[otherwise]I'm sure I won't need a screwdriver any time soon[end if]."
The description of the laptop computer is "A knockoff of a fancy gaming laptop." Understand "notebook/computer" as the laptop computer.
The snarky remark of the laptop computer is "I'm sure it's a real bargain."
The description of the wireless earbuds is "Some no-name brand." Understand "airpods/air/pods/ear/earphones/headphones" as the wireless earbuds.  
The snarky remark of the wireless earbuds is "Ear Pods. Sounds quality."

 
[Carry out imploring the clerk for something when the flashlight is nowhere during blackout:
	if the topic understood includes "light/flashlight":
		say "The clerk pulls out a flashlight and lays it on the counter. 'Five dollars,' he says."; 
		move the flashlight to the counter.	]	
		
After quizzing the clerk about the glass case:
	say "'You want something inside? Name it.'" instead;

Rule for reaching inside the glass case while buying something:
	allow access;

	
strip mall parking lot north is outside from the the Li'l Nectarine Convenience Store.

Clerk interjection timer is a number that varies. Clerk interjection timer is 5.

Every turn when Clerk interjection timer is not 0 and Clerk is in the location:
	decrease Clerk interjection timer by 1;
	if Clerk interjection timer is 0:
		interject Clerk;

Before discussing when Clerk is in the location:
	now Clerk interjection timer is a random number from 2 to 5;

Before quizzing someone about something when Clerk is in the location:
	now Clerk interjection timer is a random number from 2 to 5;
	continue the action;

To interject Clerk:
	sort Table of Clerk Interjections in random order;
	if there is a used of false in the Table of Clerk Interjections:
		choose the row with a used of false in the Table of Clerk Interjections;
		say "[Clerk interjection entry][line break]";
		now the used entry is true;
		increase Clerk interjection timer by a random number from 2 to 5;

Table of Clerk Interjections
Clerk interjection	used (a truth state)
"The clerk looks up from his magazine and says, 'You need something?'"	false
"The clerk, playing the drums with his fingers on the counter, says, 'Wish I could play the drums.'"	false
"The clerk, looking at his phone, says, 'Still got 3 hours left on my shift.'"	false
"The clerk paces back and forth behind the counter, muttering to himself."	false	
"The clerk, looking at his phone, says, 'I'm not supposed to be on my phone.'"	false
"The clerk says, 'You gonna buy something?'"	false
"The clerk, playing with a pen, says, 'I hear some group of weirdos moved in next to the pawn shop.'"	false


Chapter 1 - Clerk Conversation

for-a-screwdriver-clerk is a questioning quip.
	It is privately-named. The printed name is "for a screwdriver". [The true-name is "for-a-screwdriver-clerk".] Understand "for/a/screwdriver" as for-a-screwdriver-clerk.
	It mentions the screwdriver.
	The comment is "[We] [ask], 'Would you happen to have a screwdriver I could borrow?'".
	The reply is "'Got one to buy, not one to borrow.'".
	It quip-supplies the clerk.
	
An availability rule for for-a-screwdriver-clerk:	
	if the player knows vent-screws and the red screwdriver is not handled:
		always available;

Book 5 - Comments about Things

Convenience-store-subject is a subject. It is privately-named. The printed name is "Li'l Nectarine Convenience Store". Understand "li'l/nectarine/convenience/store" as the convenience-store-subject.

Swamp-park-subject is a subject. It is privately-named. The printed name is "Swamp Park". Understand "swamp/park/town/city" as the swamp-park-subject.

Table of Quiz Topics (continued)
subject (a thing)	interlocutor (a person)	comment (a text)	reply (a text)
glass case	store clerk	"'You selling the stuff in this case?'"	"'You want something inside, just ask.'"
store clerk	store clerk	"'How're you doing?'"	"'No need to get personal, man.'"
Convenience-store-subject	store clerk	"'You like working here?'"	"'I know it's a dump. I just work here.'"
shop counter	store clerk	--	"'No, I've never had sex on the counter, if that's what you're asking.'"
CBD oil	store clerk	--	"'Cures everything, they say.'"
antacids	store clerk	--	"'I take them by the handful.'"
cigarettes	store clerk	--	"'I like the ones with the little camels on them. Not to smoke, just to look at.'"
lottery tickets	store clerk	--	"'My lucky numbers are 4, 8, 15, 16, 23, and 42.'"
aisles	store clerk	--	"'Just watch your step.'"
store shelves	store clerk	--	"'Those shelves were perfectly organized when I stocked them last month.'"
flashlight	store clerk	--	"'You ever seen one of these before? It makes light. I'll sell it to you for six bucks.'"
red screwdriver	store clerk	--	"'You want the screwdriver? Five bucks. And no, you can't borrow it.'"
laptop computer	store clerk	--	"'It's a real bargain. Um, I mean, it's a real computer. The guy was clear on that. Twelve hundred bucks.'"
wireless earbuds	store clerk	--	"'Ear Pods. Quality sounds. Eighty-five bucks.'"
swamp-park-subject	store clerk	--	"'The name gives it too much credit.'"
Bureau of Strange Happenings	store clerk	--	"'Never heard of it. What are you guys doing in a dump like this?'"
aliens	store clerk	--	"'If I see an alien, I'm going to ask for a ride.'"
zombies	store clerk	--	"'The zombie apocalypse will start here.'"
vampires	store clerk	--	"'Don't tell anyone, but I LARP as a vampire on weekends.'"
pawn shop	store clerk	--	"'I've never been in there. I hear it's a dump.'"
laundromat	store clerk	--	"'Never been there. My mom does my clothes.'"


Swamp Park ends here.
