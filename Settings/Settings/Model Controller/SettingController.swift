//
//  SettingController.swift
//  Settings
//
//  Created by Hin Wong on 3/2/20.
//  Copyright © 2020 Karl Pfister. All rights reserved.
//

import UIKit

class SettingController {
    
    //MARK: - Source of truth
    static let settings: [Setting] = {
        
        let music = Setting(settingName: "music", icon: #imageLiteral(resourceName: "iTunes"), isOn: false)
        let appStore = Setting(settingName: "appStore", icon: #imageLiteral(resourceName: "appStore"), isOn: false)
        let iBooks = Setting(settingName: "iBooks", icon: #imageLiteral(resourceName: "iBooks"), isOn: false)
        
        return [music, appStore, iBooks]
    }()
    
    //MARK: - Methods
    
    static func toggleIsOn(for setting: Setting) {
        setting.isOn = !setting.isOn
    }
    
}
