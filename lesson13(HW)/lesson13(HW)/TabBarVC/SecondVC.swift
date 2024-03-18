//
//  SecondVC.swift
//  lesson13(HW)
//
//  Created by Maxim Fedoseenko on 16.03.2024.
//

import UIKit

class SecondVC: UITabBarController {
    
    private lazy var tableView = makeTableView()
    private lazy var languagesPrograms: [[String]] = [
        ["Swift","JavaScript"],
        ["Java","C"],
        ["PHP","Kotlin"],
        ["C++","Ruby"],
        ["C#","Go"]
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .systemGray6
        view.addSubview(tableView)
        constrains()
    }
}

//MARK: - SetupUITableView
extension SecondVC {
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
            tableView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
        ])
    }
}

//MARK: - UITableViewDataSource
extension SecondVC: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return languagesPrograms[section].count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return languagesPrograms.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        
        switch indexPath.section {
        case 0:
            let languagesPrograms = languagesPrograms[indexPath.section][indexPath.row]
            cell.textLabel?.text = languagesPrograms
        case 1:
            let languagesPrograms = languagesPrograms[indexPath.section][indexPath.row]
            cell.textLabel?.text = languagesPrograms
        case 2:
            let languagesPrograms = languagesPrograms[indexPath.section][indexPath.row]
            cell.textLabel?.text = languagesPrograms
        case 3:
            let languagesPrograms = languagesPrograms[indexPath.section][indexPath.row]
            cell.textLabel?.text = languagesPrograms
        case 4:
            let languagesPrograms = languagesPrograms[indexPath.section][indexPath.row]
            cell.textLabel?.text = languagesPrograms
        default:
            break
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Languages Programs:"
    }
}

//MARK: - UITableViewDelegate
extension SecondVC: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let section = indexPath.section
        let row = indexPath.row
        let programs = languagesPrograms[section][row]
        
        switch programs {
        case "Swift":
            print("Swift")
        case "JavaScript":
            print("JavaScript")
        case "Java":
            print("Java")
        case "С":
            print("С")
        case "PHP":
            print("PHP")
        case "Kotlin":
            print("Kotlin")
        case "C++":
            print("C++")
        case "Ruby":
            print("Ruby")
        case "C#":
            print("C#")
        case "Go":
            print("Go")
        default:
            break
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
}




