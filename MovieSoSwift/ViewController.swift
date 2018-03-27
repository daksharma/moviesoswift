//
//  ViewController.swift
//  MovieSoSwift
//
//  Created by Daksh Sharma on 3/26/18.
//  Copyright © 2018 Daksh Sharma. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    private let resultCellIdentifier = "resultCellID"
    var searchResults = [SearchResultM]()


    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "MovieSoSwift"
        fetchSearchQuery(searchText: "007")
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        //layout.sectionInset = UIEdgeInsets(top: 16, left: 16, bottom: 16, right: 16)
        layout.itemSize = CGSize(width: self.view.bounds.width, height: self.view.bounds.height)

        let resultCollectionView = UICollectionView(frame: self.view.frame, collectionViewLayout: layout)
        resultCollectionView.dataSource = self
        resultCollectionView.delegate = self
        resultCollectionView.backgroundColor = UIColor.white
        resultCollectionView.register(ResultCellView.self, forCellWithReuseIdentifier: resultCellIdentifier)
        self.view.addSubview(resultCollectionView)

    }

    func fetchSearchQuery(searchText: String) {
        searchResults.removeAll()
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
        }
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: resultCellIdentifier,
                                                         for: indexPath) as? ResultCellView {
//            let singleResult = searchResults[indexPath.row]
//            cell.updateResultCellUI(searchResult: singleResult)
            return cell
        } else {
            return UICollectionViewCell()
        }
    }

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

