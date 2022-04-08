//
//  ForgotPasswordViewController.swift
//  RumbleRoast
//
//  Created by Anthony Narvaez on 3/22/22.
//

import UIKit
import Parse

class ForgotPasswordViewController: UIViewController {

    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var errorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func sendEmailButton(_ sender: Any) {
     
        print("done")

        PFUser.requestPasswordResetForEmail(inBackground: emailField.text!)
        errorLabel.text = ("If the account exists. Check the Email associated to change your password")
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
