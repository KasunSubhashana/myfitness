//
//  DashboardController.swift
//  MyFitness
//
//  Created by Kasun Subhashana on 19/5/23.
//

import UIKit

class DashboardController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    let goalLabel: LabelView = {
        let label = LabelView()
        label.text = "GOAL"
        label.textColor = UIColor(red: (128/255.0), green: (139/255.0), blue: (150/255.0), alpha: 1.0)
        label.font = UIFont.systemFont(ofSize: 12)
        
        return label
    }()
    
    let goalCardImage : UIImageView = {
        let logo = UIImageView()
        logo.translatesAutoresizingMaskIntoConstraints = false
        logo.contentMode = .scaleAspectFit
        logo.image = UIImage(named: "weight-gain")
        
        return logo
    }()
    
    let goalCardLabel: LabelView = {
        let label = LabelView()
        label.text = "Weight Gain"
        label.textColor = UIColor(red: (34/255.0), green: (43/255.0), blue: (69/255.0), alpha: 1.0)
        label.font = UIFont.systemFont(ofSize: 14)

        return label
    }()
    
    let goalCard: CardView = {
        let card = CardView()
        card.translatesAutoresizingMaskIntoConstraints = false
        card.backgroundColor = UIColor(red: (242/255.0), green: (244/255.0), blue: (244/255.0), alpha: 1.0)
        card.layer.cornerRadius = 6
        card.layer.shadowColor = UIColor.black.cgColor
        card.layer.shadowOpacity = 0.1
        card.layer.shadowOffset = CGSize(width: 2, height: 2)
                
        return card
    }()
    
    let stepCountLabel: LabelView = {
        let label = LabelView()
        label.text = "STEPS"
        label.textColor = UIColor(red: (128/255.0), green: (139/255.0), blue: (150/255.0), alpha: 1.0)
        label.font = UIFont.systemFont(ofSize: 12)
        
        return label
    }()
  
    let stepCountCardImage : UIImageView = {
        let logo = UIImageView()
        logo.translatesAutoresizingMaskIntoConstraints = false
        logo.contentMode = .scaleAspectFit
        logo.image = UIImage(named: "footsteps")
        
        return logo
    }()
    
    let stepCountCardLabel: LabelView = {
        let label = LabelView()
        label.text = "573/1000"
        label.textColor = UIColor(red: (34/255.0), green: (43/255.0), blue: (69/255.0), alpha: 1.0)
        label.font = UIFont.systemFont(ofSize: 14)

        return label
    }()
    
    let stepCountCard: CardView = {
        let card = CardView()
        card.translatesAutoresizingMaskIntoConstraints = false
        card.backgroundColor = UIColor(red: (242/255.0), green: (244/255.0), blue: (244/255.0), alpha: 1.0)
        card.layer.cornerRadius = 6
        card.layer.shadowColor = UIColor.black.cgColor
        card.layer.shadowOpacity = 0.1
        card.layer.shadowOffset = CGSize(width: 2, height: 2)
                
        return card
    }()
    
    let calorieCountLabel: LabelView = {
        let label = LabelView()
        label.text = "CALORIE"
        label.textColor = UIColor(red: (128/255.0), green: (139/255.0), blue: (150/255.0), alpha: 1.0)
        label.font = UIFont.systemFont(ofSize: 12)
        
        return label
    }()
    
    let calorieCard: CardView = {
        let card = CardView()
        card.translatesAutoresizingMaskIntoConstraints = false
        card.backgroundColor = UIColor(red: (242/255.0), green: (244/255.0), blue: (244/255.0), alpha: 1.0)
//        card.backgroundColor = UIColor(red: (234/255.0), green: (236/255.0), blue: (238/255.0), alpha: 1.0)
        card.layer.cornerRadius = 6
        card.layer.shadowColor = UIColor.black.cgColor
        card.layer.shadowOpacity = 0.1
        card.layer.shadowOffset = CGSize(width: 2, height: 2)
                
        return card
    }()
    
    let calorieCardImage : UIImageView = {
        let logo = UIImageView()
        logo.translatesAutoresizingMaskIntoConstraints = false
        logo.contentMode = .scaleAspectFit
        logo.image = UIImage(named: "calorie")
        
        return logo
    }()
    
    let calorieCardLabel: LabelView = {
        let label = LabelView()
        label.text = "120/500"
        label.textColor = UIColor(red: (34/255.0), green: (43/255.0), blue: (69/255.0), alpha: 1.0)
        label.font = UIFont.systemFont(ofSize: 14)

        return label
    }()
    
    let activityLabel: LabelView = {
        let label = LabelView()
        label.text = "ACTIVITY"
        label.textColor = UIColor(red: (128/255.0), green: (139/255.0), blue: (150/255.0), alpha: 1.0)
        label.font = UIFont.systemFont(ofSize: 12)
        
        return label
    }()
    
    let activityOneCardImage : UIImageView = {
        let logo = UIImageView()
        logo.translatesAutoresizingMaskIntoConstraints = false
        logo.contentMode = .scaleAspectFit
        logo.image = UIImage(named: "treadmill")
        
        return logo
    }()
    
    let activityOneTypeCardLabel: LabelView = {
        let label = LabelView()
        label.text = "Treadmill"
        label.textColor = UIColor(red: (34/255.0), green: (43/255.0), blue: (69/255.0), alpha: 1.0)
        label.font = UIFont.systemFont(ofSize: 14)

        return label
    }()
    
    let activityOneCardLabel: LabelView = {
        let label = LabelView()
        label.text = "01:53H"
        label.textColor = UIColor(red: (34/255.0), green: (43/255.0), blue: (69/255.0), alpha: 1.0)
        label.font = UIFont.systemFont(ofSize: 14)

        return label
    }()
    
    let activityTwoCardImage : UIImageView = {
        let logo = UIImageView()
        logo.translatesAutoresizingMaskIntoConstraints = false
        logo.contentMode = .scaleAspectFit
        logo.image = UIImage(named: "cycling")
        
        return logo
    }()
    
    let activityTwoTypeCardLabel: LabelView = {
        let label = LabelView()
        label.text = "Cycling"
        label.textColor = UIColor(red: (34/255.0), green: (43/255.0), blue: (69/255.0), alpha: 1.0)
        label.font = UIFont.systemFont(ofSize: 14)

        return label
    }()
    
    let activityTwoCardLabel: LabelView = {
        let label = LabelView()
        label.text = "00:42H"
        label.textColor = UIColor(red: (34/255.0), green: (43/255.0), blue: (69/255.0), alpha: 1.0)
        label.font = UIFont.systemFont(ofSize: 14)

        return label
    }()
    
    let activityThreeCardImage : UIImageView = {
        let logo = UIImageView()
        logo.translatesAutoresizingMaskIntoConstraints = false
        logo.contentMode = .scaleAspectFit
        logo.image = UIImage(named: "yoga")
        
        return logo
    }()
    
    let activityThreeTypeCardLabel: LabelView = {
        let label = LabelView()
        label.text = "Yoga"
        label.textColor = UIColor(red: (34/255.0), green: (43/255.0), blue: (69/255.0), alpha: 1.0)
        label.font = UIFont.systemFont(ofSize: 14)

        return label
    }()
    
    let activityThreeCardLabel: LabelView = {
        let label = LabelView()
        label.text = "00:26H"
        label.textColor = UIColor(red: (34/255.0), green: (43/255.0), blue: (69/255.0), alpha: 1.0)
        label.font = UIFont.systemFont(ofSize: 14)

        return label
    }()
    
    let activityCard: CardView = {
        let card = CardView()
        card.translatesAutoresizingMaskIntoConstraints = false
        card.backgroundColor = UIColor(red: (242/255.0), green: (244/255.0), blue: (244/255.0), alpha: 1.0)
        card.layer.cornerRadius = 6
        card.layer.shadowColor = UIColor.black.cgColor
        card.layer.shadowOpacity = 0.1
        card.layer.shadowOffset = CGSize(width: 2, height: 2)
                
        return card
    }()
    
    let exercisesLabel: LabelView = {
        let label = LabelView()
        label.text = "EXERCISES"
        label.textColor = UIColor(red: (128/255.0), green: (139/255.0), blue: (150/255.0), alpha: 1.0)
        label.font = UIFont.systemFont(ofSize: 12)
        
        return label
    }()
    
    let exercisesCard: CardView = {
        let card = CardView()
        card.translatesAutoresizingMaskIntoConstraints = false
        card.backgroundColor = UIColor(red: (234/255.0), green: (236/255.0), blue: (238/255.0), alpha: 1.0)
        card.layer.cornerRadius = 6
        card.layer.shadowColor = UIColor.black.cgColor
        card.layer.shadowOpacity = 0.1
        card.layer.shadowOffset = CGSize(width: 0.5, height: 0.5)

        return card
    }()

    let scrollView: UIScrollView = {
        let scroll = UIScrollView()
        scroll.translatesAutoresizingMaskIntoConstraints = false
        scroll.showsVerticalScrollIndicator = true
        scroll.bounces = false

        return scroll
    }()

    let exerciesList: UITableView = {
        let table = UITableView()
        table.translatesAutoresizingMaskIntoConstraints = false
        table.isScrollEnabled = true
        table.bounces = true
        table.layer.cornerRadius = 6
        table.layer.shadowColor = UIColor.black.cgColor
        table.layer.shadowOpacity = 0.1
        table.layer.shadowOffset = CGSize(width: 2, height: 2)

        return table
    }()
    
    let exerciesCollection: UICollectionView = {
        let table = UICollectionView(frame: CGRect.zero, collectionViewLayout: UICollectionViewFlowLayout.init())
        table.translatesAutoresizingMaskIntoConstraints = false
        table.backgroundColor = .red
        
        return table
    }()
    
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

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Home"
        view.backgroundColor = .white
        
        exerciesList.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        self.exerciesList.delegate = self
        self.exerciesList.dataSource = self
        exerciesList.frame = CGRect(x: 0, y: 0, width: 330, height: 50)
        
        view.addSubview(goalLabel)
        view.addSubview(goalCard)
        goalCard.addSubview(goalCardImage)
        goalCard.addSubview(goalCardLabel)
        view.addSubview(stepCountLabel)
        view.addSubview(stepCountCard)
        stepCountCard.addSubview(stepCountCardImage)
        stepCountCard.addSubview(stepCountCardLabel)
        view.addSubview(calorieCountLabel)
        view.addSubview(calorieCard)
        calorieCard.addSubview(calorieCardImage)
        calorieCard.addSubview(calorieCardLabel)
        view.addSubview(activityLabel)
        view.addSubview(activityCard)
        activityCard.addSubview(activityOneCardImage)
        activityCard.addSubview(activityOneTypeCardLabel)
        activityCard.addSubview(activityOneCardLabel)
        activityCard.addSubview(activityTwoCardImage)
        activityCard.addSubview(activityTwoTypeCardLabel)
        activityCard.addSubview(activityTwoCardLabel)
        activityCard.addSubview(activityThreeCardImage)
        activityCard.addSubview(activityThreeTypeCardLabel)
        activityCard.addSubview(activityThreeCardLabel)
        view.addSubview(exercisesLabel)
        view.addSubview(exercisesCard)
        exercisesCard.addSubview(exerciesList)
        
        setConstraints()
    }

//    override func viewDidLayoutSubviews() {
//        super.viewDidLayoutSubviews()
//        exerciesList.frame = view.bounds
//    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return exercicesArray.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = exerciesList.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        cell.textLabel?.text = self.exercicesArray[indexPath.row].name

        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.hidesBottomBarWhenPushed = true
        
        self.navigationController?.pushViewController(ExerciseDetailsController(exercicesArray[indexPath.row].id, exerciseName: exercicesArray[indexPath.row].name), animated: true)
        
        self.hidesBottomBarWhenPushed = false
    }
    
    func setConstraints(){
        
        NSLayoutConstraint.activate([
            goalLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 110),
            goalLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            goalLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 30)
        ])

        NSLayoutConstraint.activate([
            goalCard.topAnchor.constraint(equalTo: goalLabel.bottomAnchor, constant: 5),
            goalCard.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            goalCard.heightAnchor.constraint(equalToConstant: 110),
            goalCard.widthAnchor.constraint(equalToConstant: 93),
        ])
        
        NSLayoutConstraint.activate([
            goalCardImage.topAnchor.constraint(equalTo: goalCard.topAnchor, constant: 15),
            goalCardImage.centerXAnchor.constraint(equalTo: goalCard.centerXAnchor),
            goalCardImage.heightAnchor.constraint(equalToConstant: 50),
            goalCardImage.widthAnchor.constraint(equalToConstant: 50)
        ])
        
        NSLayoutConstraint.activate([
            goalCardLabel.topAnchor.constraint(equalTo: goalCardImage.bottomAnchor, constant: 10),
            goalCardLabel.centerXAnchor.constraint(equalTo: goalCard.centerXAnchor),
        ])
        
        NSLayoutConstraint.activate([
            stepCountLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 110),
            stepCountLabel.leadingAnchor.constraint(equalTo: goalCard.trailingAnchor, constant: 25),
            stepCountLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 30)
        ])
        
        NSLayoutConstraint.activate([
            stepCountCard.topAnchor.constraint(equalTo: stepCountLabel.bottomAnchor, constant: 5),
            stepCountCard.leadingAnchor.constraint(equalTo: goalCard.trailingAnchor, constant: 25),
            stepCountCard.heightAnchor.constraint(equalToConstant: 110),
            stepCountCard.widthAnchor.constraint(equalToConstant: 93),
        ])
        
        NSLayoutConstraint.activate([
            stepCountCardImage.topAnchor.constraint(equalTo: stepCountCard.topAnchor, constant: 15),
            stepCountCardImage.centerXAnchor.constraint(equalTo: stepCountCard.centerXAnchor),
            stepCountCardImage.heightAnchor.constraint(equalToConstant: 50),
            stepCountCardImage.widthAnchor.constraint(equalToConstant: 50)
        ])
        
        NSLayoutConstraint.activate([
            stepCountCardLabel.topAnchor.constraint(equalTo: stepCountCardImage.bottomAnchor, constant: 10),
            stepCountCardLabel.centerXAnchor.constraint(equalTo: stepCountCard.centerXAnchor),
        ])
        
        NSLayoutConstraint.activate([
            calorieCountLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 110),
            calorieCountLabel.leadingAnchor.constraint(equalTo: stepCountCard.trailingAnchor, constant: 25),
            calorieCountLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 30)
        ])
        
        NSLayoutConstraint.activate([
            calorieCard.topAnchor.constraint(equalTo: calorieCountLabel.bottomAnchor, constant: 5),
            calorieCard.leadingAnchor.constraint(equalTo: stepCountCard.trailingAnchor, constant: 25),
            calorieCard.heightAnchor.constraint(equalToConstant: 110),
            calorieCard.widthAnchor.constraint(equalToConstant: 93),
        ])
        
        NSLayoutConstraint.activate([
            calorieCardImage.topAnchor.constraint(equalTo: calorieCard.topAnchor, constant: 15),
            calorieCardImage.centerXAnchor.constraint(equalTo: calorieCard.centerXAnchor),
            calorieCardImage.heightAnchor.constraint(equalToConstant: 50),
            calorieCardImage.widthAnchor.constraint(equalToConstant: 50)
        ])
        
        NSLayoutConstraint.activate([
            calorieCardLabel.topAnchor.constraint(equalTo: calorieCardImage.bottomAnchor, constant: 10),
            calorieCardLabel.centerXAnchor.constraint(equalTo: calorieCard.centerXAnchor),
        ])
        
        NSLayoutConstraint.activate([
            activityLabel.topAnchor.constraint(equalTo: goalCard.bottomAnchor, constant: 30),
            activityLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            activityLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 30)
        ])
        
        NSLayoutConstraint.activate([
            activityCard.topAnchor.constraint(equalTo: activityLabel.bottomAnchor, constant: 5),
            activityCard.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            activityCard.heightAnchor.constraint(equalToConstant: 130),
            activityCard.widthAnchor.constraint(equalToConstant: 330),
        ])
        
        NSLayoutConstraint.activate([
            exercisesLabel.topAnchor.constraint(equalTo: activityCard.bottomAnchor, constant: 30),
            exercisesLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            exercisesLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 30)
        ])
        
        NSLayoutConstraint.activate([
            exercisesCard.topAnchor.constraint(equalTo: exercisesLabel.bottomAnchor, constant: 5),
            exercisesCard.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            exercisesCard.heightAnchor.constraint(equalToConstant: 250),
            exercisesCard.widthAnchor.constraint(equalToConstant: 330),
        ])
        
        NSLayoutConstraint.activate([
            activityOneCardImage.topAnchor.constraint(equalTo: activityCard.topAnchor, constant: 15),
            activityOneCardImage.leadingAnchor.constraint(equalTo: activityCard.leadingAnchor, constant: 25),
            activityOneCardImage.heightAnchor.constraint(equalToConstant: 50),
            activityOneCardImage.widthAnchor.constraint(equalToConstant: 50),
            
            activityTwoCardImage.topAnchor.constraint(equalTo: activityCard.topAnchor, constant: 15),
            activityTwoCardImage.centerXAnchor.constraint(equalTo: activityCard.centerXAnchor),
            activityTwoCardImage.heightAnchor.constraint(equalToConstant: 50),
            activityTwoCardImage.widthAnchor.constraint(equalToConstant: 50),

            activityThreeCardImage.topAnchor.constraint(equalTo: activityCard.topAnchor, constant: 15),
            activityThreeCardImage.trailingAnchor.constraint(equalTo: activityCard.trailingAnchor, constant: -25),
            activityThreeCardImage.heightAnchor.constraint(equalToConstant: 50),
            activityThreeCardImage.widthAnchor.constraint(equalToConstant: 50),
            
            activityOneTypeCardLabel.topAnchor.constraint(equalTo: activityOneCardImage.bottomAnchor, constant: 10),
            activityOneTypeCardLabel.centerXAnchor.constraint(equalTo: activityOneCardImage.centerXAnchor),
            activityTwoTypeCardLabel.topAnchor.constraint(equalTo: activityTwoCardImage.bottomAnchor, constant: 10),
            activityTwoTypeCardLabel.centerXAnchor.constraint(equalTo: exercisesCard.centerXAnchor),
            activityThreeTypeCardLabel.topAnchor.constraint(equalTo: activityThreeCardImage.bottomAnchor, constant: 10),
            activityThreeTypeCardLabel.centerXAnchor.constraint(equalTo: activityThreeCardImage.centerXAnchor),
            
            activityOneCardLabel.topAnchor.constraint(equalTo: activityOneTypeCardLabel.bottomAnchor, constant: 10),
            activityOneCardLabel.centerXAnchor.constraint(equalTo: activityOneCardImage.centerXAnchor),
            activityTwoCardLabel.topAnchor.constraint(equalTo: activityTwoTypeCardLabel.bottomAnchor, constant: 10),
            activityTwoCardLabel.centerXAnchor.constraint(equalTo: exercisesCard.centerXAnchor),
            activityThreeCardLabel.topAnchor.constraint(equalTo: activityThreeTypeCardLabel.bottomAnchor, constant: 10),
            activityThreeCardLabel.centerXAnchor.constraint(equalTo: activityThreeCardImage.centerXAnchor),
        ])
        
        NSLayoutConstraint.activate([
            exerciesList.topAnchor.constraint(equalTo: exercisesCard.topAnchor, constant: 0.5),
            exerciesList.leadingAnchor.constraint(equalTo: exercisesCard.leadingAnchor, constant: 0.5),
            exerciesList.trailingAnchor.constraint(equalTo: exercisesCard.trailingAnchor, constant: -0.5),
            exerciesList.widthAnchor.constraint(equalToConstant: 250),
            exerciesList.heightAnchor.constraint(equalToConstant: 275),
        ])
    }
}
