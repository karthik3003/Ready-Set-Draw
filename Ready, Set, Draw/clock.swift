//
//  clock.swift
//  Ready, Set, Draw
//
//  Created by Laddipeerla,Karthik on 11/14/17.
//  Copyright © 2017 Laddipeerla,Karthik. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable class Clock: UIView {
    
//    let dt = Date()
//    let formatter = DateFormatter()
//    formatter.dateFormat = "dd.MM.yyyy - HH.mm.ssss"
//    let result = formatter.string(from: Date())
    
    override func draw(_ rect: CGRect) {
        let date = Date()
        let calendar = Calendar.current
        let hour = calendar.component(.hour, from: date)
        let minutes = calendar.component(.minute, from: date)
//        print(hour)
        // Drawing code
        
        let bezier = UIBezierPath()
        let size = self.frame.size
        
//        bezier.move(to:CGPoint(x:0.0,y:0.0))
        bezier.move(to:CGPoint(x:size.width/2, y:size.height/2))
        bezier.addLine(to: CGPoint(x:size.width/1.5, y:size.height/2))
        bezier.move(to:CGPoint(x:size.width/2, y:size.height/2))
        bezier.addLine(to: CGPoint(x:size.width/2,y:size.height/4))
        
//        UIColor.cyan.setStroke()
//        
//        bezier.move(to:CGPoint(x:size.width/2.0,y:size.height/2.0))
//        bezier.addArc(withCenter: CGPoint(x:size.width/2.0,y:size.height/2.0), radius: size.width/10.0, startAngle: 0.0, endAngle: 2 * .pi , clockwise: true)
//
        
        bezier.stroke()
    }
    
    

}
