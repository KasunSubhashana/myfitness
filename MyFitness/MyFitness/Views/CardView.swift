//
//  Card.swift
//  MyFitness
//
//  Created by Kasun Subhashana on 19/5/23.
//

import UIKit

class CardView: UIView {

    let cardContainerView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 10
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOpacity = 0.2
        view.layer.shadowOffset = CGSize(width: 2, height: 2)
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
//        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
//        setupViews()
    }
    
    private func setupViews() {
        addSubview(cardContainerView)
        
        NSLayoutConstraint.activate([
            cardContainerView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 1),
            cardContainerView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -1),
            cardContainerView.topAnchor.constraint(equalTo: topAnchor, constant: 1),
            cardContainerView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -1),
        ])
    }
}
