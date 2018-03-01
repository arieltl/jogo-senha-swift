//
//  ViewController.swift
//  senha
//
//  Created by alessandra leventhal on 28/02/2018.
//  Copyright © 2018 ariel.leventhal. All rights reserved.
//

import UIKit

class GameViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet var guessButtons: [UIButton]!
    
    var buttonCount = 0
    var guesses = [[UIColor]]()
    var guessIndex = 0
    
    override func viewDidLoad() {
        var possibleColors = [UIColor]()
        for button in guessButtons {
            button.roundCorners(ratio: 5)
            possibleColors.append(button.backgroundColor!)
        }
        GameManager.shared.setPossibleColors(colors: possibleColors)
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        buttonCount += 1
        if buttonCount < 5 {
            
        }
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        
        return cell
    }
    
    
}

