//
//  CreditsDetailsM.swift
//  MovieSoSwift
//
//  Created by Daksh Sharma on 3/26/18.
//  Copyright © 2018 Daksh Sharma. All rights reserved.
//

class CreditsDetailsM {
    private var _id: Int!
    private var _cast: [Cast?]
    private var _crew: [Crew?]

    var id: Int {
        return _id
    }

    var cast: [Cast?] {
        return _cast
    }

    var crew: [Crew?] {
        return _crew
    }

    init(id: Int!, cast: [Cast?], crew: [Crew?]) {
        _id = id
        _cast = cast
        _crew = crew
    }
}

class Cast {
    private var _id: Int!
    private var _title: String?
    private var _name: String?
    private var _character: String?
    private var _profilePath: String?
    private var _posterPath: String?

    var id: Int {
        return _id
    }

    var title: String? {
        return _title
    }

    var name: String? {
        return _name
    }

    var character: String? {
        return _character
    }

    var profilePath: String {
        return _profilePath!
    }

    var posterPath: String? {
        return _posterPath
    }

    init(id: Int, title: String?, name: String?, character: String?, profilePath: String?, posterPath: String?) {
        _id = id
        _title = title
        _name = name
        _character = character
        _profilePath = profilePath
        _posterPath = posterPath
    }
}

class Crew {
    private var _id: Int!
    private var _title: String?
    private var _name: String?
    private var _department: String?
    private var _job: String?
    private var _posterPath: String?
    private var _profilePath: String?

    var id: Int {
        return _id
    }

    var title: String? {
        return _title
    }

    var name: String? {
        return _name
    }

    var department: String? {
        return _department
    }

    var job: String? {
        return _job
    }

    var profilePath: String {
        return _profilePath!
    }

    var posterPath: String? {
        return _posterPath
    }

    init(id: Int, title: String?, name: String?, department: String?, job: String?, profilePath: String?, posterPath: String?) {
        _id = id
        _title = title
        _name = name
        _department = department
        _job = job
        _profilePath = profilePath
        _posterPath = posterPath
    }
}
