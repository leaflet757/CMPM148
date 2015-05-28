"CLOP Redesign" by Leif Myer

[Starting Room]
Starting Line is a room. "[one of]'Ho there, CLOP! I hear tell there's a virgin on the far side of yon high and pleasant hill!' says the local japer Sherrod. [paragraph break]
You reply, 'Confound thee Sherrod, this had best not be one of thine japes. Thou knowest I  mislike hills.'[paragraph break][or][stopping]You stand beneath an oak tree whose leaves are rustling in the wind. The grass underfoot tickles your hooves. Sherrod's quest rings true in your ears. You must begin your walk towards the virgin on yon high and pleasant hill. Use the verb 'KHJL' to move."

Water is in the starting line.

[Vitory Room]
Yon High and Pleasant Hill is a room.

The description of the player is "A proud, opalescent horn juts from your forehead. Your four legs are strong and your hooves are solid. Your mane is trim and neat. You are a fine, majestic creature, yes you are. But you have a hard time controlling your leg muscles."
 
Stumbling is an action applying to nothing.
Understand "KHJL" as stumbling.
		
Carry out stumbling:
	say "You lift your [one of]right[or]left[at random] [one of]front[or]hind[at random] hoof and move it forward. [one of]However[or]Unfortunately[or]tragically[or]Surprisingly[or]Hilariously[or]Drunkenly[at random], [one of]you tip backwards, landing on your buttocks.[or]you stumble forward awkwardly, neighing, and then pause to sturdy yourself.[or]you careen forward, landing in what could be a new yoga position, balancing on your front hooves and your horn.[or]you wriggle and writhe furiously, making very little forward progress.[or]you have propelled yourself backwards a short distance! Oh this is hard.[at random]";
	if a random chance of 5 in 10 succeeds:
		say "[paragraph break]You have failed this time. The Sherrod jeers: [one of]Haw, ye silly ol' horse![or]Trolololo, I sing a song for thee, unicorn![or]Tis little more than a mole hill, Clop.[at random]";
		try looking.

[Custom Crave Action]
Craving is an action applying to nothing.
Understand "crave booty" as craving.
Carry out craving:
	say "You have had enough of this stumbling around, there is a princess to save. You must save that glorious tush! You focus all your energy to perform your ultimate combo, SUPER MEGA DEATH HYPER JUMP OF RAINBOW POWER. You thrust both your hind legs backward generating 438953704 Newtons of force, completely obliterating Sherrod within milliseconds. After a few moments of faster than light speed travel, you manage to stumble on top of Yon High and Pleasant Hill.";
	move player to hill.
		
Every turn:
	If player is in hill:
		end the story saying "You have reached yon high and pleasant hill! The virgin, however, was just one of Sherrod's japes after all."