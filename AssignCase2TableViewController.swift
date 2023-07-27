//
//  AssignCase2TableViewController.swift
//  SeSacWeek3
//
//  Created by 홍수만 on 2023/07/27.
//

import UIKit

class AssignCase2TableViewController: UITableViewController {
    
    let allSettings = AllSettings.allCases
    let privateSettings = PrivateSettings.allCases
    let extra = Extra.allCases
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "전체 설정"
        } else if section == 1 {
            return "개인 설정"
        } else {
            return "기타"
        }
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        
        
        if section == 0 {
            return allSettings.count
        } else if section == 1 {
            return privateSettings.count
        } else {
            return extra.count
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "settingCell")!
        
        if indexPath.section == 0 {
            cell.textLabel?.text = "\(allSettings[indexPath.row].rawValue)"
        } else if indexPath.section == 1 {
            cell.textLabel?.text = "\(privateSettings[indexPath.row].rawValue)"
        } else {
            cell.textLabel?.text = "\(extra[indexPath.row].rawValue)"
        }
        
        return cell
    }

}
