//
//  FirstViewController.swift
//  Ready, Set, Draw
//
//  Created by Laddipeerla,Karthik on 11/14/17.
//  Copyright © 2017 Laddipeerla,Karthik. All rights reserved.
//

import UIKit

var inputString:[String] = []

class FirstViewController: UIViewController {
    
    
    @IBOutlet weak var enterPattern: UITextField!
    
    @IBOutlet weak var ticTacToeView: TicTacToe!
    @IBAction func play(_ sender: Any) {
        inputString = SprteString(pattern: enterPattern.text!)
        ticTacToeView.setNeedsDisplay()
        
    }
    func SprteString(pattern:String)->[String]{
        var ticTacToe:[String] = []
        for t in pattern.components(separatedBy: " "){
            ticTacToe.append(t)
        }
        return ticTacToe
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

