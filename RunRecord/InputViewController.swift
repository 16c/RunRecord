//
//  InputViewController.swift
//  RunRecord
//
//  Created by 今川博司 on 2018/01/30.
//  Copyright © 2018年 今川博司. All rights reserved.
//

import UIKit

class InputViewController: UIViewController {
    @IBOutlet weak var raceText: UITextField!
    @IBOutlet weak var prefPicker: UITextField!
    @IBOutlet weak var datePicker: UITextField!
    @IBOutlet weak var eventPicker: UITextField!
    @IBOutlet weak var limitPicker: UITextField!
    @IBOutlet weak var timePicker: UITextField!
    @IBOutlet weak var rankTotalText: UITextField!
    @IBOutlet weak var personTotalText: UITextField!
    @IBOutlet weak var ageClassText: UITextField!
    @IBOutlet weak var rankClassText: UITextField!
    @IBOutlet weak var personClassText: UITextField!
    @IBOutlet weak var paceImage: UITextField!
    @IBOutlet weak var altitudeImage: UITextField!
    @IBOutlet weak var courseImage: UITextField!
    @IBOutlet weak var satisfiedSlider: UISlider!
    
    override func viewDidLoad() {super.viewDidLoad()}
    override func didReceiveMemoryWarning() {super.didReceiveMemoryWarning()}
    
}
