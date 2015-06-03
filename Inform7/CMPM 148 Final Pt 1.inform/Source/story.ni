"CMPM 148 Final Pt 1" by Leif Myer

[Build Arguments]
[Release along with cover art, the source text, an interpreter, and a website.]

[Includes]
Include Rideable Vehicles by Graham Nelson. 

[***Variables and Stuff***]
camera_timer is a number that varies. camera_timer is 0.
with_daughter is a number that varies. with_daughter is 0.
rand is a number that varies. rand is 3.

[Init]
When play begins:
	now rand is a random number between 1 and 4.
	
[Hidable Objects]
A Hidable Object is a kind of enterable container.
A hidable object is usually fixed in place.

[-----Holding Cell Room-----]
The Holding Cell is a room.

[-----Long Hallway Room-----]
Long Hallway is a room. The Long Hallway is east of The Holding Cell.
A Porcelain Canoe is a hidable object in the Long Hallway.

[-----Wide Hallway Room-----]
Wide Hallway is a room. The Wide Hallway is east of the Long Hallway.
A Giant Inflatable Menorah is a hidable object in the Wide Hallway.

[-----Unlit Area (Dark Room) Room-----]
Unlit Area is a room. The Unlit Area is east of the Wide Hallway.
A Dog House is a hidable object in the Unlit Area.

[-----Locker Room-----]
Locker Rooms is a room. The Locker Rooms are east of the Unlit Area. 
The Shower is a hidable object in the Locker Rooms.

[-----Archive Room-----]
Archive Room is a room. The Archive Room is south of the Locker Rooms.
A Coat Closet is a hidable object in the Archive Room.

[-----Office Room-----]
Office is a room.
The Office Door 1 is east of the Office and west of the Archive Room. The Office Door 1 is a door. The Office Door 1 is lockable and locked.
The Office Door 2 is west of the Office and east of the Warehouse Floor. The Office Door 2 is a door. The Office Door 2 is lockable and locked.
The small Silver Key unlocks the Office Door 1.
The small Silver Key unlocks the Office Door 2.
A Desk is in the Office Room. A Desk is a hidable object.

[-----Daughter's Holding Cell-----]
Daughter's Holding Cell is a room. The Daughter's Holding Cell is north of the Office.

[Daughter Person]
Kam is a person in Daughter's Holding Cell.
After going in the Daughter's Holding Cell:
	now with_daughter is 1;
	continue the action.

[Check if the Player can Enter]
Before going to Daughter's Holding Cell:
	if Camera Off is happening:
		say "etnering the room";
	else:
		say "sorry captain";
		stop the action.
		
[Escape Scene]
Escape is a scene. Escape begins when the player is in Daughter's Holding Cell.
When Escape begins:
	say "Escape Begins".
When Escape ends:
	say "Escape Ends".
Every turn during the Escape:
	say "Escaping...".
Escape ends when the player is in Exit.

[-----Stock Holding Room-----]
Stock Holding Area is a room. The Stock Holding Area is south of the Long Hallway.
Pile of Stocks are a hidable object in the Stock Holding Area.

[Stick of Dynamite]
A Stick of Dynamite is switched off device in the Stock Holding Area.
[Before switching on Dynamite: [-------------------------------------------------------------------------------------------------------------]
	if Escape is happening and player is in Shipping Area and player has Matches:
		say "placing dynamite by locked door";
		now Dynamite is in Shipping Area;
		remove Matches from play;
		continue the action;
	else:
		say "you need matches in inventory and player be near Iron Door and daugher with you";
		stop the action.]

[-----Assembly Room-----]
Assembly is a room. The Assembly is south of the Stock Holding Area.
Ambiguous Heavy Machinery is a hidable object in the Assembly.

[-----Warehouse Floor Room-----]
Warehouse Floor is a room. The Warehouse Floor is east of the Stock Holding Area and south of the Wide Hallway.
[Silver Key]
The small Silver Key is in the Warehouse Floor.
Giant Wire Spools are a hidable object in the Warehouse Floor.

[-----Packaging (Shipping) Room-----]
Packaging Area is a room. The Packaging Area is south of Assembly.
A Wooden Crate is a hidable object in the Packaging Area.

[-----Security (Camera) Room-----]
Security is a room. Security is north of the Restroom and east of Assembly and west of the Sleeping Quarters and south of the Warehouse Floor.
A Giant Super Computer is in the Security Room. Giant Super Computer is a hidable object.

[Camera Scene]
Camera Off is a recurring scene. Camera Off begins when camera_timer is 10.
When Camera Off begins:
	say "camera off begins".
When Camera Off ends:
	say "acmer off stops";
	now Camera Controls are switched on.
Every turn during the Camera Off:
	decrease camera_timer by 1.
Camera Off ends when camera_timer is 0.

[TODO: Needing to Hide Scene]

[Camera Switching]
The Camera Controls is a switched on device in Security. It is fixed in place.
Carry out switching off the Camera Controls:
	now camera_timer is 10;
	say "The camera timer is now [camera_timer]".
Carry out switching on the Camera Controls:
	now camera_timer is 0;
	say "The camera timer is now [camera_timer]".

[-----Restroom-----]
Restroom is a room. The Restroom is east of the Packaging Area.
Stalls are a hidable object in the Restroom.

[Matches]
Matches are in the Restroom.

[-----Shipping (Vehicle) Room-----]
Shipping Area is a room. The Shipping Area is east of the Restroom.
A Stack of Tires are a hidable object in the Shipping Area.
[TODO: the jeep should not be able to move until the end]

[Car Thing]
The Jeep is a vehicle in the Shipping Area.
Before taking the jeep:
	say "it b too eavy.";
	stop the action.

[-----Sleeping Quarters-----]
Sleeping Quarters is a room. The Sleeping Quarters is north of the Shipping Area and south of the Archive Room.
Beds are in the Sleeping Quarters. Beds are a Hidable Object.

[-----Exit Room-----]
Exit is a room.

[Iron Door]
The Iron Door is a lockable door that is locked. The Iron Door is east of the Shipping Area and west of the Exit.

[-----Dead People Room-----]
The Dead Room is a room.

[Check if player can leave with car and Kam]
Before going through the Iron Door:
	if player is in the jeep:
		[remove the jeep from play;]
		continue the action;
	else:
		say "you should get in the jeep".

[Check if Kam should follow you]
After going when with_daughter is 1:
	now Kam is in location of the player;
	continue the action.
	
[TODO: random encounters, not in enterance and holding cell]
[After going:
	if a random chance of 1 and 3 succeeds:
		say "the random chance succeeds.".]

[Hide action]
Hiding is an action applying to one thing.
Understand "hide in [something]" as hiding.
Understand "hide behind [something]" as hiding.
Understand "hide under [something]" as hiding.
Understand "hide above [something]" as hiding.
Understand "hide on top of [something]" as hiding.
Check hiding:
	if the noun is not a hidable object:
		say "You cannot hide in the [the noun]".
Carry out hiding:
	if the object is a hidable object:
		try entering the noun.
		
[Check if the Player is Hidden]
Every Turn:
	if the player is in a hidable object:
		now the player is hidden;
	else if the player is not in a hidable object:
		now the player is not hidden.

[Use matches action]
Igniting is an action applying to two things.
Understand "light [something]" as Igniting.
Understand "light [something] with [something]" as Igniting.
Check Igniting:
	if the matches are not carried:
		say "You don't have anything to light [the noun] with.";
	else if the stick of dynamite is not carried:
		say "That is probably not something you should use matches on";
	else if escape is not happening:
		say "It would best not to make a lot of noise right now. You still need to find Kam.";
	else if the player is not in the Shipping Area:
		say "You should probably use that near the exit.".
Carry out Igniting:
	if player is in the Shipping Area and the stick of dynamite is carried and the matches are carried:
		say "placing dynamite by locked door, it then instantly explodes";
		now Dynamite is in Shipping Area;
		now the Iron Door is unlocked;
		remove Matches from play.


[NOTES]
A door can be magical or boring. A door is usually boring.
[Properties]
A person can be hidden or not hidden. A person is usually not hidden.
The player is a person. The player is not hidden.
[Dialog extensions]
