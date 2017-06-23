//
//  FeedVC.swift
//  SocialApp2
//
//  Created by naren puppala on 6/7/17.
//  Copyright © 2017 naren. All rights reserved.
//

import UIKit
import SwiftKeychainWrapper
import Firebase

class FeedVC: UIViewController,UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var posts = [Post]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        Dataservice.ds.REF_POSTS.observe(.value, with:{ (snapshot) in
        
            if let snapshot = snapshot.children.allObjects as? [FIRDataSnapshot] {
                
                
                for snap in snapshot {
                    
                    if let postDict = snap.value as? [String:AnyObject] {
                        let key = snap.key
                        
                        let post = Post(poskey: key, postData: postDict)
                        self.posts.append(post)
                    }
                    
                }
                
                
            }
           self.tableView.reloadData()
        })

            }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }
 
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let post = posts[indexPath.row]
       
        if let cell = tableView.dequeueReusableCell(withIdentifier: "feedCell") as? FeedCell {
            cell.confiureCell(post: post)
            return cell
        } else {
            return FeedCell()
            
        }
        
     
    }
    
    
    @IBAction func SignoutBtn(_ sender: Any) {
        
        let a = KeychainWrapper.standard.removeObject(forKey: KEY_UID)
        print(a)
        try! FIRAuth.auth()?.signOut()
        performSegue(withIdentifier: "gotoSignin", sender: nil)
        
    }

}
