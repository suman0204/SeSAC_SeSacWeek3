//
//  MovieTableViewController.swift
//  SeSacWeek3
//
//  Created by 홍수만 on 2023/07/30.
//

import UIKit

class MovieTableViewController: UITableViewController {
    
    let movieInfo: MovieInfo = MovieInfo()

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 155

    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieInfo.movieArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: MovieTableViewCell.identifier) as! MovieTableViewCell
        
        let row = movieInfo.movieArray[indexPath.row]
        
        cell.configureCell(row: row)
        
        return cell
    }

}
