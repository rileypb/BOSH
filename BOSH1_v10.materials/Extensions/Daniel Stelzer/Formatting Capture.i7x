Version 2/221014 of Formatting Capture by Daniel Stelzer begins here.

"Allows the capture of text that would ordinarily be sent to the screen, along with its formatting."

"based on Text Capture by Eric Eve"

Section A - Escape Character

Use escape code of at least 167 translates as (- Constant ESCAPE_CODE = {N}; -).

Section B - Formatting Commands (in place of Section 7 - Saying Fonts and visual effects in Basic Inform by Graham Nelson)

To say escape code: (- print (char) ESCAPE_CODE; -).

To say internal bold type -- running on:
	(- style bold; -).
To say internal italic type -- running on:
	(- style underline; -).
To say internal roman type -- running on:
	(- style roman; -).
To say internal fixed letter spacing -- running on:
	(- font off; -).
To say internal variable letter spacing -- running on:
	(- font on; -).

To display the boxed quotation (Q - text)
	(documented at ph_boxed):
	(- DisplayBoxedQuotation({-box-quotation-text:Q}); -).

To say bold type -- running on
	(documented at phs_bold):
	if text capturing is active, say "[escape code]b";
	otherwise say internal bold type.
To say italic type -- running on
	(documented at phs_italic):
	if text capturing is active, say "[escape code]i";
	otherwise say internal italic type.
To say roman type -- running on
	(documented at phs_roman):
	if text capturing is active, say "[escape code]r";
	otherwise say internal roman type.
To say fixed letter spacing -- running on
	(documented at phs_fixedspacing):
	if text capturing is active, say "[escape code]f";
	otherwise say internal fixed letter spacing.
To say variable letter spacing -- running on
	(documented at phs_varspacing):
	if text capturing is active, say "[escape code]v";
	otherwise say internal variable letter spacing.

Section C - Escape Detection Rules

The escape detection rules are a number based rulebook. The escape detection rules have default success.
Escape detection for 98: say bold type.
Escape detection for 105: say italic type.
Escape detection for 114: say roman type.
Escape detection for 102: say fixed letter spacing.
Escape detection for 118: say variable letter spacing.
Last escape detection for a number (called N): say "<[N]>".

Section D - Text Capture

Use maximum capture buffer length of at least 256 translates as (- Constant CAPTURE_BUFFER_LEN = {N}; -). 

To decide whether text capturing is active: (- (capture_active > 0) -).

To start capturing text:
	(- StartCapture(); -).

To stop capturing text:
	(- EndCapture(); -).

To say the/-- captured text:
	(- PrintCapture(0); -).

To say the/-- captured text without formatting:
	(- PrintCapture(1); -).

Include (-
Global capture_active = 0;
Global capture_p = 0;
Global capture_pc = 0;
-).

Section G - Glulx Implementation (for Glulx only)

Include (-
Array captured_text --> CAPTURE_BUFFER_LEN + 1;
Global text_capture_old_stream = 0;
Global text_capture_new_stream = 0;
[ StartCapture i;   
	if (capture_active == 1)
		return;
	capture_active = 1;
	! New: need to clear out the paragraphing flags
	capture_p = say__p;
	capture_pc = say__pc;
	ClearParagraphing();
	text_capture_old_stream = glk_stream_get_current();
	text_capture_new_stream = glk_stream_open_memory_uni(captured_text + WORDSIZE, CAPTURE_BUFFER_LEN, 1, 0);
	glk_stream_set_current(text_capture_new_stream);
];

[ EndCapture len;
	if ( capture_active == 0 )
		return;
	capture_active = 0;
	glk_stream_set_current(text_capture_old_stream);
	len = say__p; ! save temporarily
	! restore from before
	say__p = capture_p;
	say__pc = capture_pc;
	capture_p = len; ! save for when we print
	@copy $ffffffff sp;
	@copy text_capture_new_stream sp;
	@glk $0044 2 0; ! stream_close
	@copy sp len;
	@copy sp 0;
	captured_text-->0 = len;
	if (len > CAPTURE_BUFFER_LEN)
	{
		captured_text-->0 = CAPTURE_BUFFER_LEN;
	}
];

[ PrintCapture flag len i;
	len = captured_text-->0;
	i = 1;
	@push say__pc;
	say__pc = say__pc | PARA_NORULEBOOKBREAKS;
	while(i <= len){
		if(captured_text-->i == ESCAPE_CODE){
			i++;
			if(~~flag){
				FollowRulebook((+ escape detection rules +), captured_text-->i);
			}
		}else{
			glk_put_char_uni(captured_text-->i);
		}
		i++;
	}
	@pull say__pc;
	say__p = capture_p; ! if our captured text ended with a pending paragraph break, impose it here
	! This specifically has to clobber the current value of say__p or else we get an extra line break
];
-).

Section Z - Z Implementation (for Z-machine only)

Include (-
Array captured_text -> CAPTURE_BUFFER_LEN + 3;
[ StartCapture;
	if (capture_active == 1)
		return;
	capture_active = 1;
	! New: need to clear out the paragraphing flags
	capture_p = say__p;
	capture_pc = say__pc;
	ClearParagraphing();
	@output_stream 3 captured_text;
];

[ EndCapture tmp;
	if (capture_active == 0)
		return;
	capture_active = 0;
	tmp = say__p; ! save temporarily
	! restore from before
	say__p = capture_p;
	say__pc = capture_pc;
	capture_p = tmp; ! save for when we print
	@output_stream -3;
	if (captured_text-->0 > CAPTURE_BUFFER_LEN)
	{
		print "Error: Overflow in EndCapture.^";
	}
];

[ PrintCapture flag len i;
	len = captured_text-->0;
	i = 2;
	@push say__pc;
	say__pc = say__pc | PARA_NORULEBOOKBREAKS;
	while(i <= len+1){
		if(captured_text->i == ESCAPE_CODE){
			i++;
			if(~~flag){
				FollowRulebook((+ escape detection rules +), captured_text->i);
			}
		}else{
			print (char) captured_text->i;
		}
		i++;
	}
	@pull say__pc;
	say__p = capture_p; ! if our captured text ended with a pending paragraph break, impose it here
	! This specifically has to clobber the current value of say__p or else we get an extra line break
];
-).

Volume X - Shutting Down Text Capture (for use with Text Capture by Eric Eve)

[This is needed because many extensions depend specifically on Text Capture, and it conflicts with our replacement code here]

Part 1 - Empty (in place of Part 1 - Define a Use Option in Text Capture by Eric Eve)

Use ineffectual.

Part 2 - Empty (in place of Part 2 - Define Our Four Phrases (for use without FyreVM Support by TextFyre) in Text Capture by Eric Eve)

Use ineffectual.

Part 3 - Empty (in place of Part 3 - I6 Code in Text Capture by Eric Eve)

Use ineffectual.

Formatting Capture ends here.

---- DOCUMENTATION ----

This is a patch to Text Capture by Eric Eve that preserves basic formatting. With this extension, capturing text will preserve bold, italic, roman, fixed-width, and variable-width formatting, and output it again when saying the captured text.

It does this by overriding [italic type] and its ilk to instead print an escape sequence when text capture is active: [escape code] followed by a single letter indicating the type of formatting. When the captured text is printed, any escape codes encountered are passed to the "escape detection rules", which turn them back into the appropriate formatting.

	*: "Echo Echo Echo"
	
	Include Formatting Capture by Daniel Stelzer.
	
	Mirror Gallery is a room. "Mirrors line the walls. You see every action reflected back at you many times over."
	
	[Record all the output resulting from the player's actions]
	First before doing anything except looking:
		start capturing text.
	[Then play it back twice over, once with formatting, once without]
	First every turn:
		stop capturing text;
		say the captured text without formatting;
		say the captured text.
	
	[And of course we need to show off our formatting!]
	Instead of waiting: say "[bold type]Bold [italic type]Italic [roman type]Roman [fixed letter spacing]Fixed [variable letter spacing]Variable!".
	
	Test me with "z".
