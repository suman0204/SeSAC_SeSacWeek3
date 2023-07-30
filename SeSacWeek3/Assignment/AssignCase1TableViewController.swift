//
//  AssignCase1TableViewController.swift
//  SeSacWeek3
//
//  Created by 홍수만 on 2023/07/27.
//

import UIKit

class AssignCase1TableViewController: UITableViewController {
    
    let mode: [String] = ["방해 금지 모드", "수면", "업무", "개인 시간"]
    let share: [String] = ["모든 기기에서 공유"]

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
//    override func numberOfSections(in tableView: UITableView) -> Int {
//        return 2
//    }
    
//    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//
//        return section == 0 ? "모드 설정" : ""
//    }
    
    //셀 갯수
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return section == 0 ? mode.count : share.count
//    }

    // 셀 디자인
//    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//
//        let cell = tableView.dequeueReusableCell(withIdentifier: "modeCell")!
//
//        if indexPath.row == 0 {
//            cell.textLabel?.text = mode[indexPath.row]
//        } else {
//            cell.textLabel?.text = share[indexPath.row]
//        }
//        return cell
//    }
    

}
