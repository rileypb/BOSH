Borrowing by Philip Riley begins here.

Include Conversation Framework by Eric Eve.

A thing can be borrowable or unborrowable.  A thing is usually unborrowable.
A thing can be borrowed or unborrowed.  A thing is usually unborrowed.
A person has an object called the borrowed item.  The borrowed item of a person is usually nothing.
A person has a text called the unborrowable message.  The unborrowable message of a person is usually "".

implicit-Borrowing is an action applying to one thing.  Understand "borrow [something]" as implicit-borrowing.
[ Borrowing it from is an action applying to two things.  Understand "borrow [something] from [someone]" as borrowing it from (with nouns reversed). ]
Borrowing from it the item is an action applying to two things.  Understand "borrow from [someone] [something]" as borrowing from it the item. Understand "borrow [something] from [someone]" as borrowing from it the item (with nouns reversed).

implicit-Borrowing is implicit-conversing.
implicit-Borrowing is speaking.
[ Borrowing something from someone is conversing.
Borrowing something from someone is speaking. ]
Borrowing from someone the item something is conversing.
Borrowing from someone the item something is speaking.

Printing the unborrowable message of something is an activity on things.
Printing the already borrowed message of something is an activity on things.
Printing the only one at a time message of something is an activity on things.

For printing the unborrowable message of something (called the item):
	say "[We] [can't] borrow that.";

For printing the already borrowed message of something (called the item):
	say "[We] [have] already borrowed [the item] from [the current interlocutor].";

For printing the only one at a time message of something (called the item):
	say "[We] [have] already borrowed [the item] from [the current interlocutor]. [We] [can] only borrow one thing at a time.";

Check borrowing from someone the item something when the noun is the player (this is the can't borrow from yourself rule):
	say "You can't borrow something from yourself." (A) instead;

Check borrowing from someone the item something when the second noun is unborrowable (this is the can't borrow unborrowable things rule):
	carry out the printing the unborrowable message activity with the noun instead;

Check borrowing from someone the item something when the second noun is borrowed (this is the can't borrow something already borrowed rule):
	say "[We] [have] already borrowed [the second noun] from [the noun]." (A) instead;

Check borrowing from someone the item something when the borrowed item of the noun is not nothing (this is the can only borrow one thing at a time rule):
	say "[We] [have] already borrowed [the borrowed item of the noun] from [regarding the noun][them]." (A) instead;

Instead of implicit-borrowing something:
	try borrowing from current interlocutor the item the noun;


Carry out borrowing from someone the item something:
	now the second noun is borrowed;
	now the borrowed item of the noun is the second noun;
	now the player carries the second noun;


Printing the borrowing announcement of something is an activity on things.

To borrow is a verb.
For printing the borrowing announcement of something (called the item):
	say "[We] [borrow] [the item] from [the current interlocutor].";

Report borrowing from someone the item something:
	Carry out the printing the borrowing announcement activity with the second noun;


Returning a book is an action applying to one thing.  Understand "return [something]" as returning a book.
[ Returning it to is an action applying to two things.  Understand "return [something] to [someone]" as returning it to (with nouns reversed). ]
Returning to it the item is an action applying to two things.  Understand "return to [someone] [something]" as returning to it the item. Understand "return [something] to [someone]" as returning to it the item (with nouns reversed).

Returning a book is implicit-conversing.
Returning a book is speaking.
[ Returning it to is conversing.
Returning it to is speaking. ]
Returning to someone the item something is conversing.
Returning to someone the item something is speaking.

Check returning to someone the item something when the noun is the player (this is the can't return to yourself rule):
	say "[We] [can't] return something to [ourselves]." (A) instead;

Check returning to someone the item something when the borrowed item of the noun is not the second noun (this is the can't return something not borrowed rule):
	say "[We] [haven't] borrowed [the second noun] from [the noun]." (A) instead;

Carry out returning to someone the item something:
	now the second noun is unborrowed;
	now the borrowed item of the noun is nothing;
	now the noun carries the second noun;

Instead of returning a book something:
	try returning to current interlocutor the item the noun;


Borrowing ends here. 