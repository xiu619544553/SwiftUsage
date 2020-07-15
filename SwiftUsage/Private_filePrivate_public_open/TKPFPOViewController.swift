//
//  TKPFPOViewController.swift
//  SwiftUsage
//
//  Created by hello on 2020/7/15.
//  Copyright © 2020 TK. All rights reserved.
//

import UIKit

class TKPFPOViewController: UIViewController {

    // MARK: Property
    
    // 缺省控制权限是 public
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

class TKFirstSon: TKPFPOViewController {
    
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


