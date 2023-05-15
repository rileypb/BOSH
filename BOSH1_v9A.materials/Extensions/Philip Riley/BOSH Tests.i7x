BOSH Tests by Philip Riley begins here.

Chapter 1 - Playtesting - Not For Release

Include Playtest by Philip Riley.
[Include Command Unit Testing by Xavid.]
Use maximum unit-capture buffer length of at least 1024.

for playtesting:
	start test "1"
	execute "x bosh" then expect "Faraji gazes stoically at the sad little storefront that is the new BOSH office. The sign from the previous tenant is still up: 'Angel's Department Store'. Through the front window can be seen Margaret, in her usual manic work mode.";
		
For post "1":
	assert the location is parking lot south;
	
for playtesting:
	2 do "x laundromat sign" >> "It's just a piece of stationery marked up with Sharpie and taped to the door. It says 'Closed for renovations'.";
	2.5 do "x dave's pawn shop" >> "Faraji observes the pawn shop with obvious distaste. The flashing neon sign in the window advertises 'Cash for gold!'";
	3 do "x neon sign" >> "Its flash rate is just a bit over the threshold of irritating.";
	
[Unit test:
	start test "x bosh";
	assert that "x bosh" produces "blah";
	
Unit test:
	start test "x sign";
	[do "x sign";]
	assert that "x laundromat sign" produces "foobar";]


BOSH Tests ends here.
