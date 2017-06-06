//
//  ViewController.swift
//  SocialApp2
//
//  Created by naren puppala on 6/5/17.
//  Copyright © 2017 naren. All rights reserved.
//

import UIKit
import FBSDKCoreKit
import FBSDKLoginKit
import Firebase

class SignInVC: UIViewController {

    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func facebookLoginBtn(_ sender: Any) {
        
         let facebookLogin = FBSDKLoginManager()
        
        facebookLogin.logIn(withReadPermissions: ["email"], from: self){(result,error) in
            
            if  error != nil {
                
               print("Unable to authenticate with Facebook")
                
            } else if result?.isCancelled == true {
                
                print("User cancelled facebook authentication")
                
            } else {
                print("Successfully authentication with Facebook")
            }
            
            
            let credential = FIRFacebookAuthProvider.credential(withAccessToken: FBSDKAccessToken.current().tokenString)
            
            self.fireauth(credential)
        }
    }
    
    func fireauth(_ credential : FIRAuthCredential){
        
        FIRAuth.auth()?.signIn(with:credential, completion: { (user,error) in
            
            if error != nil {
                
                print("san : Unable to authenticate with facebook.")
                
            } else {
                
                print("successfully authenticate with facebook")
            }
        })
        
    }
    
    @IBAction func emailSigninBtn(_ sender: Any) {
        
        if let emailAddress = emailTextfield.text, let password = passwordTextfield.text {
            
            FIRAuth.auth()?.signIn(withEmail: emailAddress, password: password) { (user,error) in
                
                if error == nil {
                    
                    print("User email authenticate with firebase")
                } else {
                    
                    FIRAuth.auth()?.createUser(withEmail: emailAddress, password: password, completion: { (user,error) in
                        
                        if error != nil {
                            
                            print("Unable to authenticate with firebase using email")
                            
                        } else {
                            
                            print("Successfully authenticate with firebase")
                        }
                    
                    
                    
                    })
                
                
                }
                
                
            }
        }
    }
    

    
    
    

    

}

