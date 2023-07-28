//
//  CustomCellTableViewController.swift
//  SeSacWeek3
//
//  Created by 홍수만 on 2023/07/28.
//

import UIKit



class CustomCellTableViewController: UITableViewController {
    
    let todo = TodoCSInformation()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.rowHeight = 70

    }

    //1.셀 갯수
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todo.list.count
    }
    
    //2.셀 디자인
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomTableViewCell") as! CustomTableViewCell
        
        let row = todo.list[indexPath.row]
        
        cell.mainTitleLabel.text = row.main
        cell.subTitleLabel.text = row.sub
        
        cell.configureCell(row: row)
        
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath)
    }
    
}
