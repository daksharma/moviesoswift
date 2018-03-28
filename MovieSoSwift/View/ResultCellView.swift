//
//  ResultCellView.swift
//  MovieSoSwift
//
//  Created by Daksh Sharma on 3/26/18.
//  Copyright © 2018 Daksh Sharma. All rights reserved.
//

import UIKit
import AlamofireImage

class ResultCellView: UICollectionViewCell {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupCellLayers()
        setupContentForCell()
    }

    func setupCellLayers() {
        self.layer.masksToBounds = true
        self.layer.cornerRadius = 6.0
        self.layer.shadowColor = UIColor.lightGray.cgColor
        self.layer.shadowRadius = 2.0
        self.layer.shadowOpacity = 1.0
    }

    let posterImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = UIColor.blue
        return imageView
    }()


    let titleNameLabel: UILabel = {
        let label = UILabel()
        label.text = "Title Name"
        label.textColor = UIColor.black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    let titleBGView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.white
        view.alpha = 0.8
        return view
    }()

    func setupContentForCell() {
        posterImageView.frame = CGRect(x: 0, y: 0, width: 166, height: 240)
        addSubview(posterImageView)

        titleBGView.frame = CGRect(x: 0, y: self.frame.height - 55, width: self.frame.width, height: 50)
        addSubview(titleBGView)

        titleNameLabel.frame = CGRect(x: 0, y: 0, width: titleBGView.frame.width, height: titleBGView.frame.height)
        self.titleBGView.addSubview(titleNameLabel)

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
        titleNameLabel.text = searchResult.titleName
        posterImageView.af_setImage(withURL: URL(string: searchResult.imagePath)!)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("Init(coder:) has not been implemented")
    }

}
