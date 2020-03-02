//
//  SettingController.swift
//  Settings
//
//  Created by Apple on 3/2/20.
//  Copyright © 2020 Karl Pfister. All rights reserved.
//

import Foundation

class SettingController {
    
    //MARK - Source of Truth
    //method signature
    //declared a constant of type array of Settings. it will do some work and then return an array then initialize some settings
   static let settings: [Setting] = {
        let music = Setting (settingTitle: "Music", icon: #imageLiteral(resourceName: "iTunes"), isOn: false)
        let appStore = Setting(settingTitle: "App Store", icon: #imageLiteral(resourceName: "appStore"), isOn: false)
        let iBooks = Setting(settingTitle: "iBooks", icon: #imageLiteral(resourceName: "iBooks"), isOn: false)
        return[music, appStore, iBooks]
        
    }()
    //MARK: - Methods
    // a method signature is an empty function.
    static func toggleIsOn(for setting: Setting) {
        setting.isOn = !setting.isOn
        // 2b|| !2b
    }
}
