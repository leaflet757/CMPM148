/**
 * @author Kate Compton
 */
define([], function() {'use strict';

// #musicTopic.capitalize#
// [mcDesc:#charDescription#]
// story about #mc.a#
// #something.ed#

    return {
		
		problemsolutiondialog : [""],
		responcedialog, [""]
		
		problemoccurs : ["soemthign about a probelm for a character"], 
		
		chartypes : ["angel", "woman", "man", "figure", "spider", "raven", "bobcat", "fox", "crow", "snake", "scorpion", "coyote", "eagle", "owl", "lizard", "deer"],
		charnames : ["Joe", "Paprica", "Syther", "Toro", "Jillian", "KiKi", "Taylor Swift", "2Pac", "April", "Tom", "Josh", "Cyrus"],
		charfeatures : [""],
		charflaws : [""],
		
		adjective : ["old", "young", "hooded", "headless", "dead-eyed", "faceless", "strong", "powerful", "musical", "cunning", "sneaky", "swag-tastic"],
		but : ["however", "although", "surprisingly", "unfortunately", "obviously", "well, clearly", "seriously", "as everybody knows"],
		solutionpronouns : [""],
		thankfully : [""],
		generalissue : [""],
	
		conclusion : [""],
		story : ["This is a tale/story about a [charAdj:#adjective#] [charType:#chartypes#] named [charName:#charnames#]. #but.capitalize#, #charName# was #charfeatures# because the #charType# had #charflaws#. #problemoccurs#. Being such a #charAdj# that the #charType# was, made it difficult to find a #solutionpronouns#. #thankfully#, #charName#'s friend, the #adjective# [friend:#chartypes#], came up with a plan to solve the #generalissue#. #problemsolutiondialog#, said the #friend#. #responcedialog#, said #charName#. #conclusion#"],
	
		saying : ["Greetings,", "Welcome weary traveller,", "Why hello there,", "Good after noon my child,"],
        origin : ["#saying#<p>I would like to tell you a story. <p>...</p>#story#<p>...</p>Please join me again something for a retelling of our tale."]
    };
});

/*


{
	"activity" : ["sky diving", "whale watching", "boxing", "paintballing", "swimming", "running", "jumping rope", "screaming", "bathing", "building", "bowling"],
	"location" : ["France", "Cairo", "Berinlin", "Diblin", "The Alpha Pototato Farm", "Atleantis", "The Moon", "The Sun", "The Center of the Earth", "The Ham Competition", "Hell", "The Restricted Zone of the Library", "local bowling alley", "the #thing# farm"],

    "problemsolutiondialog" : ["How about you give #romanceName# a #thing#", "What if you took #romanceName# #activity#", "What if you took #romanceName# to #location#"],
	"responcedialog" : ["That's genius", "What a wonderful idea", "How did I never think of that", "Now it all seems so simple", "But of course", "That can easily be done", "I hope it works", "If you say so", "Only if you do it with me"],
	"romance" : ["fall in love with", "ask out", "marry", "make kissing faces with", "open a family diner", "start a family with"],
	"problemoccurs" : ["This made it very hard for #charName# to #romance# #romanceName#"], 
	
	"chartypes" : ["angel", "woman", "man", "figure", "spider", "raven", "bobcat", "fox", "crow", "snake", "scorpion", "coyote", "eagle", "owl", "lizard", "deer"],
	"charnames" : ["Joe", "Paprica", "Syther", "Toro", "Jillian", "KiKi", "Taylor Swift", "2Pac", "April", "Tom", "Josh", "Cyrus"],
	"badthing" : ["refrigerator", "weenie", "vampire", "lumpy pillow"],
	"thing" : ["asparagus", "ferns", "trees", "anime", "sultry romance novels", "video games", "Netflix", "horses", "My Little Pony", "Illuminati", "flowers", "Frisbee"],
	"charfeatures" : ["had terrible odor", "looked like a #badthing#", "literally had no money", "ate like a #chartypes#", "had an unusual attraction to #thing#"],
	"charflaws" : ["regret that can never be satisfied", "an eternal hunger for the last grilled cheese", "spent all his money on #thing#", "relocated to a different planet"],
		
	"adjective" : ["old", "young", "hooded", "headless", "dead-eyed", "faceless", "strong", "powerful", "musical", "cunning", "sneaky", "swag-tastic"],
	"but" : ["however", "although", "surprisingly", "unfortunately", "obviously", "well, clearly", "seriously", "as everybody knows"],
	"solutionpronouns" : ["solution", "remedy to this problem"],
	"thankfully" : ["Thankfully", "Fortunately", "Luckily"],
	"generalissue" : ["problem", "issue", "dilemma", "pickle", "predicament"],
	
	"said" : ["said", "stated", "explained", "shouted", "exclaimed", "whispered", "told", "uttered"],
	"conclusion" : ["And they all lived happily ever after", "Although it seemed like everything would be well, they ended up breaking up last week", "Perhaps true love does exist"],
	"tale" : ["tale", "story"],
	"story": ["This is a #tale# about a #charAdj# #charType# named #charName#. #but.capitalize#, #charName# #charfeatures# because the #charType# had #charflaws#. #problemoccurs#. Being such a #charAdj# #charType# that #charName# was, made it difficult to find a #solutionpronouns#. #thankfully#, #charName#'s friend, #friend#, came up with a plan to solve the #generalissue#. \"#problemsolutiondialog#\", #said# the #friend#. \"#responcedialog#\", #said# #charName#. #conclusion#."],

    "saying" : ["Greetings,", "Welcome weary traveller,", "Why hello there,", "Good after noon my child,"],
    "origin": ["#saying#<p>I would like to tell you a story. <p>...</p>#[romanceName:#charnames# the #chartypes#][friend:#charnames#][charName:#charnames#][charAdj:#adjective#][charType:#chartypes#]story#<p>...</p>Please join me again something for a retelling of our tale."]
}

// original

{
    "name": ["Cheri","Fox","Morgana","Jedoo","Brick","Shadow","Krox","Urga","Zelph"],    
    "story": ["#hero.capitalize# was a great #occupation#, and this song tells of #heroTheir# adventure. #hero.capitalize# #didStuff#, then #heroThey# #didStuff#, then #heroThey# went home to read a book."],
    "monster": ["dragon","ogre","witch","wizard","goblin","golem","giant","sphinx","warlord"],
    "setPronouns": ["[heroThey:they][heroThem:them][heroTheir:their][heroTheirs:theirs]","[heroThey:she][heroThem:her][heroTheir:her][heroTheirs:hers]","[heroThey:he][heroThem:him][heroTheir:his][heroTheirs:his]"],
    "setOccupation": ["[occupation:baker][didStuff:baked bread,decorated cupcakes,folded dough,made croissants,iced a cake]","[occupation:warrior][didStuff:fought #monster.a#,saved a village from #monster.a#,battled #monster.a#,defeated #monster.a#]"],
    "origin": ["#[#setPronouns#][#setOccupation#][hero:#name#]story#"]
}

*/
