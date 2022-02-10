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
        var contacts: [Person] = []
        for _ in 1...names.count {
            let person = Person(
                name: names.randomElement() ?? "",
                surname: surnames.randomElement() ?? "",
                phoneNumber: phoneNumbers.randomElement() ?? "",
                email: emails.randomElement() ?? "")
            contacts.append(person)
        }
        return contacts
    }
}


