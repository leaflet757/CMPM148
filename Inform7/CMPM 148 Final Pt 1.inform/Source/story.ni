"CMPM 148 Final Pt 1" by Leif Myer

[Build Arguments]
[Release along with cover art, the source text, an interpreter, and a website.]


[***Variables and Stuff***]
camera_timer is a number that varies. camera_timer is 0.
with_daughter is a number that varies. with_daughter is 0.


[-----Holding Cell Room-----]
The Holding Cell is a room.

[-----Long Hallway Room-----]
Long Hallway is a room. The Long Hallway is east of The Holding Cell.

[-----Wide Hallway Room-----]
Wide Hallway is a room. The Wide Hallway is east of the Long Hallway.

[-----Unlit Area (Dark Room) Room-----]
Unlit Area is a room. The Unlit Area is east of the Wide Hallway.

[-----Locker Room-----]
Locker Rooms is a room. The Locker Rooms are east of the Unlit Area. 

[-----Archive Room-----]
Archive Room is a room. The Archive Room is south of the Locker Rooms.

[-----Office Room-----]
Office is a room.
The Office Door 1 is east of the Office and west of the Archive Room. The Office Door 1 is a door. The Office Door 1 is lockable and locked.
The Office Door 2 is west of the Office and east of the Warehouse Floor. The Office Door 2 is a door. The Office Door 2 is lockable and locked.
The small Silver Key unlocks the Office Door 1.
The small Silver Key unlocks the Office Door 2.

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

[Stick of Dynamite]
A Stick of Dynamite is switched off device in the Stock Holding Area.
Before switching on Dynamite:
	if Escape is happening and player is in Shipping Area and player has Matches:
		say "placing dynamite by locked door";
		now Dynamite is in Shipping Area;
		remove Matches from play;
		continue the action;
	else:
		say "you need matches in inventory and player be near exit door and daugher with you";
		stop the action.

[-----Assembly Room-----]
Assembly is a room. The Assembly is south of the Stock Holding Area.

[-----Warehouse Floor Room-----]
Warehouse Floor is a room. The Warehouse Floor is east of the Stock Holding Area and south of the Wide Hallway.
[Silver Key]
The small Silver Key is in the Warehouse Floor.

[-----Packaging (Shipping) Room-----]
Packaging Area is a room. The Packaging Area is south of Assembly.

[-----Security (Camera) Room-----]
Security is a room. Security is north of the Restroom and east of Assembly and west of the Sleeping Quarters and south of the Warehouse Floor.

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

[Matches]
Matches are in the Restroom.

[-----Shipping (Vehicle) Room-----]
Shipping Area is a room. The Shipping Area is east of the Restroom.

[Car Thing]
The Jeep is an enterable container in the Shipping Area.

[-----Sleeping Quarters-----]
Sleeping Quarters is a room. The Sleeping Quarters is north of the Shipping Area and south of the Archive Room.

[-----Exit Room-----]
Exit is a room.

[Exit Door]
The Exit Door is a lockable door that is unlocked. The Exit Door is east of the Shipping Area and west of the Exit.

[Check if player can leave with car and Kam]
Before going through the Exit Door:
	if player is in the jeep:
		[TODO: move player outside the jeep;]
		continue the action;
	else:
		say "you should get in the jeep".

[Check if Kam should follow you]
After going when with_daughter is 1:
	now Kam is in location of the player;
	continue the action.
	
[Dead People Room]
The Dead Room is a room.

	
[NOTES]
A door can be magical or boring. A door is usually boring.
[Properties]
A person can be hidden or not hidden. A person is usually not hidden.
The player is a person.
[Dialog extensions]
