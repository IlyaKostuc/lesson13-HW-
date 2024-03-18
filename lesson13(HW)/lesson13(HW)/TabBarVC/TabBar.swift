//
//  TabBar.swift
//  lesson13(HW)
//
//  Created by Maxim Fedoseenko on 16.03.2024.
//

import UIKit

class TabBar: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let firstVC = FirstVC()
        let secondVC = SecondVC()
        let thirdVC = ThirdVCC()
        
        let navigationVC1 = Navigation(rootViewController: firstVC)
        let navigationVC3 = Navigation3(rootViewController: thirdVC)
        
        navigationVC1.tabBarItem = UITabBarItem(title: "№1", image: .strokedCheckmark, tag: 0)
        secondVC.tabBarItem = UITabBarItem(title: "№2", image: .strokedCheckmark, tag: 1)
        navigationVC3.tabBarItem = UITabBarItem(title: "№3", image: .strokedCheckmark, tag: 2)
        
        viewControllers = [navigationVC1, secondVC, navigationVC3]
        
    }
}
