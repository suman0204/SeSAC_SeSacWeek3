//
//  Case3CustomCellTableViewCell.swift
//  SeSacWeek3
//
//  Created by 홍수만 on 2023/07/28.
//

import UIKit

class Case3CustomCellTableViewCell: UITableViewCell {
    static let identifier = "Case3CustomCellTableViewCell"
    
    @IBOutlet var backView: UIView!
    
    @IBOutlet var checkImage: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var likeButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
