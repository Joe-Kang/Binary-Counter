//
//  ViewController.swift
//  Binary Counter
//
//  Created by Jihun Kang on 1/17/18.
//  Copyright © 2018 Jihun Kang. All rights reserved.
//

import UIKit

class ViewController: UIViewController, cellDelegate {
    func plusPressed(by controller: CustomCell, add: Int) {
        total += add
        totalLabel.text = "Total: \(total)"
    }
    
    func minusPressed(by controller: CustomCell, subtract: Int) {
        total -= subtract
        totalLabel.text = "Total: \(total)"
    }
    
    
    var total: Int = 0
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var numberLabel: UITableViewCell!
    @IBOutlet weak var totalLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
    }
    
    override func didReceiveMemoryWarning() {super.didReceiveMemoryWarning()}
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 16
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BinaryCell", for: indexPath) as! CustomCell
        cell.numberLabel?.text = String(describing: pow(10,indexPath.row))
        cell.delegate = self as? cellDelegate
        return cell
    }
}

