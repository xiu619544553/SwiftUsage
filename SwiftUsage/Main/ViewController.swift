//
//  ViewController.swift
//  SwiftUsage
//
//  Created by hello on 2020/7/14.
//  Copyright © 2020 TK. All rights reserved.
//

import UIKit

//static cellIdentifier: String = "UITableViewCell"

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    // MARK: - Private property
    lazy var dataArray: Array<Dictionary<String, String>> = {
        var temp: Array<Dictionary<String, String>> = NSMutableArray.init() as! Array<Dictionary<String, String>>
        
        temp.append(["class" : "TKPFPOViewController", "title" : "private、fileprivate、public、open使用"])
        
        return temp
    }()
//    private var dataArray: Array<Dictionary<String, String>> = NSMutableArray.init() as! Array<Dictionary>
    
    lazy private var tableView: UITableView = {
        let temp = UITableView.init(frame: self.view.bounds, style: .plain)
        temp.delegate = self
        temp.dataSource = self
        temp.tableFooterView = UIView.init()
        return temp
    }()
    
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.view.backgroundColor = UIColor.yellow
        
        self.view.addSubview(self.tableView)
        self.tableView.reloadData()
        
//        let pfpoVC: TKPFPOViewController = TKPFPOViewController.init()
//        pfpoVC.defaultProperty = "缺省"
//        pfpoVC.publicProperty = "public usage"
//        pfpoVC.openProperty = "open usage"
//        // fileprivate、private 修饰的属性和方法无法调用
//
//        self.navigationController?.pushViewController(pfpoVC, animated: true)
    }


    // MARK: - UITableViewDelegate
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let dic: Dictionary = self.dataArray[indexPath.row]
        
        let nameSpace: String? = (Bundle.main.infoDictionary!["CFBundleExecutable"] as! String)
        let className: String? = dic["class"]!
        
        let classType: AnyClass? = NSClassFromString(nameSpace! + "." + className!)
        
        let viewController = classType as! UIViewController.Type
        let vc = viewController.init()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    // MARK: - UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.dataArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell: UITableViewCell? = tableView.dequeueReusableCell(withIdentifier: "UITableViewCell")
        if cell == nil {
            cell = UITableViewCell.init(style: .subtitle, reuseIdentifier: "UITableViewCell")
        }
        

        let dic: Dictionary = self.dataArray[indexPath.row]
    
        cell?.textLabel?.text = dic["class"];
        cell?.detailTextLabel?.text = dic["title"]
        
        return cell!
    }
}

