//
//  SettingController.swift
//  Settings27
//
//  Created by Timothy Rosenvall on 6/17/19.
//  Copyright © 2019 Timothy Rosenvall. All rights reserved.
//

import UIKit

class SettingController {
    
    static let sharedInstance = SettingController()
    
    var settings: [Setting]

    init() {
        let apps = Setting(icon: UIImage(named: "apps.png"), name: "App Store", isOn: false)
        let music = Setting(icon: UIImage(named: "music.png"), name: "iTunes", isOn: false)
        let books = Setting(icon: UIImage(named: "books.png"), name: "iBooks", isOn: false)
        self.settings = [apps, music, books]
    }
    
    func toggleIsOn( for setting: Setting ) {
        setting.isOn = !setting.isOn
    }
    
}
