//
//  BaseController.swift
//  treker-lessons
//
//  Created by Albert on 11/30/24.
//

import UIKit

enum NavBarPosition {
    case left
    case right
}

class BaseController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addViews()
        configureViews()
        layoutViews()
    }
    
}

@objc extension BaseController {
    
    func addViews() {}
    func layoutViews() {}
    
    func configureViews() {
        view.backgroundColor = Resources.Colors.background
    }
    
    func navBarRightButtonHandler() {
        print("Nabar right button tapped")
    }
    
    func navBarLeftButtonHandler() {
        print("Navbar left button tapped")
    }
    
}

extension BaseController {
    func addNavBarController(at position: NavBarPosition, with title: String) {
        let button = UIButton(type: .system)
        button.setTitle(title, for: .normal)
        button.setTitleColor(Resources.Colors.active, for: .normal)
        button.setTitleColor(Resources.Colors.active, for: .disabled)
        button.titleLabel?.font = Resources.Fonts.helveticaRegular(with: 17)
        
        switch position {
            case .left:
                button.addTarget(self, action: #selector(navBarLeftButtonHandler), for: .touchUpInside)
                navigationItem.leftBarButtonItem = UIBarButtonItem(customView: button)
            case .right:
                button.addTarget(self, action: #selector(navBarRightButtonHandler), for: .touchUpInside)
                navigationItem.rightBarButtonItem = UIBarButtonItem(customView: button)
            }
    }
}
