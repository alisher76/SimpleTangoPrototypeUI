//
//  DiscoverVC.swift
//  Tango
//
//  Created by Alisher Abdukarimov on 9/5/17.
//  Copyright © 2017 MrAliGorithm. All rights reserved.
//

import UIKit

class DiscoverVC: UIViewController {
    
    // Outlets
    @IBOutlet weak var navigationProfileImage: CircleImage!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var userInfoLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var profileIMage: CircleImage!
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    var users = [User]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        
        let user1 = User(name: "Alisher", profileImage: "aden", userName: "@ali", status: "I am you but you are not me", feeds: nil, friends: nil)
        users.append(user1)
        setupView()
    }
    
    func setupView() {
        profileIMage.image = UIImage(named: users[0].profileImage)
        statusLabel.text = users[0].status
        nameLabel.text = users[0].name
        userInfoLabel.text = users[0].userName
    }
    
    @IBAction func followButtonTapped(_ sender: Any) {
        
    }
    
}

extension DiscoverVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellID", for: indexPath) as! DiscoverFeedCell
        cell.setupCell(user: users[0])
        return cell
    }
    
}

