//
//  Person.swift
//  ContactList
//
//  Created by Михаил Иванов on 09.02.2022.
//

import Foundation

struct Person {
    let name: String
    let surname: String
    let phoneNumber: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getContact() -> [Person] {
        
        DataManager.shared.names.shuffle()
        DataManager.shared.surnames.shuffle()
        DataManager.shared.phoneNumbers.shuffle()
        DataManager.shared.emails.shuffle()
        
        var contacts: [Person] = []
        var index = 0
        for _ in 1...DataManager.shared.names.count {
            let person = Person(
                name: DataManager.shared.names[index],
                surname: DataManager.shared.surnames[index],
                phoneNumber: DataManager.shared.phoneNumbers[index],
                email: DataManager.shared.emails[index])
            contacts.append(person)
            index += 1
        }
        return contacts
    }
}

