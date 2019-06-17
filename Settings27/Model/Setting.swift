//
//  Setting.swift
//  Settings27
//
//  Created by Timothy Rosenvall on 6/17/19.
//  Copyright © 2019 Timothy Rosenvall. All rights reserved.
//

import UIKit

class Setting {
    
    let icon: UIImage?
    let name: String
    var isOn: Bool
    
    init( icon: UIImage?, name: String, isOn: Bool ) {
        self.icon = icon
        self.name = name
        self.isOn = isOn
    }
}
