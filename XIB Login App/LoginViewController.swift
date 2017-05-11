
//
//  LoginViewController.swift
//  XIB Login App
//
//  Created by Dhiya Ulhaq Zulha Alamsyah on 5/12/17.
//  Copyright © 2017 Dhiya Ulhaq Zulha Alamsyah. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet var tfUsername: UITextField!
    @IBOutlet var tfPassword: UITextField!
    
    @IBAction func btnSignIn(_ sender: Any) {
        let username = tfUsername.text
        let password = tfPassword.text
        
        if username == "ulhaq" && password == "pass" {
            let homeVc = HomeViewController(
                nibName: "HomeViewController",
                bundle: nil)
            
            homeVc.modalTransitionStyle = UIModalTransitionStyle.partialCurl
            present(homeVc, animated: true, completion: nil)
        }
    }
    
    @IBAction func btnSignUp(_ sender: Any) {
        let registerVc = RegisterViewController(nibName: "RegisterViewController", bundle: nil)
        present(registerVc, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
