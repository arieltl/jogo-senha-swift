//
//  UI extensions and classes.swift
//  senha
//
//  Created by alessandra leventhal on 28/02/2018.
//  Copyright © 2018 ariel.leventhal. All rights reserved.
//

import UIKit

extension UIView {
    func roundCorners(ratio: Int) {
        self.layer.cornerRadius = self.frame.height/2
    }
}
