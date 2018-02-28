//
//  ViewController.swift
//  senha
//
//  Created by alessandra leventhal on 28/02/2018.
//  Copyright © 2018 ariel.leventhal. All rights reserved.
//

import UIKit

class GameViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var acertos : (corCerta: Int, lugarCerto: Int) = (0,0)
    var currentGuessIndex = 0
    var currentGuess = [UIColor]()
    var guessesArray = [[UIColor]]()
    var possibleColors = [UIColor]()
    var correctSequence = [UIColor]()
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet var guessButtons: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for button in guessButtons {
            possibleColors.append(button.backgroundColor!)
        }
        
    }
    
    func newGame() {
        correctSequence = []
        for _ in 1...4 {
            let randomIndex = Int(arc4random_uniform(UInt32(possibleColors.count)))
            correctSequence.append(possibleColors[randomIndex])
        }
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        // if guess isnt complete
        if currentGuess.count < 4 {
            currentGuess.append(sender.backgroundColor!)
            if guessesArray.count != 0 {
                guessesArray.remove(at: currentGuessIndex)
            }
            guessesArray.append(currentGuess)
            tableView.reloadData()
        }
        if currentGuess.count == 4 {
            //MARK: verificar se acerto
            if currentGuess == correctSequence {
                //ganhou
            } else {
                let tempGuessCopy = currentGuess
                for (index,color) in currentGuess.enumerated() {
                    if correctSequence[index] == color{
                        acertos.lugarCerto += 1
                        currentGuess.remove(at: index)
                    }
                }
            }
        }
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return guessesArray.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        for (index,color) in guessesArray[indexPath.row].enumerated() {
            cell.guessViews[index].backgroundColor = color
        }
        return cell
    }
    
    
}

