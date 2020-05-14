//
//  RecipeCollectionViewCell.swift
//  subscriptionBox
//
//  Created by Anika Morris on 5/7/20.
//  Copyright © 2020 Anika Morris. All rights reserved.
//

import UIKit

class RecipeCollectionViewCell: UICollectionViewCell {
    static var identifier: String = "RecipeCell"

    weak var recipeLabel: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)

        let recipeLabel = UILabel(frame: .zero)
        recipeLabel.translatesAutoresizingMaskIntoConstraints = false
        self.contentView.addSubview(recipeLabel)
        NSLayoutConstraint.activate([
            self.contentView.centerXAnchor.constraint(equalTo: recipeLabel.centerXAnchor),
            self.contentView.centerYAnchor.constraint(equalTo: recipeLabel.centerYAnchor),
        ])
        self.layer.masksToBounds = true
        self.layer.cornerRadius = 8
        self.recipeLabel = recipeLabel
        self.reset()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func prepareForReuse() {
        super.prepareForReuse()
        self.reset()
    }

    func reset() {
        self.recipeLabel.textAlignment = .center
        self.recipeLabel.textColor = .white
        self.recipeLabel.font = .systemFont(ofSize: 30.0, weight: .semibold)
        self.backgroundColor = .systemOrange
    }

}
