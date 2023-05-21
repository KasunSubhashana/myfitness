//
//  WorkoutController.swift
//  MyFitness
//
//  Created by Kasun Subhashana on 21/5/23.
//

import UIKit

class WorkoutController: UIViewController {

    let stackView: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.alignment = .fill
        stack.distribution = .fill
                
        return stack
    }()
    
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
    
    let workoutOneCardActivityLabel: LabelView = {
        let label = LabelView()
        label.text = "3 Activities"
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
    
    let workoutTwoCardActivityLabel: LabelView = {
        let label = LabelView()
        label.text = "8 Activities"
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

        self.title = "Workout"
        view.backgroundColor = .white
        
        let clickWorckoutDetails = UITapGestureRecognizer(target: self, action: #selector(clickWorkoutDetailsEvent))
        workoutOneCard.isUserInteractionEnabled = true
        workoutOneCard.addGestureRecognizer(clickWorckoutDetails)
  
        view.addSubview(workoutOneCard)
        workoutOneCard.addSubview(workoutOneCardImage)
        workoutOneCard.addSubview(workoutOneCardTitleLabel)
        workoutOneCard.addSubview(workoutOneCardActivityLabel)
        view.addSubview(workoutTwoCard)
        workoutTwoCard.addSubview(workoutTwoCardImage)
        workoutTwoCard.addSubview(workoutTwoCardTitleLabel)
        workoutTwoCard.addSubview(workoutTwoCardActivityLabel)
        
        setConstraints()
    }
    
    func setConstraints() {
        
//        NSLayoutConstraint.activate([
//            stackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 110),
//            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
//            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
//        ])
        
        NSLayoutConstraint.activate([
            workoutOneCard.topAnchor.constraint(equalTo: view.topAnchor, constant: 110),
            workoutOneCard.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            workoutOneCard.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            workoutOneCard.heightAnchor.constraint(equalToConstant: 80),
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
            workoutOneCardActivityLabel.topAnchor.constraint(equalTo: workoutOneCardTitleLabel.bottomAnchor, constant: 5),
            workoutOneCardActivityLabel.leadingAnchor.constraint(equalTo: workoutOneCardImage.trailingAnchor, constant: 15),
        ])
        
        NSLayoutConstraint.activate([
            workoutTwoCard.topAnchor.constraint(equalTo: workoutOneCard.bottomAnchor, constant: 15),
            workoutTwoCard.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            workoutTwoCard.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            workoutTwoCard.heightAnchor.constraint(equalToConstant: 80),
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
            workoutTwoCardActivityLabel.topAnchor.constraint(equalTo: workoutTwoCardTitleLabel.bottomAnchor, constant: 5),
            workoutTwoCardActivityLabel.leadingAnchor.constraint(equalTo: workoutTwoCardImage.trailingAnchor, constant: 15),
        ])
    }
    
    @objc func clickWorkoutDetailsEvent() {
        
        self.navigationController?.pushViewController(WorkoutDetailsController(), animated: true)
    }
    
    func setStackContent() {
        
        struct Exercies: Codable {
            var id : String
            var name : String
        }
        
        var exercicesArray = [
            Exercies(id: "1", name: "Push-ups"),
            Exercies(id: "2", name: "Bench Press"),
            Exercies(id: "3", name: "Pull-ups"),
            Exercies(id: "4", name: "Bench Dips"),
            Exercies(id: "5", name: "Squats"),
            Exercies(id: "6", name: "Lunges"),
            Exercies(id: "7", name: "Deadlifts"),
            Exercies(id: "8", name: "Overhead Press")
        ]
        
        for item in 1..<exercicesArray.count {
            let card = workoutOneCard
//            let label = goalCardLabel
            
            let label = UILabel()
            
            label.text = exercicesArray[item].name
            
//            card.addSubview(label)
            
            stackView.addArrangedSubview(label)
            
//            NSLayoutConstraint.activate([
//                card.topAnchor.constraint(equalTo: stackView.topAnchor, constant: 0),
//                card.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 0),
//                card.trailingAnchor.constraint(equalTo: stackView.trailingAnchor, constant: 0),
//                card.centerXAnchor.constraint(equalTo: stackView.centerXAnchor),
////                card.heightAnchor.constraint(equalToConstant: 130),
////                card.widthAnchor.constraint(equalToConstant: 330),
//            ])
            
            NSLayoutConstraint.activate([
                label.topAnchor.constraint(equalTo: stackView.topAnchor, constant: 10),
                label.centerXAnchor.constraint(equalTo: stackView.centerXAnchor)
            ])
            
            
        }
        
        view.addSubview(stackView)
    }
}
