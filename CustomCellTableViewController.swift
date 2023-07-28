//
//  CustomCellTableViewController.swift
//  SeSacWeek3
//
//  Created by 홍수만 on 2023/07/28.
//

import UIKit

class CustomCellTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.rowHeight = 70

    }

    //1.셀 갯수
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    //2.셀 디자인
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomTableViewCell") as! CustomTableViewCell
        
        cell.mainTitleLabel.text = "메인 타이틀 텍스트"
        cell.subTitleLabel.text = "서브 타이틀 텍스트"
        
        cell.checkboxImageView.image = UIImage(systemName: "checkmark")
        cell.likeButton.setImage(UIImage(systemName: "star"), for: .normal)
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath)
    }
    
}