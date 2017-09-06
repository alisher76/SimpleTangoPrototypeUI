//
//  UIVIewExtension.swift
//  Tango
//
//  Created by Alisher Abdukarimov on 9/6/17.
//  Copyright © 2017 MrAliGorithm. All rights reserved.
//

import UIKit

@IBDesignable
class Shadow: UIView {
    
    @IBInspectable var cornerRadius: CGFloat = 20.0 {
        didSet {
            self.layer.masksToBounds = false
            self.layer.shadowOffset = CGSize(width: -1, height: 1)
            self.layer.shadowRadius = 1
            self.layer.shadowColor = UIColor.black.cgColor
            self.layer.shadowOpacity = 0.5
        }
    }
    
    override func awakeFromNib() {
        self.setupView()
        
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        self.setupView()
    }
    
    func setupView() {
        self.layer.masksToBounds = false
        self.layer.shadowOffset = CGSize(width: -1, height: 1)
        self.layer.shadowRadius = 1
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOpacity = 0.5
    }
}

class CircleView: UIView {
    
    override func awakeFromNib() {
        self.setupView()
        
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        self.setupView()
    }
    
    func setupView() {
        self.layer.cornerRadius = 10.0
        self.clipsToBounds = true
        self.layer.masksToBounds = true
    }
}
