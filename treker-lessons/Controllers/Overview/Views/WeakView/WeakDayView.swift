//
//  WeakDayView.swift
//  treker-lessons
//
//  Created by Albert on 1/11/25.
//

import UIKit

extension WeakView {
    final class WeakDayView: BaseView {
        
        private let nameLabel = UILabel()
        private let dateLabel = UILabel()
        private let stackView = UIStackView()
        
    }

}

extension WeakView.WeakDayView {
    
    override func addViews() {
        super.addViews()
        
        addView(stackView)
        stackView.addArrangedSubview(nameLabel)
        stackView.addArrangedSubview(dateLabel)
    }
    
    override func layoutViews() {
        super.layoutViews()
        
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
    
    override func configureViews() {
        super.configureViews()
        
        stackView.backgroundColor = .red
        
        stackView.spacing = 3
        stackView.axis = .vertical
    }
    
}

