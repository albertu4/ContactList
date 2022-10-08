//
//  SecondContactListViewController.swift
//  ContactList
//
//  Created by Михаил Иванов on 09.02.2022.
//

import UIKit

class SecondContactListViewController: UITableViewController {
    
    var persons: [Person] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.sectionHeaderTopPadding = 0
    }
    
    // MARK: - Table view Sections title
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let contact = persons[section]
        return contact.fullName
    }
    
    override func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        guard let header = view as? UITableViewHeaderFooterView else { return }
        header.textLabel?.textColor = .black
        header.tintColor = .systemGray4
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
        let person = persons[indexPath.section]
        
        if indexPath.row == 0 {
            content.image = UIImage(systemName: "phone.fill")
            content.text = person.phoneNumber
        } else {
            content.image = UIImage(systemName: "mail.fill")
            content.text = person.email
        }
        
        cell.contentConfiguration = content
        return cell
    }
}
