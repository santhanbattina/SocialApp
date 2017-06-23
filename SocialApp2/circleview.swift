//
//  circleview.swift
//  SocialApp2
//
//  Created by naren puppala on 6/7/17.
//  Copyright © 2017 naren. All rights reserved.
//

import UIKit

class circleview: UIImageView {
 
    
    override func layoutSubviews() {
        layer.cornerRadius = self.frame.width/2
        clipsToBounds = true
    }
    
    }
