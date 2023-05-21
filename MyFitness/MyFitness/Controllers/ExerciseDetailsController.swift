//
//  ExerciseDetailsController.swift
//  MyFitness
//
//  Created by Kasun Subhashana on 21/5/23.
//

import UIKit

class ExerciseDetailsController: UIViewController {
    
    let activityLabel: LabelView = {
        let label = LabelView()
        label.text = "PUSH-UPS"
        label.textColor = UIColor(red: (128/255.0), green: (139/255.0), blue: (150/255.0), alpha: 1.0)
        label.font = UIFont.systemFont(ofSize: 12)
        
        return label
    }()

    let exerciseCardImage : UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFill
        image.image = UIImage(named: "pushup-details")
        image.layer.cornerRadius = 6
        image.clipsToBounds = true
        
        return image
    }()

    let exerciseImageCard: CardView = {
        let card = CardView()
        card.translatesAutoresizingMaskIntoConstraints = false
        card.backgroundColor = UIColor(red: (242/255.0), green: (244/255.0), blue: (244/255.0), alpha: 1.0)
        card.layer.cornerRadius = 6
        card.layer.shadowColor = UIColor.black.cgColor
        card.layer.shadowOpacity = 0.1
        card.layer.shadowOffset = CGSize(width: 2, height: 2)
                
        return card
    }()

    let videoCardLabel: LabelView = {
        let label = LabelView()
        label.text = "VIDEO"
        label.textColor = UIColor(red: (128/255.0), green: (139/255.0), blue: (150/255.0), alpha: 1.0)
        label.font = UIFont.systemFont(ofSize: 12)

        return label
    }()
    
    let videoCardImage : UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFill
        image.image = UIImage(named: "youtube")
        image.layer.cornerRadius = 6
        image.clipsToBounds = true
        
        return image
    }()

    let videoCard: CardView = {
        let card = CardView()
        card.translatesAutoresizingMaskIntoConstraints = false
        card.backgroundColor = UIColor(red: (242/255.0), green: (244/255.0), blue: (244/255.0), alpha: 1.0)
        card.layer.cornerRadius = 6
        card.layer.shadowColor = UIColor.black.cgColor
        card.layer.shadowOpacity = 0.1
        card.layer.shadowOffset = CGSize(width: 2, height: 2)
                
        return card
    }()
    
    let bodyCardLabel: LabelView = {
        let label = LabelView()
        label.text = "BODY"
        label.textColor = UIColor(red: (128/255.0), green: (139/255.0), blue: (150/255.0), alpha: 1.0)
        label.font = UIFont.systemFont(ofSize: 12)

        return label
    }()
    
    let bodyCardImage : UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFill
        image.image = UIImage(named: "endocrine-system")
        image.layer.cornerRadius = 6
        image.clipsToBounds = true
        
        return image
    }()

    let bodyCard: CardView = {
        let card = CardView()
        card.translatesAutoresizingMaskIntoConstraints = false
        card.backgroundColor = UIColor(red: (242/255.0), green: (244/255.0), blue: (244/255.0), alpha: 1.0)
        card.layer.cornerRadius = 6
        card.layer.shadowColor = UIColor.black.cgColor
        card.layer.shadowOpacity = 0.1
        card.layer.shadowOffset = CGSize(width: 2, height: 2)
                
        return card
    }()
    
    let stepsLabel: LabelView = {
        let label = LabelView()
        label.text = "STEPS"
        label.textColor = UIColor(red: (128/255.0), green: (139/255.0), blue: (150/255.0), alpha: 1.0)
        label.font = UIFont.systemFont(ofSize: 12)

        return label
    }()
    
    let descriptionTextView: UITextView = {
        let textView = UITextView()
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.textColor = UIColor(red: (128/255.0), green: (139/255.0), blue: (150/255.0), alpha: 1.0)
        textView.font = UIFont.systemFont(ofSize: 13)
        textView.textAlignment = .center

        return textView
    }()
    
    private var exerciseId : String = ""
    private var exerciseName : String = ""
    
    init(_ exerciseId: String, exerciseName: String) {
        self.exerciseId = exerciseId
        self.exerciseName = exerciseName
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder){
        super.init(coder: coder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = exerciseName
        view.backgroundColor = .white
 
        view.addSubview(exerciseImageCard)
        exerciseImageCard.addSubview(exerciseCardImage)
        view.addSubview(videoCardLabel)
        view.addSubview(videoCard)
        videoCard.addSubview(videoCardImage)
        view.addSubview(bodyCardLabel)
        view.addSubview(bodyCard)
        bodyCard.addSubview(bodyCardImage)
        view.addSubview(stepsLabel)
        view.addSubview(descriptionTextView)
        
        setConstraints()
        setDescription()
    }
    
    func setConstraints(){
        
        NSLayoutConstraint.activate([
            exerciseImageCard.topAnchor.constraint(equalTo: view.topAnchor, constant: 110),
            exerciseImageCard.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            exerciseImageCard.heightAnchor.constraint(equalToConstant: 150),
            exerciseImageCard.widthAnchor.constraint(equalToConstant: 330),
        ])
        
        NSLayoutConstraint.activate([
            exerciseCardImage.topAnchor.constraint(equalTo: exerciseImageCard.topAnchor, constant: 0),
            exerciseImageCard.leadingAnchor.constraint(equalTo: exerciseImageCard.leadingAnchor, constant: 5),
            exerciseImageCard.trailingAnchor.constraint(equalTo: exerciseImageCard.leadingAnchor, constant: 0),
            exerciseCardImage.heightAnchor.constraint(equalToConstant: 150),
            exerciseCardImage.widthAnchor.constraint(equalToConstant: 330)
        ])
        
        NSLayoutConstraint.activate([
            videoCardLabel.topAnchor.constraint(equalTo: exerciseCardImage.bottomAnchor, constant: 30),
            videoCardLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            videoCardLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 30)
        ])
        
        NSLayoutConstraint.activate([
            videoCard.topAnchor.constraint(equalTo: videoCardLabel.bottomAnchor, constant: 5),
            videoCard.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25),
            videoCard.heightAnchor.constraint(equalToConstant: 110),
            videoCard.widthAnchor.constraint(equalToConstant: 150),
        ])
        
        NSLayoutConstraint.activate([
            videoCardImage.centerXAnchor.constraint(equalTo: videoCard.centerXAnchor),
            videoCardImage.centerYAnchor.constraint(equalTo: videoCard.centerYAnchor),
            videoCardImage.widthAnchor.constraint(equalToConstant: 70),
            videoCardImage.heightAnchor.constraint(equalToConstant: 70),
        ])
        
        NSLayoutConstraint.activate([
            bodyCardLabel.topAnchor.constraint(equalTo: exerciseCardImage.bottomAnchor, constant: 30),
            bodyCardLabel.leadingAnchor.constraint(equalTo: videoCard.trailingAnchor, constant: 30),
            bodyCardLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 30)
        ])
        
        NSLayoutConstraint.activate([
            bodyCard.topAnchor.constraint(equalTo: videoCardLabel.bottomAnchor, constant: 5),
            bodyCard.leadingAnchor.constraint(equalTo: videoCard.trailingAnchor, constant: 30),
            bodyCard.heightAnchor.constraint(equalToConstant: 110),
            bodyCard.widthAnchor.constraint(equalToConstant: 150),
        ])
        
        NSLayoutConstraint.activate([
            bodyCardImage.centerXAnchor.constraint(equalTo: bodyCard.centerXAnchor),
            bodyCardImage.centerYAnchor.constraint(equalTo: bodyCard.centerYAnchor),
            bodyCardImage.widthAnchor.constraint(equalToConstant: 70),
            bodyCardImage.heightAnchor.constraint(equalToConstant: 70),
        ])

        NSLayoutConstraint.activate([
            stepsLabel.topAnchor.constraint(equalTo: bodyCard.bottomAnchor, constant: 30),
            stepsLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            stepsLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 30)
        ])
        
        NSLayoutConstraint.activate([
            descriptionTextView.topAnchor.constraint(equalTo: stepsLabel.bottomAnchor, constant: 5),
            descriptionTextView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25),
            descriptionTextView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            descriptionTextView.heightAnchor.constraint(equalToConstant: 300),
        ])
    }
    
    func setDescription() {
        let description = "Lie down on your stomach.|Put your hands on the ground – palms flat and facing downward, and elbows bent and shoulder-width apart.|Place your toes on the ground.|Align your legs, feet, and back.|Slowly push your entire body up off the ground with your hands. Stretch your arms completely. Your entire body should be off the ground, supported by your hands and toes.|Slowly lower your body by bending your elbows. No part of your body should touch the ground except your hands and toes.|Do 15 reps or as many as you can as per your comfort."
        
        let bullet = "•  "
        
        var descriptionArray = description.components(separatedBy: "|")
        
        descriptionArray = descriptionArray.map { return bullet + $0 }
        
        var attributes = [NSAttributedString.Key: Any]()
        attributes[.font] = UIFont.preferredFont(forTextStyle: .body)
        attributes[.foregroundColor] = UIColor.darkGray
        
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.headIndent = (bullet as NSString).size(withAttributes: attributes).width
        attributes[.paragraphStyle] = paragraphStyle
        
        let string = descriptionArray.joined(separator: "\n\n")
        descriptionTextView.typingAttributes = attributes
//        descriptionTextView.text = NSAttributedString(string: string, attributes: attributes)
        descriptionTextView.text = string
    }
}
