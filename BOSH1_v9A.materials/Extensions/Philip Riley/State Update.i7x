State Update by Philip Riley begins here.

Use authorial modesty.

Changed things is a list of things that varies.

This is the reset changed things rule:
	truncate changed things to 0 entries;

The reset changed things rule is listed after the generate action rule in the turn sequence rules.

Device updating something is an activity on things.
State change reporting something is an activity on things.

Carry out switching on a device (this is the update devices upon switching on rule):
	repeat with item running through things:
		carry out the device updating activity with item.

The update devices upon switching on rule is listed last in the carry out switching on rules.

Carry out switching off a device (this is the update devices upon switching off rule):
	repeat with item running through things:
		carry out the device updating activity with item.

The update devices upon switching off rule is listed last in the carry out switching off rules.

Carry out plugging something into something (this is the update devices upon plugging in rule):
	repeat with item running through things:
		carry out the device updating activity with item.

The update devices upon plugging in rule is listed last in the carry out plugging it into rules.

Carry out unplugging something (this is the update devices upon unplugging rule):
	repeat with item running through things:
		carry out the device updating activity with item.

The update devices upon unplugging rule is listed last in the carry out unplugging rules.

Report switching on a device (this is the state change reporting upon switching on rule):
	Repeat with item running through changed things:
		Carry out the state change reporting activity with item;
	truncate changed things to 0 entries;

The state change reporting upon switching on rule is listed last in the report switching on rules.

Report switching off a device (this is the state change reporting upon switching off rule):
	Repeat with item running through changed things:
		Carry out the state change reporting activity with item;
	truncate changed things to 0 entries;

The state change reporting upon switching off rule is listed last in the report switching off rules.

Report plugging something into something (this is the state change reporting upon plugging in rule):
	Repeat with item running through changed things:
		Carry out the state change reporting activity with item;
	truncate changed things to 0 entries;

The state change reporting upon plugging in rule is listed last in the report plugging it into rules.

Report unplugging something (this is the state change reporting upon unplugging rule):
	Repeat with item running through changed things:
		Carry out the state change reporting activity with item;
	truncate changed things to 0 entries;

The state change reporting upon unplugging rule is listed last in the report unplugging rules.

State Update ends here.