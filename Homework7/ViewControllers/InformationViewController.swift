//
//  MoreInfoViewController.swift
//  Homework7
//
//  Created by Tipachel on 09.11.2021.
//

import UIKit

class InformationViewController: UIViewController {
    
    @IBOutlet var fullName: UILabel!
    @IBOutlet var phone: UILabel!
    @IBOutlet var email: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fullName.text = "Name: \(person.fullName)"
        phone.text = "Phone: \(person.phone)"
        email.text = "E-Mail: \(person.email)"
        
        
        
        
    }
    
}
