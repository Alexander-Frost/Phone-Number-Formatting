//
//  ViewController.swift
//  formattingNumbers
//
//  Created by Alex on 4/11/19.
//  Copyright © 2019 Alex. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var unformattedNumLbl: UILabel!
    @IBOutlet weak var formattedNumLbl: UILabel!
    @IBAction func formatNumBtnPressed(_ sender: UIButton) {
        formatNum(number: unformattedNumLbl.text!)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        unformattedNumLbl.text = "  (213)-866-5785    "
    }
    
    func formatNum(number: String) {
        let formNumber = String(number.filter { !" -()".contains($0) })
        var newNumber: String?
        if formNumber.hasPrefix("+"){
            newNumber = formNumber
        } else {
            newNumber = "+1\(formNumber)"
        }
        formattedNumLbl.text = newNumber
    }


}

