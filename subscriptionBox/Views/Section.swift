//
//  Section.swift
//  subscriptionBox
//
//  Created by Anika Morris on 4/28/20.
//  Copyright © 2020 Anika Morris. All rights reserved.
//

import Foundation
import UIKit

protocol Section {
    var numberOfItems: Int { get }
    func layoutSection() -> NSCollectionLayoutSection?
    func configureCell(collectionView: UICollectionView, indexPath: IndexPath) -> UICollectionViewCell
}
