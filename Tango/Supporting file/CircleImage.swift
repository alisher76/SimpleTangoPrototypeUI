//
//  CircleImage.swift
//  Tango
//
//  Created by Alisher Abdukarimov on 9/2/17.
//  Copyright © 2017 MrAliGorithm. All rights reserved.
//

import UIKit

@IBDesignable
class CircleImage: UIImageView {
    
    override func awakeFromNib() {
        setupView()
    }
    
    func setupView() {
        self.layer.cornerRadius = self.frame.width / 2
        self.clipsToBounds = true
        self.layer.masksToBounds = true
        self.layer.borderWidth = 4.0
        self.layer.borderColor = UIColor.white.cgColor
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        setupView()
    }
}
