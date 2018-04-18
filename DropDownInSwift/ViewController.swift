//
//  ViewController.swift
//  DropDownInSwift
//
//  Created by Dnyaneshwar Shinde on 18/04/18.
//  Copyright © 2018 Dnyaneshwar Shinde. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var SelectButton: UIButton!
    @IBOutlet var pressButton: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        SelectButton.layer.cornerRadius = 12
        pressButton.forEach {(foodBtn) in
            foodBtn.layer.cornerRadius = 12
            foodBtn.isHidden = true
        }
    }
    @IBAction func SelectButton(_ sender: UIButton) {
        pressButton.forEach{ (foodbtn) in
            UIView.animate(withDuration: 0.4, animations: {
                foodbtn.isHidden = !foodbtn.isHidden
                self.view.layoutIfNeeded()
            })
        }
    }
    @IBAction func pressButtonClickAction(_ sender: UIButton) {
        
        if let btnlabel = sender.titleLabel?.text {
            print(btnlabel)
        }
        
    }
    
}

