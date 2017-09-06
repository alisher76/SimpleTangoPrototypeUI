//
//  FeedVC.swift
//  Tango
//
//  Created by Alisher Abdukarimov on 9/5/17.
//  Copyright © 2017 MrAliGorithm. All rights reserved.
//

import UIKit

class FeedVC: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var navigationProfileImage: CircleImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    

    @IBAction func composeFeedButtonTapped(_ sender: Any) {
        print("ComposeFeedButtonTapped")
    }
}

extension FeedVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "feedCell", for: indexPath) as! FeedCell
        let user = User(name: "Alish", profileImage: "aden", userName: "@aliii", status: "Yellow pages", feeds: nil, friends: nil)
        let feed = Feed(user: user, message: nil, time: "10:00am", media: UIImage(named: "aa")!)
        cell.setupCell(feed: feed)
        return cell
    }
    
}
