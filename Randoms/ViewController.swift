//
//  ViewController.swift
//  Randoms
//
//  Created by Cory Franks on 3/24/17.
//  Copyright © 2017 Cory Franks. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var label: UILabel!
    @IBOutlet var label2: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func Random0to10(_ sender: Any) {
        
        let RandomNumberGen = arc4random_uniform(11) //this method will always start as zero so you need to out 1 number higher then your highest target number.
        label.text = String(RandomNumberGen)
        
    }
    
    //In this case using "RandomNumberGen" for let in both button func is fine because its only being called when said button is clicked and isnt being referenced anywhere else.
    
    @IBAction func Random50to1000(_ sender: Any) {
        
        let min : UInt32 = 50
        let max : UInt32 = 1000
        //here we set our min and max values that we want our number to be genereted between.
        
        let RandomNumberGen = arc4random_uniform(max - min) + min //this allows us to randomly gen a number specifically between 50 & 1000.
        label2.text = String(RandomNumberGen)
    }
    

}

