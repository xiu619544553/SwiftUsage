//
//  TKSecondSonVC.swift
//  SwiftUsage
//
//  Created by hello on 2020/7/15.
//  Copyright © 2020 TK. All rights reserved.
//

import UIKit

class TKSecondSonVC: TKAccessControlSymbol {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.defaultProperty = "缺省"
        
        // public
        self.publicProperty = "public usage"
        
        // open
        self.openProperty = "open usage"
        
        // fileprivate、private 属性无法引用
        
    }
}
