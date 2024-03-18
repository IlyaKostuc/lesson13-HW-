//
//  ThirdVCC.swift
//  lesson13(HW)
//
//  Created by Maxim Fedoseenko on 17.03.2024.
//

import UIKit

protocol ThirdVCDelegate: AnyObject {
    func send(text: String)
}

class ThirdVCC: UITabBarController {
    
    //делаем так чтоб не было утечки памяти и пишем AnyObject
    weak var customDelegate: ThirdVCDelegate?
    
    private lazy var tableView = makeTableView()
    private var companies = [
        "Apple",
        "Google",
        "KFC",
        "Android",
        "Lacoste"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .systemGray6
        view.addSubview(tableView)
        constrains()
    }
}

//MARK: - SetupUITableView
extension ThirdVCC {
    func makeTableView() -> UITableView {
        let table = UITableView(frame: .zero, style: .insetGrouped)
        table.translatesAutoresizingMaskIntoConstraints = false
        table.dataSource = self
        table.delegate = self
        
        return table
    }
    
    func constrains() {
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            tableView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            tableView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor)
        ])
    }
}

//MARK: - UITableViewDataSource
extension ThirdVCC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return companies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let row = indexPath.row
        let company = companies[row]
        
        let cell = UITableViewCell()
        cell.accessoryType = .disclosureIndicator
        cell.textLabel?.text = company
        tableView.deselectRow(at: indexPath, animated: true)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Company"
    }
}

//MARK: - UITableViewDelegate
extension ThirdVCC: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let row = indexPath.row
        let company = companies[row] //извлекаем индексы массива
      
        
        //MARK: - ???
        switch row {
        case 0:
            let vc = LabelVC()
            customDelegate?.send(text: company)
            navigationController?.pushViewController(vc, animated: true)
//        case 1:
//            let vc = LabelVC()
//            customDelegate?.send(text: company)
//            navigationController?.pushViewController(vc, animated: true)
//        case 2:
//            let vc = LabelVC()
//            customDelegate?.send(text: company)
//            navigationController?.pushViewController(vc, animated: true)
//        case 3:
//            let vc = LabelVC()
//            customDelegate?.send(text: company)
//            navigationController?.pushViewController(vc, animated: true)
//        case 4:
//            let vc = LabelVC()
//            customDelegate?.send(text: company)
//            navigationController?.pushViewController(vc, animated: true)
        default:
            break
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
        
    }
}
