//
//  ViewController.swift
//  UIStackViewTest
//
//  Created by Arnaldo Rozon on 12/30/20.
//

import UIKit

class ViewController: UIViewController {
    
    var stackView = UIStackView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configureLabel()
        configureStackView()
        configureButtons()
    }
    
    let titleLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.boldSystemFont(ofSize: 32)
        label.text = "UIStackView Demo"
        label.textAlignment = .center
        label.numberOfLines = 0
        label.adjustsFontSizeToFitWidth = true
        
        return label
    }()
    
    func configureLabel() {
        view.addSubview(titleLabel)
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 40),
            titleLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            titleLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
        ])
    }
    
    func configureStackView() {
        view.addSubview(stackView)
        
        stackView.backgroundColor = .systemYellow
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        // 1. Set up axis, distribution, and spacing
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.spacing = 20
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 20),
            stackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            stackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            stackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20)
        ])
    }
    
    func configureButtons() {
        for i in 1...5 {
            let button = LeButton()
            button.setTitle("\(i)", for: .normal)
            
            // 2. Add arranged subview (not a regular subview)
            stackView.addArrangedSubview(button)
        }
        
        stackView.backgroundColor = nil
    }
    
}

