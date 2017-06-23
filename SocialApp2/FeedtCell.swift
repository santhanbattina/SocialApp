//
//  FeedCell.swift
//  SocialApp2
//
//  Created by naren puppala on 6/7/17.
//  Copyright © 2017 naren. All rights reserved.
//

import UIKit
import Firebase

class FeedCell: UITableViewCell {

    @IBOutlet weak var profilePic: circleview!
    @IBOutlet weak var usernameLbl: UILabel!
    @IBOutlet weak var postImg: UIImageView!
    @IBOutlet weak var caption: UITextView!
    @IBOutlet weak var likes: UILabel!
    
    var post : Post!
    
    
    func confiureCell(post : Post , img : UIImage? = nil) {
        
        self.post = post
        self.caption.text = post.caption
        self.likes.text = "\(post.likes)"
        
        print("Url is :\(post.imgurl)")
        
        if img != nil {
            self.postImg.image = img
        } else {
            
            
            let ref = FIRStorage.storage().reference(forURL: post.imgurl)
           
            ref.data(withMaxSize: 2 * 1024 * 1024, completion: { (data, error) in
               
           
                if error != nil {
                    print("Image unable to download")
                } else{
                    print("Image downloaded")
                    if let imgData = data {
                        if let img = UIImage(data: imgData) {
                            self.postImg.image = img
                            FeedVC.ImgCache.setObject(img, forKey: post.imgurl as NSString)
                            
                        }
                    }
                }

            })
        }
       
    }
    
    
    
}
