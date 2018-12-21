//
//  FirebaseOperation.swift
//  Workout
//
//  Created by Donovan Cotter on 12/21/18.
//  Copyright © 2018 Donovan Cotter. All rights reserved.
//

import Foundation
import FirebaseDatabase

protocol FirebaseFormatter {
    func firebaseFormat() -> [String: Any]
}

struct FirebaseOperation {
    
    private let databaseRef = Database.database().reference()
    
    func write(value: FirebaseFormatter, to child:String) {
        let firebaseValue = value.firebaseFormat()
        let childRef = databaseRef.child(child).childByAutoId()
        childRef.setValue(firebaseValue)
    }
    
}
