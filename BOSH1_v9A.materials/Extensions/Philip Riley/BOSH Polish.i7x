BOSH Polish by Philip Riley begins here.

Include Polish by Philip Riley.
Include Scheduled People by Philip Riley.

Check taking a door:
	say "You can't take that with you." instead;

Check pushing a door:
	if the noun is open:
		try closing the noun instead;
	otherwise:
		try opening the noun instead;

Table of No Names (Continued)
named person (person)	anonymous description (text)	unnamed description (text)	proper name (text)
Hutz	"bony old man"	"town groundsman"	"Hutz"

Table of Transitions
source room (a room)	target room (a room)	transition text (a text)	used (a truth state)
Strip Mall Parking Lot South	Strip Mall Parking Lot North	"[We] [trudge] to the other end of the parking lot. It's much like where [we] left."	--
Strip Mall Parking Lot South	Front Office	"Just like in the store this once was, the door chimes as [we] [walk] in."
Strip Mall Parking Lot South	Dave's pawn shop	"'Cha-ching!'[first time] rings the electronic chime as [we] [step] into the store.[only]"
Strip Mall Parking Lot North	Strip Mall Parking Lot South	"[We] [walk] back to the south end of the parking lot."
Strip Mall Parking Lot North	Li'l Nectarine Convenience Store	"[We] [are] greeted by a blast of music as [we] [enter] the store."
Front Office	Strip Mall Parking Lot South	"[We] [step] out of the office into the parking lot."
Front Office	BOSH office Hallway	"[We] [extricate] [ourselves] from Margaret's clutches."
BOSH office Hallway	Biff's Office	"[We] [enter] their new office full of anticipation. Well, maybe dread is a better word."
BOSH office Hallway	Chief's Office	"[We] [take] a deep breath and [enter] the office of the Chief of BOSH."
Chief's Office	BOSH office Hallway	"[We] [breathe] easier as [we] [leave] the office of the Chief of BOSH."
Biff's Office	Back lot	"The scent of asphalt and old cigarette butts greets [us] as [we] [leave] the office."
Back lot	astral-tunnel-1	"[We] [step] carefully into the astral tunnel."
astral-tunnel-2	laundromat back room	"[We] [stare] with amazement as [we] [emerge] into the laundromat."
laundromat back room	laundromat basement	"[We] carefully [navigate] the narrow stairs to the basement."	
Li'l Nectarine Convenience Store	Strip Mall Parking Lot North	"[We] [exit] the store into the relative quiet of the nearby traffic."
Dave's pawn shop	Strip Mall Parking Lot South	"[one of]Once again -- 'Cha-ching!' -- as [we] [leave] the store.[or]'Cha-ching!'[stopping]"
Enigma Lake Town Hall	Enigma Park	"[We] [push] through the back door into the cool night."	--


Table of Excuses (continued)
source room (a room)	dirs (a list of directions)	excuse (a text)
Strip Mall Parking Lot South	{south, southeast}	"The swamp would just muck up [agent]'s clothes."
Strip Mall Parking Lot South	{east}	"An automatic car wash isn't of much use when one is on foot."
Strip Mall Parking Lot South	{northeast}	"A fence prevents [us] from leaving the property."
Strip Mall Parking Lot North	{northeast, southeast}	"A fence prevents [us] from leaving the property."
Strip Mall Parking Lot North	{northwest, southwest}	"The only thing to the west is the military recruitment center."
Enigma Lake town hall	--	"Exits are to the north and south."
Main Street 200 block	{northwest, northeast}	"Go north to enter the town hall."
Main Street 200 block	--	"You can go north into the town hall, or south into Rolle's Department Store. In addition, Main Street leads east and west."
Lake Street by the gym	{west, southwest, northwest}	"You can't enter the town hall from here."
Solvay Road 100 block	{west}	"The fire station's garage door is locked up tight."
Solvay Road 100 block	{east, northeast, southeast}	"There is no entrance to the town hall from here."
Solvay Road 100 block	--	"You can follow Solvay Road north or south. The fire station is to the west."
Radio Station Roof	{north, south, east, west, northeast, northwest, southeast, southwest}	"That would be a long way down."
Main at Lake	{northwest}	"You can't enter the town hall from here."
Main at Lake	{northeast}	"You can't enter the gymnasium from here."
Main at Lake	{south, east}	"That way ends in a residential building. The street leads north and west."
Main at Lake	{southwest}	"You can't enter Rolle's Department Store from here."

[Below, add a message for the player when they try to take something that can't be taken. Be creative; don't just say the same thing over and over agian.]
Table of Frustrated Taking (continued)
target (a thing)	message (a text)	move message (a text)
stacks of crates	"Those are too heavy to take."	"Those are too heavy to move unaided."
membership book	"[We] hardly [need] it, and it might useful to someone else."	"What's the point?"
adornment	"[We] would have to scale the obelisk to get it."	"[We] would have to scale the obelisk to get to it."
floor waxer	"It's too heavy to lift."	"[We] [push] it around a little while -- whee! (in a kind of really slow way.)"
abandoned pickup truck	"It's too heavy to lift."	"It's too heavy to move unaided."
aisles	"How do you propose [we] [take] something that's not a thing?"	"That would require moving all of the shelves."
the floor	"What would [we] walk on?"	"Jump up and down on it? [We] [don't] think so."
the ceiling	"[We] can't reach it."	"[We] can't reach it."
the walls	"[We] [attempt] to take the walls, but they resist."	"Go on, push! Push harder!"
antacids	"[We] [feel] fine for now."	"What's the point?"
antique wooden file cabinet	"It's too heavy to lift."	"It's too heavy to move unaided."
armchair	"It's too heavy to lift."	"It's too heavy to move unaided."
automatic car wash	"All [we]'d get is wet."	"All [we]'d get is wet."
auxiliary portal	"Observe where it's attached to the floor."	"Observe where it's attached to the floor."
bank of lockers	"[We] [strain], but to no avail."	"They're attached to the wall. Firmly. And the wall's not moving."
basement shelves	"Don't be silly."	"Don't be silly."
Biff's chair	"It's too cumbersome to lug around."	"[We] [push] it around a bit, but it's only fun for a moment."
Biff's desk	"It's too heavy to lift."	"It's too heavy to move unaided."
blinds	"Dave might object."	"Dave is very particular about his blinds."
Book of Utilitarianism	"It must be bad luck to steal a book from a church. [We] [leave] it here."	"What's the point?"
bookcase	"It's too heavy to lift."	"It's too heavy to move unaided."
bookshelves	"Don't be silly."	"Don't be silly."
booth window	"That's attached to the building."	"Push too hard and [we]'ll be sorry."
BOSH front desk	"Margaret's put a lot of work into that, don't just take it away from her."	"Margaret has very carefully arranged the room, as much as it looks like chaos."
boxes of books	"They're kind of heavy. [We] [leave] them be."	"They're kind of heavy. [We] [leave] them be."
boxes of supplies	"[We] [don't] need them."	"[We] [don't] need them."
bricked-up-hole	"Certainly, [we] could take the wall, but it would be a bit much to carry."	"Sure, go ahead and try."
broadcast tower	"While the novelty of owning a broadcast tower is appealing, [we] [don't] have the means to move it."	"This is a job for a crane."
broken washing machine	"That would be difficult to move even with the handtruck."	"That would be difficult to move even with the handtruck."
building	"Do you ever listen to yourself?"	"Do you ever listen to yourself?"
Bureau photos	"It wouldn't be fair to take them."	"And put them where? They're fine where they are."
busy road	"[We] [don't] want to get run over."	"[We] [don't] want to get run over."
CBD oil	"[We] [don't] need it."	"What's the point?"
chain link fence	"[We] [don't] want to load up [our] arms with chain link fence, when [we] might need to carry a bridge or a tower later."	"[We] [push] the fence around a bit, but it just springs back into place."
Chief Huffton Klimp	"[We]'d rather not tote him all over the place."	--
chief's black leather swivel chair	"If [we] [take] it, where would the Chief sit?"	"[We] [spin] around in the chair for a moment. What fun."
chief's desk	"It's too heavy to lift."	"It's too heavy to move unaided."
chief's shelves	"It's just not a practical idea, you know?"	"It's just not a practical idea, you know?"
Christy	"[We] [don't] want to carry her around."	"Christy may be soft-spoken, but she's not a pushover."
Christy's desk	"It's too heavy to lift."	"It's too heavy to move unaided."
cigarettes	"[We] [don't] smoke."	"What's the point?"
coatrack	"Please don't take the furniture, even if it is kind of... not really furniture."	"Margaret likes it where it is."
coffee table	"Margaret worked so hard to get furniture for the office, [we] [don't] want to take it away."	"Margaret is very particular about her furniture. [We] [leave] the table be."
couch	"That would take at least two people."	"Are you just trying to tick Margaret off?"
curios	"Those belong to Chief Klimp."	"Those belong to Chief Klimp."
degree	"It's good where it is."	"It's good where it is."
department store sign	"It's out of reach."	"It's out of reach."
descending stair	"[We] [don't] want to take the stairs."	"That's not going to happen."
desk shelves	"Those are attached to the desk."	"Those are attached to the desk."



Table of Floors (continued)
locale (a room)	has floor (a truth state)	floor description (a text)	touch description (a text)
strip mall parking lot south	--	"Typical potholed black asphalt."
strip mall parking lot north	--	"Typical potholed black asphalt."
li'l nectarine convenience store	--	"Grungy black and white tile."
Dave's pawn shop	--	"Dingy stained industrial carpet."
Front Office	--	"It's industrial carpet, but it's clean."
BOSH office Hallway	--	"It's industrial carpet, but it's clean."
Biff's Office	--	"It's industrial carpet, but it's clean."
Moira's Office	--	"It's industrial carpet, but it's clean."
BOSH Chief's Office	--	"It's industrial carpet, but it's clean."
laundromat-store	--	"Grimy green and grey tile."
laundromat back room	--	"Grimy green and grey tile."
laundromat basement	--	"Grey concrete."
back basement	--	"Grey concrete."
back lot	--	"Typical potholed black asphalt."
astral-tunnel-1	--	"The floor (ground?) is a featureless white."
astral-tunnel-2	--	"The floor (ground?) is a featureless white."
astral-tunnel-3	--	"The floor (ground?) is a featureless white."
featureless hyperplane	--	"Like everything else here, the floor (ground?) is a featureless white."
Field Office Reception	--	"Apparently stricken with a stunning lack of imagination, someone has installed grey industrial carpet"
Field Office Hallway	--	"Apparently stricken with a stunning lack of imagination, someone has installed grey industrial carpet." 
the field office chief's office	--	"Apparently stricken with a stunning lack of imagination, someone has installed grey industrial carpet."
Minerva's Office	--	"Apparently stricken with a stunning lack of imagination, someone has installed grey industrial carpet."
Christy's Office	--	"Apparently stricken with a stunning lack of imagination, someone has installed grey industrial carpet."
Portal Room 1	--	"Apparently stricken with a stunning lack of imagination, someone has installed grey industrial carpet."
Portal Room 2	--	"Apparently stricken with a stunning lack of imagination, someone has installed grey industrial carpet."
Radio Station Roof	--	"Tar paper and gravel."
Radio Station WGXC	--	"Black and red terrazzo."
Broadcast Booth	--	"Black and red terrazzo."
Main at Lake	--	"Nicely-maintained black asphalt."
Main Street 200 block	--	"Nicely-maintained black asphalt."
Rolle's Department Store	--	"Polished black and white tile."
Main at Solvay	--	"Nicely-maintained black asphalt."
Henry's Hot Skillet	--	"Polished black and white tile."
Fresnel's Music	--	"Polished black and white tile."
The Reading Room	--	"Wooden floorboards covered here and there with tasteful area rugs."
Bookstore Basement	--	"Grey concrete."
Enigma Lake Gymnasium	--	"Polished wood."
Lake Street by the gym	--	"Nicely-maintained black asphalt."
Enigma Lake Town Hall	--	"Polished wood."
Solvay Road 100 block	--	"Nicely-maintained black asphalt."
Fire Station 1	--	"Grey concrete."
The Horton astral tunnel	--	"Like everything else astral, the floor (ground?) is a featureless white."
First Utilitarian Church of Enigma Lake	--	"The floor is polished wood, adorned with carpets in the aisles and around the altar."
Vestry	--	"The floor is polished wood, covered by a large rug showing scenes from the life of the church's founder, St. Linus the Cynical."
Steeple	--	"Polished wood."
Enigma Park	--	"Pretty green lawns criss-crossed by concrete paths."
Solvay road leading out of town	--	"Nicely-maintained black asphalt."
Horton house	--	"Old, worn wood."
Horton graveyard	--	"The town has done a good job of maintaining the grass and the gravel paths."
Lake at ridge	--	"Nicely-maintained black asphalt."
Lake shore north of the park	--	"The grass of the park gives way to the sand of the beach."
Lake shore west	--	"Grass and sand."
Solvay-Road-by-the-lake	--	"Nicely-maintained black asphalt."
Dirty shack	--	"Dirty, worn wood."
Workshed	--	"An old, creaky wood floor."
Hidden cave	--	"The floor of the cave is a mix of gravel and dirt."
Portal cave	--	"The floor of the cave is a mix of gravel and dirt."

[ Collapsed root cellar	--	"The floor of the cellar is a mix of gravel and dirt."  ]



BOSH Polish ends here.