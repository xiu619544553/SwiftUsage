//
//  TKPFPOViewController+Add.swift
//  SwiftUsage
//
//  Created by hello on 2020/7/15.
//  Copyright © 2020 TK. All rights reserved.
//

import Foundation

extension TKAccessControlSymbol {
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        // public
        self.publicProperty = "public usage"
        
        // open
        self.openProperty = "open usage"
        
        // fileprivate、private 属性无法引用
    }
    
}
