//
//  ContactsWithInfoViewController.swift
//  Homework7
//
//  Created by Tipachel on 09.11.2021.
//

import UIKit

class DeployedInfoViewController: UITableViewController {
    
    var persons: [Person]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return persons.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
        return 2
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "phoneNumber", for: indexPath)
        
        
        return cell
    }
//    
//    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//            let cell = tableView.dequeueReusableCell(withIdentifier: "eMail", for: indexPath)
//
//            let person = persons[indexPath.row]
//            var content = cell.defaultContentConfiguration()
//            content.text = person.fullName
//            cell.contentConfiguration = content
//
//        return cell
//    }
//
}



