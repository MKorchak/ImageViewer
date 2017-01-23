//
//  TableViewCell.swift
//  ImageViewer
//
//  Created by Misha Korchak on 25.12.16.
//  Copyright © 2016 Misha Korchak. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var picture: UIImageView!
    @IBOutlet weak var name: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
