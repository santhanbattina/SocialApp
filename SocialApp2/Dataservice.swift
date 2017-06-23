//
//  Data services.swift
//  SocialApp2
//
//  Created by naren puppala on 6/21/17.
//  Copyright © 2017 naren. All rights reserved.
//

import Foundation
import Firebase

let DB_BASE = FIRDatabase.database().reference()
let STROAGE_BASE = FIRStorage.storage().reference()

class Dataservice {
    
   static let ds = Dataservice()
    
//     Data base references
    private var _REF_BASE = DB_BASE
    private var _REF_USERS = DB_BASE.child("users")
    private var _REF_POSTS = DB_BASE.child("posts")
    
    
//     Stroage references
    
    private var _REF_POST_IMAGES = STROAGE_BASE.child("post-pics")
    
    var REF_BASE  : FIRDatabaseReference {
        
        return _REF_BASE
    }
    
    
    var  REF_POSTS  : FIRDatabaseReference {
        
        return _REF_POSTS
    }
    
    var REF_USERS  : FIRDatabaseReference{
        
        return _REF_USERS
    }
    
    var REF_POST_IMAGES : FIRStorageReference {
        return _REF_POST_IMAGES
    }
    
    func createFirebaseDBUser(uid: String, userData : Dictionary<String,String>)  {
        
        
          REF_USERS.child(uid).updateChildValues(userData)
        
    }
    
    
    
    
    
    
    
    
    
    
    
}
