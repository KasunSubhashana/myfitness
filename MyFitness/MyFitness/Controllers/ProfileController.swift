//
//  ProfileController.swift
//  MyFitness
//
//  Created by Kasun Subhashana on 21/5/23.
//

import UIKit

class ProfileController: UIViewController {

    let userImage : UIImageView = {
        let logo = UIImageView()
        logo.translatesAutoresizingMaskIntoConstraints = false
        logo.contentMode = .scaleAspectFit
        logo.image = UIImage(named: "user-profile")
        
        return logo
    }()
    
    let userNameLabel : UILabel = {
        let label = UILabel()
        label.text = "Kasun Subhashana"
        label.textColor = UIColor(red: (34/255.0), green: (43/255.0), blue: (69/255.0), alpha: 1.0)
        label.font = UIFont.systemFont(ofSize: 20,weight: .medium)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        
        return label
    }()
    
    let personalDetailImage : UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFit
        image.image = UIImage(named: "profile-details")
        
        return image
    }()
    
    let personalDetailsLabel : UILabel = {
        let label = UILabel()
        label.text = "Personal Details"
        label.textColor = UIColor(red: (34/255.0), green: (43/255.0), blue: (69/255.0), alpha: 1.0)
        label.font = UIFont.systemFont(ofSize: 16,weight: .medium)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        
        return label
    }()
    
    let passwordImage : UIImageView = {
        let logo = UIImageView()
        logo.translatesAutoresizingMaskIntoConstraints = false
        logo.contentMode = .scaleAspectFit
        logo.image = UIImage(named: "password")
        
        return logo
    }()
    
    let passwordLabel : UILabel = {
        let label = UILabel()
        label.text = "Personal Details"
        label.textColor = UIColor(red: (34/255.0), green: (43/255.0), blue: (69/255.0), alpha: 1.0)
        label.font = UIFont.systemFont(ofSize: 16,weight: .medium)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        
        return label
    }()
    
    let logoutButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Logout", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = UIColor(red: (231/255.0), green: (76/255.0), blue: (70/255.0), alpha: 1.0)
        button.layer.cornerRadius = 20
        button.layer.borderWidth = 0
        button.layer.borderColor = UIColor.white.cgColor
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Profile"
        view.backgroundColor = .white
        
        view.addSubview(userImage)
        view.addSubview(userNameLabel)
        view.addSubview(personalDetailImage)
        view.addSubview(personalDetailsLabel)
        view.addSubview(passwordImage)
        view.addSubview(passwordLabel)
        view.addSubview(logoutButton)
        
        setConstraints()
    }
    
    func setConstraints() {
        
        NSLayoutConstraint.activate([
            userImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 120),
            userImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            userImage.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            userImage.heightAnchor.constraint(equalToConstant: 100),
            userImage.widthAnchor.constraint(equalToConstant: 100)
        ])
        
        NSLayoutConstraint.activate([
            userNameLabel.topAnchor.constraint(equalTo: userImage.bottomAnchor, constant: 15),
            userNameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])
        
        NSLayoutConstraint.activate([
            personalDetailImage.topAnchor.constraint(equalTo: userNameLabel.bottomAnchor, constant: 50),
            personalDetailImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            personalDetailImage.heightAnchor.constraint(equalToConstant: 20),
            personalDetailImage.widthAnchor.constraint(equalToConstant: 20)
        ])
        
        NSLayoutConstraint.activate([
//            personalDetailsLabel.topAnchor.constraint(equalTo: userImage.bottomAnchor, constant: 15),
            personalDetailsLabel.centerYAnchor.constraint(equalTo: personalDetailImage.centerYAnchor),
            personalDetailsLabel.leadingAnchor.constraint(equalTo: personalDetailImage.trailingAnchor, constant: 10),
        ])
        
        NSLayoutConstraint.activate([
            passwordImage.topAnchor.constraint(equalTo: personalDetailImage.bottomAnchor, constant: 30),
            passwordImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            passwordImage.heightAnchor.constraint(equalToConstant: 20),
            passwordImage.widthAnchor.constraint(equalToConstant: 20)
        ])
        
        NSLayoutConstraint.activate([
//            personalDetailsLabel.topAnchor.constraint(equalTo: userImage.bottomAnchor, constant: 15),
            passwordLabel.centerYAnchor.constraint(equalTo: passwordImage.centerYAnchor),
            passwordLabel.leadingAnchor.constraint(equalTo: passwordImage.trailingAnchor, constant: 10),
        ])
        
        NSLayoutConstraint.activate([
            logoutButton.topAnchor.constraint(equalTo: passwordLabel.bottomAnchor, constant: 330),
            logoutButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            logoutButton.heightAnchor.constraint(equalToConstant: 42),
            logoutButton.widthAnchor.constraint(equalToConstant: 150),
        ])
    }
}
