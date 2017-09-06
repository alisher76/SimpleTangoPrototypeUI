//
//  MoreVCCell.swift
//  Tango
//
//  Created by Alisher Abdukarimov on 9/6/17.
//  Copyright © 2017 MrAliGorithm. All rights reserved.
//

import UIKit

class MoreVCCell: UICollectionViewCell {
    
    @IBOutlet weak var moreLabel: UILabel!
    @IBOutlet weak var moreImage: UIImageView!
    
    func setupCell(label: String, image: String) {
        moreImage.image = UIImage(named: image)
        moreLabel.text = label
    }
}
