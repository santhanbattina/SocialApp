//
//  roundimgView.swift
//  SocialApp2
//
//  Created by naren puppala on 6/5/17.
//  Copyright © 2017 naren. All rights reserved.
//

import UIKit

class roundimgView: UIImageView {
   
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.shadowColor = UIColor(red: shadow_gray, green: shadow_gray, blue: shadow_gray, alpha: 0.6).cgColor
        layer.shadowOpacity = 0.8
        layer.shadowRadius = 5.0
        layer.shadowOffset = CGSize(width: 1.0, height: 1.0)
        
        
    }
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        layer.cornerRadius = self.frame.width / 2
    }
    
    

    
    
    
    
    
    

}
