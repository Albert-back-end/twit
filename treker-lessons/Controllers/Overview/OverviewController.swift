//
//  OverviewController.swift
//  treker-lessons
//
//  Created by Albert on 11/29/24.
//

import UIKit

class OverviewController: BaseController {

    private let navBar = OverviewNavbar()

}

extension OverviewController {
    
    override func addViews() {
        super.addViews()
        
        view.addView(navBar)
    }
    
    override func layoutViews() {
        super.layoutViews()
        
        NSLayoutConstraint.activate([
            navBar.topAnchor.constraint(equalTo: view.topAnchor),
            navBar.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            navBar.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }
    
    override func configureViews() {
        super.configureViews()
        navigationController?.navigationBar.isHidden = true
    }
    
}

