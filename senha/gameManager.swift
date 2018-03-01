//
//  gameManager.swift
//  senha
//
//  Created by alessandra leventhal on 28/02/2018.
//  Copyright © 2018 ariel.leventhal. All rights reserved.
//

import UIKit

class GameManager {
    private var possibleColor = [UIColor]()
    private var guesses = [(arrayDeCores:[UIColor], coresCertas:Int, lugaresCertos:Int)]()
    private var tryIndex = 0
    private var correctSequence = [UIColor]()
    static let shared = GameManager()
    
    
    func checkForGuess(colors:[UIColor]) -> Bool{
        let arrayDeCores1 = colors
        var coresCertas = 0
        var lugaresCertos = 0
        if colors == correctSequence {
            //ganhou
        } else {
            var tempColors = colors
            
            var tempSequence = correctSequence
            for (index,color) in tempColors.enumerated() {
                if color == correctSequence[index] {
                    tempColors.remove(at: index)
                    tempSequence.remove(at: index)
                    lugaresCertos += 1
                }
            }
            if tempColors.count > 0{
                for (index,color) in tempColors.enumerated() {
                    if tempSequence.contains(color) {
                        for (i,rightColor) in tempSequence.enumerated() {
                            if rightColor == color {
                                tempSequence.remove(at: i)
                                tempColors.remove(at: index)
                                coresCertas += 1
                                break
                            }
                        }
                    }
                }
            }
        }
        guesses.append((arrayDeCores1,coresCertas,lugaresCertos))
            tryIndex += 1
        if lugaresCertos == 4 {
            return true
        }
        return false
    }
    
    func setPossibleColors(colors:[UIColor]){possibleColor = colors}
    
    
    private init(){}
}
