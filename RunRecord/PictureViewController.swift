//
//  PictureViewController.swift
//  RunRecord
//
//  Created by 今川博司 on 2018/01/30.
//  Copyright © 2018年 今川博司. All rights reserved.
//

import UIKit

class PictureViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate {
    var selectedCellIndex = -1

    override func viewDidLoad() {super.viewDidLoad()}
    override func didReceiveMemoryWarning() {super.didReceiveMemoryWarning()}

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell:PictureViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! PictureViewCell
        cell.thum.image = UIImage(named: "m2a.jpg")
        cell.backgroundColor = UIColor.black
        return cell
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20;
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        selectedCellIndex = indexPath.row
        performSegue(withIdentifier: "PicShow", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var dvc:PicSingleViewController = segue.destination as! PicSingleViewController
        dvc.passedIndex = selectedCellIndex
    }
}
