//
//  ExploreViewController.swift
//  Azoera
//
//  Created by DevMountain on 2/27/19.
//  Copyright © 2019 trevorAdcock. All rights reserved.
//

import UIKit

class ExploreViewController: UIViewController {
  
  @IBOutlet weak var categoriesCollectionView: UICollectionView!
  @IBOutlet weak var articleSearchBar: UISearchBar!
  @IBOutlet weak var articlesCollectionView: UICollectionView!
  
    override func viewDidLoad() {
        super.viewDidLoad()
        articlesCollectionView.dataSource = self
    }
}

extension ExploreViewController: UICollectionViewDataSource {
  
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return 10
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "articleCell", for: indexPath)
    return cell
  }
}
