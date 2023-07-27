//
//  Extension.swift
//  SeSacWeek3
//
//  Created by 홍수만 on 2023/07/27.
//

import UIKit

extension UITableViewController {
    
    func showAlert() {
        let alert = UIAlertController(title: "타이틀", message: "메시지", preferredStyle: .actionSheet)
        
        let ok = UIAlertAction(title: "확인", style: .default)
        
        alert.addAction(ok)
        
        present(alert, animated: true)
    }
    
    
    func requestAlert() {
        let alert = UIAlertController(title: "내용을 입력하세요", message: "", preferredStyle: .alert)
        
        let ok = UIAlertAction(title: "확인", style: .default)
        
        alert.addAction(ok)
        
        present(alert, animated: true)
    }
}

extension UILabel {
    func  configureTitleText() {
        self.textColor = .red
        self.font = .boldSystemFont(ofSize: 20)
        self.textAlignment = .center
    }
}
