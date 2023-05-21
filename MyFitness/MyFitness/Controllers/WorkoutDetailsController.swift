//
//  WorkoutDetailsController.swift
//  MyFitness
//
//  Created by Kasun Subhashana on 22/5/23.
//

import UIKit

class WorkoutDetailsController: UIViewController {

    let activityOneCardImage : UIImageView = {
        let logo = UIImageView()
        logo.translatesAutoresizingMaskIntoConstraints = false
        logo.contentMode = .scaleAspectFit
        logo.image = UIImage(named: "treadmill")
        
        return logo
    }()
    
    let activityOneCardTitleLabel: LabelView = {
        let label = LabelView()
        label.text = "Treadmill"
        label.textColor = UIColor(red: (34/255.0), green: (43/255.0), blue: (69/255.0), alpha: 1.0)
        label.font = UIFont.systemFont(ofSize: 20)

        return label
    }()
    
    let activityOneCardStartImage : UIImageView = {
        let logo = UIImageView()
        logo.translatesAutoresizingMaskIntoConstraints = false
        logo.contentMode = .scaleAspectFit
        logo.image = UIImage(named: "play")
        
        return logo
    }()
    
    let activityOneCardTimeLabel: LabelView = {
        let label = LabelView()
        label.text = "00:00:00"
        label.textColor = UIColor(red: (34/255.0), green: (43/255.0), blue: (69/255.0), alpha: 1.0)
        label.font = UIFont.systemFont(ofSize: 35)

        return label
    }()
    
    let activityOneCard: CardView = {
        let card = CardView()
        card.translatesAutoresizingMaskIntoConstraints = false
        card.backgroundColor = UIColor(red: (242/255.0), green: (244/255.0), blue: (244/255.0), alpha: 1.0)
        card.layer.cornerRadius = 6
        card.layer.shadowColor = UIColor.black.cgColor
        card.layer.shadowOpacity = 0.1
        card.layer.shadowOffset = CGSize(width: 2, height: 2)
                
        return card
    }()
    
    let activityTwoCardImage : UIImageView = {
        let logo = UIImageView()
        logo.translatesAutoresizingMaskIntoConstraints = false
        logo.contentMode = .scaleAspectFit
        logo.image = UIImage(named: "cycling")
        
        return logo
    }()
    
    let activityTwoCardTitleLabel: LabelView = {
        let label = LabelView()
        label.text = "Cycling"
        label.textColor = UIColor(red: (34/255.0), green: (43/255.0), blue: (69/255.0), alpha: 1.0)
        label.font = UIFont.systemFont(ofSize: 20)

        return label
    }()
    
    let activityTwoCardStartImage : UIImageView = {
        let logo = UIImageView()
        logo.translatesAutoresizingMaskIntoConstraints = false
        logo.contentMode = .scaleAspectFit
        logo.image = UIImage(named: "play")
        
        return logo
    }()
    
    let activityTwoCardTimeLabel: LabelView = {
        let label = LabelView()
        label.text = "00:00:00"
        label.textColor = UIColor(red: (34/255.0), green: (43/255.0), blue: (69/255.0), alpha: 1.0)
        label.font = UIFont.systemFont(ofSize: 35)

        return label
    }()
    
    let activityTwoCard: CardView = {
        let card = CardView()
        card.translatesAutoresizingMaskIntoConstraints = false
        card.backgroundColor = UIColor(red: (242/255.0), green: (244/255.0), blue: (244/255.0), alpha: 1.0)
        card.layer.cornerRadius = 6
        card.layer.shadowColor = UIColor.black.cgColor
        card.layer.shadowOpacity = 0.1
        card.layer.shadowOffset = CGSize(width: 2, height: 2)
                
        return card
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Custom Workout 1"
        view.backgroundColor = .white
        
        view.addSubview(activityOneCard)
        activityOneCard.addSubview(activityOneCardImage)
        activityOneCard.addSubview(activityOneCardTitleLabel)
        activityOneCard.addSubview(activityOneCardTimeLabel)
        activityOneCard.addSubview(activityOneCardStartImage)
        view.addSubview(activityTwoCard)
        activityTwoCard.addSubview(activityTwoCardImage)
        activityTwoCard.addSubview(activityTwoCardTitleLabel)
        activityTwoCard.addSubview(activityTwoCardTimeLabel)
        activityTwoCard.addSubview(activityTwoCardStartImage)
        
        setConstraints()
    }
    
    func setConstraints() {
        NSLayoutConstraint.activate([
            activityOneCard.topAnchor.constraint(equalTo: view.topAnchor, constant: 110),
            activityOneCard.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            activityOneCard.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            activityOneCard.heightAnchor.constraint(equalToConstant: 160),
        ])
        
        NSLayoutConstraint.activate([
            activityOneCardImage.topAnchor.constraint(equalTo: activityOneCard.topAnchor, constant: 15),
            activityOneCardImage.leadingAnchor.constraint(equalTo: activityOneCard.leadingAnchor, constant: 15),
            activityOneCardImage.heightAnchor.constraint(equalToConstant: 30),
            activityOneCardImage.widthAnchor.constraint(equalToConstant: 30)
        ])
        
        NSLayoutConstraint.activate([
            activityOneCardTitleLabel.topAnchor.constraint(equalTo: activityOneCard.topAnchor, constant: 15),
            activityOneCardTitleLabel.leadingAnchor.constraint(equalTo: activityOneCardImage.trailingAnchor, constant: 15),
        ])
        
        NSLayoutConstraint.activate([
            activityOneCardTimeLabel.topAnchor.constraint(equalTo: activityOneCardTitleLabel.bottomAnchor, constant: 5),
            activityOneCardTimeLabel.centerXAnchor.constraint(equalTo: activityOneCard.centerXAnchor),
//            activityOneCardTimeLabel.leadingAnchor.constraint(equalTo: activityOneCardImage.trailingAnchor, constant: 15),
        ])
        
        NSLayoutConstraint.activate([
            activityOneCardStartImage.topAnchor.constraint(equalTo: activityOneCardTimeLabel.bottomAnchor, constant: 15),
            activityOneCardStartImage.centerXAnchor.constraint(equalTo: activityOneCard.centerXAnchor),
//            activityOneCardStartImage.leadingAnchor.constraint(equalTo: activityOneCardImage.trailingAnchor, constant: 15),
            activityOneCardStartImage.heightAnchor.constraint(equalToConstant: 40),
            activityOneCardStartImage.widthAnchor.constraint(equalToConstant: 40)
        ])
        
        NSLayoutConstraint.activate([
            activityTwoCard.topAnchor.constraint(equalTo: activityOneCard.bottomAnchor, constant: 15),
            activityTwoCard.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            activityTwoCard.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            activityTwoCard.heightAnchor.constraint(equalToConstant: 160),
        ])
        
        NSLayoutConstraint.activate([
            activityTwoCardImage.topAnchor.constraint(equalTo: activityTwoCard.topAnchor, constant: 15),
            activityTwoCardImage.leadingAnchor.constraint(equalTo: activityTwoCard.leadingAnchor, constant: 15),
            activityTwoCardImage.heightAnchor.constraint(equalToConstant: 30),
            activityTwoCardImage.widthAnchor.constraint(equalToConstant: 30)
        ])
        
        NSLayoutConstraint.activate([
            activityTwoCardTitleLabel.topAnchor.constraint(equalTo: activityTwoCard.topAnchor, constant: 15),
            activityTwoCardTitleLabel.leadingAnchor.constraint(equalTo: activityTwoCardImage.trailingAnchor, constant: 15),
        ])
        
        NSLayoutConstraint.activate([
            activityTwoCardTimeLabel.topAnchor.constraint(equalTo: activityTwoCardTitleLabel.bottomAnchor, constant: 10),
            activityTwoCardTimeLabel.centerXAnchor.constraint(equalTo: activityTwoCard.centerXAnchor),
//            activityTwoCardTimeLabel.leadingAnchor.constraint(equalTo: activityTwoCardImage.trailingAnchor, constant: 15),
        ])
        
        NSLayoutConstraint.activate([
            activityTwoCardStartImage.topAnchor.constraint(equalTo: activityTwoCardTimeLabel.bottomAnchor, constant: 15),
            activityTwoCardStartImage.centerXAnchor.constraint(equalTo: activityTwoCard.centerXAnchor),
//            activityTwoCardStartImage.leadingAnchor.constraint(equalTo: activityTwoCardImage.trailingAnchor, constant: 15),
            activityTwoCardStartImage.heightAnchor.constraint(equalToConstant: 40),
            activityTwoCardStartImage.widthAnchor.constraint(equalToConstant: 40)
        ])
    }
}
