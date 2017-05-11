//
//  RegisterViewController.swift
//  XIB Login App
//
//  Created by Dhiya Ulhaq Zulha Alamsyah on 5/12/17.
//  Copyright © 2017 Dhiya Ulhaq Zulha Alamsyah. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {

    @IBOutlet var tfUsername: UITextField!
    @IBOutlet var switchGender: UISwitch!
    @IBOutlet var labelInfo: UILabel!

    @IBAction func btnRegister(_ sender: Any) {
        setInformation()
    }
    override func viewDidLoad() {
               super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }
    
    func setInformation() {
        let username = tfUsername.text!
        let gender = getGender()

        labelInfo.text = "Name : \(username)\nGender: \(gender)"
    }
    
    func getGender() -> String {
        if switchGender.isOn {
            return "Pria"
        }
        return "Wanita"
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
