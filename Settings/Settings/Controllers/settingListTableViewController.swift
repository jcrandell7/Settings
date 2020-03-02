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
    //this tells us how many row are in the section.
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return SettingController.settings.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "settingCell", for: indexPath) as? SettingTableViewCell else {return UITableViewCell()}
        let setting = SettingController.settings[indexPath.row]
        
        cell.updateViews(with: setting)
        cell.delegate = self
        //Setting the cells delegae to the tableViewController. i.e. hiring the TBVC to be the intern in this relationship
        //4 - step four protocols and delegates
        //Assign the tableView to be the delegate for every single cell.
        return cell
    }
}// END OF CLASS
// if any protocol requires a function for conformance you do an extension at the bottom.
extension SettingListTableViewController: SettingTableViewCellDelegate {
    func settingSwitchTapped (for cell: SettingTableViewCell) {
        ///we asked our TBVC to be our delegate because it can tell us what the indexPath is for the cell that triggered this protocol method
        guard let index = tableView.indexPath(for: cell) else {return}
        //find the ' setting' in the settings array that matches that 'indexPath'
        let setting = SettingController.settings[index.row]
        //tell the model controller to toggle the 'isOn' change the 'Setting'
        SettingController.toggleIsOn(for: setting)
        //inform the cell it is now time to update
        cell.updateViews(with: setting)
    }
}
