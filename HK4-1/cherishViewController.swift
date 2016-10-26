//
//  cherishViewController.swift
//  HK4-1
//
//  Created by AllenChang on 2016/10/26.
//  Copyright © 2016年 AllenChang. All rights reserved.
//

import UIKit

class cherishViewController: UIViewController {

    @IBOutlet weak var starTextfield: UITextField!
    @IBOutlet weak var sexSegmented: UISegmentedControl!
    @IBOutlet weak var heartSwitch: UISwitch!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var yesornotSegmented: UISegmentedControl!
   
    @IBAction func ageSlider(_ sender: UISlider) {
    ageLabel.text = "\(Int(sender.value))"
    }

    @IBAction func loveButton(_ sender: UIButton) {
    
        let star = starTextfield.text!
        let sex = sexSegmented.selectedSegmentIndex
        let heart = heartSwitch.isOn
        let age:Int! = Int(ageLabel.text!)
        
        yesornotSegmented.isHidden = false
        
        switch star{
        case "水瓶座","巨蟹座","金牛座","雙魚座","處女座","天枰座":
            if sex==1 && heart == true && age<=36 && age>=16 {
               yesornotSegmented.selectedSegmentIndex = 0
               }
            else{
                yesornotSegmented.selectedSegmentIndex = 1
            }
            
        default:
            yesornotSegmented.selectedSegmentIndex = 1

        }
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
