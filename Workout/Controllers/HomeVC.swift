//
//  HomeVC.swift
//  Workout
//
//  Created by Donovan Cotter on 12/21/18.
//  Copyright © 2018 Donovan Cotter. All rights reserved.
//

import UIKit

class HomeVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {


    private let categories = ["Programs", "Workouts", "Exercises"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CategoryCellIdentifier", for: indexPath) as? CategoryCollectionCell
        
        let category = categories[indexPath.item]
        cell?.categoryLabel.text = category
        
        return cell!
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categories.count
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let category = categories[indexPath.item]
        performSegue(for: category)
    }
    
    private func performSegue(for category: String) {
        switch category {
        case "Programs":
            performSegue(for: "")
        case "Workouts":
            performSegue(for: "")
        case "Exercises":
            performSegue(for: "")
        default:
            print("not a valid category")
        }
    }
    
}
