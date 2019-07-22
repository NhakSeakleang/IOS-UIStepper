//
//  ViewController.swift
//  IOS-UIStepper
//
//  Created by GIS on 7/22/19.
//  Copyright © 2019 GIS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private var mainView: MainView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUp()
        
    }
    
    override func viewDidLayoutSubviews() {
        
        setUpEvent()
        
    }

    func setUp() {
        
        setUpView()
        
    }
    
    func setUpView() {
        
        mainView = MainView()
        self.view = mainView
        
    }
    
    func setUpEvent() {
        
        // stepper
        mainView.stepper.addTarget(self, action: #selector(stepperValueChange(_:)), for: .valueChanged)
        
    }
    
    @objc func stepperValueChange(_ stepper: UIStepper) {
        
        print("Stepper Value: \(stepper.value)")
        mainView.lbValue.text = "\(Int(stepper.value))"
        
    }

}

