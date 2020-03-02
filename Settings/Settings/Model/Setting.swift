//
//  Setting.swift
//  Settings
//
//  Created by Apple on 3/2/20.
//  Copyright © 2020 Karl Pfister. All rights reserved.
//
 /**
 creates our setting Object - *MODEL*
    - properties:
            - name: The 'String' identifier for the setting
            - icon: the 'UIIMage' that matches the setting
            - isOn: the 'Bool' to designated whether the Setting is on or not
 */

//make sure to import UIKit when you declare stuff of type UIImage
import UIKit
class Setting {
    
    var settingTitle: String
    var icon: UIImage
    var isOn: Bool
    
    init(settingTitle: String, icon: UIImage, isOn: Bool) {
        self.settingTitle = settingTitle
        self.icon = icon
        self.isOn = isOn
    }
    
}
