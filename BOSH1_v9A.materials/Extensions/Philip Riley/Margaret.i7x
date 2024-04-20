Margaret by Philip Riley begins here.

Use authorial modesty.

Include Swamp Park by Philip Riley.
Include Real People by Philip Riley.

Book 1 - Basics

Margaret Chao is a woman. The description is "[Margaret Chao] is the latest occupant of the rapidly revolving post of office manager. Most of [their] job involves ordering stationery and office supplies, shredding documents, and keeping track of office equipment."
The snarky remark of Margaret is "Margaret Chao: she may get it wrong, but at least it's with enthusiasm."

Rule for printing the name of Margaret Chao: say "Margaret".

Margaret Chao is familiar.

[Rule for deciding the concealed possessions of Margaret Chao:
	If the particular possession is the cardboard boxes, no; 
	no;]

[The help text of Margaret is "[Margaret] is the latest office manager.".]

Book 2 - Margaret's Dialogue

looking for the desk key is a truth state that varies. 

about the whereabouts of the desk key is a questioning quip.
	it mentions the little grey key. 
	Understand "where the desk/-- key is", "where is the desk/-- key" as about the whereabouts of the desk key.
	the comment is "[We] [say], 'Hey Margaret, do you know anything about my desk key?'".
	[the comment is "[We] [say], 'Hey, Margaret. Do you have the key to my desk?'".]
	the reply is "'Sure I do -- I put it in your desk.' She furrows her brow. 'What's the matter?'"
	It quip-supplies Margaret.
	
An availability rule for about the whereabouts of the desk key:
	if the player knows desk-locked and the player does not know key-is-lost:
		always available;
		
After discussing the whereabouts of the desk key:
	now player knows key-is-lost;
	[ activate the Table of Desk Unlocking Hints; ]
	continue the action;
	
about the status of the computer is a questioning quip.
	it mentions Biff's computer.
	the comment is "'Margaret', [we] [say], 'what's up with my computer?'".
	the reply is "'[regarding Margaret]Oh, it got busted up during the move. I have it behind my desk -- you can see it if you want. We'll have to get you a new one.'".
	It quip-supplies Margaret.
	
An availability rule for about the status of the computer:
	if biff's computer is seen:
		never available;
	if biff's office is visited:
		always available;
	
for the wrench is a questioning quip.
	It mentions the hex wrench. The printed name is "for the hex wrench". [The true-name is "for the wrench".]
	the comment is "[We] [say], 'Do you happen to have the hex wrench from putting together my desk?'".
	the reply is "'Well, I [italic type]did[roman type], but I dropped it down a heating vent behind my desk.'"
	It quip-supplies Margaret.
	
An availability rule for for the wrench:
	if the player knows key-is-lost and player knows hex-screws:
		always available;

After discussing for the wrench:
	now the player knows hex-wrench-lost;
	continue the action;
	
for-a-screwdriver is a questioning quip.
	It is privately-named. The printed name is "for a screwdriver". [The true-name is "for-a-screwdriver".] Understand "for/a/screwdriver" as for-a-screwdriver.
	It mentions the red screwdriver.
	The comment is "[if the current interlocutor is Margaret][We] [ask], 'Margaret, where's the screwdriver?'[otherwise][We] [ask], 'Would you happen to have a screwdriver I could borrow?'[end if]".
	The reply is "'Umm... I think it was in a box we had to leave behind.' [Margaret] looks embarrassed. 'What? I never thought we'd need it. This isn't a construction site after all. Maybe if Klimp had paid for the bigger UHaul...' [They] stares past [us] awkwardly.".
	It quip-supplies Margaret;
	
An availability rule for for-a-screwdriver:
	if the player knows vent-screws and the player does not know margaret-no-screwdriver:
		always available;

After discussing for-a-screwdriver:
	now the player knows margaret-no-screwdriver;
	continue the action;
		
to unlock the backdoor is a questioning quip. 
	Understand "back/door" as to unlock the backdoor.
	It mentions the BOSH back door.
	The comment is "[We] [ask], 'Could you unlock the back door, Margaret?'".
	The reply is "'Sure, sure, in a minute. What do you want back there anyway? There's only a dumpster.' She pauses for a moment and mutters to herself. 'Which reminds me, I need to get these boxes broken down.' She picks up a couple and flattens them.".
	It quip-supplies Margaret.

After discussing to unlock the backdoor:
	now Margaret carries the margaret-flattened-boxes;
	now the current interlocutor is nothing;
	add behavior throw out boxes to margaret;
	now the margaret box counter is 0;
	
An availability rule for to unlock the backdoor:
	If the player knows back-door-is-locked and back lot is not visited:
		always available;

about the phone exchange is a questioning quip.
	The comment is "[We] [ask], 'Tell me what's going on with the phones again?'".
	The reply is "[Margaret] looks apologetic. 'I'm sorry, I thought everyone knew. Budget cuts. They're trading in all our smart phones for cheaper models.'".
	It quip-supplies Margaret.
	It stocks Margaret.

about the locked desk is a questioning quip.
	The comment is "[We] [ask], 'Margaret, do you know any way to get into my desk?'".
	The reply is "'Hmm... take it apart?'".
	It quip-supplies Margaret.

An availability rule for about the locked desk:
	if the player knows desk-locked and the player knows key-is-lost:
		always available;

klimp-whereabouts is a questioning quip.
	It mentions Chief Huffton Klimp.
	It is privately-named.
	The printed name is "where Klimp is".
	Understand "where is Klimp", "is Klimp here", "is Klimp in the office", "has Klimp come in yet", "where klimp is" as klimp-whereabouts.
	The comment is "[We] [ask], 'Margaret, have you seen Klimp this morning?'".
	The reply is "[if Chief Huffton Klimp is not in BOSH Chief's Office]She shakes her head. 'He hasn't been in yet.'[otherwise]She points towards the hall. 'He's in his office.'[end if]".
	It quip-supplies Margaret.
	It is repeatable.
	It is always-available.
	It is plausibility-once.

moira-whereabouts is a questioning quip.
	It mentions Moira Zin.
	It is privately-named. 
	The printed name is "where Moira is".
	Understand "where is Moira", "is Moira here", "is Moira in the office", "has moira come in yet", "where moira is" as moira-whereabouts.
	The comment is "[We] [ask], 'Has Moira come in yet?'".
	The reply is "[if Moira Zin is not in Moira's Office]Margaret barely looks up from her work. 'Nope.'[otherwise]Margaret nods. 'I think she's working in her office.'[end if]".
	It quip-supplies Margaret.
	It is repeatable.
	It is always-available.
	It is plausibility-once.


	
Chapter 1 - Comments about items
	

Table of Quiz Topics (continued)
subject (a thing)	interlocutor (a person)	comment (a text)	reply (a text)
coatrack	Margaret	--	"She grins. 'An old clothing rack. Good thinking, right?'"
shelves of office supplies	Margaret	--	"'I doubt you'll be needing any of that now, but if you do, let me know.'"
cardboard boxes	Margaret	--	"'Hmm, I guess I need to flatten those and bring them out back to the dumpster.'"
coffee table	Margaret	--	"'It's not much, but what can you expect for $8?'"
laundromat	Margaret	--	 "Not a clue."
Biff's computer	Margaret	--	"[if Biff's computer is behind the front desk]It's behind the front desk. It's toast.[otherwise]She looks tired. 'I'll get to it when I can.'[end if]"
couch	Margaret	--	"'It's not much, but it's better than the floor.'"
Bureau photos	Margaret	--	"'I think they're from the 70s. I don't know who they are.'"
BOSH front desk	Margaret	--	"'I'm really trying to make do with what we have.'"
Bureau of Strange Happenings	Margaret	"Faraji asks, 'What do you think of the Bureau?'"	"'Oh, I don't worry myself with that. I don't really know what you all do. I just know I love all of you.'"


Instead of quizzing Margaret Chao about Chief Huffton Klimp:
	if Chief Huffton Klimp is not in BOSH Chief's Office:
		say "[We] [say], 'Margaret, Have you seen Klimp this morning?'[paragraph break]";
		say "[regarding Margaret Chao][They] shakes her head. 'He hasn't been in yet.'[line break]";
	otherwise:
		say "Where's the Chief?'[paragraph break]";
		say "[Margaret] points towards the hall. 'He's in his office.'";

Instead of quizzing Margaret Chao about Moira Zin:
	if Moira Zin is not in Moira's Office:
		say "[We] [say], 'Has Moira come in yet?'[paragraph break]";
		say "[Margaret] barely looks up from her work. 'Nope.'[line break]";
	otherwise:
		say "Have you seen Moira?'[paragraph break]";
		say "[Margaret] nods. 'I think she's working in her office.'";

Chapter 2 - Margaret Interjections


Margaret interjection timer is a number that varies. Margaret interjection timer is 5.

Every turn when Margaret interjection timer is not 0 and Margaret is in the location:
	decrease Margaret interjection timer by 1;
	if Margaret interjection timer is 0:
		interject Margaret;

After discussing when Margaret is in the location:
	now Margaret interjection timer is a random number from 2 to 5;
	continue the action;

After quizzing someone about something when Margaret is in the location:
	now Margaret interjection timer is a random number from 2 to 5;
	continue the action;

To interject Margaret:
	sort Table of Margaret Interjections in random order;
	if there is a used of false in the Table of Margaret Interjections:
		choose the row with a used of false in the Table of Margaret Interjections;
		say "[Margaret interjection entry][line break]";
		now used entry is true;
		increase Margaret interjection timer by a random number from 2 to 5;

Table of Margaret Interjections
Margaret interjection	used (a truth state)
"Margaret says thoughtfully, 'I really should organize the office supplies. But I don't have time right now. Soon, I swear.'"	false
"Margaret brushes a lock of hair out of her face. 'I'm going to have to get a haircut soon. I can't see anything.'"	false
"Looking tired, Margaret says, 'Chief Klimp needs to get me an assistant. I can't do this all by myself.'"	false
"Margaret looks at Faraji and says, 'I don't know how you can stand to wear that suit all day. It looks so hot.'"	false
"Margaret looks around, then whispers, 'I don't think the Chief likes me. He's always so grumpy.'"	false
"Margaret looks dismayed. 'I can't believe I forgot to bring my lunch today. I'm going to be starving.'"	false
"Margaret mutters to herself, 'So much to do, so little time.'"	false
"While unpacking a box of office supplies, Margaret says, 'I can't believe how much stuff we have. I don't know where to put it all.'"	false
"Margaret pauses to look at the photos on the wall. 'Everyone looks so happy. I wonder what they're doing now. Well, except you, Moira, and the Chief. I know what you're doing now.'"	false
"Margaret pulls a box of staples out of a box. 'I don't know why we have so many staples. We never use them.'"	false
"Margaret grimaces. 'I went over to look at the pawn shop, and the guy tried to hit on me. I told him I was married, but he didn't care. Do you think I'm bad for lying?'"	false
"Margaret looks at the phone. 'I can't believe they're going to take away our smart phones. I don't know how I'm going to keep in touch with my friends.'"	false
"Margaret looks at the coffee table. 'I can't believe they charged us $8 for that. It's not even real wood.'"	false
"Margaret looks dreamy. 'Some day I want to go to Budapest, or Istanbul. They both sound so exotic.'"	false			



		
Book 3 - The Boxes

throw out boxes is a behavior.

The margaret box counter is a number that varies. The margaret box counter is 0.

Every turn when Margaret is in the Front Office and the current behavior of Margaret is doing nothing and the Front Office is visited:
	increase the margaret box counter by 1;
	if a random chance of 1 in 5 succeeds and the margaret box counter is greater than 3:
		if the location is the front office:
			say "[one of]Margaret flattens a couple of boxes.[or]Margaret sighs and says, 'So many boxes...' She picks up some and flattens them.[or]Margaret says, 'I should really take care of these boxes,' and proceeds to flatten some.[or]Margaret takes a box and starts to flatten it.[or]Margaret looks at the boxes and says, 'I should really take care of these.' She takes a couple and flattens them.[at random]";
		otherwise if the location is the BOSH office hallway:
			say "One can hear the sound of boxes being flattened in the front office.";
		now Margaret carries the margaret-flattened-boxes;
		now the biff-flattened-boxes are in the room of stuff;
		if the current interlocutor is Margaret:
			now the current interlocutor is nothing;
		add behavior throw out boxes to margaret;
		now the margaret box counter is 0;

To initiate Margaret's box routine:	
	say "[Margaret] says, 'Hey, what are you doing with those boxes, [Agent]? You don't have to worry about that -- I'll get them.' [regarding Margaret][They] takes the flattened boxes from [us] and hustles off.";
	now Margaret carries the margaret-flattened-boxes;
	now the biff-flattened-boxes are in the room of stuff;
	if the current interlocutor is Margaret:
		now the current interlocutor is nothing;
	add behavior throw out boxes to margaret;
	
Rule for behaving as Margaret when the current behavior of Margaret is throw out boxes:
	If the location of Margaret encloses the biff-flattened-boxes and no one carries the biff-flattened-boxes and Margaret does not carry the margaret-flattened-boxes:
		say "[one of]Margaret looks at the boxes on the floor, puzzled.[or]Margaret says, 'oh! More boxes!'[or]Margaret looks thoughtful. 'Could have sworn I threw these boxes away,' she says.[or]Margaret looks annoyed. 'Seriously, who keeps dropping boxes everywhere?'[purely at random]";
		try margaret taking the biff-flattened-boxes;
		if margaret carries the biff-flattened-boxes:
			now the biff-flattened-boxes are in the Room of Stuff;
			now Margaret carries the margaret-flattened-boxes;
	otherwise if the player encloses the biff-flattened-boxes and Margaret does not carry the margaret-flattened-boxes and Margaret is in the location:
		say "Margaret sees the boxes in your hands and says, 'No, no, give those to me.' She takes them from your hands.";
		now Margaret carries the margaret-flattened-boxes;
		now the biff-flattened-boxes are in the room of stuff;		
	otherwise if Margaret is in Back Lot:
		If Margaret carries margaret-flattened-boxes:
			try margaret inserting margaret-flattened-boxes into dumpster;
		otherwise:
			try margaret going east;
	otherwise if Margaret is in Biff's Office:
		if margaret carries margaret-flattened-boxes:
			 if BOSH back door is locked:
				try margaret unlocking the BOSH back door with the white key;				
			otherwise:
				try margaret going west;
		otherwise:
			if the BOSH back door is closed and the BOSH back door is locked:
				try margaret going north;
			otherwise:
				if the BOSH back door is open:
					try margaret closing the BOSH back door;
				if the door is unlocked:
					try margaret locking the BOSH back door with the white key;
	otherwise if margaret is in the office hallway:
		if margaret carries margaret-flattened-boxes:
			try margaret going south;
		otherwise:
			try margaret going east;
	otherwise if margaret is in front office:
		if margaret carries margaret-flattened-boxes:
			try margaret going west;
		otherwise:
			remove behavior from margaret;

After Margaret unlocking the BOSH back door with something when the player is in biff's office:
	now the player knows margaret-backdoor-key;
	continue the action;

Rule for deciding the concealed possessions of margaret: 
	if the particular possession is the margaret-flattened-boxes, no; 
	otherwise yes.

Rule for writing a paragraph about Margaret when Margaret carries the margaret-flattened-boxes:
	say "Margaret is here, carrying a couple of flattened boxes.";

The describe room gone into rule response (F) is "[sophisticated description for the actor from the back way]".

To say sophisticated description for (actor - a thing) from (D - a direction):
	if the actor is Margaret:
		say "Margaret [arrive] from [the D][if Margaret carries the margaret-flattened-boxes], carrying a couple of flattened boxes[end if]";
	otherwise:
		say "[The actor] [arrive] from [the D]";
 	
Book 4 - Special Movement Rule

After margaret going to Front Office when the location is front office (this is the speak to margaret when she enters the front office rule):
	if the current interlocutor is not a person:
		now the current interlocutor is margaret;
	continue the action;
	

Margaret ends here.
