//
//  SettingsViewController.swift
//  GithubDemo
//
//  Created by Prasanthi Relangi on 2/10/16.
//  Copyright © 2016 codepath. All rights reserved.
//

import UIKit

protocol SettingsDelegate: class {
    func starPicker(picker: SettingsViewController, didPickStar star:Int?)
    
    
}

class SettingsViewController: UIViewController {

    weak var delegate: SettingsDelegate?
    
    @IBAction func sliderValChanged(sender: AnyObject) {
        let sliderVal = Int(starSlider.value)
        starValue.text = "\(sliderVal)"
        
    }
    
    @IBOutlet weak var starSlider: UISlider!
    @IBOutlet weak var starValue: UILabel!
    
    @IBAction func didSave(sender: AnyObject) {
        
        let sliderVal = Int(starSlider.value)
        print("Sending slider value \(sliderVal)")
        delegate?.starPicker(self, didPickStar: sliderVal)
        
    }
    
    @IBAction func didCancel(sender: AnyObject) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        var selectedStar = starSlider.value
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
