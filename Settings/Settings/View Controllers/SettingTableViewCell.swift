//
//  SettingTableViewCell.swift
//  Settings
//
//  Created by Hin Wong on 3/2/20.
//  Copyright © 2020 Karl Pfister. All rights reserved.
//

import UIKit

protocol SettingTableViewCellDelegate: class {
    // Step 1- declare protocol
    func settingSwitchTapped(for cell: SettingTableViewCell)
}

class SettingTableViewCell: UITableViewCell {
    
    // MARK:- Outlets
    
    @IBOutlet weak var settingIconImageView: UIImageView!
    @IBOutlet weak var settingNameLabel: UILabel!
    @IBOutlet weak var settingSwitch: UISwitch!
    
    //MARK:- Properties
    
    // Step 2 - declare delegate
    weak var delegate: SettingTableViewCellDelegate?
    
    // MARK:- Actions
    
    @IBAction func settingSwitchToggled(_ sender: Any) {
        delegate?.settingSwitchTapped(for: self)
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
