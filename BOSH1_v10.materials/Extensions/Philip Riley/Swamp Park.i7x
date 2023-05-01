Swamp Park by Philip Riley begins here.

[Include House by Philip Riley.]
Include Cars by Philip Riley.
[Include Simple Conversation by Philip Riley.]

Book 1 - Outside HQ 

Swamp Park is a region. The dropoff point is the Strip Mall Parking Lot South.
Marsh Street is a region. The dropoff point of Marsh Street is the driveway.

The Strip Mall Parking Lot South is a room. The printed name is "south end of the strip mall parking lot". It is east of The Front Office. It is in Swamp Park. It is outdoors.  The preposition is "at". The front office is inside from the Strip Mall Parking Lot South. 
The description of the Strip Mall Parking Lot South is "From here one can see just how humble BOSH's state has become: the office, to the west, is between a pawn shop (to the southwest) and a run-down laundromat (to the northwest) and across from an automatic car wash. To the south is a swampy area separating the lot from the interstate. The parking lot continues north."

The Office_ is an unenterable room in Parking Lot South. The printed name is "office". "[We] [gaze] stoically at the sad little storefront that is the new BOSH office. The sign from the previous tenant is still up: 'Angel[']s Department Store'. Through the front window can be seen Margaret the temp, in her usual manic work mode.".
Instead of entering the office_:
	try going west;
	 
Understand "office", "bosh" as the office_.

Car 1 is a car in Strip Mall Parking Lot South. It is privately-named. The printed name is "[our] Hyundai". Understand "car", "hyundai" as car 1. The initial appearance of car 1 is "[Our] Hyundai is parked nearby." It is fixed in place. The description is "An old bright red Hyundai Accent, it's been [our] personal means of transportation for years. And since the Bureau lost its fleet, it's [our] work car too.".

[Marsh Street is a region. The dropoff point of Marsh Street is the driveway.]
Car 1 drives to Marsh Street. Car 1 drives to Swamp Park. 
A destination validation rule for (Marsh Street):
	it is allowed;
	
A destination validation rule for Swamp Park:
	it is allowed;
		
For printing the driving message for (Marsh Street) when the location is Strip Mall Parking Lot South for the first time:
	say "It's a long way from Swamp Park to the posh suburb where the unlucky Fryes made their home before their tragic end. At last [we] [exit] the Beltway and [make] [our] way to Marsh Street. [We] [pull] up to a huge Victorian house.";
	
To make is a verb.

Check pushing car 1: 
	say "[We] could probably push the car if [we] put it in neutral and released the parking brake, but why would [we]?" instead;

Check turning car 1: 
	say "It's not clear what you mean for [us] to do." instead;
 
The Laundromat-facade is a privately-named unenterable room in Parking Lot South. Understand "laundromat" as the laundromat-facade. "[We] [peer] through the windows of the laundromat at the rows of aging machines. A sign on the door says 'Closed for renovations'. [We] [turn] away, unimpressed." 
Instead of entering the laundromat-facade:
	try going northwest;
	
Check going northwest from the strip mall parking lot south when the player does not know break-in-to-laundromat: 
	say "A sign on the laundromat door says 'Closed for renovations'." instead;
	
Check going northwest from the strip mall parking lot south when the player knows break-in-to-laundromat: 
	say "Predictably, the laundromat door is locked." instead;
	
The Pawn-Shop-facade is an unenterable room in Parking Lot South. Understand "pawn", "shop" as the pawn-shop-facade. "[We] [observe] the pawn shop with obvious distaste. The flashing neon sign in the window advertises 'Cash for gold!'".
	
Instead of entering the pawn-shop-facade:
	try going southwest;
	
Check going southwest from the strip mall parking lot south when the player does not know pawn-shop-screwdriver:
	say "[We're] not that desperate -- yet." instead;

Instead of going nowhere from the Parking Lot South:
	let dir be noun part of current action;
	if dir is south: 
		say "The swamp would just muck up [agent]'s clothes."; 
	otherwise if dir is east:
		say "An automatic car wash isn't of much use when one is on foot.";
	otherwise:
		continue the action;
	stop the action.
	
strip mall parking lot south is outside from the pawn shop.

The Strip Mall Parking Lot North is a room. It is north of The Strip Mall Parking Lot South. It is in Swamp Park. It is outdoors. The printed name is "north end of the strip mall parking lot.". The preposition is "at".
"This end is no more auspicious than the other. A convenience store lies to the east. To the west is a military recruitment center. North of here the parking lot exits onto a busy road. There is a rusty sign by the road naming the shopping center: Park Place. South is BOSH headquarters, among other things." 

Instead of going nowhere from the Parking Lot North:
	let dir be noun part of current action;
	if dir is north:
		say "Not on foot.";
	otherwise if dir is west:
		say "[We] will think about joining the military once the Bureau shuts down.";
	otherwise:
		continue the action;
	stop the action.
	
Book 2 - Pawn Shop
	
The pawn shop is southwest of strip mall parking lot south. "This is more the seedy, gloomy stereotype of a pawn shop than the glitzy santized version of TV reality shows. The blinds in the windows are closed to only allow the barest slant of sunlight in, leaving the sickly fluorescent lights to illuminate the room. There is the distinct smell of cigar smoke. The glass counter is filled with a large collection of possibly valuable items. Behind it is an impressive array of firearms."

A man called the pawn shop owner is in the pawn shop. Understand "dave" as the pawn shop owner.

Greeting response for the Pawn Shop Owner:
	say "The pawn shop owner grunts hello.";
	
The how-are-you-reply of the pawn shop owner is "Been better.".
	
for-a-screwdriver-pawn is a questioning quip.
	It is privately-named. The printed name is "for a screwdriver". [The true-name is "for-a-screwdriver-pawn".] Understand "for/a/screwdriver" as for-a-screwdriver-pawn.
	It mentions the screwdriver.
	The comment is "[We] [EG][stammer] 'Excuse me, I was wondering, I'm from the office next door...'
	
	[The pawn shop owner] [polish] a spot on the glass counter and [say], 'Spit it out, buddy.'
	
	'Uh, yes, by the way, nice establishment you have here...'
	
	'Sure.'
	
	[EG]'Anyway, is there any chance that maybe you, um, have a screwdriver? That I could borrow, just for a few minutes of course.'[PCG][smile] warmly and [say], 'Hi, I[']m Petula from next door -- '
	
	'[italic type]Very[roman type] pleased to meet you, Petula,' [regarding the pawn shop owner][interrupt] [the pawn shop owner].
	
	[We] [raise] one eyebrow. 'Of course. Likewise. Anyway, as I was saying, I'm Agent Goldberg from the Bureau next door --'[PCG]
	
	'Agent, Bureau, really?' [regarding the pawn shop owner][They] [chuckle]. 'In this hole? Who'd you piss off?'
	
	'You couldn't imagine, sir. But to why I came here: do you happen to have a screwdriver I could borrow?'[LF][lean] on the counter. 'Hey, do you have a screwdriver? Can't find mine and I really need one.'[end say]".
	The reply is "[EG][The pawn shop owner] [look] exasperated. 'Is that all? [PCG]The shopkeeper rolls his eyes. '[LF]The man shakes his head and says, 'Sorry, miss. [end say]I had one, but the guy who runs the laundromat borrowed it and didn't bring it back.'[line break]".
	It quip-supplies the pawn shop owner.
	It stocks the pawn shop owner.
	
After discussing for-a-screwdriver-pawn:
	now player knows screwdriver-in-laundromat;
	continue the action;
	
about the laundromat owner is a questioning quip.
	The comment is "[We] [EG][say], 'Huh, um. Do you know how I could, uh, find the laundromat owner -- was it owner, or manager? I don't suppose it really matters. Anyway, do you know where he, um, or she I guess, is?'[PCG][consider] for a moment and [say], 'How do you suppose I might get in touch with this man who runs the laundromat? I really could use a screwdriver.'[LF][nod]. 'Okay, then, how do I get in touch with this laundromat guy?'[end say]".
	The reply is "'Well, that's a tricky one. Laundromat's been closed for almost two weeks now, since the owner just split for some reason he didn't bother to share. Not likely to get ahold of him. If you're not averse to a little trespassing, though, see if you come across a watch. Another thing he borrowed.'".
	It quip-supplies the pawn shop owner.
	It follows for-a-screwdriver-pawn.
	
After discussing about the laundromat:
	now player knows break-in-to-laundromat;
	continue the action;
	
[An availability rule for about the laundromat owner:
	Unless player knows screwdriver-in-laundromat:
		it is off-limits; 
]
Book 3 - Laundromat

laundromat-region is a region. It is in Swamp Park.

The laundromat-store is northwest of strip mall parking lot south. "This is the laundromat.".
It is privately-named. The printed name is "laundromat". Understand "laundromat" as the laundromat-store. It is in laundromat-region.

The laundromat back room is west of the laundromat-store. It is in laundromat-region.

The laundromat basement is below the laundromat back room. It is in laundromat-region.

The back basement is south of the laundromat basement. It is in laundromat-region.

The door to nowhere is a door. It is east of the back basement.

Book 4 - Convenience Store

The Li'l Nectarine Convenience Store is east of the Parking Lot North. It is in Swamp Park. It is indoors. 
"Li'l Nectarine offers great service and low prices, or so they say. This one's cluttered aisles and sparse shelves could make one wonder if that's true. Behind the counter is the typical array of cigarettes and lottery tickets. Under the counter is a glass case containing various useful items."
 
The store clerk is a man in the Convenience Store. "The clerk, a scruffy man in his mid-twenties, is leaning against the counter, looking bored."
The shop counter is a supporter in the nectarine store. It is scenery.

The store shelves are a thing in the Convenience Store. They are scenery. "[We] hardly [need] bread, ketchup, or potato chips."

The flashlight is a device. Understand "light" as the flashlight.
Instead of switching on the flashlight:
	now the flashlight is lit.
	
Instead of switching off the flashlight:
	now the flashlight is not lit. 

The glass case is a container in the Convenience Store. it is openable. It is closed and locked. it is scenery. It is transparent. In the glass case is the flashlight, a laptop computer, some wireless earbuds, and a black smart phone. The wireless earbuds are plural-named.
	
The clerk owns the flashlight. The clerk is willing to sell the flashlight.
The price of the flashlight is $5.
The clerk owns the laptop. The clerk is willing to sell the laptop.
The price of the laptop is $1200.  
The clerk owns the earbuds. The clerk is willing to sell the earbuds. 
The price of the earbuds is $85.
The clerk owns the smart phone. The clerk is willing to sell the smart phone.
The price of the smart phone is $305.
   
 
[Carry out imploring the clerk for something when the flashlight is nowhere during blackout:
	if the topic understood includes "light/flashlight":
		say "The clerk pulls out a flashlight and lays it on the counter. 'Five dollars,' he says."; 
		move the flashlight to the counter.	]	
		
Carry out quizzing the clerk about the glass case:
	say "'You want something? Name it.'" instead;
	
for-a-screwdriver-clerk is a repeatable questioning quip.
	It is privately-named. The printed name is "for a screwdriver". [The true-name is "for-a-screwdriver-clerk".] Understand "for/a/screwdriver" as for-a-screwdriver-clerk.
	It mentions the screwdriver.
	The comment is "[We] [ask], 'Would you happen to have a screwdriver I could borrow?'".
	The reply is "[one of]The clerk looks at you skeptically. 'Sorry, no. Try the pawn shop guy.'[pawn-shop-screwdriver][or]He looks annoyed. 'And have you run off with it? No way. Like I said, try the pawn shop!'[stopping]".
	It quip-supplies the clerk.
	
An availability rule for for-a-screwdriver-clerk:	
	if the player knows vent-screws and the screwdriver is not seen:
		always available;
	


Swamp Park ends here.
