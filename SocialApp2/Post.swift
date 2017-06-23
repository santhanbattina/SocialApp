//
//  post.swift
//  SocialApp2
//
//  Created by naren puppala on 6/22/17.
//  Copyright © 2017 naren. All rights reserved.
//

import Foundation

class Post {
    
    private var _caption : String!
    private var _imgUrl : String!
    private var _likes : Int!
    private var _postkey : String!
    
    
    
    var caption : String {
        
        return _caption
    }
    
    var imgurl : String{
        
        return _imgUrl
    }
    
    var likes : Int{
        return _likes
    }
    
    var postkey : String{
        
        return _postkey
    }
    
    init(caption: String , imgurl : String , likes : Int) {
        self._caption = caption
        self._imgUrl = imgurl
        self._likes = likes
    }
    
    init(poskey : String , postData : [String : AnyObject]) {
        self._postkey = poskey
        
        if let caption = postData["caption"] as? String {
            self._caption = caption
        }
        if let imgurl = postData["imageUrl"] as? String{
            
            self._imgUrl = imgurl
        }
        
        if let likes = postData["likes"] as? Int{
            self._likes = likes
        }
    }
    
}
