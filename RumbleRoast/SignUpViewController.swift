//
//  SignUpViewController.swift
//  RumbleRoast
//
//  Created by Anthony Narvaez on 3/21/22.
//

import UIKit
import Parse

class SignUpViewController: UIViewController {

    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var errorLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
      @IBAction func onSignUp(_ sender: Any) {
                let user = PFUser()
                user.username = usernameField.text
                user.password = passwordField.text
                user.email = emailField.text
                // other fields can be set just like with PFObject
                
                user.signUpInBackground { success, error in
                    if success {
                        self.performSegue(withIdentifier: "loginfromsignup", sender: nil)
                    } else  {
                        print("Error: \(error?.localizedDescription)")
                        self.errorLabel.text = ("Error: \(error?.localizedDescription)")
                    }
                }
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
