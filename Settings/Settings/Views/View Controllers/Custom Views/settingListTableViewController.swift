//
//  settingListTableViewController.swift
//  Settings
//
//  Created by Apple on 3/2/20.
//  Copyright © 2020 Karl Pfister. All rights reserved.
//

import UIKit
//this is the delegate
class SettingListTableViewController: UITableViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return SettingController.settings.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "settingCell", for: indexPath) as? SettingTableViewCell else {return UITableViewCell()}
        let setting = SettingController.settings[indexPath.row]
        
        cell.updateViews(with: setting)
        cell.delegate = self
        return cell
    }
}// END OF CLASS

extension SettingListTableViewController: SettingTableViewCellDelegate {
    func settingSwitchTapped (for cell: SettingTableViewCell) {
        ///TBVC-> ModelController to update the isOn-> Cell update
        guard let index = tableView.indexPath(for: cell) else {return}
         let setting = SettingController.settings[index.row]
        SettingController.toggleIsOn(for: setting)
        cell.updateViews(with: setting)
    }
}
