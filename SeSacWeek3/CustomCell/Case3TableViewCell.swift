//
//  Case3TableViewCell.swift
//  SeSacWeek3
//
//  Created by 홍수만 on 2023/07/30.
//

import UIKit

class Case3TableViewCell: UITableViewCell {
    
    static let identifier = "Case3TableViewCell"
    
    @IBOutlet var backView: UIView!
    
    @IBOutlet var checkImage: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var likeButton: UIButton!
    
    func configureCell(row: Todo) {
        backView.backgroundColor = .systemGray6
        backView.layer.cornerRadius = 10
        
        checkImage.tintColor = .black
        if row.did {
            checkImage.image = UIImage(systemName: "checkmark.square.fill")
        } else {
            checkImage.image = UIImage(systemName: "checkmark.square")
        }
        
        titleLabel.text = row.todoTitle
        
        likeButton.tintColor = .black
        likeButton.setTitle("", for: .normal)
        
        if row.favorites {
            likeButton.setImage(UIImage(systemName: "star.fill"), for: .normal)
        } else{
            likeButton.setImage(UIImage(systemName: "star"), for: .normal)
            
        }
        
        
    }
    
}
