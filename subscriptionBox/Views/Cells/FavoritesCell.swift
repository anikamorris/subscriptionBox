//
//  FavoritesCell.swift
//  subscriptionBox
//
//  Created by Anika Morris on 5/14/20.
//  Copyright © 2020 Anika Morris. All rights reserved.
//

import UIKit

class FavoritesCell: UICollectionViewCell {
    static var identifier: String = "FavoritesCell"
    
    @IBOutlet weak var imageView: UIImageView!

    @IBOutlet weak var recipeLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        setup()
    }
    
    func setup() {
        imageView.layer.cornerRadius = 10
    }
    
    func set(title: String) {
        guard let label = recipeLabel else { return }
        label.text = title
    }
}
