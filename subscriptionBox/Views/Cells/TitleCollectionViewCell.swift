//
//  TitleCollectionViewCell.swift
//  subscriptionBox
//
//  Created by Anika Morris on 5/14/20.
//  Copyright © 2020 Anika Morris. All rights reserved.
//

import UIKit

class TitleCollectionViewCell: UICollectionViewCell {
    static var identifier: String = "titleCell"

    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func set(title: String) {
        titleLabel.text = title
    }

}
