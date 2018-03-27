//
//  SearchResultM.swift
//  MovieSoSwift
//
//  Created by Daksh Sharma on 3/26/18.
//  Copyright © 2018 Daksh Sharma. All rights reserved.
//

class SearchResultM {
    private var _id: Int!
    private var _titleName: String!
    private var _overview: String!
    private var _imagePath: String?
    private var _mediaType: String!

    var id: Int {
        return _id
    }

    var titleName: String {
        return _titleName
    }

    var overview: String {
        return _overview
    }

    var imagePath: String {
        return _imagePath!
    }

    var mediaType: String {
        return _mediaType
    }

    init(id: Int, titleName: String, overview: String,
         imagePath: String, mediaType: String) {

        _id = id
        _titleName = titleName
        _overview = overview
        _imagePath = imagePath
        _mediaType = mediaType
    }
}

