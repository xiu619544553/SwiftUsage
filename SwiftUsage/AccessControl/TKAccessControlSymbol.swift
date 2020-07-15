//
//  TKAccessControlSymbol.swift
//  SwiftUsage
//
//  Created by hello on 2020/7/15.
//  Copyright © 2020 TK. All rights reserved.
//

import UIKit

// 访问控制修饰符
class TKAccessControlSymbol: UIViewController {

    // MARK: Property
    
    // 未指定访问级别默认为 internal
    var defaultProperty: String?
    open var openProperty: String?
    public var publicProperty: String?
    private var privateProperty: String?
    fileprivate var fileprivateProperty: String?
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "private、fileprivate、public、open"
        self.view.backgroundColor = UIColor.white
    }
}

class TKFirstSon: TKAccessControlSymbol {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 默认属性
        self.defaultProperty = "default"
        
        // fileprivate
        self.fileprivateProperty = "fileprivate usage"
        
        // public
        self.publicProperty = "public usage"
        
        // open
        self.openProperty = "open usage"

        // private 属性无法引用
    }
}


