//
//  ChatVC.swift
//  Tango
//
//  Created by Alisher Abdukarimov on 9/5/17.
//  Copyright © 2017 MrAliGorithm. All rights reserved.
//

import UIKit

class ChatVC: UIViewController {
    
    
    @IBOutlet weak var navigationProfileImage: CircleImage!
    @IBOutlet weak var tableView: UITableView!
    
    var messagesArray = [Message]()
    var usersArray = [User]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 140
        let user = User(name: "Ali", profileImage: "aa", userName: "@MrAli", status: "I am coding day and night", feeds: nil, friends: nil)
        let message = Message(content: "I love coding in swift", sender: user, time: "Yesterday")
        messagesArray.append(message)
    }
}

extension ChatVC: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellID") as! ChatVCCell
            return cell
        } else {
        let cell = tableView.dequeueReusableCell(withIdentifier: "messageCellID") as! ChatVCMessageCell
            cell.setupCell(message: messagesArray[0])
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return CGFloat(80.0)
    }
    
}
