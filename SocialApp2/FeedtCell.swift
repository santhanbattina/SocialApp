//
//  FeedCell.swift
//  SocialApp2
//
//  Created by naren puppala on 6/7/17.
//  Copyright © 2017 naren. All rights reserved.
//

import UIKit

class FeedCell: UITableViewCell {

    @IBOutlet weak var profilePic: circleview!
    @IBOutlet weak var usernameLbl: UILabel!
    @IBOutlet weak var postImg: UIImageView!
    @IBOutlet weak var caption: UITextView!
    @IBOutlet weak var likes: UILabel!
    
    var post : Post!
    
    
    func confiureCell(post : Post) {
        
        self.post = post
        self.caption.text = post.caption
        self.likes.text = "\(post.likes)"
       
    }
    
    
    
}
