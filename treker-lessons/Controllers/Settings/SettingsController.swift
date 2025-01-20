//
//  SettingsController.swift
//  treker-lessons
//
//  Created by Albert on 11/30/24.
//

import UIKit

class SettingsController: BaseController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Settings"
        navigationController?.tabBarItem.title = Resources.Strings.TabBar.settings
    }

}
