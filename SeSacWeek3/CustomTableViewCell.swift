//
//  CustomTableViewCell.swift
//  SeSacWeek3
//
//  Created by 홍수만 on 2023/07/28.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    @IBOutlet var backView: UIView!
    
    @IBOutlet var checkboxImageView: UIImageView!
    
    @IBOutlet var mainTitleLabel: UILabel!
    @IBOutlet var subTitleLabel: UILabel!
    @IBOutlet var likeButton: UIButton!
}
