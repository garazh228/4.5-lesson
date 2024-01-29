//
//  CustomViewController.swift
//  4.5 lesson
//
//  Created by adyl CEO on 29/01/2024.
//

import UIKit

class CustomViewController: UITableViewCell {
    
    private let profileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.layer.cornerRadius = 35
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    
    
    private let rateLabel: UILabel = {
        let label = UILabel()
        label.font = .boldSystemFont(ofSize: 18)
        label.numberOfLines = 2
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    private let notificationImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.layer.cornerRadius = 15
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    
    private let descriptionLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 14)
        label.textColor = .gray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    func configure(with user: Struct) {
        profileImageView.image = UIImage(named: user.image)
        rateLabel.text = user.rate
        notificationImageView.image = UIImage(named: user.photo)
        descriptionLabel.text = user.discription
    }
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupLayout()
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupLayout()
    }
    
    
    private func setupLayout() {
        addSubview(profileImageView)
        addSubview(rateLabel)
        addSubview(notificationImageView)
        addSubview(descriptionLabel)
        
        NSLayoutConstraint.activate([
            profileImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            profileImageView.centerYAnchor.constraint(equalTo: centerYAnchor),
            profileImageView.widthAnchor.constraint(equalToConstant: 70),
            profileImageView.heightAnchor.constraint(equalToConstant: 70),
            
            rateLabel.topAnchor.constraint(equalTo: topAnchor, constant: 16),
            rateLabel.leadingAnchor.constraint(equalTo: profileImageView.trailingAnchor, constant: 16),
//            rateLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            rateLabel.trailingAnchor.constraint(lessThanOrEqualTo: notificationImageView.leadingAnchor, constant: -16),
            
            notificationImageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            notificationImageView.centerYAnchor.constraint(equalTo: centerYAnchor),
            notificationImageView.widthAnchor.constraint(equalToConstant: 80),
            notificationImageView.heightAnchor.constraint(equalToConstant: 80),
            
            descriptionLabel.topAnchor.constraint(equalTo: rateLabel.bottomAnchor, constant: 8),
            descriptionLabel.leadingAnchor.constraint(equalTo: profileImageView.trailingAnchor, constant: 16),
            descriptionLabel.trailingAnchor.constraint(equalTo: notificationImageView.leadingAnchor, constant: -16),
            descriptionLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -8)
        ])
    }
}

