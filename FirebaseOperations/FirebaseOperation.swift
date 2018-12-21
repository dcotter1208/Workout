//
//  FirebaseOperation.swift
//  Workout
//
//  Created by Donovan Cotter on 12/21/18.
//  Copyright © 2018 Donovan Cotter. All rights reserved.
//

import Foundation
import FirebaseDatabase

struct FirebaseOperation {
    private let databaseRef = Database.database().reference()
    
    func write(value: [String: Any], to child:String) {
        let childRef = databaseRef.child(child).childByAutoId()
        childRef.setValue(value)
    }
    
}
