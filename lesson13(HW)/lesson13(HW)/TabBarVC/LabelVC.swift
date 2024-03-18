//
//  LabelVC.swift
//  lesson13(HW)
//
//  Created by Maxim Fedoseenko on 17.03.2024.
//

import UIKit

class LabelVC: UIViewController {
    
    private lazy var label = makelabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .systemGray6
        title = "Index"
        view.addSubview(label)
        constrains()
    }
}

//MARK: - SetupUILable
extension LabelVC {
    func makelabel() -> UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "?"
    
        return label
    }
    
    func constrains() {
        label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        label.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
}

//MARK: Delegate
extension LabelVC: ThirdVCDelegate {
    func send(text: String) {
        label.text = text
    }
}
