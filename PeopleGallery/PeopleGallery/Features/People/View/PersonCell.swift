//
//  PersonCell.swift
//  PeopleGallery
//
//  Created by Karla E. Martins Fernandes on 02/06/26.
//

import UIKit

final class PersonCell: UICollectionViewCell {
    
    private let imageView = UIImageView()
    private let nameLabel = UILabel()

    override init(frame: CGRect) {
        super.init(frame: frame)

        setupViews()
        setupHierarchy()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true

        nameLabel.textAlignment = .center
        nameLabel.numberOfLines = 2
        nameLabel.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.translatesAutoresizingMaskIntoConstraints = false

    }

    private func setupHierarchy() {
        contentView.addSubview(imageView)
        contentView.addSubview(nameLabel)

    }

    private func setupConstraints() {
        
            NSLayoutConstraint.activate([
                
                imageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
                
                imageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
                
                imageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
                
                imageView.heightAnchor.constraint(equalToConstant: 120),
                
                nameLabel.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 4),
                
                nameLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
                
                nameLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
                
                nameLabel.bottomAnchor.constraint(lessThanOrEqualTo: contentView.bottomAnchor, constant: -10)])
    }

}

