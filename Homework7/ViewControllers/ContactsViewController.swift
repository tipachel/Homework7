//
//  ContactsViewController.swift
//  Homework7
//
//  Created by Tipachel on 09.11.2021.
//

import UIKit

class ContactsViewController: UITableViewController {
    
    var contacts = getPersons()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let informationVC = segue.destination as? InformationViewController else{return}
        guard let indexPath = tableView.indexPathForSelectedRow else {return}
        let person = contacts[indexPath.row]
        informationVC.person = person
        
        guard let deployedVC = segue.destination as? DeployedInfoViewController else {return}
        let persons = contacts
        deployedVC.persons = persons
    }
}



extension ContactsViewController{
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return contacts.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contact", for: indexPath)
        let person = contacts[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = person.fullName
        cell.contentConfiguration = content
        
        
        return cell
    }
}
