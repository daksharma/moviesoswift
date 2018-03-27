//
//  ViewController.swift
//  MovieSoSwift
//
//  Created by Daksh Sharma on 3/26/18.
//  Copyright © 2018 Daksh Sharma. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, UITextFieldDelegate {

    var searchTextField: UITextField!
    var searchButton: UIButton!
    var resultCV: UICollectionView!
    var cvLayout: UICollectionViewFlowLayout!

    private let resultCellIdentifier = "resultCellID"
    var searchResults = [SearchResultM]()


    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "MovieSoSwift"
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

        cvLayout = UICollectionViewFlowLayout()
        cvLayout.sectionInset = UIEdgeInsets(top: 16, left: 16, bottom: 16, right: 16)
        cvLayout.itemSize = CGSize(width: 166, height: 250)

        resultCV = UICollectionView(frame: CGRect(x: 0, y: 130,
                                                  width: self.view.bounds.width,
                                                  height: self.view.bounds.height - 120),
                                    collectionViewLayout: cvLayout)
        resultCV.delegate = self
        resultCV.dataSource = self
        resultCV.backgroundColor = UIColor.white
        resultCV.register(ResultCellView.self, forCellWithReuseIdentifier: resultCellIdentifier)
        self.view.addSubview(resultCV)

    }

    @objc func searchAction(_ sender: UIButton!) {
        if let userString = searchTextField?.text {
            fetchSearchQuery(searchText: userString)
        } else {
            return
        }
    }


    func fetchSearchQuery(searchText: String) {
        if searchResults.count > 0 {
            searchResults.removeAll()
        }
        apollo.fetch(query: UserSearchQuery(searchString: searchText)) {
            (result, error) in
            guard let data = result?.data?.search else { return }
            for r in data {
                print(r?.titleName ?? "No No No")
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
        print(searchResults[indexPath.row].titleName)
    }

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return searchResults.count
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

