## Variables ##
 
all_cards          #(array of objects): Collection of JSON documents (for example, describing each card).
eligible_cards   #(array of objects): A subset of the allCards collection. Cards that could be shown to player and their weightings.
encounters     #(int): The number of encounters the player will see before having to wait. 
player_state     # (array of objects): Describes the current state of the core values, the narrative(s) underway, and a history of relevant choices made by the player. 

## Example of Card ##

{ 
    "unique_id" : "ENGINEER-UNDERATTACK-002" , 
    "encounter_string" : "The hull is severely compromised by enemy fire, should we direct additional power to the shields?", 
    "card_image" : "picture_of_engineer.jpeg",
	"set": "basic_engineer" # cards can only belong to one set.
	"tags": {["engineer", "under_attack"]}  
	"prerequisites":{  #Things which MUST be true in order for the card to be considered eligible.
		"player_state.core.hull": {"$lte": 25},
		"player_state.setsOwned": {"$includes": "basic_engineer"}
	},
	"weights":{  #Things which influence the probability of this card showing up or not if it is eligible.
		"base_weight": 100,
		"player_state.history": {
		"range": {[0,9]} # Last 10 cards swiped
		"tags": {"$includes": "engineer" } # for each one that has the engineer tag
		"adjust_weight" : -60 # lower weight by 60 to a minimum of zero
		},
	},
		
	},
    "leftdata" : { # What the 'left' choice is and what happens if you choose it.
        "choice_string" : "Yes",
		"consequences": {
			"player_state.core.power": -20
		},
		"trigger_event": "ALIENS-RETREATING-SPECIAL" # Reference to a card to show next. Does not decrease the encounters total. May be the only way to see this card at all. 	
	},
	  "rightdata" : { # What the 'right' choice is and what happens if you choose it.
        "choice_string" : "No",
		"consequences": {
			"player_state.core.hull": -30,
			"player_state.core.crew": -15
		}	
	},	 
}

## Session Behaviour ##

while(encounters > 0){
from eligible_cards #sample a card based on their weights, making any adjustments that the cards demand;
Resolve the effects of the player's decision;
encounters -= 1;
update eligible_cards;
}
Start timer to give the player more encounters;
Tell the player to go play with their balls until the encounters regenerate;

