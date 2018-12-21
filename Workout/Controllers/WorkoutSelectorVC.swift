//
//  WorkoutSelectorVC.swift
//  Workout
//
//  Created by Donovan Cotter on 12/21/18.
//  Copyright © 2018 Donovan Cotter. All rights reserved.
//

import UIKit

class WorkoutSelectorVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    
    let workouts = ["Workout 1", "Workout 2", "Workout 3"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Make GET to Firebase to get list of workouts to start
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return workouts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WorkoutCell")
        cell?.textLabel?.text = workouts[indexPath.row]
        
        return cell!
    }
    
}

