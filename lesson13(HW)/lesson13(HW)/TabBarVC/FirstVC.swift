//
//  FirstVC.swift
//  lesson13(HW)
//
//  Created by Maxim Fedoseenko on 16.03.2024.
//

import UIKit

class FirstVC: UITabBarController {
    
    private lazy var tableView = makeTableView()
    private lazy var employeesApple = [
        "1. Tim Cook",
        "2. Craig Federighi",
        "3. Jeff Williams",
        "4. Kate Adams",
        "5. Eddy Cue",
        "6. Luca Maestri",
        "7. John Giannandrea",
        "8. Greg Joz Joswiak",
        "9. Sabih Khan",
        "10. Deirdre O’Brien",
        "11. Lisa Jackson",
        "12. Adrian Perica",
        "13. Kevin Lynch",
        "14. Michael Tchao",
        "15. Paul Deneve",
        "16. Torsten Knappenberger",
        "17. Simran Singh",
        "18. Angela Ahrendts",
        "19. Jony Ive",
        "20. Phil Schiller"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .systemGray6
        view.addSubview(tableView)
        constrains()
    }
}

//MARK: - SetupUITableView
extension FirstVC {
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
extension FirstVC: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let row = indexPath.row
        let text = employeesApple[row]
        
        let cell = UITableViewCell()
        cell.accessoryType = .disclosureIndicator
        cell.textLabel?.text = text
        tableView.deselectRow(at: indexPath, animated: true)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Employees Apple:"
    }
}

//MARK: - UITableViewDelegate
extension FirstVC: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let row = indexPath.row
        let peopleApple = employeesApple[row]
        
        switch peopleApple {
        case "1. Tim Cook":
            let timCook = TimCook()
            navigationController?.pushViewController(timCook, animated: true)
        case "2. Craig Federighi":
            let craigFederighi = CraigFederighi()
            navigationController?.pushViewController(craigFederighi, animated: true)
        default:
            break
        }
        
        print("index \(employeesApple[row])")
        tableView.deselectRow(at: indexPath, animated: true)
    }
}




