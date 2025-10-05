// Project: ChenDerek-HW4
// EID: dyc377
// Course: CS371L


import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var pipResult: UILabel!
    @IBOutlet weak var soFarCount: UILabel!
    @IBOutlet weak var pipButton: UIButton!
    @IBOutlet weak var suitButton: UIButton!
    @IBOutlet weak var suitResult: UILabel!
    
    let pips = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
    let suits = ["clubs", "diamonds", "hearts", "spades"]
    var secretPipIndex: Int!
    var secretSuitIndex: Int!
    var guessCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        secretPipIndex = Int.random(in: 0...pips.count - 1)
        secretSuitIndex = Int.random(in: 0...suits.count - 1)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        if let pip = selectedPip {
            pipButton.setTitle(pip, for: .normal)
        } else {
            pipButton.setTitle("select pip", for: .normal)
        }

        if let suit = selectedSuit {
            suitButton.setTitle(suit, for: .normal)
        } else {
            suitButton.setTitle("select suit", for: .normal)
        }
    }

    @IBAction func submitGuess(_ sender: Any) {
        print("Submit button was tapped!")
        
        if selectedPip == nil || selectedSuit == nil {
            pipResult.text = "select a pip value and suit first"
                return
        }
        
        guessCount += 1;
        
        let guessedPipIndex = pips.firstIndex(of: selectedPip!)!
            
        if guessedPipIndex < secretPipIndex {
            pipResult.text = "Your pip value is too low"
        } else if guessedPipIndex > secretPipIndex {
            pipResult.text = "Your pip value is too high"
        } else {
            pipResult.text = "Correct pip value"
        }
        
        let secretSuit = suits[secretSuitIndex]
            
        if selectedSuit == secretSuit {
            suitResult.text = "Correct suit"
        } else {
            suitResult.text = "Incorrect suit"
        }
        
        if guessedPipIndex == secretPipIndex && selectedSuit == secretSuit {
            // The user guessed correctly
            soFarCount.text = "You guessed correctly in \(guessCount) tries!"
        } else {
            // The guess was incorrect
            soFarCount.text = "Guesses so far: \(guessCount)"
        }
        
    }
    
}

