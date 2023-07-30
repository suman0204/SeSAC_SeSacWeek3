//
//  MovieTableViewCell.swift
//  SeSacWeek3
//
//  Created by 홍수만 on 2023/07/30.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    
    static let identifier = "MovieTableViewCell"

    @IBOutlet var backView: UIView!
    
    @IBOutlet var moviePoster: UIImageView!
    @IBOutlet var movieTitle: UILabel!
    @IBOutlet var movieInfo: UILabel!
    @IBOutlet var movieOverview: UILabel!
    
    func configureCell(row: Movie) {
        moviePoster.image = UIImage(named: row.title)
        movieTitle.text = row.title
        movieTitle.font = .boldSystemFont(ofSize: 17)
        movieInfo.text = "\(row.releaseDate) | \(row.runtime) | \(row.rate)"
        movieOverview.text = row.overview
        
    }
}
