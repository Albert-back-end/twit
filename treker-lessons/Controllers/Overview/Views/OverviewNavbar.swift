//
//  OverviewNavbar.swift
//  treker-lessons
//
//  Created by Albert on 1/5/25.
//

import UIKit

final class OverviewNavbar: BaseView {
 
    private let allWorkoutsButton = SecondaryButton()
    private let addbutton = UIButton()
    private let titleLabel = UILabel()
    private let weakView = WeakView()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        addBottomBorder(with: Resources.Colors.separator, height: 1)
    }
    
    func allWorkoutsAction(_ action: Selector, with target: Any?) {
        allWorkoutsButton.addTarget(self, action: action, for: .touchUpInside)
    }
    
    func addEdittingAction(_ action: Selector, with target: Any?) {
        addbutton.addTarget(self, action: action, for: .touchUpInside)
    }
    
}

extension OverviewNavbar {
    override func addViews() {
        super.addViews()
        
        addView(allWorkoutsButton)
        addView(addbutton)
        addView(titleLabel)
        addView(weakView)
    }
    
    override func layoutViews() {
        super.layoutViews()
        
        NSLayoutConstraint.activate([
            addbutton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 8),
            addbutton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            addbutton.heightAnchor.constraint(equalToConstant: 28),
            addbutton.widthAnchor.constraint(equalToConstant: 28),
            
            allWorkoutsButton.topAnchor.constraint(equalTo: addbutton.topAnchor),
            allWorkoutsButton.trailingAnchor.constraint(equalTo: addbutton.leadingAnchor, constant: -15),
            allWorkoutsButton.heightAnchor.constraint(equalToConstant: 28),
            allWorkoutsButton.widthAnchor.constraint(equalToConstant: 130),
            
            titleLabel.centerYAnchor.constraint(equalTo: allWorkoutsButton.centerYAnchor),
            titleLabel.trailingAnchor.constraint(equalTo: allWorkoutsButton.leadingAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            
            weakView.topAnchor.constraint(equalTo: addbutton.bottomAnchor, constant: 15),
            weakView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            weakView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            weakView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -15),
            weakView.heightAnchor.constraint(equalToConstant: 47)
        ])
    }
    
    override func configureViews() {
        super.configureViews()
        
        backgroundColor = .white
        
        titleLabel.text = Resources.Strings.NabBar.overview
        titleLabel.textColor = Resources.Colors.titleGray
        titleLabel.font = Resources.Fonts.helveticaRegular(with: 22)
        
        allWorkoutsButton.setTitle(Resources.Strings.Overview.allWorcoutsButton)
        
        addbutton.setImage(Resources.Images.Common.addButton, for: .normal)
    }
}
