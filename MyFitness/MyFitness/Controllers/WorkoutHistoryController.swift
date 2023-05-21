//
//  WorkoutHistoryController.swift
//  MyFitness
//
//  Created by Kasun Subhashana on 21/5/23.
//

import UIKit

class WorkoutHistoryController: UIViewController {
    
    let workoutOneCardImage : UIImageView = {
        let logo = UIImageView()
        logo.translatesAutoresizingMaskIntoConstraints = false
        logo.contentMode = .scaleAspectFit
        logo.image = UIImage(named: "workout")
        
        return logo
    }()
    
    let workoutOneCardTitleLabel: LabelView = {
        let label = LabelView()
        label.text = "Custom Workout 1"
        label.textColor = UIColor(red: (34/255.0), green: (43/255.0), blue: (69/255.0), alpha: 1.0)
        label.font = UIFont.systemFont(ofSize: 20)

        return label
    }()
    
    let workoutOneCardDateLabel: LabelView = {
        let label = LabelView()
        label.text = "15th May 2023"
        label.textColor = UIColor(red: (128/255.0), green: (139/255.0), blue: (150/255.0), alpha: 1.0)
        label.font = UIFont.systemFont(ofSize: 14)

        return label
    }()
    
    let workoutOneCardActivityLabel: LabelView = {
        let label = LabelView()
        label.text = "3 Activities"
        label.textColor = UIColor(red: (128/255.0), green: (139/255.0), blue: (150/255.0), alpha: 1.0)
        label.font = UIFont.systemFont(ofSize: 14)

        return label
    }()
    
    let workoutOneCardCalorieImage : UIImageView = {
        let logo = UIImageView()
        logo.translatesAutoresizingMaskIntoConstraints = false
        logo.contentMode = .scaleAspectFit
        logo.image = UIImage(named: "calorie")
        
        return logo
    }()
    
    let workoutOneCardCalorieLabel: LabelView = {
        let label = LabelView()
        label.text = "236"
        label.textColor = UIColor(red: (34/255.0), green: (43/255.0), blue: (69/255.0), alpha: 1.0)
        label.font = UIFont.systemFont(ofSize: 14)

        return label
    }()
    
    let workoutOneCard: CardView = {
        let card = CardView()
        card.translatesAutoresizingMaskIntoConstraints = false
        card.backgroundColor = UIColor(red: (242/255.0), green: (244/255.0), blue: (244/255.0), alpha: 1.0)
        card.layer.cornerRadius = 6
        card.layer.shadowColor = UIColor.black.cgColor
        card.layer.shadowOpacity = 0.1
        card.layer.shadowOffset = CGSize(width: 2, height: 2)
                
        return card
    }()
    
    let workoutTwoCardImage : UIImageView = {
        let logo = UIImageView()
        logo.translatesAutoresizingMaskIntoConstraints = false
        logo.contentMode = .scaleAspectFit
        logo.image = UIImage(named: "skipping-rope")
        
        return logo
    }()
    
    let workoutTwoCardTitleLabel: LabelView = {
        let label = LabelView()
        label.text = "Custom Workout 2"
        label.textColor = UIColor(red: (34/255.0), green: (43/255.0), blue: (69/255.0), alpha: 1.0)
        label.font = UIFont.systemFont(ofSize: 20)

        return label
    }()
    
    let workoutTwoCardDateLabel: LabelView = {
        let label = LabelView()
        label.text = "15th May 2023"
        label.textColor = UIColor(red: (128/255.0), green: (139/255.0), blue: (150/255.0), alpha: 1.0)
        label.font = UIFont.systemFont(ofSize: 14)

        return label
    }()
    
    let workoutTwoCardActivityLabel: LabelView = {
        let label = LabelView()
        label.text = "8 Activities"
        label.textColor = UIColor(red: (128/255.0), green: (139/255.0), blue: (150/255.0), alpha: 1.0)
        label.font = UIFont.systemFont(ofSize: 14)

        return label
    }()
    
    let workoutTwoCardCalorieImage : UIImageView = {
        let logo = UIImageView()
        logo.translatesAutoresizingMaskIntoConstraints = false
        logo.contentMode = .scaleAspectFit
        logo.image = UIImage(named: "calorie")
        
        return logo
    }()
    
    let workoutTwoCardCalorieLabel: LabelView = {
        let label = LabelView()
        label.text = "452"
        label.textColor = UIColor(red: (34/255.0), green: (43/255.0), blue: (69/255.0), alpha: 1.0)
        label.font = UIFont.systemFont(ofSize: 14)

        return label
    }()
    
    let workoutTwoCard: CardView = {
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

        self.title = "History"
        view.backgroundColor = .white
  
        view.addSubview(workoutOneCard)
        workoutOneCard.addSubview(workoutOneCardImage)
        workoutOneCard.addSubview(workoutOneCardTitleLabel)
        workoutOneCard.addSubview(workoutOneCardDateLabel)
        workoutOneCard.addSubview(workoutOneCardActivityLabel)
        workoutOneCard.addSubview(workoutOneCardCalorieImage)
        workoutOneCard.addSubview(workoutOneCardCalorieLabel)
        view.addSubview(workoutTwoCard)
        workoutTwoCard.addSubview(workoutTwoCardImage)
        workoutTwoCard.addSubview(workoutTwoCardTitleLabel)
        workoutTwoCard.addSubview(workoutTwoCardDateLabel)
        workoutTwoCard.addSubview(workoutTwoCardActivityLabel)
        workoutTwoCard.addSubview(workoutTwoCardCalorieImage)
        workoutTwoCard.addSubview(workoutTwoCardCalorieLabel)
        
        setConstraints()
    }
    
    func setConstraints() {
        
        NSLayoutConstraint.activate([
            workoutOneCard.topAnchor.constraint(equalTo: view.topAnchor, constant: 110),
            workoutOneCard.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            workoutOneCard.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            workoutOneCard.heightAnchor.constraint(equalToConstant: 145),
        ])
        
        NSLayoutConstraint.activate([
            workoutOneCardImage.topAnchor.constraint(equalTo: workoutOneCard.topAnchor, constant: 15),
            workoutOneCardImage.leadingAnchor.constraint(equalTo: workoutOneCard.leadingAnchor, constant: 15),
            workoutOneCardImage.heightAnchor.constraint(equalToConstant: 50),
            workoutOneCardImage.widthAnchor.constraint(equalToConstant: 50)
        ])
        
        NSLayoutConstraint.activate([
            workoutOneCardTitleLabel.topAnchor.constraint(equalTo: workoutOneCard.topAnchor, constant: 15),
            workoutOneCardTitleLabel.leadingAnchor.constraint(equalTo: workoutOneCardImage.trailingAnchor, constant: 15),
        ])
        
        NSLayoutConstraint.activate([
            workoutOneCardDateLabel.topAnchor.constraint(equalTo: workoutOneCardTitleLabel.bottomAnchor, constant: 5),
            workoutOneCardDateLabel.leadingAnchor.constraint(equalTo: workoutOneCardImage.trailingAnchor, constant: 15),
        ])
        
        NSLayoutConstraint.activate([
            workoutOneCardActivityLabel.topAnchor.constraint(equalTo: workoutOneCardDateLabel.bottomAnchor, constant: 5),
            workoutOneCardActivityLabel.leadingAnchor.constraint(equalTo: workoutOneCardImage.trailingAnchor, constant: 15),
        ])
        
        NSLayoutConstraint.activate([
            workoutOneCardCalorieImage.topAnchor.constraint(equalTo: workoutOneCardActivityLabel.bottomAnchor, constant: 30),
            workoutOneCardCalorieImage.leadingAnchor.constraint(equalTo: workoutOneCard.leadingAnchor, constant: 15),
            workoutOneCardCalorieImage.heightAnchor.constraint(equalToConstant: 20),
            workoutOneCardCalorieImage.widthAnchor.constraint(equalToConstant: 20),
        ])
        
        NSLayoutConstraint.activate([
            workoutOneCardCalorieLabel.centerYAnchor.constraint(equalTo: workoutOneCardCalorieImage.centerYAnchor),
            workoutOneCardCalorieLabel.leadingAnchor.constraint(equalTo: workoutOneCardCalorieImage.trailingAnchor, constant: 5),
        ])
        
        NSLayoutConstraint.activate([
            workoutTwoCard.topAnchor.constraint(equalTo: workoutOneCard.bottomAnchor, constant: 15),
            workoutTwoCard.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            workoutTwoCard.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            workoutTwoCard.heightAnchor.constraint(equalToConstant: 145),
        ])
        
        NSLayoutConstraint.activate([
            workoutTwoCardImage.topAnchor.constraint(equalTo: workoutTwoCard.topAnchor, constant: 15),
            workoutTwoCardImage.leadingAnchor.constraint(equalTo: workoutTwoCard.leadingAnchor, constant: 15),
            workoutTwoCardImage.heightAnchor.constraint(equalToConstant: 50),
            workoutTwoCardImage.widthAnchor.constraint(equalToConstant: 50)
        ])
        
        NSLayoutConstraint.activate([
            workoutTwoCardTitleLabel.topAnchor.constraint(equalTo: workoutTwoCard.topAnchor, constant: 15),
            workoutTwoCardTitleLabel.leadingAnchor.constraint(equalTo: workoutTwoCardImage.trailingAnchor, constant: 15),
        ])
        
        NSLayoutConstraint.activate([
            workoutTwoCardDateLabel.topAnchor.constraint(equalTo: workoutTwoCardTitleLabel.bottomAnchor, constant: 5),
            workoutTwoCardDateLabel.leadingAnchor.constraint(equalTo: workoutTwoCardImage.trailingAnchor, constant: 15),
        ])
        
        NSLayoutConstraint.activate([
            workoutTwoCardActivityLabel.topAnchor.constraint(equalTo: workoutTwoCardDateLabel.bottomAnchor, constant: 5),
            workoutTwoCardActivityLabel.leadingAnchor.constraint(equalTo: workoutTwoCardImage.trailingAnchor, constant: 15),
        ])
        
        NSLayoutConstraint.activate([
            workoutTwoCardCalorieImage.topAnchor.constraint(equalTo: workoutTwoCardActivityLabel.bottomAnchor, constant: 30),
            workoutTwoCardCalorieImage.leadingAnchor.constraint(equalTo: workoutTwoCard.leadingAnchor, constant: 15),
            workoutTwoCardCalorieImage.heightAnchor.constraint(equalToConstant: 20),
            workoutTwoCardCalorieImage.widthAnchor.constraint(equalToConstant: 20),
        ])
        
        NSLayoutConstraint.activate([
            workoutTwoCardCalorieLabel.centerYAnchor.constraint(equalTo: workoutTwoCardCalorieImage.centerYAnchor),
            workoutTwoCardCalorieLabel.leadingAnchor.constraint(equalTo: workoutTwoCardCalorieImage.trailingAnchor, constant: 5),
        ])
    }
}
