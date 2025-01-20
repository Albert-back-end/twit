//
//  ProgressController.swift
//  treker-lessons
//
//  Created by Albert on 11/30/24.
//

import UIKit

class ProgressController: BaseController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Workout Progress"
        navigationController?.tabBarItem.title = Resources.Strings.TabBar.progress
        
        addNavBarController(at: .left, with: "Export")
        addNavBarController(at: .right, with: "Details")
    }

}
