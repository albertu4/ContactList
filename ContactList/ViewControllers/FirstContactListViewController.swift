//
//  FirstContactListViewController.swift
//  ContactList
//
//  Created by Михаил Иванов on 09.02.2022.
//

import UIKit

class FirstContactListViewController: UITableViewController {
    
    var persons: [Person] = []
    
    // MARK: - Table view Cells data
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactID", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let person = persons[indexPath.row]
        
        content.text = person.fullName
        cell.contentConfiguration = content
        return cell
    }
    
    //MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let contactDetailsVC = segue.destination as? PersonDetailsViewController else { return }
        contactDetailsVC.person = sender as? Person
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let contact = persons[indexPath.row]
        performSegue(withIdentifier: "showDetails", sender: contact)
    }
}
