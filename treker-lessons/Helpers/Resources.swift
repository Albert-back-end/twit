//
//  Resources.swift
//  treker-lessons
//
//  Created by Albert on 11/29/24.
//

import UIKit

enum Resources {
    enum Colors {
        static var active = UIColor(hexString: "#437BFE")
        static var inActive = UIColor(hexString: "#929DA5")
        
        static var background = UIColor(hexString: "#F8F9F9")
        static var separator = UIColor(hexString: "#E8ECEF")
        static var secondary = UIColor(hexString: "#F0F3FF")
        
        static var titleGray = UIColor(hexString: "#545C77")
    }
    
    enum Strings {
        enum TabBar {
            static var overview = "Overview"
            static var session = "Session"
            static var progress = "Progress"
            static var settings = "Settings"
        }
        
        enum NabBar {
            static var overview = "Today"
            static var session = "High Intensity Cardio"
            static var progress = "Workout progress"
            static var settings = "Settings"
        }
        
        enum Overview {
            static var allWorcoutsButton = "All Worcouts"
        }
        
        enum Session {
            static var navBarLeft = "Pause"
            static var navBarRight = "Finish"
        }
        
        enum Progress {
            static var navBarLeft = "Export"
            static var navBarRight = "Details"
        }
        
        enum Settings { }
    }
    
    enum Images {
        enum TabBar {
            static var overview = UIImage(named: "overview_image")
            static var session = UIImage(named: "session_image")
            static var progress = UIImage(named: "progress_image")
            static var settings = UIImage(named: "settings_image")
        }
        
        enum Common {
            static var downArrow = UIImage(named: "down_arrow")
            static var addButton = UIImage(named: "add_button")
        }
    }
    
    enum Fonts {
        static func helveticaRegular(with size: CGFloat) -> UIFont {
            UIFont(name: "Helvetica", size: size) ?? UIFont()
        }
    }
}
