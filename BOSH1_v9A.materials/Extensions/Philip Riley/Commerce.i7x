Commerce by Philip Riley begins here.

Understand the commands “buy” and “purchase” as something new.

An amount of money is a kind of value. $1 specifies an amount of money.

A money card is a kind of thing. A money card has an amount of money called the balance. A money card can be mc-enabled or mc-disabled. A money card is usually mc-enabled.

A thing has an amount of money called the price.

Owner relates one person (called the owner) to a thing. The verb to own (he owns, they own, it is owned) implies the owner relation.

Buying it with is an action applying to one visible thing and one carried thing. Understand "Buy [thing] with [thing]" as buying it with.
Understand "Buy [thing]" as buying it with. Understand "Purchase [thing] with [thing]" as buying it with. 
Understand "Purchase [thing]" as buying it with.
	
Vends relates one person (called the vendor) to various things. The verb to be willing to sell implies the vends relation.

Rule for supplying a missing second noun while buying something (called the product) with:
	if the player owns the product:
		say "You already own that!" instead;
	let M be the list of money cards;
	if M is empty:
		say "You have no way to pay." instead;
	otherwise:
		let D be a list of things;
		Repeat with dollaz running through M:
			if player owns dollaz:
				add dollaz to D;
		if D is empty:
			say "You have no way to pay." instead;
		if the number of entries in D is greater than one:
			say "You must specify how you want to pay." instead;
		otherwise:
			say "(with the [entry 1 of D])";
			Now the second noun is entry 1 of D.

Check buying something (called the product) with something (called damoney):
	if the player owns the product:
		say "You already own that." instead;
	Let P be the list of visible people who own the product;
	if P is empty:
		Say "No one owns that." instead;
	Let seller be entry 1 of P;
	if seller is not willing to sell the product:
		say "[The seller] doesn[']t want to sell [the product]." instead;
	If damoney is mc-disabled:
		say "[The seller] runs [the damoney], but it's declined. You might want to call the bank." instead;
	If the balance of damoney is less than the price of the product:
		say "You don't have enough money to buy [the product]. You need [the price of the product], but you only have [the balance of damoney]." instead;
		
Carry out buying something (called the product) with something (called damoney):
	say "You pay [the price of the product] and [the product] [are] yours.";
	now the player owns the product;
	now the balance of damoney is the balance of damoney minus the price of the product;
	now the player has the product;
	
[Pricing it is an action applying to one visible thing. Understand "how much is [thing]" as pricing it.
Understand "how much does [thing] cost" as pricing it.

Carry out pricing:
	if the vendor of the noun is not nothing and the owner of the noun is the vendor of the noun:
		say "The price of [the noun] is [the price of the noun].";
	otherwise:
		say "[The noun] isn't for sale."]

[Accounting is an action applying to nothing. Understand "How much money do I have" as accounting.
Understand "How much do I have" as accounting.

Carry out accounting:
	let cards be the list of held money cards;
	let B be $0;
	repeat with card running through cards:
		now B is B plus the balance of card;
	say "You have [B]."]
	
To belong is a verb.

Check taking something (called target):
	if someone owns the target and the player does not own the target:
		say "[regarding the target][Those] [belong] to [the owner of the noun]." instead;
		
[Attributing it is an action applying to one visible thing. Understand "Who owns [thing]" as Attributing it.


Carry out Attributing:
	if the owner of the noun is nothing:
		say "No one owns [the noun].";
	otherwise:
		say "[The owner of the noun] owns [the noun].";]

Commerce ends here.
