//
//  MoreVC.swift
//  Tango
//
//  Created by Alisher Abdukarimov on 9/5/17.
//  Copyright © 2017 MrAliGorithm. All rights reserved.
//

import UIKit

class MoreVC: UIViewController {
    
    @IBOutlet weak var navigationProfileImage: CircleImage!
    
    @IBOutlet weak var spncCollectionView: UICollectionView!
    @IBOutlet weak var moreCollectionView: UICollectionView!
    
    let section = ["MOMENTS", "CALL", "PHOTO BOOTH", "GAMES"]
    let images = ["memory", "call", "photo", "game"]
    override func viewDidLoad() {
        super.viewDidLoad()

        spncCollectionView.delegate = self
        moreCollectionView.delegate = self
        spncCollectionView.dataSource = self
        moreCollectionView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}

extension MoreVC: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == spncCollectionView {
            return 2
        } else {
            return 4
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == spncCollectionView {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "sponsoredCell", for: indexPath) as! SponsoredCell
        return cell
        } else {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "moreVCCell", for: indexPath) as! MoreVCCell
            cell.backgroundColor = UIColor.lightGray
            cell.setupCell(label: section[indexPath.row], image: images[indexPath.row])
            cell.layer.cornerRadius = 5
            cell.layer.masksToBounds = true
            cell.backgroundColor = UIColor.clear
            cell.layer.borderWidth = 2.0
            switch indexPath.row {
            case 0:
                cell.layer.borderColor = UIColor.cyan.cgColor
            case 1:
                cell.layer.borderColor = UIColor.green.cgColor
            case 2:
                cell.layer.borderColor = UIColor.orange.cgColor
            case 3:
                cell.layer.borderColor = UIColor.blue.cgColor
            default:
                cell.layer.borderColor = UIColor.gray.cgColor
            }
        return cell
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == spncCollectionView {
        return CGSize(width: self.view.frame.size.width - 20, height: 200)
    } else {
        return CGSize(width: (collectionView.frame.size.width / 2) - 20, height: (collectionView.frame.size.height / 2) - 20)
    }
  }
}
