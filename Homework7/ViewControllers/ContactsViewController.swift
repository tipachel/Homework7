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
        guard let tabBarController = segue.destination as? UITabBarController else
        {return}
        guard let viewControllers = tabBarController.viewControllers else {return}
        guard let indexPath = tableView.indexPathForSelectedRow else {return}
        viewControllers.forEach{
            if let deployedVC = $0 as? DeployedInfoViewController{
                deployedVC.person = contacts
            } else if let navigationVC = $0 as? UINavigationController {
                let infoVC = navigationVC.topViewController as! InformationViewController
                infoVC.person = contacts[indexPath.row]
            }
        }
        
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
