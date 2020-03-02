//
//  SettingTableViewCell.swift
//  Settings
//
//  Created by Hin Wong on 3/2/20.
//  Copyright © 2020 Karl Pfister. All rights reserved.
//

import UIKit

class SettingTableViewCell: UITableViewCell {
    
    // MARK:- Outlets
    
    @IBOutlet weak var settingIconImageView: UIImageView!
    @IBOutlet weak var settingNameLabel: UILabel!
    @IBOutlet weak var settingSwitch: UISwitch!
    
    // MARK:- Actions
    
    @IBAction func settingSwitchToggled(_ sender: Any) {
        //TODO: - Add this
    }
    
    // MARK:- Helper Methods
    
    func updateViews(with setting: Setting) {
        settingIconImageView.image = setting.icon
        settingNameLabel.text = setting.settingName
        settingSwitch.isOn = setting.isOn
        
        backgroundColor = setting.isOn ? .red : .white
        
//        if setting.isOn == true {
//            backgroundColor = .red
//        }
//        else {
//            backgroundColor = .white
//        }
    }
}
