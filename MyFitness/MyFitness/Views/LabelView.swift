//
//  LabelView.swift
//  MyFitness
//
//  Created by Kasun Subhashana on 20/5/23.
//

import UIKit

class LabelView: UILabel {

    override init(frame: CGRect) {
        super.init(frame: frame)

        self.translatesAutoresizingMaskIntoConstraints = false
        self.textColor = UIColor.gray
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
