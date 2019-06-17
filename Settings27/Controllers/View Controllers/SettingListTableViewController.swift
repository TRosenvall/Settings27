//
//  SettingListTableViewController.swift
//  Settings27
//
//  Created by Timothy Rosenvall on 6/17/19.
//  Copyright © 2019 Timothy Rosenvall. All rights reserved.
//

import UIKit

class SettingListTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return SettingController.sharedInstance.settings.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "settingCell", for: indexPath) as? SettingTableViewCell else {return UITableViewCell()}

        let setting = SettingController.sharedInstance.settings[indexPath.row]
        cell.cellDelegate = self
        cell.updateViews(with: setting)
        
        return cell
    }

}

extension SettingListTableViewController: SettingCellDelegate {
    func settingSwitchTapped(for cell: SettingTableViewCell) {
        guard let indexPath = tableView.indexPath(for: cell) else {return}
        let setting = SettingController.sharedInstance.settings[indexPath.row]
        SettingController.sharedInstance.toggleIsOn(for: setting)
        cell.updateViews(with: setting)
    }
}
