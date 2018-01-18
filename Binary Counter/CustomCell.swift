//
//  CustomCell.swift
//  Binary Counter
//
//  Created by Jihun Kang on 1/17/18.
//  Copyright © 2018 Jihun Kang. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {
    @IBOutlet weak var numberLabel: UILabel!
    weak var delegate: cellDelegate?
    @IBAction func minusButton(_ sender: UIButton) {
        delegate?.minusPressed(by: self, subtract: Int(numberLabel.text!)!)
    }
    @IBAction func plusButton(_ sender: UIButton) {
        delegate?.plusPressed(by: self, add: Int(numberLabel.text!)!)
    }
    
}
