//
//  ViewController.swift
//  Swift Fun
//
//  Created by Owais Quadri on 2023-07-02.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var changeColourButton: UIButton!
    @IBOutlet weak var introLabel: UILabel!
    var count = 0 {
        didSet {
            if count == 1 {
                introLabel.text = "Colour has been changed \(count) time"
            } else {
                introLabel.text = "Colour has been changed \(count) times"
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        changeColourButton.setTitle("Change Colour", for: .normal)
        count = 0
    }
    @IBAction func changeIntroColour(_ sender: Any) {
        introLabel.textColor = UIColor(red: .random(in: 0.0...1.0), green: .random(in: 0.0...1.0), blue: .random(in: 0.0...1.0), alpha: 1.0)
        count += 1
    }
    

}

