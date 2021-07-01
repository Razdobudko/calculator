//
//  CustomBtn.swift
//  Calculator_Test
//
//  Created by Veranika Razdabudzka on 30.06.21.
//

import UIKit

class CustomBtn: UIButton {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.cornerRadius = 30
    }
}
