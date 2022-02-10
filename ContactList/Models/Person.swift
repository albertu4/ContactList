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
        names.shuffle()
        surnames.shuffle()
        phoneNumbers.shuffle()
        emails.shuffle()
        
        var contacts: [Person] = []
        var index = 0
        for _ in 1...names.count {
            let person = Person(
                name: names[index],
                surname: surnames[index],
                phoneNumber: phoneNumbers[index],
                email: emails[index])
            contacts.append(person)
            index += 1
        }
        return contacts
    }
}

