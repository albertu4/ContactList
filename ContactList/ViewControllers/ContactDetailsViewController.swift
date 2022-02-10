//
//  ContactDetailsViewController.swift
//  ContactList
//
//  Created by Михаил Иванов on 10.02.2022.
//

import UIKit

class ContactDetailsViewController: UIViewController {
    @IBOutlet var personPhoneNumber: UILabel!
    @IBOutlet var personEmail: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = person.fullName
        personPhoneNumber.text = "Phone: \(person.phoneNumber)"
        personEmail.text = "Email: \(person.email)"
    }

}
