DTPM Fix by Philip Riley begins here.

Use authorial modesty.

[From code by otistdog]

Include (-


!Constant COBJ_DEBUG;

! the highest value returned by CheckDPMR (see the Standard Rules)
Constant HIGHEST_DPMR_SCORE = 4;

Array alt_match_list --> (MATCH_LIST_WORDS+1);

#ifdef TARGET_GLULX;
[ COBJ__Copy words from to  i;
	for (i=0: i<words: i++)
		to-->i = from-->i;
];
#ifnot;
[ COBJ__Copy words from to  bytes;
	bytes = words * 2;
	@copy_table from to bytes;
];
#endif;

! swap alt_match_list with match_list/number_matched
[ COBJ__SwapMatches i x;
	! swap the counts
	x = number_matched;
	number_matched = alt_match_list-->0;
	alt_match_list-->0 = x;
	! swap the values
	if (x < number_matched) x = number_matched;
	for (i=x: i>0: i-- ) {
		x = match_list-->(i-1);
		match_list-->(i-1) = alt_match_list-->i;
		alt_match_list-->i = x;
	}
];

[ ChooseObjects obj code  l i swn spcount;
	if (code<2) rfalse;

	if (cobj_flag == 1) {
		.CodeOne;
		if (parameters > 0) {
			#ifdef COBJ_DEBUG;
			print "[scoring ", (the) obj, " (second)]^";
			#endif;
			return ScoreDabCombo(parser_results-->INP1_PRES, obj);
		} else {
			#ifdef COBJ_DEBUG;
			print "[scoring ", (the) obj, " (first) in ",
				alt_match_list-->0, " combinations]^";
			#endif;
			l = 0;
			for (i=1: i<=alt_match_list-->0: i++) {
				spcount = ScoreDabCombo(obj, alt_match_list-->i);
				if (spcount == HIGHEST_DPMR_SCORE) {
					#ifdef COBJ_DEBUG;
					print "[scored ", spcount, " - best possible]^";
					#endif;
					return spcount;
				}
				if (spcount>l) l = spcount;
			}
			return l;
		}
	}
	if (cobj_flag == 2) {
		.CodeTwo;
		#ifdef COBJ_DEBUG;
		print "[scoring ", (the) obj, " (simple); parameters = ", parameters,
			" aw = ", advance_warning, "]^";
		#endif;
		@push action_to_be;
		if (parameters==0) {
			if (advance_warning > 0)
				l = ScoreDabCombo(obj, advance_warning);
			else
				l = ScoreDabCombo(obj, 0);
		} else {
			l = ScoreDabCombo(parser_results-->INP1_PRES, obj);
		}
		@pull action_to_be;
		return l;
	}

	#ifdef COBJ_DEBUG;
	print "[choosing a cobj strategy: ";
	#endif;
	swn = wn;
	spcount = pcount;
	while (line_ttype-->pcount == PREPOSITION_TT) pcount++;
	if (line_ttype-->pcount == ELEMENTARY_TT) {
		if (line_tdata-->pcount == TOPIC_TOKEN) {
			pcount = spcount;
			jump CodeTwo;
		}
		while (wn <= num_words) {
			l = NextWordStopped(); wn--;
			if (l == THEN1__WD) break;
			if ( (l ~= -1 or 0) && (l->#dict_par1) &8 ) { wn++; continue; }	! if preposition
			if (l == ALL1__WD or ALL2__WD or ALL3__WD or ALL4__WD or ALL5__WD) { wn++; continue; }
			SafeSkipDescriptors();
			! save the current match state
			@push match_length; @push token_filter; @push match_from;
			alt_match_list-->0 = number_matched;
			COBJ__Copy(number_matched, match_list, alt_match_list+WORDSIZE);
			! now get all the matches for the second noun
			match_length = 0; number_matched = 0; match_from = wn;
			token_filter = 0;
			SearchScope(actor, actors_location, line_tdata-->pcount);
			#ifdef COBJ_DEBUG;
			print number_matched, " possible second nouns]^";
			#endif;
			wn = swn;
			cobj_flag = 1;
			! restore match variables
			COBJ__SwapMatches();
			@pull match_from; @pull token_filter; @pull match_length;
			pcount = spcount;
			jump CodeOne;
		}
	}
	pcount = spcount;
	wn = swn;	
	
	#ifdef COBJ_DEBUG;
	print "nothing interesting]^";
	#endif;
	cobj_flag = 2;
	jump CodeTwo;
];

[ ScoreDabCombo a b  result;
	@push action; @push act_requester; @push noun; @push second;
	action = action_to_be;
	act_requester = player;
	if (action_reversed && a > 0 && b > 0) { noun = b; second = a; } ! A is not nothing and B is not nothing.
	else { noun = a; second = b; }
	result = CheckDPMR();
	@pull second; @pull noun; @pull act_requester; @pull action;
	#ifdef COBJ_DEBUG;
	print "[", (the) a, " / ", (the) b, " => ", result, "]^";
	#endif;
	return result;
];

-) instead of "Choose Objects" in "Parser.i6t"

DTPM Fix ends here.