//
//  SettingController.swift
//  Settings
//
//  Created by Apple on 3/2/20.
//  Copyright © 2020 Karl Pfister. All rights reserved.
//

import Foundation
///our model controllers class
class SettingController {
    
    //MARK - Source of Truth
    /**
     Source of Truth
     
     we created a computed property name 'settings' and declared the type to be an array of 'setting' objects.
     


     */
    //method signature
    //declared a constant of type array of Settings. it will do some work and then return an array then initialize some settings
        // - Static: Allows us to access the settings array outside of this class
    static let settings: [Setting] = {
        let music = Setting (settingTitle: "Music", icon: #imageLiteral(resourceName: "iTunes"), isOn: false)
        let appStore = Setting(settingTitle: "App Store", icon: #imageLiteral(resourceName: "appStore"), isOn: false)
        let iBooks = Setting(settingTitle: "iBooks", icon: #imageLiteral(resourceName: "iBooks"), isOn: false)
             // - Returns: An array of 'Setting' object
        return[music, appStore, iBooks]
        
    }()
    //MARK: - Methods
    // a method signature is an empty function.
    /**
     globally accessable method that toggled the isOn property on a model object
     */
    
    //this function just assigns the switch to the opposite when it is called.
    static func toggleIsOn(for setting: Setting) {
        setting.isOn = !setting.isOn
        // 2b|| !2b
    }
}
