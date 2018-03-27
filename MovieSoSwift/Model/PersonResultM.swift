//
//  PersonResultM.swift
//  MovieSoSwift
//
//  Created by Daksh Sharma on 3/26/18.
//  Copyright © 2018 Daksh Sharma. All rights reserved.
//

class PersonResultM {
    private var _id: Int!
    private var _name: String!
    private var _gender: Int!
    private var _biography: String!
    private var _birthday: String?
    private var _deathday: String?
    private var _homepage: String?
    private var _profilePath: String?
    private var _placeOfBirth: String?


    var id: Int {
        return _id
    }

    var name: String {
        return _name
    }


    var gender: Int {
        return _gender
    }

    var biography: String {
        return _biography
    }

    var birthday: String? {
        return _birthday
    }

    var deathday: String? {
        return _deathday
    }

    var homepage: String? {
        return _homepage
    }

    var profilePath: String? {
        return _profilePath
    }

    var placeOfBirth: String? {
        return _placeOfBirth
    }

    init(id: Int, name: String, biography: String, profilePath: String) {
        _id = id
        _name = name
        _biography = biography
        _profilePath = profilePath
    }
}
