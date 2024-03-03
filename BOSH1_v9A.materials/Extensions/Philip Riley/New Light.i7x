New Light by Philip Riley begins here.

A light source is a kind of thing. It is privately-named. It is usually lit. It is usually undescribed.

To unlight (R - a room):
	repeat with LS running through light sources in R:
		now LS is not lit;

To light (R - a room):
	repeat with LS running through light sources in R:
		now LS is lit;
		
A light source can be fluorescent.

Definition: a room is fluorescent-lit:
	if it contains a fluorescent light source (called F):
		if F is lit:
			decide yes;
	decide no;
	
Hyperlight is a backdrop. It is everywhere. It is unlit. It is privately-named. It is undescribed.

Adjacent light is a backdrop. It is everywhere. It is unlit. It is undescribed. It is privately-named. Adjacent light can be adjlight. Adjacent light is adjlight. The adjlight property translates into I6 as "adjlight"; 


To decide if (T - an object) offers its own light:
	(- OffersItsOwnLight({T}) -);

Include (-
Attribute adjlight;
-) after "Definitions.i6t"


Include (-

[ OffersLight obj j;
    while (obj) {
		if (obj has light) rtrue;
		objectloop (j in obj) if (HasLightSource(j)) rtrue;
		if ((obj has container) && (obj hasnt open) && (obj hasnt transparent)) rfalse;
		if ((obj provides component_parent) && (obj.component_parent))
			obj = obj.component_parent;
		else
			obj = parent(obj);
	}
    rfalse;
];

[ OffersItsOwnLight obj j;
    while (obj) {
		if (obj has light) rtrue;
		objectloop (j in obj) if (HasItsOwnLightSource(j)) rtrue;
		if ((obj has container) && (obj hasnt open) && (obj hasnt transparent)) rfalse;
		if ((obj provides component_parent) && (obj.component_parent))
			obj = obj.component_parent;
		else
			obj = parent(obj);
	}
    rfalse;
];

[ HasLightSource i j ad sr po;
	if (i == 0) rfalse;
    if (i has light) rtrue;
    if ((IsSeeThrough(i)) && (~~(HidesLightSource(i))))
        objectloop (j in i)
            if (HasLightSource(j)) rtrue;
    ad = i.&add_to_scope;
    if (parent(i) ~= 0 && ad ~= 0) {
        if (metaclass(ad-->0) == Routine) {
            ats_hls = 0; ats_flag = 1;
            sr = scope_reason; po = parser_one;
            scope_reason = LOOPOVERSCOPE_REASON; parser_one = 0;
            RunRoutines(i, add_to_scope);
            scope_reason = sr; parser_one = po;
            ats_flag = 0; if (ats_hls == 1) rtrue;
        }
        else {
            for (j=0 : (WORDSIZE*j)<i.#add_to_scope : j++)
                if ((ad-->j) && (HasLightSource(ad-->j) == 1)) rtrue;
        }
    }
    if (ComponentHasLight(i)) rtrue;
    rfalse;
];

[ HasItsOwnLightSource i j ad sr po;
	if (i == 0) rfalse;
    if ((i has light) && ~~(i has adjlight)) rtrue;
    if ((IsSeeThrough(i)) && (~~(HidesLightSource(i))))
        objectloop (j in i)
            if (HasLightSource(j)) rtrue;
    ad = i.&add_to_scope;
    if (parent(i) ~= 0 && ad ~= 0) {
        if (metaclass(ad-->0) == Routine) {
            ats_hls = 0; ats_flag = 1;
            sr = scope_reason; po = parser_one;
            scope_reason = LOOPOVERSCOPE_REASON; parser_one = 0;
            RunRoutines(i, add_to_scope);
            scope_reason = sr; parser_one = po;
            ats_flag = 0; if (ats_hls == 1) rtrue;
        }
        else {
            for (j=0 : (WORDSIZE*j)<i.#add_to_scope : j++)
                if ((ad-->j) && (HasLightSource(ad-->j) == 1)) rtrue;
        }
    }
    if (ComponentHasLight(i)) rtrue;
    rfalse;
];

[ ComponentHasLight o obj next_obj;
	if (o provides component_child) {
		obj = o.component_child;
		while (obj) {
			next_obj = obj.component_sibling;
			if (obj has light) rtrue;
			if (HasLightSource(obj)) rtrue;
			if ((obj provides component_child) && (ComponentHasLight(obj))) rtrue;
			obj = next_obj;
		}
	}
	rfalse;
];

[ HidesLightSource obj;
    if (obj == player) rfalse;
    if (obj has transparent or supporter) rfalse;
    if (obj has animate) rfalse;
    if (obj has container) return (obj hasnt open);
    return (obj hasnt enterable);
];

-) instead of "Light Measurement" in "Light.i6t".

This is the adjust adjacent light rule:
	let should light be false;
	repeat with way running through non-hyperspatial directions:
		let farplace be the room way from the location;
		now direction-object is the room-or-door way from the location;
		if direction-object is apparent:
			if farplace offers its own light and direction-object is not a closed door:
				now should light is true;
	if should light is true:
		now adjacent light is lit;
	otherwise:
		now adjacent light is not lit;		
	
The adjust adjacent light rule is listed before the adjust light rule in the turn sequence rulebook.

This is the adjust hyperlight rule:
	if the player wears the astral lenses:
		now the hyperlight is lit;
	otherwise:
		now the hyperlight is not lit;
		
The adjust hyperlight rule is listed before the adjust adjacent light rule in the turn sequence rulebook.

To silently consider light:
	(- SilentlyConsiderLight(); -).

To surreptitiously reckon darkness:
	follow the adjust hyperlight rule;
	follow the adjust adjacent light rule;
	silently consider light;

New Light ends here.
