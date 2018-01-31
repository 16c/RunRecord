//
//  PicSingleViewController.swift
//  RunRecord
//
//  Created by 今川博司 on 2018/01/31.
//  Copyright © 2018年 今川博司. All rights reserved.
//

import UIKit

class PicSingleViewController: UIViewController {
    var passedIndex = -1
    
    @IBOutlet weak var singleImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        singleImage.image = UIImage(named: "m2a.jpg")

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
