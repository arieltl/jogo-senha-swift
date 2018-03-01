//
//  TableViewCell.swift
//  senha
//
//  Created by alessandra leventhal on 28/02/2018.
//  Copyright © 2018 ariel.leventhal. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet var guessViews: [UIView]!
    @IBOutlet var correctGuessesIndicators: [UIButton]!
    

    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
