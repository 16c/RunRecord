//
//  PictureViewCell.swift
//  RunRecord
//
//  Created by 今川博司 on 2018/01/30.
//  Copyright © 2018年 今川博司. All rights reserved.
//

import UIKit

class PictureViewCell: UICollectionViewCell {
    @IBOutlet weak var thum: UIImageView!
    override init(frame: CGRect){super.init(frame: frame)}
    required init(coder aDecoder: NSCoder){super.init(coder: aDecoder)!}
}
