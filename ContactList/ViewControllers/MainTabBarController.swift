//
//  InitailTabBarController.swift
//  ContactList
//
//  Created by Михаил Иванов on 10.02.2022.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    private let persons = Person.getContact()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sendSelectedView()
    }
    
    //MARK: - Navigation
    private func sendSelectedView() {
        self.children.forEach{
            guard let navigationVC = $0 as? UINavigationController else { return }
            if let firstVC = navigationVC.topViewController as?
                FirstContactListViewController {
                firstVC.persons = persons
            }
            else if let secondVC = navigationVC.topViewController as? SecondContactListViewController {
                secondVC.persons = persons
            }
        }
    }
}

