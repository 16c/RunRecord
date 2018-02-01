//
//  ViewController.swift
//  RunRecord
//
//  Created by 今川博司 on 2018/01/26.
//  Copyright © 2018年 今川博司. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    @IBOutlet weak var imgNotes: UIImageView!
    @IBOutlet weak var imgTitle: UIImageView!
    @IBOutlet weak var btnEvent: UIButton!
    @IBOutlet weak var btnYear: UIButton!
    @IBOutlet weak var btnSatisfy: UIButton!
    @IBOutlet weak var jmap: UIImageView!
    @IBOutlet weak var raceTable: UITableView!
    var raceList = ["松本","高岡"]
    var selectedRowIndex = -1
    var mapSelected = 2
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func didReceiveMemoryWarning() {super.didReceiveMemoryWarning()}
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return raceList.count
    }
    @IBAction func swipeRight(_ sender: UISwipeGestureRecognizer) {
        print(mapSelected)
        if mapSelected == 1 {mapSelected = 3}
        if mapSelected == 2 {mapSelected = 1}
        if mapSelected == 3 {mapSelected = 2}
        print(mapSelected)
        mapselect(type: mapSelected)
    }
    
    @IBAction func swipeLeft(_ sender: UISwipeGestureRecognizer) {
        print(mapSelected)
        if mapSelected == 1 {mapSelected = 2}
        if mapSelected == 2 {mapSelected = 3}
        if mapSelected == 3 {mapSelected = 1}
        print(mapSelected)
        mapselect(type: mapSelected)
    }
    
    @IBAction func tapEvent(_ sender: UIButton) {mapselect(type: 1)}
    @IBAction func tapYear(_ sender: UIButton) {mapselect(type: 2)}
    @IBAction func tapSatisfy(_ sender: UIButton) {mapselect(type: 3)}
    
    func mapselect(type:Int) {
        switch type {
        case 1:
            jmap.image = UIImage(named:"raceevent.png")
            imgNotes.image = UIImage(named:"noteevent.png")
            btnEvent.setTitleColor(UIColor.red, for: .normal)
            btnYear.setTitleColor(UIColor.blue, for: .normal)
            btnSatisfy.setTitleColor(UIColor.blue, for: .normal)
        case 2:
            jmap.image = UIImage(named:"raceyear.png")
            imgNotes.image = UIImage(named:"noteyear.png")
            btnEvent.setTitleColor(UIColor.blue, for: .normal)
            btnYear.setTitleColor(UIColor.red, for: .normal)
            btnSatisfy.setTitleColor(UIColor.blue, for: .normal)
        case 3:
            jmap.image = UIImage(named:"racesatisfy.png")
            imgNotes.image = UIImage(named:"notesatisfy.png")
            btnEvent.setTitleColor(UIColor.blue, for: .normal)
            btnYear.setTitleColor(UIColor.blue, for: .normal)
            btnSatisfy.setTitleColor(UIColor.red, for: .normal)
        default : break
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RaceCell", for: indexPath)
        cell.textLabel?.text = raceList[indexPath.row]
        cell.accessoryType = .disclosureIndicator
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedRowIndex = indexPath.row
        performSegue(withIdentifier: "RaceDetail", sender: nil)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var dvc:DetailViewController = segue.destination as! DetailViewController
        dvc.passedIndex = selectedRowIndex
    }
    
}

