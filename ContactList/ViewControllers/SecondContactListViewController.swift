//
//  SecondContactListViewController.swift
//  ContactList
//
//  Created by Михаил Иванов on 09.02.2022.
//

import UIKit

class SecondContactListViewController: UITableViewController {
    
    var persons: [Person] = []
    
    // MARK: - Table view Sections title
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let contact = persons[section]
        return contact.fullName
    }
    
    //MARK: - Table view Cells data
    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactID", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let contact = persons[indexPath.section]
        
        if indexPath.row == 0 {
            content.image = UIImage(systemName: "phone.fill")
            content.text = contact.phoneNumber
        } else {
            content.image = UIImage(systemName: "mail.fill")
            content.text = contact.email
        }
        
        cell.contentConfiguration = content
        return cell
    }
}

