//
//  ViewController.swift
//  TorAuhen
//
//  Created by WVO on 25/4/2562 BE.
//  Copyright © 2562 WVO. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
// For Outlet
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }   //Main Method
    
//    For Action
    
    
    @IBAction func signUpButton(_ sender: UIButton) {
        
        print("You Click SignUP")
        performSegue(withIdentifier: "GoRegister", sender: nil)
        
    }
    
    @IBAction func signInButton(_ sender: UIButton) {
        goToWelfare()
        
    }
    
    func goToWelfare() -> Void {
        performSegue(withIdentifier: "GoWelfare", sender: nil)
    }
    
    
    
    
    

}   //Main Class

