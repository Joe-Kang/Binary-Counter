//
//  cellDelegate.swift
//  Binary Counter
//
//  Created by Jihun Kang on 1/17/18.
//  Copyright © 2018 Jihun Kang. All rights reserved.
//

import UIKit

protocol cellDelegate: class {
    func plusPressed(by controller: CustomCell, add: Int)
    func minusPressed(by controller: CustomCell, subtract: Int)
}
