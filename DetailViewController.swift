//
//  DetailViewController.swift
//  SeSacWeek3
//
//  Created by 홍수만 on 2023/08/02.
//

import UIKit

class DetailViewController: UIViewController {
    
    //값 전달
    //1.
    var data: TodoCS?

    override func viewDidLoad() {
        super.viewDidLoad()

        guard let data else {
            return
        }
        
        print(data)
    }
    
    
    
}
