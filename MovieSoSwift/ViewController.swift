//
//  ViewController.swift
//  MovieSoSwift
//
//  Created by Daksh Sharma on 3/26/18.
//  Copyright © 2018 Daksh Sharma. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UITextFieldDelegate {

    var searchTextField: UITextField!
    var searchButton: UIButton!
    var resultCV: UICollectionView!
    var cvLayout: UICollectionViewFlowLayout!

    private let resultCellIdentifier = "resultCellID"
    var searchResults = [SearchResultM]()

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "MovieSoSwift"

        setupSearchTFAndButton()
        setupResultCV()
        dismissKeyBoard()
    }

    func setupSearchTFAndButton() {
        searchTextField = UITextField(frame: CGRect(x: 16, y: 70, width: 260, height: 50))
        searchTextField.placeholder = "Search movies, actors, directors..."
        searchTextField.delegate = self
        searchTextField.borderStyle = UITextBorderStyle.none
        searchTextField.clearsOnBeginEditing = true
        self.view.addSubview(searchTextField)

        searchButton = UIButton(frame: CGRect(x: 295, y: 70, width: 90, height: 50))
        searchButton.backgroundColor = UIColor.orange
        searchButton.layer.cornerRadius = 6
        searchButton.setTitle("Search", for: .normal)
        searchButton.addTarget(self, action: #selector(searchAction), for: .touchUpInside)
        self.view.addSubview(searchButton)
    }

    func setupResultCV() {
        cvLayout = UICollectionViewFlowLayout()
        cvLayout.sectionInset = UIEdgeInsets(top: 16, left: 16, bottom: 16, right: 16)
        cvLayout.minimumInteritemSpacing = 8
        cvLayout.minimumLineSpacing = 8
        cvLayout.itemSize = CGSize(width: 166, height: 250)

        let cvRect = CGRect(x: 0, y: 130,
                            width: self.view.bounds.width,
                            height: self.view.bounds.height - 120)

        resultCV = UICollectionView(frame: cvRect, collectionViewLayout: cvLayout)
        resultCV.contentInset = UIEdgeInsets(top: 10.0, left: 5.0, bottom: 15.0, right: 5.0)
        resultCV.delegate = self
        resultCV.dataSource = self
        resultCV.backgroundColor = UIColor.white
        resultCV.allowsSelection = true
        resultCV.register(ResultCellView.self, forCellWithReuseIdentifier: resultCellIdentifier)
        self.view.addSubview(resultCV)
    }

    @objc func searchAction(_ sender: UIButton!) {
        if let userString = searchTextField?.text {
            fetchSearchQuery(searchText: userString)
            self.view.endEditing(true)
        } else {
            return
        }
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

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath.row)
        print(searchResults[indexPath.row].titleName)
        let cell = collectionView.cellForItem(at: indexPath) as? ResultCellView
        let mdVC = MovieDetailViewControler()
        mdVC.movieTitleLabel.text = searchResults[indexPath.row].titleName
        mdVC.movieID = searchResults[indexPath.row].id
        mdVC.posterImage.image = cell?.posterImageView.image
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

