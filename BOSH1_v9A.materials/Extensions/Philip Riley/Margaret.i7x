Margaret by Philip Riley begins here.

Include Swamp Park by Philip Riley.
Include Real People by Philip Riley.

Book 1 - Basics

The blue screwdriver is in the Room of Stuff.

Margaret Chao is a woman. The description is "[Margaret Chao] is the latest occupant of the rapidly revolving post of office manager. Most of [their] job involves ordering stationery and office supplies, shredding documents, and keeping track of office equipment."

Rule for printing the name of Margaret Chao: say "Margaret".

Margaret Chao is familiar.

The help text of Margaret is "[Margaret] is the latest office manager.".

Book 2 - Margaret's Dialogue

[rule for beat-producing when the current interlocutor is Margaret:
	say "[one of][Margaret] scrunches up her mouth[or][Margaret] pauses for a second[at random].[run paragraph on]"]

looking for the desk key is a truth state that varies. 

about the whereabouts of the desk key is a questioning quip.
	it mentions the little grey key. 
	the comment is "[We] [say], '[EG]Um, uh, Margaret? Do you know where the key to my desk is?[PCG]Margaret, sweetheart, do you know where my desk key is?[LF]Hey Margaret, do you know anything about my desk key?[end say]'[line break]".
	[the comment is "[We] [say], 'Hey, Margaret. Do you have the key to my desk?'".]
	the reply is "'Sure I do -- I put it in your desk.' She furrows her brow. 'What's the matter?'"
	It quip-supplies Margaret.
	
An availability rule for about the whereabouts of the desk key:
	if the player knows desk-locked and the player does not know key-is-lost:
		always available;
		
After discussing the whereabouts of the desk key:
	now player knows key-is-lost;
	continue the action;
	
about the status of the computer is a questioning quip.
	it mentions Biff's computer.
	the comment is "'Margaret', [we] [say], 'what's up with my computer?'".
	the reply is "'Oh, it got busted up during the move. I have the box behind my desk -- you can see it if you want. We'll have to get you a new one.'".
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
	
for-a-screwdriver is a repeatable questioning quip.
	It is privately-named. The printed name is "for a screwdriver". [The true-name is "for-a-screwdriver".] Understand "for/a/screwdriver" as for-a-screwdriver.
	It mentions the screwdriver.
	The comment is "[if the current interlocutor is Margaret][We] [ask], [one of][EG]'Er, screwdriver? Margaret?'[PCG]'Margaret, dear, do we have a screwdriver around here?'[LF]'Margaret, where's the screwdriver?'[end say][line break][or]'Are you sure we don't have one?'[stopping][otherwise][We] [ask], [one of]'Would you happen to have a screwdriver I could borrow?'[or]'You sure? I could really use one.'[stopping][end if]".
	The reply is "[one of]'Umm... I think it was in a box we had to leave behind.' [Margaret] looks embarrassed. 'What? I never thought we'd need it. This isn't a construction site after all. Maybe if Klimp had paid for the bigger UHaul...' [They] stares past [us] awkwardly.[or][Margaret] just looks at [us] darkly.[stopping]".
	It quip-supplies Margaret;
	
An availability rule for for-a-screwdriver:
	if the player knows vent-screws and the screwdriver is not seen:
		always available;
		
to unlock the backdoor is a questioning quip. 
	Understand "back/door" as to unlock the backdoor.
	It mentions the BOSH back door.
	The comment is "[We] [ask], 'Could you unlock the back door, Margaret?'".
	The reply is "'Sorry, too busy right now. What do you want back there anyway? There's only a dumpster.' She pauses for a moment and mutters to herself. 'Which reminds me, I need to get these boxes broken down.'"
	It quip-supplies Margaret.
	
An availability rule for to unlock the backdoor:
	If the player knows back-door-is-locked:
		always available;
		
Book 3 - The Boxes

throw out boxes is a behavior.

The margaret box counter is a number that varies.

To initiate Margaret's box routine:	
	say "[Margaret] says, 'Hey, what are you doing with those boxes, [Agent]? You don't have to worry about that -- I'll get them.' [regarding Margaret][They] takes the flattened boxes from [us] and hustles off.";
	now Margaret carries the margaret-flattened-boxes;
	now the biff-flattened-boxes are in the room of stuff;
	now the current interlocutor is nothing;
	add behavior throw out boxes to margaret;
	
Rule for behaving as Margaret when the current behavior of Margaret is throw out boxes:
	if Margaret is in Back Lot:
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
	otherwise if margaret is in the front office:
		if margaret carries margaret-flattened-boxes:
			try margaret going west;
		otherwise:
			remove behavior from margaret;
	
Rule for deciding the concealed possessions of margaret: 
	if the particular possession is the margaret-flattened-boxes, no; 
	otherwise yes.
	
Book 4 - Special Movement Rule

After margaret going to Front Office when the location is front office (this is the speak to margaret when she enters the front office rule):
	if the current interlocutor is not a person:
		now the current interlocutor is margaret;
	continue the action;
	

Margaret ends here.
