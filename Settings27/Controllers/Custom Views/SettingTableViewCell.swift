//
//  SettingTableViewCell.swift
//  Settings27
//
//  Created by Timothy Rosenvall on 6/17/19.
//  Copyright © 2019 Timothy Rosenvall. All rights reserved.
//

import UIKit

// Define the Protocol
protocol SettingCellDelegate: class {
    func settingSwitchTapped(for cell: SettingTableViewCell)
}

class SettingTableViewCell: UITableViewCell {

    @IBOutlet weak var icon: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var settingSwitch: UISwitch!
    
    // Define the delegate
    weak var cellDelegate: SettingCellDelegate?
    
    func updateViews(with setting: Setting) {
        icon.image = setting.icon
        nameLabel.text = setting.name
        settingSwitch.isOn = setting.isOn
        
//        if settingSwitch.isOn == true {
//            self.backgroundColor = UIColor.cyan
//        } else {
//            self.backgroundColor = UIColor.white
//        }
        
        //Ternery Operator
        self.backgroundColor = settingSwitch.isOn ? .cyan : .white
    }
    
    @IBAction func settingCellToggled(_ sender: Any) {
        cellDelegate?.settingSwitchTapped(for: self)
    }
    
    
    
}
