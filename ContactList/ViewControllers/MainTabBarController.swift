//
//  InitailTabBarController.swift
//  ContactList
//
//  Created by Михаил Иванов on 10.02.2022.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    let persons = Person.getContact()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sendSelectedView()
    }
    
//    private func prepared(controller: UITabBarController, sender: Any?) {
////        guard let viewControllers = controller.viewControllers else { return }
////        viewControllers.forEach {
//        controller.children.forEach{
//            if let navigationVC = $0 as? UINavigationController {
//                if let firstVC = navigationVC.topViewController as?
//                    FirstContactListViewController {
//                    firstVC.persons = persons
//                }
//                else if let secondVC = navigationVC.topViewController as? SecondContactListViewController {
//                    secondVC.persons = persons
//                }
//            }
//        }
//    }
    
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

