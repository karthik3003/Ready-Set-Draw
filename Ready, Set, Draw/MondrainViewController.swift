//
//  MondrainViewController.swift
//  Ready, Set, Draw
//
//  Created by Laddipeerla,Karthik on 11/15/17.
//  Copyright © 2017 Laddipeerla,Karthik. All rights reserved.
//

import UIKit

var numberEntered = 0

class MondrainViewController: UIViewController {
   @IBOutlet weak var numOfRectangles: UITextField!
    
    
   
    @IBOutlet weak var MondrainView: Mondrain!
    
    @IBAction func Done(_ sender: Any) {
        if Int(numOfRectangles.text!) == nil {
            let alert = UIAlertController(title: "Enter a number",
                                          message: "Please enter a valid number",
                                          preferredStyle: .alert)
            let cancel = UIAlertAction(title: "Cancel", style: .destructive, handler: { (action) -> Void in })
            alert.addAction(cancel)
            if Int(numOfRectangles.text!) == nil{
                present(alert, animated: true, completion: nil)
            }
        }
        else{
            numberEntered = Int(numOfRectangles.text!)!
            MondrainView.setNeedsDisplay()
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
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
