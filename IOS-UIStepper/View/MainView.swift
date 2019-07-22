//
//  MainView.swift
//  IOS-UIStepper
//
//  Created by GIS on 7/22/19.
//  Copyright © 2019 GIS. All rights reserved.
//

import UIKit

class MainView: UIView {
    
    var stepper: UIStepper!
    var lbValue: UILabel!
    
    override func layoutSubviews() {
        
        setUp()
        
    }
    
    func setUp() {
        
        backgroundColor = .white
        setUpView()
        setUpLayout()
        
    }
    
    func setUpView() {
        
        // stepper
        stepper = UIStepper()
//        stepper.autorepeat = false
        stepper.wraps = true
        stepper.minimumValue = 0
        stepper.maximumValue = 10
        stepper.stepValue = 1
        
        // lbValue
        lbValue = UILabel()
        lbValue.text = "0"
        lbValue.font = UIFont.boldSystemFont(ofSize: 35)
        lbValue.textAlignment = .center
        
        // add sub view
        self.addSubview(stepper)
        self.addSubview(lbValue)
        
    }
    
    func setUpLayout() {
        
        // stepper
        stepper.frame = CGRect(x: 0, y: 0, width: self.frame.width - 100, height: 50)
        stepper.center = self.center
        
        // lbValue
        lbValue.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        lbValue.center.x = self.center.x
        lbValue.center.y = self.center.y - 100
        
    }
    
}
