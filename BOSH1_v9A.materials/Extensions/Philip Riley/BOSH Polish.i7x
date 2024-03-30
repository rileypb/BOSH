BOSH Polish by Philip Riley begins here.

Include Polish by Philip Riley.
Include Scheduled People by Philip Riley.

Check taking a door:
	say "[We] can't take that with [us]." instead;

Check pushing a door:
	if the noun is open:
		try closing the noun instead;
	otherwise:
		try opening the noun instead;

Table of No Names (Continued)
named person (person)	anonymous description (text)	unnamed description (text)	proper name (text)
Hutz	"bony old man"	"town groundsman"	"Hutz"

Table of Walls (continued)
locale (a room)	has walls (a truth state)	wall description (a text)	touch description (a text)
Christy's office	--	"The walls are painted a bright cheerful orange."	--

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
Inside-the-dumpster	Back lot	"[We] [climb] out of the dumpster."
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
Back lot	{northwest, west, southeast, south, southwest}	"That way is obstructed by a chain link fence."
Back lot	{northeast}	"That way runs smack into the building."
Enigma Lake town hall	--	"Exits are to the north and south."
Main Street 200 block	{northwest, northeast}	"Go north to enter the town hall."
Main Street 200 block	--	"[We] can go north into the town hall, or south into Rolle's Department Store. In addition, Main Street leads east and west."
Lake Street by the gym	{west, southwest, northwest}	"[We] can't enter the town hall from here."
Solvay Road 100 block	{west}	"The fire station's garage door is locked up tight."
Solvay Road 100 block	{east, northeast, southeast}	"There is no entrance to the town hall from here."
Solvay Road 100 block	--	"[We] can follow Solvay Road north or south. The fire station is to the west."
Radio Station Roof	{north, south, east, west, northeast, northwest, southeast, southwest}	"That would be a long way down."
Main at Lake	{northwest}	"[We] can't enter the town hall from here."
Main at Lake	{northeast}	"[We] can't enter the gymnasium from here."
Main at Lake	{south, east}	"That way ends in a residential building. The street leads north and west."
Main at Lake	{southwest}	"[We] can't enter Rolle's Department Store from here."

[Below, add a message for the player when they try to take something that can't be taken. Be creative; don't just say the same thing over and over agian.]
Table of Frustrated Taking (continued)
target (a thing)	message (a text)	move message (a text)
stacks of crates	"Those are too heavy to take."	"Those are too heavy to move unaided."
membership book	"[We] hardly [need] it, and it might useful to someone else."	"What's the point?"
adornment	"[We] would have to scale the obelisk to get it."	"[We] would have to scale the obelisk to get to it."
floor waxer	"It's too heavy to lift."	"[We] [push] it around a little while -- whee! (in a kind of really slow way.)"
abandoned pickup truck	"It's too heavy to lift."	"[We] can't get the truck out of park without the keys."
aisles	"How do you propose [we] [take] something that's not a thing?"	"That would require moving all of the shelves."
the floor	"What would [we] walk on?"	"Jump up and down on it? [We] [don't] think so."
the ceiling	"[We] can't reach it."	"[We] can't reach it."
the walls	"[We] [attempt] to take the walls, but they resist."	"Go on, push! Push harder!"
antacids	"[We] [feel] fine for now."	"What's the point?"
antique wooden file cabinet	"It's too heavy to lift."	"It's too heavy to move unaided."
armchair	"It's too heavy to lift."	"It's too heavy to move unaided."
automatic car wash	"All [we] would get is wet."	"All [we] would get is wet."
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
closet	"What?"	"What?"
coatrack	"Please don't take the furniture, even if it is kind of... not really furniture."	"Margaret likes it where it is."
coffee table	"Margaret worked so hard to get furniture for the office, [we] [don't] want to take it away."	"Margaret is very particular about her furniture. [We] [leave] the table be."
convenience-store-facade	"Now what would [we] do with that?"	"[We] attempt to push the store around, but it's not going anywhere."
couch	"That would take at least two people."	"Are you just trying to tick Margaret off?"
curios	"Those belong to Chief Klimp."	"Those belong to Chief Klimp."
degree	"It's good where it is."	"It's good where it is."
department store sign	"It's out of reach."	"It's out of reach."
descending stair	"[We] [don't] want to take the stairs."	"That's not going to happen."
desk shelves	"Those are attached to the desk."	"Those are attached to the desk."
Doris's desk	"[We] [attempt] to take the desk, but Doris objects."	"[We] [attempt] to move the desk, but Doris objects."
drawing of the Pitfall Snake	"It's good where it is."	"It's good where it is."
dumpster	"[We] [pick] up the dumpster and [tuck] it under one arm... Just kidding."	"It's not on wheels or anything."
electrical outlet	"Well, maybe if [we] had a screwdriver. LOL."	"How? It's attached to the wall."
equipment cabinet	"It's affixed to the wall."	"It's affixed to the wall."
Ethereal Pillar	"[We] try, but its etherealness makes it difficult to grasp."	"[We] try, but its etherealness makes it difficult to grasp."
fire facade	"Now, what would [we] do with a whole fire station?"	"[We] attempt to push the fire station around, but it's not going anywhere."
firearms	"This isn't that kind of game."	"What's the point?"
flashlight	"[We] need to buy it first."	"[We] need to buy it first."
Fresnel Facade	"Whoever this Fresnel is, he might not want us to take his store. Oh wait, it's about to be flooded. Let's just say [we] can't lift a building."	"[We] attempt to push the store around, but it's not going anywhere."
front window	"That's attached to the building."	"Push too hard and [we]'ll be sorry."
furnishings	"Those are a little cumbersome to carry around."	"[We] rearrange the furniture a bit, but it's only fun for a moment."
garage door	"Not gonna happen."	"It's locked."
glass case	"It's too heavy to lift."	"It's too heavy to move unaided."
glass counter	"It's affixed to the floor."	"It's affixed to the floor."
gleaming floor	"Now that would be a neat trick."	"If [we] moved the floor, where would the building go?"
globe	"That belongs to Chief Klimp."	"That belongs to Chief Klimp."
glove compartment	"How? Just rip it out of the dashboard?"	"How? Just rip it out of the dashboard?"
groceries	"[We] [don't] need them."	"What's the point?"
gym front desk	"That's attached to the floor."	"That's attached to the floor."
gymnasium facade	"[We] better hit the gym before [we] try to lift it."	"[We] attempt to push the gym around, but it's not going anywhere."
heating vent	"It's part of the floor."	"It doesn't budge."
Henry's facade	"What would Henry think? Sure, due to the flood, it's about to be destroyed, but [we] still can't lift a building."	"[We] attempt to push the store around, but it's not going anywhere."
Hora de la Muerte	"Chief Klimp might object."	"Chief Klimp might object."
Horton facade	"Oh good, save it from the flood. Good idea."	"[We] attempt to push the house around, but it's not going anywhere."
Horton-back-facade	"Oh good, save it from the flood. Good idea."	"[We] attempt to push the house around, but it's not going anywhere."
industrial property	"[We] [consider] taking the property, but [we] [don't] have a use for it."	"[We] can't get a good grip on the property."
information desk	"That's attached to the floor."	"That's attached to the floor."
interstate	"[We] [don't] want to get run over."	"[We] [don't] want to get run over."
jewelry	"[We] [don't] need it."	"What's the point?"
keypad	"That's a part of the portal."	"That's a part of the portal."
kitchen chairs	"Those are a little cumbersome to carry around."	"[We] rearrange the furniture a bit, but it's only fun for a moment."
kitchen table	"It's too heavy to lift."	"What's the point?"
laptop computer	"[We] would need to buy it first."	"[We] would need to buy it first."
laundromat desk	"That's too heavy to lift."	"[We] [move] it a little bit, but it doesn't reveal any secrets."
laundromat-facade	"I can see the headlines now: 'Local agent arrested for stealing a laundromat.'"	"[We] attempt to push the laundromat around, but it's not going anywhere."
lectern	"May God strike [us] down if [we] take it."	"May God strike [us] down if [we] move it."
light switch	"[We] can't take it with [us]."	"[We] can't take it with [us]."
logs	"[We] [don't] need them."	"[We] [push] them around, but they don't reveal anything interesting."
lunch counter	"That's attached to the floor."	"That's attached to the floor."
mahogany desk	"It's too heavy to lift."	"It's too heavy to move unaided."
mahogany side table	"You could carry it, but it's not very practical."	"[We] [push] it around a bit, but it's only fun for a moment."
makeshift seating area	"Margaret worked so hard to get furniture for the office, [we] [don't] want to take it away."	"Margaret is very particular about her furniture. [We] [leave] them be."
microphone	"The microphone is attached to the stand, which is attached to the floor."	"The microphone is attached to the stand, which is attached to the floor."
military-facade	"Now don't go messing with the military."	"[We] attempt to push the building around, but it's not going anywhere."
Moira's bookshelves	"It's too heavy to lift."	"It's too heavy to move unaided."
Moira's chair	"It's too burdensome to carry around."	"[We] [spin] around in the chair for a moment. What fun."
Moira's desk	"It's too heavy to lift."	"It's too heavy to move unaided."
Moira's drawer	"Now don't go messing with Moira's stuff."	"[We] [don't] want to mess with Moira's stuff."
narrow bed	"Hutz is using it."	"Hutz is using it."
narrow staircase	"[We] [don't] want to take the stairs."	"That's not going to happen."
obelisk	"[Our] attempt to save the obelisk from the flood is noble, but futile."	"[Our] attempt to save the obelisk from the flood is noble, but futile."
oddities	"Those belong to Chief Klimp."	"Those belong to Chief Klimp."
open hearth	"You do understand what a hearth is, right?"	"You do understand what a hearth is, right?"
opening_	"What a concept."	"What a concept."
opening-2	"What a concept."	"What a concept."
opening-3	"What a concept."	"What a concept."
paperwork	"[We] [don't] need it."	"[We] [don't] need it."
parlor chairs	"Those are a little cumbersome to carry around."	"[We] rearrange the furniture a bit, but it's only fun for a moment."
parlor table	"It's too heavy to lift."	"What's the point?"
patriotic posters	"Don't mess around with Uncle Sam."	"Don't mess around with Uncle Sam."
pawn-shop-facade	"That would just upset Dave."	"[We] [attempt] to push the store around, but it's not going anywhere."
pews	"God is watching."	"God is watching."
photo of Pluto	"It's good where it is."	"It's good where it is."
photo of soccer team	"It's good where it is."	"It's good where it is."
plates	"[We] [don't] even want to touch them, much less take them."	"[We] [don't] even want to touch them."
portal to the past	"Notice where it's attached to the floor."	"Notice where it's attached to the floor."
prints	"Those belong to Chief Klimp."	"Those belong to Chief Klimp."
pulpit	"May God strike [us] down if [we] take it."	"May God strike [us] down if [we] move it."
radio station facade	"[We] [attempt] to lift the building, but it's too heavy."	"[We] [attempt] to push the building around, but it's not going anywhere."
Reading-Room-Facade	"And rob the community of one of its few sources of culture?"	"[We] attempt to push the store around, but it's not going anywhere."
reception desk	"That's attached to the floor."	"That's attached to the floor."
rickety wardrobe	"It's too heavy to lift."	"It's too heavy to move unaided."
Rolle's facade	"What would Rolle think?"	"[We] attempt to push the store around, but it's not going anywhere."
sale posters	"[We] [don't] want to carry around useless stuff."	"They're fine where they are."
sales counter	"That's attached to the floor."	"That's attached to the floor."
shack facade	"Surely someone is very attached to this shack."	"[We] attempt to push the shack around, but it's not going anywhere."
shadows	"Yeah, right."	"Yeah, right."
shelves of office supplies	"[We] [don't] need them."	"[We] [don't] need them."
shop counter	"That's attached to the floor."	"That's attached to the floor."
small bed	"It's a little cumbersome to carry around."	"[We] [push] it around a bit, but it's only fun for a moment."
soundboard	"It's too heavy to lift."	"It's too heavy to move unaided."
spacetime control	"It's part of the portal."	"It's part of the portal."
stained glass windows	"Those belong to God."	"Those belong to God."
store shelves	"Leave them be."	"Leave them be."
strange symbols	"I'd like to see that."	"I'd like to see that."
tapestry	"[We] would rather not incur the wrath of God."	--
town hall facade	"[We] [save] the town hall in an heroic effort... No."	"[We] attempt to push the building around, but it's not going anywhere."
trees	"[We] [don't] have a hatchet."	"Futile."
tripod	"It has been chained to the floor."	"It has been chained to the floor."
trivia competition award	"It's good where it is."	"It's good where it is."
TV aerial antenna	"It's attached to the roof."	"It's attached to the roof."
used coffee cups	"Tempting, but no."	"Tempting, but no."
washing machines	"And deprive the laundromat of its livelihood?"	"[We] [move] them a little bit, but they don't reveal anything interesting."
weather	"Intriguing concept."	"Intriguing concept."
wires	"The wires travel up through a hole in the ceiling. They can't be taken without some work."	"The wires travel up through a hole in the ceiling. They can't be moved without some work."
work schedule	"[We] [don't] need it."	"[We] [don't] need it."
workshed-facade	"[We] attempt to push the shed around, but it's not going anywhere."	"[We] attempt to push the shed around, but it's not going anywhere."
Waiting-for-the-Aliens	"That belongs to Chief Klimp."	"That belongs to Chief Klimp."
Travels in Time	"That belongs to Chief Klimp."	"That belongs to Chief Klimp."
Dictionary of Strangeness	"That belongs to Chief Klimp."	"That belongs to Chief Klimp."


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
Field Office Reception	--	"Apparently stricken with a stunning lack of imagination, someone has installed grey industrial carpet."
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
Horton family house kitchen	--	"Old, worn wood."
Horton family house parlor	--	"Old, worn wood."
The Second Floor of the Horton House	--	"Old, worn wood."
Horton graveyard	--	"The town has done a good job of maintaining the grass and the gravel paths."
Lake at ridge	--	"Nicely-maintained black asphalt."
Lake shore north of the park	--	"The grass of the park gives way to the sand of the beach."
Lake shore west	--	"Grass and sand."
Solvay-Road-by-the-lake	--	"Nicely-maintained black asphalt."
Dirty shack	--	"Dirty, worn wood."
Workshed	--	"An old, creaky wood floor."
Hidden cave	--	"The floor of the cave is a mix of gravel and dirt."
Portal cave	--	"The floor of the cave is a mix of gravel and dirt."


Understand "asphalt" as the floor when the location is strip mall parking lot south.
Understand "asphalt" as the floor when the location is strip mall parking lot north.
Understand "tile" as the floor when the location is li'l nectarine convenience store.
Understand "carpet" as the floor when the location is Dave's pawn shop.
Understand "carpet" as the floor when the location is Front Office.
Understand "carpet" as the floor when the location is BOSH office Hallway.
Understand "carpet" as the floor when the location is Biff's Office.
Understand "carpet" as the floor when the location is Moira's Office.
Understand "carpet" as the floor when the location is BOSH Chief's Office.
Understand "tile" as the floor when the location is laundromat-store.
Understand "tile" as the floor when the location is laundromat back room.
Understand "concrete" as the floor when the location is laundromat basement.
Understand "concrete" as the floor when the location is back basement.
Understand "asphalt" as the floor when the location is the back lot.
Understand "carpet" as the floor when the location is Field Office Reception.
Understand "carpet" as the floor when the location is Field Office Hallway.
Understand "carpet" as the floor when the location is the field office chief's office.
Understand "carpet" as the floor when the location is Minerva's Office.
Understand "carpet" as the floor when the location is Christy's Office.
Understand "carpet" as the floor when the location is Portal Room 1.
Understand "carpet" as the floor when the location is Portal Room 2.
Understand "terrazzo" as the floor when the location is Radio Station WGXC.
Understand "terrazzo" as the floor when the location is Broadcast Booth.
Understand "asphalt" as the floor when the location is Main at Lake.
Understand "asphalt" as the floor when the location is Main Street 200 block.
Understand "tile" as the floor when the location is Rolle's Department Store.
Understand "asphalt" as the floor when the location is Main at Solvay.
Understand "tile" as the floor when the location is Henry's Hot Skillet.
Understand "tile" as the floor when the location is Fresnel's Music.
Understand "wood" as the floor when the location is The Reading Room.
Understand "concrete" as the floor when the location is Bookstore Basement.
Understand "wood" as the floor when the location is Enigma Lake Gymnasium.
Understand "asphalt" as the floor when the location is Lake Street by the gym.
Understand "wood" as the floor when the location is Enigma Lake Town Hall.
Understand "asphalt" as the floor when the location is Solvay Road 100 block.
Understand "concrete" as the floor when the location is Fire Station 1.
Understand "wood" as the floor when the location is First Utilitarian Church of Enigma Lake.
Understand "wood" as the floor when the location is Vestry.
Understand "wood" as the floor when the location is Steeple.
Understand "lawn/lawns/path/paths" as the floor when the location is Enigma Park.
Understand "asphalt" as the floor when the location is Solvay road leading out of town.
Understand "wood" as the floor when the location is Horton family house kitchen.
Understand "wood" as the floor when the location is Horton family house parlor.
Understand "wood" as the floor when the location is The Second Floor of the Horton House.
Understand "grass/gravel/path/paths" as the floor when the location is Horton graveyard.
Understand "asphalt" as the floor when the location is Lake at ridge.
Understand "sand" as the floor when the location is Lake shore north of the park.
Understand "grass/sand" as the floor when the location is Lake shore west.
Understand "asphalt" as the floor when the location is Solvay-Road-by-the-lake.
Understand "wood" as the floor when the location is Dirty shack.
Understand "wood" as the floor when the location is Workshed.
Understand "gravel/dirt" as the floor when the location is Hidden cave.
Understand "gravel/dirt" as the floor when the location is Portal cave.


[ Collapsed root cellar	--	"The floor of the cellar is a mix of gravel and dirt."  ]



BOSH Polish ends here.