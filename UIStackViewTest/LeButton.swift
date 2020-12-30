//
//  LeButton.swift
//  UIStackViewTest
//
//  Created by Arnaldo Rozon on 12/30/20.
//

import UIKit

class LeButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureButton()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureButton() {
        setTitleColor(.white, for: .normal)
        backgroundColor = .systemPurple
        titleLabel?.font = UIFont(name: "SF Display", size: 24)
        layer.cornerRadius = 10
    }
    
}
