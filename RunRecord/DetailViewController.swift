//
//  DetailViewController.swift
//  RunRecord
//
//  Created by 今川博司 on 2018/01/29.
//  Copyright © 2018年 今川博司. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    var passedIndex = -1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let filePath = Bundle.main.path(forResource: "pref", ofType: "plist")
        let dic = NSDictionary(contentsOfFile: filePath!)
        
        for(key,data) in dic!{
            print(key)
        }
        
    }
    override func didReceiveMemoryWarning() {super.didReceiveMemoryWarning()}
    
}
