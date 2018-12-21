//
//  Exercise.swift
//  Workout
//
//  Created by Donovan Cotter on 12/21/18.
//  Copyright © 2018 Donovan Cotter. All rights reserved.
//

import Foundation

enum MuscleGroup: String {
    case biceps
    case triceps
    case shoulders
    case legs
    case chest
    case back
}

struct Exercise {
    let name: String
    let type: String // type will be weight/cardio/body-weight
    let muscleGroup: MuscleGroup
    
    init(name: String, type: String, muscleGroup: MuscleGroup) {
        self.name = name
        self.type = type
        self.muscleGroup = muscleGroup
    }
}
