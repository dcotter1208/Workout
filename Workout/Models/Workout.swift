//
//  Workout.swift
//  Workout
//
//  Created by Donovan Cotter on 12/21/18.
//  Copyright © 2018 Donovan Cotter. All rights reserved.
//

import Foundation

struct Workout: FirebaseFormatter {
    let name: String
    let exercises: [Exercise]?
    
    init(name: String, exercises: [Exercise]?) {
        self.name = name
        self.exercises = exercises
    }
    
    func firebaseFormat() -> [String: Any] {
        let dict = ["name": self.name, "exercises": ["exercise 1", "exercise 2"]] as [String : Any]
        return dict
    }
}
