//
//  DiscoverFeedCell.swift
//  Tango
//
//  Created by Alisher Abdukarimov on 9/5/17.
//  Copyright © 2017 MrAliGorithm. All rights reserved.
//

import UIKit

class DiscoverFeedCell: UICollectionViewCell {
    
    @IBOutlet weak var feedImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setupCell(user: User) {
        let feed = Feed(user: user, message: nil, time: "10:40pm", media: UIImage(named: "IMG_0095")!)
        feedImage.image = feed.media
    }
}
