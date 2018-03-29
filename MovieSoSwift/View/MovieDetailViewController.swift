//
//  MovieDetailViewController.swift
//  MovieSoSwift
//
//  Created by Daksh Sharma on 3/26/18.
//  Copyright © 2018 Daksh Sharma. All rights reserved.
//

import UIKit

class MovieDetailViewControler: UIViewController, UITableViewDelegate, UITableViewDataSource {

    private let height: CGFloat = 40
    private let safeBounds: CGFloat = 16
    private var navBarHeight: CGFloat!
    private var screenHeight: CGFloat!
    private var screenWidth: CGFloat!

    let mdReuseID = "movieDetailIdentifier"


    let detailText = ["tagline" : "Tagline",
                      "overview" : "Overview",
                      "homepage" : "Homepage",
                      "runtime" : "Runtime",
                      "budget" : "Budget",
                      "revenue" : "Revenue",
                      "releaseDate" : "Release Date",
                      "credits" : "Credits"]


    var backDropImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "no_poster_image")
        imageView.clipsToBounds = true
        imageView.backgroundColor = UIColor.blue
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()

    var posterImage: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = UIColor.brown
        imageView.layer.masksToBounds = true
        imageView.layer.cornerRadius = 6.0
        imageView.layer.shadowColor = UIColor.lightGray.cgColor
        imageView.layer.shadowOpacity = 3.0
        imageView.layer.backgroundColor = UIColor.brown.cgColor
        return imageView
    }()

    var movieTitleLabel: UILabel = {
        let title = UILabel()
        title.text = "Movie Title"
        title.adjustsFontSizeToFitWidth = true
        title.numberOfLines = 2
        title.textColor = UIColor.black
        title.backgroundColor = UIColor.clear
        return title
    }()

    var movieDetailTV: UITableView = {
        let tv = UITableView()
        tv.backgroundColor = UIColor.darkGray
        tv.rowHeight = UITableViewAutomaticDimension
        tv.estimatedRowHeight = 150
        tv.allowsSelection = false
        return tv
    }()

    var movieDetails: MovieResultM?

    var movieID: Int?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        navBarHeight = self.navigationController?.navigationBar.frame.height
        screenHeight = self.view.bounds.height
        screenWidth = self.view.bounds.width
        setupPosterAndBackdrop()
        setupMovieDetailTitlesView()
        setupDetailTableView()

        if movieID != nil {
            fetchMovieDetails(movieId: movieID!)
        }

    }

    func fetchMovieDetails(movieId: Int) {
        apollo.fetch(query: MovieQuery(id: movieId)) {
            (result, error) in
            guard let data = result?.data?.movie else { return }
            let md = MovieResultM(id: data.id!, title: data.title,
                                  tagline: data.tagline, overview: data.overview,
                                  belongsToCollection: nil, budget: data.budget,
                                  runtime: data.runtime, revenue: data.revenue,
                                  releaseDate: data.releaseDate, credits: nil,
                                  posterPath: data.posterPath,
                                  backdropPath: data.backdropPath,
                                  homepage: data.homepage)
            self.movieDetails = md
            let backdropImageURL = (md.backdropPath != nil) ? (tmdbImageLink + (md.backdropPath)!) : noImageLink
            self.movieDetailTV.reloadData()
            self.backDropImage.af_setImage(withURL: URL(string: backdropImageURL)!)
        }
    }

    func setupPosterAndBackdrop() {
        backDropImage.frame = CGRect(x: 0, y: navBarHeight + 50,
                                     width: screenWidth,
                                     height: screenHeight/4)
        self.view.addSubview(backDropImage)

        posterImage.frame = CGRect(x: 20, y: 170,
                                   width: (screenWidth/2) - 20,
                                   height: (screenHeight/3) - 20)
        self.view.addSubview(posterImage)
    }

    func setupDetailTableView() {
        movieDetailTV.frame = CGRect(x: 0, y: (screenHeight/2) + 50,
                                     width: screenWidth,
                                     height: (screenHeight/2) - 50)
        movieDetailTV.layer.cornerRadius = 10.0
        movieDetailTV.delegate = self
        movieDetailTV.dataSource = self
        movieDetailTV.register(DetailTVCellView.self, forCellReuseIdentifier: mdReuseID)
        self.view.addSubview(movieDetailTV)
    }

    func setupMovieDetailTitlesView() {
        let tlXaxis = self.posterImage.frame.width + 30
        let tlYaxis = navBarHeight + self.backDropImage.frame.height + 50
        movieTitleLabel.frame = CGRect(x: tlXaxis,
                                       y: tlYaxis,
                                       width: screenWidth/2,
                                       height: 60)
        self.view.addSubview(movieTitleLabel)

    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return detailText.count - 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }


    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: mdReuseID) as? DetailTVCellView {
            switch indexPath.section {
            case 0:
                cell.titleNameLabel.text = movieDetails?.tagline
            case 1:
                cell.titleNameLabel.text = movieDetails?.overview
            case 2:
                cell.titleNameLabel.text = movieDetails?.homepage
            case 3:
                cell.titleNameLabel.text = movieDetails?.runtime?.description
            case 4:
                cell.titleNameLabel.text = movieDetails?.budget?.description
            case 5:
                cell.titleNameLabel.text = movieDetails?.revenue?.description
            case 6:
                cell.titleNameLabel.text = "NO NO NO"
            default: break
            }

            return cell
        } else {
            return UITableViewCell()
        }
    }

    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return detailText["tagline"]
        case 1:
            return detailText["overview"]
        case 2:
            return detailText["homepage"]
        case 3:
            return detailText["runtime"]
        case 4:
            return detailText["budget"]
        case 5:
            return detailText["revenue"]
        case 6:
            return detailText["credits"]
        default:
            return ""
        }
    }

}
