//
//  ExerciseVC.swift
//  Workout
//
//  Created by Donovan Cotter on 12/21/18.
//  Copyright © 2018 Donovan Cotter. All rights reserved.
//

import UIKit

class ExerciseVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    @IBAction func save(_ sender: Any) {
        //Save Exercise to Firebase and pass back to the new workout controller.
        self.dismiss(animated: true, completion: nil)
    }
}
