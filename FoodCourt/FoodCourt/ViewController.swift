//
//  ViewController.swift
//  FoodCourt
//
//  Created by Vinayak Balaji Tuptewar on 30/11/20.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet var txtUserName: UITextField!

    @IBOutlet var txtPassword: UITextField!
    
    
    override func viewDidLoad() {
       super.viewDidLoad()
        print("view controller called")
        txtUserName.delegate = self
        txtPassword.delegate = self
    }
    
    

    @IBAction func BtnLogin(_ sender: Any) {
        print("button called")
        let menuvc = self.storyboard?.instantiateViewController(withIdentifier: "menuvc") as! MenuViewController
        menuvc.title = "Menu Card"
        self.navigationController?.pushViewController(menuvc, animated: true)
    }


    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        txtUserName.resignFirstResponder()
        txtPassword.resignFirstResponder()
        return true
    }
    
    
}

