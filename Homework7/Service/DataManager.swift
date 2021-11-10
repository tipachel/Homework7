//
//  DataManager.swift
//  Homework7
//
//  Created by Tipachel on 09.11.2021.
//

import Foundation


let firstnames = ["Tim", "Mark", "Chistian", "Sam", "John",
                  "Michael", "Steven", "Ted", "Barnie", "Bruce" ]

let lastnames = ["Smith", "Joseph", "Myers", "Lynch", "Wayne",
                 "Bond", "Bronson", "Dahmer", "Manson", "Ramírez"]

let phones = [ "999888777" , "333444555", "555666777", "888777999", "333222333",
               "666777111", "999000888", "123123123", "333121121", "888333000" ]

let emails = [ "daww@mail.ru", "ttt@mail.ru", "terr@mail.ru", "mrrr@mail.ru", "fff@mail.ru",
               "ggg@mail.ru", "lllll@mail.ru", "rat@mail.ru", "ver@mail.ru", "hat@mail.ru"]



func getPersons() -> [Person] {
    var persons:[Person] = []
    
    for _ in 1...10 {
        
        let name = Int.random(in: 0...firstnames.count-1)
        let lastname = Int.random(in: 0...lastnames.count-1)
        let phone = Int.random(in: 0...phones.count-1)
        let email = Int.random(in: 0...emails.count-1)
        
        let person = Person(
            firstname:firstnames[name],
            lastname: lastnames[lastname],
            phone: phones[phone],
            email: emails[email])
      persons.append(person)
    }
    return persons
}


