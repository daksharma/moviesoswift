//
//  ViewController.swift
//  MovieSoSwift
//
//  Created by Daksh Sharma on 3/26/18.
//  Copyright © 2018 Daksh Sharma. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, UITextFieldDelegate {

    private let height: CGFloat = 40
    private let safeBounds: CGFloat = 16
    private var navBarHeight: CGFloat!
    private var tfYaxis: CGFloat!
    private var tvWidth: CGFloat!
    private var screenHeight: CGFloat!
    private var screenWidth: CGFloat!

    var searchTextField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Search movies, actors, directors..."
        tf.borderStyle = UITextBorderStyle.none
        tf.clearsOnBeginEditing = true
        return tf
    }()

    var searchButton: UIButton = {
        let sb = UIButton()
        sb.backgroundColor = UIColor.orange
        sb.layer.cornerRadius = 6
        sb.setTitle("Search", for: .normal)
        return sb
    }()

    let cvLayout: UICollectionViewFlowLayout = {
        let cvl = UICollectionViewFlowLayout()
        cvl.sectionInset = UIEdgeInsets(top: 10, left: 16,
                                        bottom: 25, right: 16)
        cvl.minimumLineSpacing = 8
        cvl.minimumInteritemSpacing = 8
        cvl.itemSize = CGSize(width: 166, height: 250)
        return cvl
    }()

    var resultCV: UICollectionView!


    private let resultCellIdentifier = "resultCellID"
    var searchResults = [SearchResultM]()

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "MovieSoSwift"
        screenWidth = self.view.bounds.width
        screenHeight = self.view.bounds.height
        navBarHeight = (navigationController?.navigationBar.bounds.height)!
        tfYaxis = navBarHeight + 60
        tvWidth = self.view.bounds.width/1.5

        setupSearchTFAndButton()
        setupResultCV()
        dismissKeyBoard()
    }

    func setupSearchTFAndButton() {
        searchTextField.frame =  CGRect(x: safeBounds, y: tfYaxis,
                                        width: tvWidth,
                                        height: height)
        searchTextField.delegate = self
        self.view.addSubview(searchTextField)

        let sbWidth = screenWidth - tvWidth - safeBounds - safeBounds
        searchButton.frame = CGRect(x: tvWidth + safeBounds,
                                    y: tfYaxis,
                                    width: sbWidth,
                                    height: height)
        searchButton.addTarget(self, action: #selector(searchAction), for: .touchUpInside)
        self.view.addSubview(searchButton)
    }

    @objc func searchAction(_ sender: UIButton!) {
        if let userString = searchTextField.text {
            fetchSearchQuery(searchText: userString)
            self.view.endEditing(true)
        } else {
            return
        }
    }

    func setupResultCV() {
        let cvYaxis = navBarHeight + (height * 3)
        let cvHeight = screenHeight - navBarHeight - height
        let cgRect = CGRect(x: 0, y: cvYaxis,
                            width: screenWidth,
                            height: cvHeight)

        resultCV = UICollectionView(frame: cgRect, collectionViewLayout: cvLayout)
        resultCV.layer.cornerRadius = 20.0
        resultCV.backgroundColor = UIColor.white
        resultCV.allowsSelection = true
        resultCV.contentInset = UIEdgeInsets(top: 0, left: 0,
                                             bottom: 10.0, right: 0)
        resultCV.delegate = self
        resultCV.dataSource = self
        resultCV.register(ResultCellView.self, forCellWithReuseIdentifier: resultCellIdentifier)
        self.view.addSubview(resultCV)
    }


    func fetchSearchQuery(searchText: String) {
        if searchResults.count > 0 { searchResults.removeAll() }

        apollo.fetch(query: UserSearchQuery(searchString: searchText)) {
            (result, error) in
            guard let data = result?.data?.search else { return }
            for r in data {
                var imagePath: String?
                imagePath = (r?.imagePath != nil) ?
                    (tmdbImageLink + (r?.imagePath)!) : noImageLink
                let sr = SearchResultM(id: (r?.id)!,
                                       titleName: (r?.titleName)!,
                                       overview: (r?.overview)!,
                                       imagePath: imagePath! ,
                                       mediaType: (r?.mediaType)!)
                self.searchResults.append(sr)
            }
            // Reload Collection View Data after results
            self.resultCV.reloadData()
        }
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: resultCellIdentifier,
                                                         for: indexPath) as? ResultCellView {
            let singleResult = searchResults[indexPath.row]
            cell.updateResultCellUI(searchResult: singleResult)
            return cell
        } else {
            return UICollectionViewCell()
        }
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let cellWidth = (screenWidth/2) - 20
        let cellHeight = (screenHeight/3) - 20
        return CGSize(width: cellWidth, height: cellHeight)
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath.row)
        print(searchResults[indexPath.row].titleName)
        let cell = collectionView.cellForItem(at: indexPath) as? ResultCellView
        if searchResults[indexPath.row].mediaType == "movie" {
            showMovieDetailVC(cell: cell!, row: indexPath.row)
        }
        if searchResults[indexPath.row].mediaType == "tv" {
            print("TV Show")
        }
        if searchResults[indexPath.row].mediaType == "person" {
            print("PERSON")
        }
    }

    func showMovieDetailVC(cell: ResultCellView, row: Int) {
        let mdVC = MovieDetailViewControler()
        mdVC.movieTitleLabel.text = searchResults[row].titleName
        mdVC.movieID = searchResults[row].id
        mdVC.posterImage.image = cell.posterImageView.image
        navigationController?.pushViewController(mdVC, animated: true)
    }

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return searchResults.count
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        fetchSearchQuery(searchText: textField.text!)
        self.searchTextField.resignFirstResponder()
        return true
    }

    func dismissKeyBoard() {
        let tap = UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing(_:)))
        tap.cancelsTouchesInView = false
        self.view.addGestureRecognizer(tap)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

