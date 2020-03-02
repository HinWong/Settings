//
//  Setting.swift
//  Settings
//
//  Created by Hin Wong on 3/2/20.
//  Copyright © 2020 Karl Pfister. All rights reserved.
//

import UIKit

class Setting {
    
    var settingName:String
    var icon:UIImage
    var isOn:Bool
    
    init(settingName:String, icon:UIImage, isOn:Bool) {
        
        self.settingName = settingName
        self.icon = icon
        self.isOn = isOn
    }
}

/**
 Creates our subject object
 - Properties
    - settingName:String - identifier for the setting
    - icon:UIImage - image that match the setting
    - isOn - Bool to desginate whether the Setting is on or off
 */
