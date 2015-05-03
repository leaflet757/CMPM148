"Learning Inform" by Leif Myer

[-----Lesson 1-----]
The bedroom is a room. "Itesm litter the floor. It is very messy." 
Pants are in the bedroom. The description of Pants is "The pants are ugly as fuck."

The kitchen is west of the bedroom.
A spoon is in the kitchen. 
The stove is in the kitchen. The description of the stove is "A beaten up chunk of metal. Not very exciting."

[comment example]
The dinging room is a room. The dining room is east of the bedroom.

[------Lesson 2-----]
[The Lobby is a room. "Various displays are positioned in equal space from a centered exhibit."

The East Wing is a room. "Paints from 175908 to 3246389 decorate the walls." The East Wing is east of the Lobby.

The George Washington display is in the Lobby. The description of the George Washington display is "Facts about the 2nd Predient of the United States:[line break]1) Was the first president to establish dominance over the aliens in the second world war.[line break]2) Despite much opposition to it, refused to declare war on space."

Some Money is in the Lobby. The description of the Money is "Looks fake to me."

The Candy Bar is in the Lobby. The description of the Candy Bar is "A delicious looking chocolate bar."

Instead of taking the Money, say "Probably shouldn't take it because it's fake."

Before taking the Candy Bar:
	say "No one will miss this."; [remember to use a semicolin instead of comma]
	continue the action. [continue taking the bar]
	
Before going to the East Wing:
	if the player carries the Candy Bar:
		move the player to the Lobby, without printing a room description;
		say "You walked through the doorway but are now in the same room again.";
		stop the action.]
		
[-----Lesson 3-----]
[The Start of the Adventure is a scene. The Start of the Adventure begins when play begins.  The Start of the Adventure ends when taking the Token.

When play begins:
	say "You were excited to come on this field-trip until you heard [italic type]Emily[roman type] was coming too. She'd been making fun of you since you tripped in the classroom last Tuesday and you've been trying to avoid her. Yet, here you are, in her group no less, taking notes on the displays you find in this boring museum.";
	now the time of day is 9:16 am.

Examination Count is a number that varies. Examination Count is 0.
PastTense is a truth state that varies. PastTense is false.
UsedToken is a truth state that varies. UsedToken is false.
Year is a number that varies. Year is 2013.

After examining: 
	increase Examination Count by 1;
	if Examination Count is greater than 2 and UsedToken is false:
		say "Something catches your eye on the floor." ;
		now the Token is in the Lobby.

The Lobby is a room. "Various computerized displays are positioned in equal space from a centered exhibit."

Emily is a woman in the Lobby. The description of Emily is "Blond hair and perfect blue eyes. You hate her.".
Susan is a woman in the Lobby. The description of Susan is "Your best friend since second grade.".
Mr Smith is a man in the Lobby. The description of Mr Smith is "Your boring teacher. He's been teaching History at your high school for [italic type]years[roman type].".

The George Washington display is in the Lobby. The description of the George Washington display is "Facts about the 1st President of the United States:[line break]1) Established an inaugural address.[line break]2) By refusing to run for a third term, helped set the standard of a two-term maximum.".

The John Adams display is in the Lobby. The description of the John Adams display is "Facts about the 2nd President of the United States:[line break]1) Was the first president to occupy the White House.[line break]2) Despite much opposition to it, refused to declare war on France in 1800.".

The description of the Token is "It looks old and new at the same time. You feel drawn to pick it up.".

After taking the Token:
	if PastTense  is true:
		say "You feel your body start to vibrant and time seems to speed up.[line break]";
		now the player is in the Lobby;
		now the time of day is 9:17 am;
		now the Year is 2013;
		remove the Token from play;
		now UsedToken is true;
	if PastTense is false:
		say "You feel your body start to vibrant and time seems to rewind. [line break]";
		now the player is in the Old Lobby;
		now the time of day is 12:01 am;
		now the Token is in the Old Lobby;
		now the Year is 1984;
		now PastTense is true.

The East Wing is a room. "Paintings from 1750 to 1830 decorate the walls." The East Wing is east of the Lobby.

Past Present is a scene. Past Present begins when The Start of the Adventure ends.

When Past Present begins:
	say "[italic type]What just happened?[roman type][paragraph break]Everyone is gone. Susan. Mr. Smith. Even... Emily. And everything looks weird.[line break]".

The Old Lobby is a room. The description of the Old Lobby is "Metal placards and paper posters are arranged at various points along the walls."]

[-----doors-----]
[The wood door is south of the Castle Entrance and north of the Main Hall. The wood door is a door. The wood door is closed and openable.]

[-----Lesson 4-----]
[Release along with the "Parchment" interpreter. 

Use no scoring.

Include Basic Screen Effects by Emily Short. 

The Start of the Adventure is a scene. The Start of the Adventure begins when play begins.  The Start of the Adventure ends when taking the Token.

When play begins:
	say "You were excited to come on this field-trip until you heard [italic type]Emily[roman type] was coming too. She'd been making fun of you since you tripped in the classroom last Tuesday and you've been trying to avoid her. Yet, here you are, in her group no less, taking notes on the displays you find in this boring museum.";
	now the time of day is 9:16 am.

Table of Time Status
left	central	right 
" "	""	" "
" "	"~~~ [time of day] on 7 March [Year] ~~~"	" " 
" "	""	" "

Rule for constructing the status line:
	 fill status bar with Table of Time Status;
	 rule succeeds.

Examination Count is a number that varies. Examination Count is 0.
PastTense is a truth state that varies. PastTense is false.
UsedToken is a truth state that varies. UsedToken is false.
Year is a number that varies. Year is 2013.

After examining:
	increase Examination Count by 1;
	if Examination Count is greater than 2 and UsedToken is false:
		say "Something catches your eye on the floor." ;
		now the Token is in the Lobby;
	if number of blank rows in Table of Diary is greater than 0:
		choose a blank row in Table of Diary;
		now Item entry is "[noun]";
		now Description entry is "[description of noun]".

The Lobby is a room. "Various computerized displays are positioned in equal space from a centered exhibit."

Emily is a woman in the Lobby. The description of Emily is "Blond hair and perfect blue eyes. You hate her.".
Susan is a woman in the Lobby. The description of Susan is "Your best friend since second grade.".
Mr Smith is a man in the Lobby. The description of Mr Smith is "Your boring teacher. He's been teaching History at your high school for [italic type]years[roman type].".

The George Washington display is in the Lobby. The description of the George Washington display is "Facts about the 1st President of the United States:[line break]1) Established an inaugural address.[line break]2) By refusing to run for a third term, helped set the standard of a two-term maximum.".

The John Adams display is in the Lobby. The description of the John Adams display is "Facts about the 2nd President of the United States:[line break]1) Was the first president to occupy the White House.[line break]2) Despite much opposition to it, refused to declare war on France in 1800.".

The description of the Token is "It looks old and new at the same time. You feel drawn to pick it up.".

After taking the Token:
	if PastTense  is true:
		say "You feel your body start to vibrant and time seems to speed up.[line break]";
		now the player is in the Lobby;
		now the time of day is 9:17 am;
		now the Year is 2013;
		remove the Token from play;
		now UsedToken is true;
	if PastTense is false:
		say "You feel your body start to vibrant and time seems to rewind. [line break]";
		now the player is in the Old Lobby;
		now the time of day is 12:01 am;
		now the Token is in the Old Lobby;
		now the Year is 1984;
		now PastTense is true.

The East Wing is a room. "Paintings from 1750 to 1830 decorate the walls." The East Wing is east of the Lobby.

Past Present is a scene. Past Present begins when The Start of the Adventure ends.

When Past Present begins:
	say "[italic type]What just happened?[roman type][paragraph break]Everyone is gone. Susan. Mr. Smith. Even... Emily. And everything looks weird.[line break]".

The Old Lobby is a room. The description of the Old Lobby is "Metal placards and paper posters are arranged at various points along the walls."

Jenny is a woman in the Lobby. The player is Jenny.

Table of Susan Responses
Topic		Response
"George Washington display"		"What about it? This place is [italic type]so[roman type] boring.[line break]"
"John Adams display"		"What about it? This place is [italic type]so[roman type] boring.[line break]"
"Mr Smith"		"I heard Emily made a pass at him.[line break]"
"Emily"		"I can't believe we got placed in her group.[line break]"

Table of Mr Smith Responses
Topic	Response
"George Washington display"	"Have you looked at it? Let's see, it says:[paragraph break]'[description of George Washington display]'[line break]"
"John Adams display"	"He's always been my favorite. I memorized the display a long time ago. It reads: [paragraph break]'[description of John Adams display]'[line break]"
"Emily"	"I really wish you two would stop fighting with each other."

After asking Susan about a topic listed in the Table of Susan Responses: 
		say "[response entry]".

After asking Mr Smith about a topic listed in the Table of Mr Smith Responses: 
	say "[response entry]".

After asking Emily about something, say "(She is ignoring you.)".

At 9:20 AM:
	now Mr Smith is in the East Wing.

At 9:30 AM:
	now Susan is in the East Wing.

At 10 AM:
	now Emily is in the East Wing.

Table of Diary
Item (indexed text)	Description (indexed text)
with 8 blank rows

The diary book is carried by the player.

Understand the command "read" as something new. 

Understand "read [something]" as reading. Reading is an action applying to one thing. 

This is the book requirement rule: 
	if the player is not carrying the diary book, say "You're not reading anything." instead. 

Check reading: 
	if the noun is not the diary book, say "There are no pages in [the noun]." instead; 
	abide by the book requirement rule. 

Carry out reading: 
	 say "The Diary reads:[line break]"; 
	repeat with N running from 1 to the number of filled rows in the Table of Diary: 
		choose row N in the Table of Diary; 
		say "[item entry]: [description entry][line break]"]