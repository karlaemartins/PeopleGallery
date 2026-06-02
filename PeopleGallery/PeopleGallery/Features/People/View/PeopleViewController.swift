//
//  PeopleViewController.swift
//  PeopleGallery
//
//  Created by Karla E. Martins Fernandes on 01/06/26.
//

import UIKit

final class PeopleViewController: UIViewController {
    
    private var collectionView: UICollectionView!
    
    private var people: [Person] = [
        Person(id: UUID(), name: "Karla", imageName: ""),
        Person(id: UUID(), name: "Maria", imageName: ""),
        Person(id: UUID(), name: "João", imageName: "")
    ]

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
        
        collectionView.register(PersonCell.self, forCellWithReuseIdentifier: PersonCell.reuseIdentifier)
        
        collectionView.dataSource = self

        
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

extension PeopleViewController: UICollectionViewDataSource {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return people.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PersonCell.reuseIdentifier, for: indexPath) as? PersonCell
        else {
            fatalError("Unable to dequeue PersonCell.")
        }
        
        let person = people[indexPath.item]

        cell.configure(name: person.name, image: nil)

        return cell
    }
}
