//
//  Mondrain.swift
//  Ready, Set, Draw
//
//  Created by Laddipeerla,Karthik on 11/15/17.
//  Copyright © 2017 Laddipeerla,Karthik. All rights reserved.
//
import UIKit
import Foundation

class Mondrain: UIView {
    
    
    
    let colours:[UIColor] = [.black, .darkGray, .brown, .cyan, .blue, .orange, .lightGray]
    
    
    override func draw(_ rect: CGRect) {
        if numberEntered>0{
            for _ in 1 ... numberEntered{
                let x = Int(arc4random_uniform(170))
                let y = Int(arc4random_uniform(200))
                let width = Int(arc4random_uniform(170))
                let height = Int(arc4random_uniform(200))
                let randomRectangle = UIBezierPath(rect: CGRect(x:  x, y:  y, width:  width, height:  height))
                self.colours[Int(arc4random_uniform(6))].setFill()
                randomRectangle.fill()
                
            }
            
        }
    }
    
    
    
    
}
