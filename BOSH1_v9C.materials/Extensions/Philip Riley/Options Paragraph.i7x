Options Paragraph by Philip Riley begins here.

Printing the options paragraph is an activity.

Options printed is a truth state that varies.

This is the options paragraph stage rule:
	carry out the printing the options paragraph activity;
	
The for printing the options paragraph rules have default no outcome;

The last for printing the options paragraph rule:
	if options printed is true:
		say paragraph break;
	
The options paragraph stage rule is listed after the adjust light rule in the turn sequence rules.

[After printing the locale description (this is the blah rule):
	carry out the printing the options paragraph activity;]

First options paragraph is a truth state that varies. First options paragraph is initially true.
After printing the locale description when first options paragraph is true:
	carry out the printing the options paragraph activity;
	now first options paragraph is false;
	
Section 1 - (For use with Gender Options by Nathanael Nerode) 

The first for printing the options paragraph rule:
	now options printed is false;
	now the last person referenced is nothing;

Section 2 - (For use without Gender Options by Nathanael Nerode)

The first for printing the options paragraph rule:
	now options printed is false;
	



Options Paragraph ends here.
