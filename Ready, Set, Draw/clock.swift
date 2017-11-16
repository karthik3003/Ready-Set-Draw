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
        let hr = calendar.component(.hour, from: date)
        let min = calendar.component(.minute, from: date)
        let clock = UIBezierPath()
        let size = self.frame.size
        
        
        let hour = UIBezierPath()
        let hrArc = UIBezierPath()
        let hourAngle:CGFloat = .pi * CGFloat((Double(hr) - 3.0) / 6.0)
        clock.addArc(withCenter: CGPoint(x:size.width/2.0, y: size.height/2.0), radius: size.width / 3.0, startAngle: 0.0, endAngle: 2 * .pi, clockwise: true)
        clock.stroke()
        hrArc.addArc(withCenter: CGPoint(x:size.width/2.0, y: size.height/2.0), radius: size.width / 6.0, startAngle: 0.0, endAngle: hourAngle, clockwise: true)
        hour.move(to: hrArc.currentPoint)
        hour.addLine(to: CGPoint(x:size.width/2.0, y: size.height/2.0))
        hour.stroke()
        
        
        let minute = UIBezierPath()
        let minArc = UIBezierPath()
        let minAngle:CGFloat = .pi * CGFloat(((Double(min) / 5.0) - 3.0) / 6.0)
        minArc.addArc(withCenter: CGPoint(x:size.width/2.0, y: size.height/2.0), radius: size.width / 4.0, startAngle: 0.0, endAngle: minAngle, clockwise: true)
        minute.move(to: minArc.currentPoint)
        minute.addLine(to: CGPoint(x:size.width/2.0, y: size.height/2.0))
        minute.stroke()
        
        
        
    }
        
        
//        UIColor.cyan.setStroke()
//        
//        bezier.move(to:CGPoint(x:size.width/2.0,y:size.height/2.0))
//        bezier.addArc(withCenter: CGPoint(x:size.width/2.0,y:size.height/2.0), radius: size.width/10.0, startAngle: 0.0, endAngle: 2 * .pi , clockwise: true)
//
        
//        bezier.stroke()
//    }
    
    

}
