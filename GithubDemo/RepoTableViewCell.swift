//
//  RepoTableViewCell.swift
//  GithubDemo
//
//  Created by Prasanthi Relangi on 2/10/16.
//  Copyright © 2016 codepath. All rights reserved.
//

import UIKit

class RepoTableViewCell: UITableViewCell {

    @IBOutlet weak var repoDescription: UILabel!
 
    @IBOutlet weak var numStars: UILabel!
    @IBOutlet weak var numForks: UILabel!
    @IBOutlet weak var repoImage: UIImageView!
    @IBOutlet weak var ownerLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
