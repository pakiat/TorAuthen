//
//  RegisterViewController.swift
//  TorAuhen
//
//  Created by WVO on 25/4/2562 BE.
//  Copyright © 2562 WVO. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {
    
//    Outlet
    
    
    @IBOutlet weak var nameTextField: UITextField!
    
    
    @IBOutlet weak var userTextField: UITextField!
    
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

//    For Aciton

    @IBAction func backBottom(_ sender: UIBarButtonItem) {
        
        performSegue(withIdentifier: "BackAuthen", sender: nil)
        
    }
    
    @IBAction func uploadBottom(_ sender: UIBarButtonItem) {
        
        print("Upload Work")
        
//        Get Value From TextField to String
        var name: String = nameTextField.text!
        var user:String = userTextField.text!
        var password:String = passwordTextField.text!
        
        print("name ==>> \(name),user == >> \(user), password == >> \(password)")
        
        
        
    }
    
}
