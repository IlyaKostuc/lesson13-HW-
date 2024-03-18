//
//  CraigFederighi.swift
//  lesson13(HW)
//
//  Created by Maxim Fedoseenko on 16.03.2024.
//

import UIKit

class CraigFederighi: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .systemGray6
        title = "Craig Federighi"
        imageCraigFederighi()
    }
    
    private func imageCraigFederighi() -> UIImageView{
        let image = UIImageView()
        view.addSubview(image)
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "craigFederighi")
        image.layer.cornerRadius = 50
        image.clipsToBounds = true
        image.contentMode = .scaleAspectFill
        
        NSLayoutConstraint.activate([
            image.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 25),
            image.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -25),
            image.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -300),
            image.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 25)
        ])
        
        return image
    }
}
