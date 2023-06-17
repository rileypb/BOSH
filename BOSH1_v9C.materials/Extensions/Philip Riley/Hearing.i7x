Hearing by Philip Riley begins here.

[Include Essentials by Philip Riley.]

Loudness is a kind of value. The loudnesses are very loud, loud, moderately loud, faint, very faint, and inaudible.

A thing can be audible. A thing has a loudness called hearability. 
A thing has a real number called volume. The volume of a thing is usually 0.0.
A thing can be either noisy or quiet. A thing is usually quiet.
A thing can be either insistent or background. A thing is usually background.

Definition: a thing is hearable if 
	the hearability of it is very loud or 
	the hearability of it is loud or
	the hearability of it is moderately loud or
	the hearability of it is faint or
	the hearability of it is very faint.

Skip sounds this turn is a truth state that varies. Skip sounds this turn is initially false.

[Audibility of rules are subjective to the player]
Audibility of rules is an object-based rulebook.

Audibility of rules have outcomes
	very loud,
	loud,
	moderately loud,
	faint,
	very faint,
	and inaudible.
	
Audibility of a thing (called T) when location is indoors:
	if best route from the location to the location of T through rooms which are indoors, using doors is nothing:
		inaudible;
	let N be the number of moves from the location to the location of T through rooms which are indoors, using doors;
	let ans be volume of T / N;
	if ans >= 2:
		very loud;
	if ans >= 1:
		loud;
	if ans >= 0.5:
		moderately loud;
	if ans >= 0.25:
		faint;
	if ans >= 0.125:
		very faint;
	inaudible;

Audibility of a thing (called T) when location is outdoors:
	if best route from the location to the location of T through rooms which are outdoors is nothing:
		inaudible;
	let N be the number of moves from the location to the location of T through rooms which are outdoors;
	let ans be volume of T / (2 * N);
	if ans >= 2:
		very loud;
	if ans >= 1:
		loud;
	if ans >= 0.5:
		moderately loud;
	if ans >= 0.25:
		faint;
	if ans >= 0.125:
		very faint;
	inaudible;


[Noisiness rules deal with the absolute objective loudness of a thing]
Noisiness of rules is an object-based rulebook.

Noisiness of rules have outcomes noisy or quiet.

Noisiness of a thing (this is the default noisiness rule):
	if thing is noisy:
		noisy;
	rule fails; [it could be noisy for some other reason]
	

printing insistent sounds is an activity.
printing background sounds is an activity.

Audible sounds is a list of things that varies.

Every turn:
	if skip sounds this turn is false:
		remove audible sounds from audible sounds;
		carry out the printing insistent sounds activity;
	
After printing the locale description:
	carry out the printing background sounds activity;
	
[For some reason turn count is 1 before the first turn is taken, and still 1 afterwards. This makes it impossible to do anything before the first turn that doesn't also happen after it. Hence this work-around.]
First Turn is a truth state that varies. First Turn is initially true.
After printing background sounds when First Turn is true (this is the make sure hearing works before the first turn rule):
	carry out the printing insistent sounds activity;
	Now first turn is false.
	
Determining the subjective volume for something is an activity on things.

Rule for determining the subjective volume for something (called T):
	follow the audibility of rules for T;
	if rule succeeded:
		let A be the outcome of the rulebook;
		if A is the very loud outcome:
			now the hearability of T is very loud;
		if A is the loud outcome:
			now the hearability of T is loud;
		if A is the moderately loud outcome:
			now the hearability of T is moderately loud;
		if A is the faint outcome:
			now the hearability of T is faint;
		if A is the very faint outcome:
			now the hearability of T is very faint;
		if A is the inaudible outcome:
			now the hearability of T is inaudible;

Printing the sound description for something is an activity on things.
Printing the sound action for something is an activity on things.

Rule for printing the sound description for something (called noise) when noise is visible:
	add noise to audible sounds;
	say "[The Noise] ";
	if the player encloses the noise:
		say "you are carrying ";
	say "is ";
	carry out the printing the sound action activity with noise;
	say ".";
	
Rule for printing the sound description for something (called T) when the player carries T:
	say "[The T] is ";
	carry out the printing the sound action activity with T;
	say ".";
	
To say generic description of (T - a thing):
	say "Something";
	
To say generic description of (P - a person):
	say "Someone";
	
To say sound of (T - a thing):
	carry out the printing the sound action activity with T;
	
Rule for printing the sound description for something (called T) when T is enclosed by the location:
	say "[Generic description of T] is ";
	carry out the printing the sound action activity with T;
	if T is enclosed by a visible thing (called VT):		
		say " inside [the VT].";
	otherwise:
		say " somewhere in the room.";
	add T to audible sounds;
	
Rule for printing the sound description for something (called T) when the number of moves from the location to the location of T, using doors is 1:
	say "[Generic description of T] is ";
	carry out the printing the sound action activity with T;
	let X be the best route from location to location of T, using doors;
	if X is:
		-- inside:
			say " inside[if the location of T is visited] [the location of T][end if].";
		-- outside:
			say " outside[if the location of T is visited], [the preposition of the location of T] [the location of T][end if].";
		-- up:
			say " above [us][if the location of T is visited], [the preposition of the location of T] [the location of T][end if].";
		-- down:
			say " below [us][if the location of T is visited], [the preposition of the location of T] [the location of T][end if].";
		-- otherwise:
			say " to the [X][if the location of T is visited], [the preposition of the location of T] [the location of T][end if].";
	
Rule for printing the sound description for something (called T) (this is the default sound description rule):
	follow the audibility of rules for T;
	let aud be the outcome of the rulebook;	
	if aud is the very loud outcome, or aud is the loud outcome:
		say "[Generic description of T] is [sound of T] somewhere else nearby.";
		rule succeeds;
	if aud is the moderately loud outcome:
		say "[Generic description of T] is [sound of T] somewhere else not too far away.";
		rule succeeds;
	if aud is the faint outcome:
		say "[Generic description of T] is [sound of T] faintly somewhere else.";
		rule succeeds;
	if aud is the very faint outcome:
		say "[Generic description of T] is [sound of T] somewhere far off.";
		rule succeeds;
	rule fails;
	

Rule for printing the sound action for something:
	say "making noise";
	

Rule for printing insistent sounds:
	repeat with T running through audible things which are insistent:
		follow the noisiness of rules for T;
		if rule succeeded:
			if the outcome of the rulebook is the noisy outcome:
				carry out the determining the subjective volume activity with T;
				if the hearability of T is not inaudible:
					add T to audible sounds;
				carry out the printing the sound description activity with T;

Rule for printing background sounds:
	repeat with T running through audible things which are background:
		follow the noisiness of rules for T;
		if rule succeeded:
			if the outcome of the rulebook is the noisy outcome:
				carry out the determining the subjective volume activity with T;
				carry out the printing the sound description activity with T;

			
Hearing ends here.
