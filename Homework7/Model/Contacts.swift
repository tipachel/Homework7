//
//  Contacts.swift
//  Homework7
//
//  Created by Tipachel on 09.11.2021.
//

import Foundation

struct Person {
    let firstname:String
    let lastname:String
    let phone: String
    let email: String
    
    var fullName: String {
        "\(firstname) \(lastname)"
    }
}



 

