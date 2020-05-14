//
//  TitleSection.swift
//  subscriptionBox
//
//  Created by Anika Morris on 4/28/20.
//  Copyright © 2020 Anika Morris. All rights reserved.
//

import Foundation
import UIKit

struct TitleSection: Section {
    var numberOfItems: Int = 1
    
    let title: String

    init(title: String) {
        self.title = title
    }
    
    func layoutSection() -> NSCollectionLayoutSection? {
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(1.0))
        
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(0.1))
        
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
        
        let section = NSCollectionLayoutSection(group: group)
        
        return section
    }
    
    func configureCell(collectionView: UICollectionView, indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: TitleCollectionViewCell.identifier, for: indexPath) as! TitleCollectionViewCell
        cell.set(title: title)
        return cell
    }
    
}
