//  This file was automatically generated and should not be edited.

import Apollo

public final class MovieQuery: GraphQLQuery {
  public static let operationString =
    "query movie($id: Int!) {\n  movie(id: $id) {\n    __typename\n    id\n    title\n    tagline\n    overview\n    posterPath\n    backdropPath\n    homepage\n    belongsToCollection {\n      __typename\n      id\n      name\n      backdropPath\n      posterPath\n    }\n    budget\n    revenue\n    runtime\n    status\n    releaseDate\n    credits {\n      __typename\n      cast {\n        __typename\n        id\n        title\n        name\n        character\n        profilePath\n        posterPath\n      }\n      crew {\n        __typename\n        id\n        name\n        title\n        department\n        job\n        profilePath\n        posterPath\n      }\n    }\n  }\n}"

  public var id: Int

  public init(id: Int) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("movie", arguments: ["id": GraphQLVariable("id")], type: .object(Movie.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(movie: Movie? = nil) {
      self.init(snapshot: ["__typename": "Query", "movie": movie.flatMap { (value: Movie) -> Snapshot in value.snapshot }])
    }

    public var movie: Movie? {
      get {
        return (snapshot["movie"] as? Snapshot).flatMap { Movie(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "movie")
      }
    }

    public struct Movie: GraphQLSelectionSet {
      public static let possibleTypes = ["Movie"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .scalar(Int.self)),
        GraphQLField("title", type: .scalar(String.self)),
        GraphQLField("tagline", type: .scalar(String.self)),
        GraphQLField("overview", type: .scalar(String.self)),
        GraphQLField("posterPath", type: .scalar(String.self)),
        GraphQLField("backdropPath", type: .scalar(String.self)),
        GraphQLField("homepage", type: .scalar(String.self)),
        GraphQLField("belongsToCollection", type: .object(BelongsToCollection.selections)),
        GraphQLField("budget", type: .scalar(Int.self)),
        GraphQLField("revenue", type: .scalar(Int.self)),
        GraphQLField("runtime", type: .scalar(Int.self)),
        GraphQLField("status", type: .scalar(String.self)),
        GraphQLField("releaseDate", type: .scalar(String.self)),
        GraphQLField("credits", type: .object(Credit.selections)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: Int? = nil, title: String? = nil, tagline: String? = nil, overview: String? = nil, posterPath: String? = nil, backdropPath: String? = nil, homepage: String? = nil, belongsToCollection: BelongsToCollection? = nil, budget: Int? = nil, revenue: Int? = nil, runtime: Int? = nil, status: String? = nil, releaseDate: String? = nil, credits: Credit? = nil) {
        self.init(snapshot: ["__typename": "Movie", "id": id, "title": title, "tagline": tagline, "overview": overview, "posterPath": posterPath, "backdropPath": backdropPath, "homepage": homepage, "belongsToCollection": belongsToCollection.flatMap { (value: BelongsToCollection) -> Snapshot in value.snapshot }, "budget": budget, "revenue": revenue, "runtime": runtime, "status": status, "releaseDate": releaseDate, "credits": credits.flatMap { (value: Credit) -> Snapshot in value.snapshot }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: Int? {
        get {
          return snapshot["id"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var title: String? {
        get {
          return snapshot["title"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "title")
        }
      }

      public var tagline: String? {
        get {
          return snapshot["tagline"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "tagline")
        }
      }

      public var overview: String? {
        get {
          return snapshot["overview"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "overview")
        }
      }

      public var posterPath: String? {
        get {
          return snapshot["posterPath"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "posterPath")
        }
      }

      public var backdropPath: String? {
        get {
          return snapshot["backdropPath"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "backdropPath")
        }
      }

      public var homepage: String? {
        get {
          return snapshot["homepage"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "homepage")
        }
      }

      public var belongsToCollection: BelongsToCollection? {
        get {
          return (snapshot["belongsToCollection"] as? Snapshot).flatMap { BelongsToCollection(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "belongsToCollection")
        }
      }

      public var budget: Int? {
        get {
          return snapshot["budget"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "budget")
        }
      }

      public var revenue: Int? {
        get {
          return snapshot["revenue"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "revenue")
        }
      }

      public var runtime: Int? {
        get {
          return snapshot["runtime"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "runtime")
        }
      }

      public var status: String? {
        get {
          return snapshot["status"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "status")
        }
      }

      public var releaseDate: String? {
        get {
          return snapshot["releaseDate"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "releaseDate")
        }
      }

      public var credits: Credit? {
        get {
          return (snapshot["credits"] as? Snapshot).flatMap { Credit(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "credits")
        }
      }

      public struct BelongsToCollection: GraphQLSelectionSet {
        public static let possibleTypes = ["BelongsToCollection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .scalar(Int.self)),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("backdropPath", type: .scalar(String.self)),
          GraphQLField("posterPath", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: Int? = nil, name: String? = nil, backdropPath: String? = nil, posterPath: String? = nil) {
          self.init(snapshot: ["__typename": "BelongsToCollection", "id": id, "name": name, "backdropPath": backdropPath, "posterPath": posterPath])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: Int? {
          get {
            return snapshot["id"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String? {
          get {
            return snapshot["name"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var backdropPath: String? {
          get {
            return snapshot["backdropPath"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "backdropPath")
          }
        }

        public var posterPath: String? {
          get {
            return snapshot["posterPath"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "posterPath")
          }
        }
      }

      public struct Credit: GraphQLSelectionSet {
        public static let possibleTypes = ["Credits"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("cast", type: .list(.object(Cast.selections))),
          GraphQLField("crew", type: .list(.object(Crew.selections))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(cast: [Cast?]? = nil, crew: [Crew?]? = nil) {
          self.init(snapshot: ["__typename": "Credits", "cast": cast.flatMap { (value: [Cast?]) -> [Snapshot?] in value.map { (value: Cast?) -> Snapshot? in value.flatMap { (value: Cast) -> Snapshot in value.snapshot } } }, "crew": crew.flatMap { (value: [Crew?]) -> [Snapshot?] in value.map { (value: Crew?) -> Snapshot? in value.flatMap { (value: Crew) -> Snapshot in value.snapshot } } }])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var cast: [Cast?]? {
          get {
            return (snapshot["cast"] as? [Snapshot?]).flatMap { (value: [Snapshot?]) -> [Cast?] in value.map { (value: Snapshot?) -> Cast? in value.flatMap { (value: Snapshot) -> Cast in Cast(snapshot: value) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { (value: [Cast?]) -> [Snapshot?] in value.map { (value: Cast?) -> Snapshot? in value.flatMap { (value: Cast) -> Snapshot in value.snapshot } } }, forKey: "cast")
          }
        }

        public var crew: [Crew?]? {
          get {
            return (snapshot["crew"] as? [Snapshot?]).flatMap { (value: [Snapshot?]) -> [Crew?] in value.map { (value: Snapshot?) -> Crew? in value.flatMap { (value: Snapshot) -> Crew in Crew(snapshot: value) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { (value: [Crew?]) -> [Snapshot?] in value.map { (value: Crew?) -> Snapshot? in value.flatMap { (value: Crew) -> Snapshot in value.snapshot } } }, forKey: "crew")
          }
        }

        public struct Cast: GraphQLSelectionSet {
          public static let possibleTypes = ["Cast"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .scalar(Int.self)),
            GraphQLField("title", type: .scalar(String.self)),
            GraphQLField("name", type: .scalar(String.self)),
            GraphQLField("character", type: .scalar(String.self)),
            GraphQLField("profilePath", type: .scalar(String.self)),
            GraphQLField("posterPath", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: Int? = nil, title: String? = nil, name: String? = nil, character: String? = nil, profilePath: String? = nil, posterPath: String? = nil) {
            self.init(snapshot: ["__typename": "Cast", "id": id, "title": title, "name": name, "character": character, "profilePath": profilePath, "posterPath": posterPath])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: Int? {
            get {
              return snapshot["id"] as? Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var title: String? {
            get {
              return snapshot["title"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "title")
            }
          }

          public var name: String? {
            get {
              return snapshot["name"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }

          public var character: String? {
            get {
              return snapshot["character"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "character")
            }
          }

          public var profilePath: String? {
            get {
              return snapshot["profilePath"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "profilePath")
            }
          }

          public var posterPath: String? {
            get {
              return snapshot["posterPath"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "posterPath")
            }
          }
        }

        public struct Crew: GraphQLSelectionSet {
          public static let possibleTypes = ["Crew"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .scalar(Int.self)),
            GraphQLField("name", type: .scalar(String.self)),
            GraphQLField("title", type: .scalar(String.self)),
            GraphQLField("department", type: .scalar(String.self)),
            GraphQLField("job", type: .scalar(String.self)),
            GraphQLField("profilePath", type: .scalar(String.self)),
            GraphQLField("posterPath", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: Int? = nil, name: String? = nil, title: String? = nil, department: String? = nil, job: String? = nil, profilePath: String? = nil, posterPath: String? = nil) {
            self.init(snapshot: ["__typename": "Crew", "id": id, "name": name, "title": title, "department": department, "job": job, "profilePath": profilePath, "posterPath": posterPath])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: Int? {
            get {
              return snapshot["id"] as? Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var name: String? {
            get {
              return snapshot["name"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }

          public var title: String? {
            get {
              return snapshot["title"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "title")
            }
          }

          public var department: String? {
            get {
              return snapshot["department"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "department")
            }
          }

          public var job: String? {
            get {
              return snapshot["job"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "job")
            }
          }

          public var profilePath: String? {
            get {
              return snapshot["profilePath"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "profilePath")
            }
          }

          public var posterPath: String? {
            get {
              return snapshot["posterPath"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "posterPath")
            }
          }
        }
      }
    }
  }
}

public final class PersonQuery: GraphQLQuery {
  public static let operationString =
    "query person($id: Int!) {\n  person(id: $id) {\n    __typename\n    id\n    name\n    gender\n    biography\n    birthday\n    deathday\n    homepage\n    profilePath\n    placeOfBirth\n    credits {\n      __typename\n      cast {\n        __typename\n        id\n        name\n        title\n        posterPath\n        profilePath\n      }\n      crew {\n        __typename\n        id\n        name\n        title\n        posterPath\n        profilePath\n        department\n        job\n      }\n    }\n  }\n}"

  public var id: Int

  public init(id: Int) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("person", arguments: ["id": GraphQLVariable("id")], type: .object(Person.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(person: Person? = nil) {
      self.init(snapshot: ["__typename": "Query", "person": person.flatMap { (value: Person) -> Snapshot in value.snapshot }])
    }

    public var person: Person? {
      get {
        return (snapshot["person"] as? Snapshot).flatMap { Person(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "person")
      }
    }

    public struct Person: GraphQLSelectionSet {
      public static let possibleTypes = ["Person"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .scalar(Int.self)),
        GraphQLField("name", type: .scalar(String.self)),
        GraphQLField("gender", type: .scalar(Int.self)),
        GraphQLField("biography", type: .scalar(String.self)),
        GraphQLField("birthday", type: .scalar(String.self)),
        GraphQLField("deathday", type: .scalar(String.self)),
        GraphQLField("homepage", type: .scalar(String.self)),
        GraphQLField("profilePath", type: .scalar(String.self)),
        GraphQLField("placeOfBirth", type: .scalar(String.self)),
        GraphQLField("credits", type: .object(Credit.selections)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: Int? = nil, name: String? = nil, gender: Int? = nil, biography: String? = nil, birthday: String? = nil, deathday: String? = nil, homepage: String? = nil, profilePath: String? = nil, placeOfBirth: String? = nil, credits: Credit? = nil) {
        self.init(snapshot: ["__typename": "Person", "id": id, "name": name, "gender": gender, "biography": biography, "birthday": birthday, "deathday": deathday, "homepage": homepage, "profilePath": profilePath, "placeOfBirth": placeOfBirth, "credits": credits.flatMap { (value: Credit) -> Snapshot in value.snapshot }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: Int? {
        get {
          return snapshot["id"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String? {
        get {
          return snapshot["name"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var gender: Int? {
        get {
          return snapshot["gender"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "gender")
        }
      }

      public var biography: String? {
        get {
          return snapshot["biography"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "biography")
        }
      }

      public var birthday: String? {
        get {
          return snapshot["birthday"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "birthday")
        }
      }

      public var deathday: String? {
        get {
          return snapshot["deathday"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "deathday")
        }
      }

      public var homepage: String? {
        get {
          return snapshot["homepage"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "homepage")
        }
      }

      public var profilePath: String? {
        get {
          return snapshot["profilePath"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "profilePath")
        }
      }

      public var placeOfBirth: String? {
        get {
          return snapshot["placeOfBirth"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "placeOfBirth")
        }
      }

      public var credits: Credit? {
        get {
          return (snapshot["credits"] as? Snapshot).flatMap { Credit(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "credits")
        }
      }

      public struct Credit: GraphQLSelectionSet {
        public static let possibleTypes = ["Credits"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("cast", type: .list(.object(Cast.selections))),
          GraphQLField("crew", type: .list(.object(Crew.selections))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(cast: [Cast?]? = nil, crew: [Crew?]? = nil) {
          self.init(snapshot: ["__typename": "Credits", "cast": cast.flatMap { (value: [Cast?]) -> [Snapshot?] in value.map { (value: Cast?) -> Snapshot? in value.flatMap { (value: Cast) -> Snapshot in value.snapshot } } }, "crew": crew.flatMap { (value: [Crew?]) -> [Snapshot?] in value.map { (value: Crew?) -> Snapshot? in value.flatMap { (value: Crew) -> Snapshot in value.snapshot } } }])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var cast: [Cast?]? {
          get {
            return (snapshot["cast"] as? [Snapshot?]).flatMap { (value: [Snapshot?]) -> [Cast?] in value.map { (value: Snapshot?) -> Cast? in value.flatMap { (value: Snapshot) -> Cast in Cast(snapshot: value) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { (value: [Cast?]) -> [Snapshot?] in value.map { (value: Cast?) -> Snapshot? in value.flatMap { (value: Cast) -> Snapshot in value.snapshot } } }, forKey: "cast")
          }
        }

        public var crew: [Crew?]? {
          get {
            return (snapshot["crew"] as? [Snapshot?]).flatMap { (value: [Snapshot?]) -> [Crew?] in value.map { (value: Snapshot?) -> Crew? in value.flatMap { (value: Snapshot) -> Crew in Crew(snapshot: value) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { (value: [Crew?]) -> [Snapshot?] in value.map { (value: Crew?) -> Snapshot? in value.flatMap { (value: Crew) -> Snapshot in value.snapshot } } }, forKey: "crew")
          }
        }

        public struct Cast: GraphQLSelectionSet {
          public static let possibleTypes = ["Cast"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .scalar(Int.self)),
            GraphQLField("name", type: .scalar(String.self)),
            GraphQLField("title", type: .scalar(String.self)),
            GraphQLField("posterPath", type: .scalar(String.self)),
            GraphQLField("profilePath", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: Int? = nil, name: String? = nil, title: String? = nil, posterPath: String? = nil, profilePath: String? = nil) {
            self.init(snapshot: ["__typename": "Cast", "id": id, "name": name, "title": title, "posterPath": posterPath, "profilePath": profilePath])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: Int? {
            get {
              return snapshot["id"] as? Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var name: String? {
            get {
              return snapshot["name"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }

          public var title: String? {
            get {
              return snapshot["title"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "title")
            }
          }

          public var posterPath: String? {
            get {
              return snapshot["posterPath"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "posterPath")
            }
          }

          public var profilePath: String? {
            get {
              return snapshot["profilePath"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "profilePath")
            }
          }
        }

        public struct Crew: GraphQLSelectionSet {
          public static let possibleTypes = ["Crew"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .scalar(Int.self)),
            GraphQLField("name", type: .scalar(String.self)),
            GraphQLField("title", type: .scalar(String.self)),
            GraphQLField("posterPath", type: .scalar(String.self)),
            GraphQLField("profilePath", type: .scalar(String.self)),
            GraphQLField("department", type: .scalar(String.self)),
            GraphQLField("job", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: Int? = nil, name: String? = nil, title: String? = nil, posterPath: String? = nil, profilePath: String? = nil, department: String? = nil, job: String? = nil) {
            self.init(snapshot: ["__typename": "Crew", "id": id, "name": name, "title": title, "posterPath": posterPath, "profilePath": profilePath, "department": department, "job": job])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: Int? {
            get {
              return snapshot["id"] as? Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var name: String? {
            get {
              return snapshot["name"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }

          public var title: String? {
            get {
              return snapshot["title"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "title")
            }
          }

          public var posterPath: String? {
            get {
              return snapshot["posterPath"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "posterPath")
            }
          }

          public var profilePath: String? {
            get {
              return snapshot["profilePath"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "profilePath")
            }
          }

          public var department: String? {
            get {
              return snapshot["department"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "department")
            }
          }

          public var job: String? {
            get {
              return snapshot["job"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "job")
            }
          }
        }
      }
    }
  }
}

public final class UserSearchQuery: GraphQLQuery {
  public static let operationString =
    "query userSearch($searchString: String!) {\n  search(searchString: $searchString) {\n    __typename\n    id\n    titleName\n    overview\n    imagePath\n    mediaType\n  }\n}"

  public var searchString: String

  public init(searchString: String) {
    self.searchString = searchString
  }

  public var variables: GraphQLMap? {
    return ["searchString": searchString]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("search", arguments: ["searchString": GraphQLVariable("searchString")], type: .list(.object(Search.selections))),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(search: [Search?]? = nil) {
      self.init(snapshot: ["__typename": "Query", "search": search.flatMap { (value: [Search?]) -> [Snapshot?] in value.map { (value: Search?) -> Snapshot? in value.flatMap { (value: Search) -> Snapshot in value.snapshot } } }])
    }

    public var search: [Search?]? {
      get {
        return (snapshot["search"] as? [Snapshot?]).flatMap { (value: [Snapshot?]) -> [Search?] in value.map { (value: Snapshot?) -> Search? in value.flatMap { (value: Snapshot) -> Search in Search(snapshot: value) } } }
      }
      set {
        snapshot.updateValue(newValue.flatMap { (value: [Search?]) -> [Snapshot?] in value.map { (value: Search?) -> Snapshot? in value.flatMap { (value: Search) -> Snapshot in value.snapshot } } }, forKey: "search")
      }
    }

    public struct Search: GraphQLSelectionSet {
      public static let possibleTypes = ["MultiSearchResult"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .scalar(Int.self)),
        GraphQLField("titleName", type: .scalar(String.self)),
        GraphQLField("overview", type: .scalar(String.self)),
        GraphQLField("imagePath", type: .scalar(String.self)),
        GraphQLField("mediaType", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: Int? = nil, titleName: String? = nil, overview: String? = nil, imagePath: String? = nil, mediaType: String? = nil) {
        self.init(snapshot: ["__typename": "MultiSearchResult", "id": id, "titleName": titleName, "overview": overview, "imagePath": imagePath, "mediaType": mediaType])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: Int? {
        get {
          return snapshot["id"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var titleName: String? {
        get {
          return snapshot["titleName"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "titleName")
        }
      }

      public var overview: String? {
        get {
          return snapshot["overview"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "overview")
        }
      }

      public var imagePath: String? {
        get {
          return snapshot["imagePath"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "imagePath")
        }
      }

      public var mediaType: String? {
        get {
          return snapshot["mediaType"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "mediaType")
        }
      }
    }
  }
}

public final class TvshowQuery: GraphQLQuery {
  public static let operationString =
    "query tvshow($tvId: Int!) {\n  tvseries(tvId: $tvId) {\n    __typename\n    id\n    name\n    overview\n    firstAirDate\n    lastAirDate\n    numberOfSeasons\n    numberOfEpisodes\n    episodeRuntime\n    inProduction\n    homepage\n    posterPath\n    backdropPath\n    networks {\n      __typename\n      id\n      name\n      logoPath\n      originCountry\n    }\n    createdBy {\n      __typename\n      id\n      name\n      profilePath\n    }\n    credits {\n      __typename\n      cast {\n        __typename\n        id\n        name\n        character\n        title\n        profilePath\n        posterPath\n      }\n      crew {\n        __typename\n        id\n        name\n        title\n        posterPath\n        profilePath\n        department\n        job\n      }\n    }\n  }\n}"

  public var tvId: Int

  public init(tvId: Int) {
    self.tvId = tvId
  }

  public var variables: GraphQLMap? {
    return ["tvId": tvId]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("tvseries", arguments: ["tvId": GraphQLVariable("tvId")], type: .object(Tvseries.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(tvseries: Tvseries? = nil) {
      self.init(snapshot: ["__typename": "Query", "tvseries": tvseries.flatMap { (value: Tvseries) -> Snapshot in value.snapshot }])
    }

    public var tvseries: Tvseries? {
      get {
        return (snapshot["tvseries"] as? Snapshot).flatMap { Tvseries(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "tvseries")
      }
    }

    public struct Tvseries: GraphQLSelectionSet {
      public static let possibleTypes = ["TVSeries"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .scalar(Int.self)),
        GraphQLField("name", type: .scalar(String.self)),
        GraphQLField("overview", type: .scalar(String.self)),
        GraphQLField("firstAirDate", type: .scalar(String.self)),
        GraphQLField("lastAirDate", type: .scalar(String.self)),
        GraphQLField("numberOfSeasons", type: .scalar(Int.self)),
        GraphQLField("numberOfEpisodes", type: .scalar(Int.self)),
        GraphQLField("episodeRuntime", type: .list(.scalar(Int.self))),
        GraphQLField("inProduction", type: .scalar(Bool.self)),
        GraphQLField("homepage", type: .scalar(String.self)),
        GraphQLField("posterPath", type: .scalar(String.self)),
        GraphQLField("backdropPath", type: .scalar(String.self)),
        GraphQLField("networks", type: .list(.object(Network.selections))),
        GraphQLField("createdBy", type: .list(.object(CreatedBy.selections))),
        GraphQLField("credits", type: .object(Credit.selections)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: Int? = nil, name: String? = nil, overview: String? = nil, firstAirDate: String? = nil, lastAirDate: String? = nil, numberOfSeasons: Int? = nil, numberOfEpisodes: Int? = nil, episodeRuntime: [Int?]? = nil, inProduction: Bool? = nil, homepage: String? = nil, posterPath: String? = nil, backdropPath: String? = nil, networks: [Network?]? = nil, createdBy: [CreatedBy?]? = nil, credits: Credit? = nil) {
        self.init(snapshot: ["__typename": "TVSeries", "id": id, "name": name, "overview": overview, "firstAirDate": firstAirDate, "lastAirDate": lastAirDate, "numberOfSeasons": numberOfSeasons, "numberOfEpisodes": numberOfEpisodes, "episodeRuntime": episodeRuntime, "inProduction": inProduction, "homepage": homepage, "posterPath": posterPath, "backdropPath": backdropPath, "networks": networks.flatMap { (value: [Network?]) -> [Snapshot?] in value.map { (value: Network?) -> Snapshot? in value.flatMap { (value: Network) -> Snapshot in value.snapshot } } }, "createdBy": createdBy.flatMap { (value: [CreatedBy?]) -> [Snapshot?] in value.map { (value: CreatedBy?) -> Snapshot? in value.flatMap { (value: CreatedBy) -> Snapshot in value.snapshot } } }, "credits": credits.flatMap { (value: Credit) -> Snapshot in value.snapshot }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: Int? {
        get {
          return snapshot["id"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String? {
        get {
          return snapshot["name"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var overview: String? {
        get {
          return snapshot["overview"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "overview")
        }
      }

      public var firstAirDate: String? {
        get {
          return snapshot["firstAirDate"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "firstAirDate")
        }
      }

      public var lastAirDate: String? {
        get {
          return snapshot["lastAirDate"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "lastAirDate")
        }
      }

      public var numberOfSeasons: Int? {
        get {
          return snapshot["numberOfSeasons"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "numberOfSeasons")
        }
      }

      public var numberOfEpisodes: Int? {
        get {
          return snapshot["numberOfEpisodes"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "numberOfEpisodes")
        }
      }

      public var episodeRuntime: [Int?]? {
        get {
          return snapshot["episodeRuntime"] as? [Int?]
        }
        set {
          snapshot.updateValue(newValue, forKey: "episodeRuntime")
        }
      }

      public var inProduction: Bool? {
        get {
          return snapshot["inProduction"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "inProduction")
        }
      }

      public var homepage: String? {
        get {
          return snapshot["homepage"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "homepage")
        }
      }

      public var posterPath: String? {
        get {
          return snapshot["posterPath"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "posterPath")
        }
      }

      public var backdropPath: String? {
        get {
          return snapshot["backdropPath"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "backdropPath")
        }
      }

      public var networks: [Network?]? {
        get {
          return (snapshot["networks"] as? [Snapshot?]).flatMap { (value: [Snapshot?]) -> [Network?] in value.map { (value: Snapshot?) -> Network? in value.flatMap { (value: Snapshot) -> Network in Network(snapshot: value) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { (value: [Network?]) -> [Snapshot?] in value.map { (value: Network?) -> Snapshot? in value.flatMap { (value: Network) -> Snapshot in value.snapshot } } }, forKey: "networks")
        }
      }

      public var createdBy: [CreatedBy?]? {
        get {
          return (snapshot["createdBy"] as? [Snapshot?]).flatMap { (value: [Snapshot?]) -> [CreatedBy?] in value.map { (value: Snapshot?) -> CreatedBy? in value.flatMap { (value: Snapshot) -> CreatedBy in CreatedBy(snapshot: value) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { (value: [CreatedBy?]) -> [Snapshot?] in value.map { (value: CreatedBy?) -> Snapshot? in value.flatMap { (value: CreatedBy) -> Snapshot in value.snapshot } } }, forKey: "createdBy")
        }
      }

      public var credits: Credit? {
        get {
          return (snapshot["credits"] as? Snapshot).flatMap { Credit(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "credits")
        }
      }

      public struct Network: GraphQLSelectionSet {
        public static let possibleTypes = ["ProductionCompanies"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .scalar(Int.self)),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("logoPath", type: .scalar(String.self)),
          GraphQLField("originCountry", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: Int? = nil, name: String? = nil, logoPath: String? = nil, originCountry: String? = nil) {
          self.init(snapshot: ["__typename": "ProductionCompanies", "id": id, "name": name, "logoPath": logoPath, "originCountry": originCountry])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: Int? {
          get {
            return snapshot["id"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String? {
          get {
            return snapshot["name"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var logoPath: String? {
          get {
            return snapshot["logoPath"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "logoPath")
          }
        }

        public var originCountry: String? {
          get {
            return snapshot["originCountry"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "originCountry")
          }
        }
      }

      public struct CreatedBy: GraphQLSelectionSet {
        public static let possibleTypes = ["Person"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .scalar(Int.self)),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("profilePath", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: Int? = nil, name: String? = nil, profilePath: String? = nil) {
          self.init(snapshot: ["__typename": "Person", "id": id, "name": name, "profilePath": profilePath])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: Int? {
          get {
            return snapshot["id"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String? {
          get {
            return snapshot["name"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var profilePath: String? {
          get {
            return snapshot["profilePath"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "profilePath")
          }
        }
      }

      public struct Credit: GraphQLSelectionSet {
        public static let possibleTypes = ["Credits"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("cast", type: .list(.object(Cast.selections))),
          GraphQLField("crew", type: .list(.object(Crew.selections))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(cast: [Cast?]? = nil, crew: [Crew?]? = nil) {
          self.init(snapshot: ["__typename": "Credits", "cast": cast.flatMap { (value: [Cast?]) -> [Snapshot?] in value.map { (value: Cast?) -> Snapshot? in value.flatMap { (value: Cast) -> Snapshot in value.snapshot } } }, "crew": crew.flatMap { (value: [Crew?]) -> [Snapshot?] in value.map { (value: Crew?) -> Snapshot? in value.flatMap { (value: Crew) -> Snapshot in value.snapshot } } }])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var cast: [Cast?]? {
          get {
            return (snapshot["cast"] as? [Snapshot?]).flatMap { (value: [Snapshot?]) -> [Cast?] in value.map { (value: Snapshot?) -> Cast? in value.flatMap { (value: Snapshot) -> Cast in Cast(snapshot: value) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { (value: [Cast?]) -> [Snapshot?] in value.map { (value: Cast?) -> Snapshot? in value.flatMap { (value: Cast) -> Snapshot in value.snapshot } } }, forKey: "cast")
          }
        }

        public var crew: [Crew?]? {
          get {
            return (snapshot["crew"] as? [Snapshot?]).flatMap { (value: [Snapshot?]) -> [Crew?] in value.map { (value: Snapshot?) -> Crew? in value.flatMap { (value: Snapshot) -> Crew in Crew(snapshot: value) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { (value: [Crew?]) -> [Snapshot?] in value.map { (value: Crew?) -> Snapshot? in value.flatMap { (value: Crew) -> Snapshot in value.snapshot } } }, forKey: "crew")
          }
        }

        public struct Cast: GraphQLSelectionSet {
          public static let possibleTypes = ["Cast"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .scalar(Int.self)),
            GraphQLField("name", type: .scalar(String.self)),
            GraphQLField("character", type: .scalar(String.self)),
            GraphQLField("title", type: .scalar(String.self)),
            GraphQLField("profilePath", type: .scalar(String.self)),
            GraphQLField("posterPath", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: Int? = nil, name: String? = nil, character: String? = nil, title: String? = nil, profilePath: String? = nil, posterPath: String? = nil) {
            self.init(snapshot: ["__typename": "Cast", "id": id, "name": name, "character": character, "title": title, "profilePath": profilePath, "posterPath": posterPath])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: Int? {
            get {
              return snapshot["id"] as? Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var name: String? {
            get {
              return snapshot["name"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }

          public var character: String? {
            get {
              return snapshot["character"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "character")
            }
          }

          public var title: String? {
            get {
              return snapshot["title"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "title")
            }
          }

          public var profilePath: String? {
            get {
              return snapshot["profilePath"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "profilePath")
            }
          }

          public var posterPath: String? {
            get {
              return snapshot["posterPath"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "posterPath")
            }
          }
        }

        public struct Crew: GraphQLSelectionSet {
          public static let possibleTypes = ["Crew"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .scalar(Int.self)),
            GraphQLField("name", type: .scalar(String.self)),
            GraphQLField("title", type: .scalar(String.self)),
            GraphQLField("posterPath", type: .scalar(String.self)),
            GraphQLField("profilePath", type: .scalar(String.self)),
            GraphQLField("department", type: .scalar(String.self)),
            GraphQLField("job", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: Int? = nil, name: String? = nil, title: String? = nil, posterPath: String? = nil, profilePath: String? = nil, department: String? = nil, job: String? = nil) {
            self.init(snapshot: ["__typename": "Crew", "id": id, "name": name, "title": title, "posterPath": posterPath, "profilePath": profilePath, "department": department, "job": job])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: Int? {
            get {
              return snapshot["id"] as? Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var name: String? {
            get {
              return snapshot["name"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }

          public var title: String? {
            get {
              return snapshot["title"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "title")
            }
          }

          public var posterPath: String? {
            get {
              return snapshot["posterPath"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "posterPath")
            }
          }

          public var profilePath: String? {
            get {
              return snapshot["profilePath"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "profilePath")
            }
          }

          public var department: String? {
            get {
              return snapshot["department"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "department")
            }
          }

          public var job: String? {
            get {
              return snapshot["job"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "job")
            }
          }
        }
      }
    }
  }
}