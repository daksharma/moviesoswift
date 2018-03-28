//
//  DetailTVCellView.swift
//  MovieSoSwift
//
//  Created by Daksh Sharma on 3/27/18.
//  Copyright © 2018 Daksh Sharma. All rights reserved.
//

import UIKit

class DetailTVCellView: UITableViewCell {


    var titleNameLabel: UILabel = {
        let label = UILabel()
        label.text = "Title Name"
        label.textColor = UIColor.black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()



    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        titleNameLabel.frame = CGRect(x: 0, y: 0, width: self.frame.width, height: self.frame.height)
        self.addSubview(titleNameLabel)
    }


    required init?(coder aDecoder: NSCoder) {
        fatalError("Init(coder:) has not been implemented")
    }
}
