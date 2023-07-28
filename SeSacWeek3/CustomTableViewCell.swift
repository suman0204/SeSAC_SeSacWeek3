//
//  CustomTableViewCell.swift
//  SeSacWeek3
//
//  Created by 홍수만 on 2023/07/28.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    static let identifier = "CustomTableViewCell"
    
    @IBOutlet var backView: UIView!
    @IBOutlet var checkboxImageView: UIImageView!
    
    @IBOutlet var mainTitleLabel: UILabel!
    @IBOutlet var subTitleLabel: UILabel!
    @IBOutlet var likeButton: UIButton!
    
    func configureCell(row: TodoCS){
        mainTitleLabel.text = row.main
        subTitleLabel.text = row.sub
        
        if row.done {
            checkboxImageView.image = UIImage(systemName: "checkmark.square")
        } else {
            checkboxImageView.image = UIImage(systemName: "checkmark.square.fill")
        }
        
        if row.like {
            likeButton.setImage(UIImage(systemName: "star.fill"), for: .normal)
        } else{
            likeButton.setImage(UIImage(systemName: "star"), for: .normal)
        }
    }
}
