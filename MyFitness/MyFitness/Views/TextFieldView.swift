//
//  TextFieldView.swift
//  MyFitness
//
//  Created by Kasun Subhashana on 20/5/23.
//

import UIKit

class TextFieldView: UITextField {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.translatesAutoresizingMaskIntoConstraints = false
        self.backgroundColor = UIColor(red: (234/255.0), green: (236/255.0), blue: (238/255.0), alpha: 1.0)
        self.textColor = UIColor(red: (39/255.0), green: (55/255.0), blue: (70/255.0), alpha: 1.0)
        self.layer.cornerRadius = 6
        self.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 20));
        self.leftViewMode = .always;
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
