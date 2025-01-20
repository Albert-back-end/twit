//
//  SessionController.swift
//  treker-lessons
//
//  Created by Albert on 11/30/24.
//

import UIKit

class SessionController: BaseController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "High Intensity Cardio"
        navigationController?.tabBarItem.title = Resources.Strings.TabBar.session
        
        addNavBarController(at: .left, with: "Pause")
        addNavBarController(at: .right, with: "Finish")
    }
    
    override func navBarLeftButtonHandler() {
        print("Session navbar left button tapped")
    }

}
