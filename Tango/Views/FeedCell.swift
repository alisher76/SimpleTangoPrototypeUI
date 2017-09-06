//
//  FeedCell.swift
//  Tango
//
//  Created by Alisher Abdukarimov on 9/6/17.
//  Copyright © 2017 MrAliGorithm. All rights reserved.
//

import UIKit

class FeedCell: UICollectionViewCell {
    
    @IBOutlet weak var navigationProfileImage: CircleImage!
    @IBOutlet weak var contentLabel: UILabel!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var profileIMage: CircleImage!
    @IBOutlet weak var mediaImageView: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    func setupCell(feed: Feed) {
        navigationProfileImage.image = UIImage(named: "aden")
        contentLabel.text = "I have done many things but not enough"
        nameLabel.text = feed.user.name
        profileIMage.image = UIImage(named: "aden")
        userNameLabel.text = "@alisher"
        mediaImageView.image = UIImage(named: "aa")
    }
}
