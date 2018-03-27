//
//  ResultCellView.swift
//  MovieSoSwift
//
//  Created by Daksh Sharma on 3/26/18.
//  Copyright © 2018 Daksh Sharma. All rights reserved.
//

import UIKit

class ResultCellView: UICollectionViewCell {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }

    let posterImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = UIColor.blue
        return imageView
    }()


    let titleNameLabel: UILabel = {
        let label = UILabel()
        label.text = "Title Name"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    func setupView() {
        addSubview(posterImageView)
        posterImageView.frame = CGRect(x: 0, y: 0, width: 166, height: 240)
        addSubview(titleNameLabel)
        titleNameLabel.frame = CGRect(x: 0, y: 0, width: 166, height: 60)
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-8-[v0]|",
                                                      options: NSLayoutFormatOptions(),
                                                      metrics: nil,
                                                      views: ["v0": titleNameLabel]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[v0]|",
                                                      options: NSLayoutFormatOptions(),
                                                      metrics: nil,
                                                      views: ["v0": titleNameLabel]))
    }

    func updateResultCellUI(searchResult: SearchResultM) {
        
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("Init(coder:) has not been implemented")
    }

}
