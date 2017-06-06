//
//  signinBtn.swift
//  SocialApp2
//
//  Created by naren puppala on 6/5/17.
//  Copyright © 2017 naren. All rights reserved.
//

import UIKit

class signinBtn: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.shadowColor = UIColor(red: shadow_gray, green: shadow_gray, blue: shadow_gray, alpha: 0.6).cgColor
        layer.shadowOpacity = 0.8
        layer.shadowRadius = 5.0
        layer.shadowOffset = CGSize(width: 1.0, height: 1.0)
        layer.cornerRadius = 2.0

}
}
