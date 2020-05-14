//
//  NewBoxViewController.swift
//  subscriptionBox
//
//  Created by Anika Morris on 5/7/20.
//  Copyright © 2020 Anika Morris. All rights reserved.
//

import UIKit

class NewBoxViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    weak var collectionView: UICollectionView!
    var content: [Recipe] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
//    self.parent?.parent?.parent?.parent?.parent?.parent?.parent?.parent?.parent?.parent?.parent?.parent?.parent?.parent?.parent?.parent?.parent?.navigationItem.title = "Pick a Recipe"
        
        self.collectionView.dataSource = self
        self.collectionView.delegate = self
        self.collectionView.register(RecipeCollectionViewCell.self, forCellWithReuseIdentifier: RecipeCollectionViewCell.identifier)
        self.collectionView.backgroundColor = .white
        self.collectionView.alwaysBounceVertical = true
    }
    
    override func loadView() {
        super.loadView()
//        let nav = self.parent
//        nav?.navigationItem.title = "Pick a Recipe"

        let recipe: Recipe = Recipe(name: "Sweet", imageName: "")
        let recipe2: Recipe = Recipe(name: "Savory", imageName: "")
        content.append(recipe)
        content.append(recipe2)

        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(collectionView)
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: self.view.topAnchor),
            collectionView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            collectionView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
        ])
        self.collectionView = collectionView
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return content.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: RecipeCollectionViewCell.identifier, for: indexPath as IndexPath) as! RecipeCollectionViewCell
        cell.recipeLabel?.text = content[indexPath.row].name
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
           print("You selected item in row \(indexPath.row)")
    }
}

extension NewBoxViewController: UICollectionViewDelegateFlowLayout {

    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 160, height: 160)
    }

    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 20, left: 30, bottom: 20, right: 30) //.zero
    }

    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 20
    }

    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 20
    }
}
