//
//  ChatVCMessageCell.swift
//  Tango
//
//  Created by Alisher Abdukarimov on 9/5/17.
//  Copyright © 2017 MrAliGorithm. All rights reserved.
//

import UIKit

class ChatVCMessageCell: UITableViewCell {
    
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var profileIMage: CircleImage!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setupCell(message: Message) {
        timeLabel.text = "Yesterday"
        nameLabel.text = message.sender.name
        profileIMage.image = UIImage(named: message.sender.profileImage)
    }

}
