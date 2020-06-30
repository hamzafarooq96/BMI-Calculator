//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Hamza Farooq on 29/06/2020.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmiValue : String?
    var advice: String?
    var color: UIColor?

    @IBOutlet weak var bmiLable: UILabel!
    @IBOutlet weak var adviceLable: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        bmiLable.text = bmiValue
        adviceLable.text = advice
        view.backgroundColor = color
        
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        
        self.dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
