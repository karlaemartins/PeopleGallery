//
//  PeopleViewController.swift
//  PeopleGallery
//
//  Created by Karla E. Martins Fernandes on 01/06/26.
//

import UIKit

final class PeopleViewController: UIViewController {
    
    private var collectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "People Gallery"
        view.backgroundColor = .systemBackground
        
        configureCollectionView()
        
    }
    
    private func configureCollectionView() {
        
        let layout = UICollectionViewFlowLayout()

        layout.itemSize = CGSize(width: 140, height: 180)
        layout.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        
        collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        
        view.addSubview(collectionView)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.topAnchor),
            collectionView.leadingAnchor.constraint(
                equalTo: view.leadingAnchor),
            collectionView.trailingAnchor.constraint(
                equalTo: view.trailingAnchor),
            collectionView.bottomAnchor.constraint(
                equalTo: view.bottomAnchor)])
        
        
        
    }
}
