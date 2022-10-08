//
//  DataManager.swift
//  ContactList
//
//  Created by Михаил Иванов on 09.02.2022.
//

class DataManager {
    
    static let shared = DataManager()
    
    let names = ["John",
                 "Peter",
                 "Michael",
                 "Steve",
                 "Tim",
                 "Harry",
                 "Arnold",
                 "Steven",
                 "Mike",
                 "Louis"]
    
    let surnames = ["Travolta",
                    "Tyson",
                    "Jordan",
                    "Potter",
                    "Jobs",
                    "Cook",
                    "Armstrong",
                    "Pan",
                    "Schwarzenegger",
                    "Seagal"]
    
    let emails = ["mail@gmail.com",
                  "one@mail.ru",
                  "super@mail.com",
                  "y@yahoo.com",
                  "number777@gmail.com",
                  "e@mail.com",
                  "any@mail.ru",
                  "some@mail.ru",
                  "enter@mail.com",
                  "space@gmail.com"]
    
    let phoneNumbers = ["1235681448",
                        "4561231232",
                        "007",
                        "88007005060",
                        "900",
                        "02",
                        "777777",
                        "9999999999",
                        "9887773311",
                        "1735015051"]
    
    private init() {}
}
