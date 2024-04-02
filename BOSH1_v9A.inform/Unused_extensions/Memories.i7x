Memories by Philip Riley begins here.

Use authorial modesty.

A memory is a kind of thing. 

A person has a list of memories called remembrances.

Memory queue is a list of memories that varies.

To print memory list for (P - a person):
	say "[remembrances of P]";
	
To remember (M - a memory) for (P - a person):
	if M is not listed in the remembrances of P:
		add M to the remembrances of P;
		queue M;
		
To queue (M - a memory):
	if M is not listed in memory queue:
		add M to memory queue;
		
[Every turn:
	if memory queue is not empty:
		Say "[italic type][We] can remember [memory queue].[roman type][line break]";
		truncate memory queue to 0 entries;]

printing memories is an action applying to nothing. Understand "memories" as printing memories. Understand "remember" as printing memories.

Check printing memories:
	if remembrances of the player is empty:
		say "[We] [don't] have anything to remember yet." instead;

Report printing memories:
	[say "[italic type][We] can remember [remembrances of the player].[roman type][line break]";]
	say "[italic type][We] can remember:[line break]";
	repeat with memory running through remembrances of the player:
		say "    * [memory].[line break]";
	say "[roman type]";	

Definition: A memory is remembered if it is listed in the remembrances of the player.

remembering is an action applying to one thing. Understand "remember [any remembered memory]" as remembering.

report remembering a memory:
	say "[italic type][description of the noun][roman type][line break]";
		
The access through barriers rule does nothing when the noun is a memory.

For printing the options paragraph:
	if memory queue is not empty:
		Say "[italic type][We] can remember [memory queue].[roman type] ";
		now options printed is true;
		truncate memory queue to 0 entries;

Memories ends here.
