//
//  WelfareViewController.swift
//  TorAuhen
//
//  Created by WVO on 25/4/2562 BE.
//  Copyright © 2562 WVO. All rights reserved.
//

import UIKit

class WelfareViewController: UIViewController {
    
    var idArray: [Int] = []
    var nameString: [String] = []
    
    
    @IBOutlet weak var nameLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        readDataFromJSON()

        // Do any additional setup after loading the view.
    } //Main Method
    
    func readDataFromJSON() -> Void {
        
//        print("readData Work")
        
        let urlString: String = "https://api.wvo.thaigov.net/welfare/history/10/102"
        guard let urlObject = URL(string: urlString) else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: urlObject) { (data, response, error) in
            
            guard let dataResponse = data else {
                print("Error")
                return
                
            }
            
            do {
                
                let jsonResponse = try JSONSerialization.jsonObject(with: dataResponse, options: [])
//                print(jsonResponse)
                
                //let myDictionary: Dictionary = jsonResponse
                
                guard let myDic:Dictionary = jsonResponse as! Dictionary<String,Any> else {
                    return

                }
                
//                print(myDic["contactts"]!)
                
                guard let jsonArray = myDic["contacts"]! as? [[String: Any]] else {return}
                
//                print("jsonArray ==>> \(jsonArray)")
//                print("jsonArray0 ==>> \(jsonArray[0])")
                
                let myDic2: Dictionary<String,Any>?
                
                for myDic2: Dictionary in jsonArray {
                    guard let idShow = myDic2["id"] else {
                        return
                    }
                    print(idShow)
//                    self.idArray.append(idShow as! Int)
                    guard let MVS_AST_NAMEShow = myDic2["MVS_AST_NAME"] else {
                        return
                    }
                    self.nameString.append(MVS_AST_NAMEShow as! String)
                    print(MVS_AST_NAMEShow)
                }
                
                for name in self.nameString {
                    print(name)
                }
                
//                self.showView(name: self.nameString[0])
                DispatchQueue.main.async {
                    self.showView(name: self.nameString[0])
                }
                
            } catch let myError {
                print(myError)
            }
            
        }   // end of task
        task.resume()
        
//        nameLabel.text = nameString[0]
        
        
    } // ReadData
    
    func showView(name: String) -> Void {
        nameLabel.text = name
    }
    

} //Main Class
