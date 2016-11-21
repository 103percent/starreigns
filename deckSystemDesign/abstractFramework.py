## Variables ##
 
allCards          #(array of objects): Collection of JSON documents (for example, describing each card).
eligibleCards   #(array of objects): A subset of the allCards collection. Cards that could be shown to player and their weightings.
encounters     #(int): The number of encounters the player will see before having to wait. 
playerState     # (array of objects): Describes the current state of the core values, the narrative(s) underway, and a history of relevant choices made by the player. 

## Example of Card ##

{ 
    "unique_id" : "ENGINEER-UNDERATTACK-002" , 
    "encounter_string" : "The hull is severely compromised by enemy fire, should we direct additional power to the shields?", 
    "card_image" : "pictureofengineer.jpeg",
	"set": "basic_engineer" # cards can only belong to one set.
	"tags": {["engineer", "underattack"]}  
	"prerequisites":{  #Things which MUST be true in order for the card to be considered eligible.
		"playerState.core.hull": {"$lte": 25},
		"playerState.setsOwned": {"$includes": "basic_engineer"}
	},
	"weights":{  #Things which influence the probability of this card showing up or not if it is eligible.
		"baseWeight": 100,
		"playerState.history": {
		"range": {[0,9]} # Last 10 cards swiped
		"tags": {"$includes": "engineer" } # for each one that has the engineer tag
		"adjustWeight" : -60 # lower weight by 60 to a minimum of zero
		},
	},
		
	},
    "leftdata" : { # What the 'left' choice is and what happens if you choose it.
        "choice_string" : "Yes",
		"consequences": {
			"playerState.core.power": -20
		}	
	},
	  "rightdata" : { # What the 'right' choice is and what happens if you choose it.
        "choice_string" : "No",
		"consequences": {
			"playerState.core.hull": -30,
			"playerState.core.crew": -15
		}	
	},	 
}

## Session Behaviour ##

while(encounters > 0){
from eligibleCards #sample a card based on their weights, making any adjustments that the cards demand;
Resolve the effects of the player's decision;
encounters -= 1;
update eligibleCards;
}
Start timer to give the player more encounters;
Tell the player to go play with their balls until the encounters regenerate;

