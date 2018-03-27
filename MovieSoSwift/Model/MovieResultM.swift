//
//  MovieResultM.swift
//  MovieSoSwift
//
//  Created by Daksh Sharma on 3/26/18.
//  Copyright © 2018 Daksh Sharma. All rights reserved.
//

class MovieResultM {
    private var _id: Int!
    private var _title: String?
    private var _tagline: String?

    private var _belongsToCollection: BelongsToCollection?
    private var _budget: Int?
    private var _overview: String?
    private var _runtime: Int?
    private var _revenue: Int?
    private var _releaseDate: String?
    private var _credits: CreditsDetailsM?
    private var _posterPath: String?
    private var _backdropPath: String?
    private var _homepage: String?

    var id: Int {
        return _id
    }

    var title: String? {
        return _title
    }

    var tagline: String? {
        return _tagline
    }

    var belongsToCollection: BelongsToCollection? {
        return _belongsToCollection
    }

    var overview: String? {
        return _overview
    }

    var runtime: Int? {
        return _runtime
    }

    var budget: Int? {
        return _budget
    }

    var revenue: Int? {
        return _revenue
    }

    var credits: CreditsDetailsM? {
        return _credits
    }

    var posterPath: String? {
        return _posterPath
    }

    var backdropPath: String? {
        return _backdropPath
    }

    var homepage: String? {
        return _homepage
    }



    init(id: Int, title: String?, tagline: String?, overview: String?,
         belongsToCollection: BelongsToCollection?, budget: Int?, runtime: Int?,
         revenue: Int?, releaseDate: String?, credits: CreditsDetailsM?,
         posterPath: String?, backdropPath: String?, homepage: String? ) {

        _id = id
        _title = title
        _tagline = tagline
        _overview = overview
        _belongsToCollection = belongsToCollection
        _runtime = runtime
        _budget = budget
        _revenue = revenue
        _releaseDate = releaseDate
        _credits = credits
        _posterPath = posterPath
        _backdropPath = backdropPath
        _homepage = homepage
    }
}

class BelongsToCollection {
    private var _id: Int!
    private var _name: String?
    private var _backdropPath: String?
    private var _posterPath: String?

    var id: Int {
        return _id
    }

    var name: String? {
        return _name
    }

    var backdropPath: String? {
        return _backdropPath
    }

    var posterPath: String? {
        return _posterPath
    }

    init(id: Int, name: String?, backdropPath: String?, posterPath: String?) {
        _id = id
        _name = name
        _backdropPath = backdropPath
        _posterPath = posterPath
    }
}
