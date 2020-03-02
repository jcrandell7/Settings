//
//  SettingTableViewCell.swift
//  Settings
//
//  Created by Apple on 3/2/20.
//  Copyright © 2020 Karl Pfister. All rights reserved.
//

import UIKit
protocol SettingTableViewCellDelegate: class {
    //cannot have a body because this is just what is said what needs to happen the how is somewhere else.
    //STEP 1
    func settingSwitchTapped(for cell: SettingTableViewCell)
}
//convention states protocols are declared above class extensions below
//this is the protocol
class SettingTableViewCell: UITableViewCell {
    //MARK: - Outlets
    @IBOutlet weak var settingIconImageView: UIImageView!
    @IBOutlet weak var settingNameLabel: UILabel!
    @IBOutlet weak var settingSwitchToggled: UISwitch!
    //MARK: - properties
    //Step 2 setting table
   weak var delegate: SettingTableViewCellDelegate?
//MARK: - Actions
    //this also needs to be called as an outlet so that we can call it later.
    @IBAction func settingSwitchToggled(_ sender: Any) {
        delegate?.settingSwitchTapped(for: self)
        //TODO: - Add this
    }
    
    //MARK: - Helper Methods
    func updateViews (with setting: Setting) {
        settingIconImageView.image = setting.icon
        settingNameLabel.text = setting.settingTitle
        settingSwitchToggled.isOn = setting.isOn
        
        //in this context the question mark can be seen as an "if" statement and the colon as an "else" statement. this can only be done as a bool. if setting.isOn is true .cyan else .white
     backgroundColor = setting.isOn ? .cyan : .white
//       if setting.isOn == true {
//            backgroundColor = .cyan
//        } else {
//            backgroundColor = .white
//        }
    }
}

