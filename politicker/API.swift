// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

public final class BillsQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query Bills {
      bills {
        __typename
        id
        shortTitle
        summary
        number
        sponsorName
        likeCount
        sponsorParty
        sponsorState
        sponsorTitle
        statuses {
          __typename
          id
        }
        likes {
          __typename
          id
        }
        categories {
          __typename
          id
          name
        }
        liked
      }
    }
    """

  public let operationName: String = "Bills"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("bills", type: .nonNull(.list(.nonNull(.object(Bill.selections))))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(bills: [Bill]) {
      self.init(unsafeResultMap: ["__typename": "Query", "bills": bills.map { (value: Bill) -> ResultMap in value.resultMap }])
    }

    public var bills: [Bill] {
      get {
        return (resultMap["bills"] as! [ResultMap]).map { (value: ResultMap) -> Bill in Bill(unsafeResultMap: value) }
      }
      set {
        resultMap.updateValue(newValue.map { (value: Bill) -> ResultMap in value.resultMap }, forKey: "bills")
      }
    }

    public struct Bill: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Bill"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("shortTitle", type: .nonNull(.scalar(String.self))),
          GraphQLField("summary", type: .nonNull(.scalar(String.self))),
          GraphQLField("number", type: .nonNull(.scalar(String.self))),
          GraphQLField("sponsorName", type: .nonNull(.scalar(String.self))),
          GraphQLField("likeCount", type: .nonNull(.scalar(Int.self))),
          GraphQLField("sponsorParty", type: .nonNull(.scalar(String.self))),
          GraphQLField("sponsorState", type: .nonNull(.scalar(String.self))),
          GraphQLField("sponsorTitle", type: .nonNull(.scalar(String.self))),
          GraphQLField("statuses", type: .nonNull(.list(.nonNull(.object(Status.selections))))),
          GraphQLField("likes", type: .nonNull(.list(.nonNull(.object(Like.selections))))),
          GraphQLField("categories", type: .nonNull(.list(.nonNull(.object(Category.selections))))),
          GraphQLField("liked", type: .nonNull(.scalar(Bool.self))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: GraphQLID, shortTitle: String, summary: String, number: String, sponsorName: String, likeCount: Int, sponsorParty: String, sponsorState: String, sponsorTitle: String, statuses: [Status], likes: [Like], categories: [Category], liked: Bool) {
        self.init(unsafeResultMap: ["__typename": "Bill", "id": id, "shortTitle": shortTitle, "summary": summary, "number": number, "sponsorName": sponsorName, "likeCount": likeCount, "sponsorParty": sponsorParty, "sponsorState": sponsorState, "sponsorTitle": sponsorTitle, "statuses": statuses.map { (value: Status) -> ResultMap in value.resultMap }, "likes": likes.map { (value: Like) -> ResultMap in value.resultMap }, "categories": categories.map { (value: Category) -> ResultMap in value.resultMap }, "liked": liked])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return resultMap["id"]! as! GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var shortTitle: String {
        get {
          return resultMap["shortTitle"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "shortTitle")
        }
      }

      public var summary: String {
        get {
          return resultMap["summary"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "summary")
        }
      }

      public var number: String {
        get {
          return resultMap["number"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "number")
        }
      }

      public var sponsorName: String {
        get {
          return resultMap["sponsorName"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "sponsorName")
        }
      }

      public var likeCount: Int {
        get {
          return resultMap["likeCount"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "likeCount")
        }
      }

      public var sponsorParty: String {
        get {
          return resultMap["sponsorParty"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "sponsorParty")
        }
      }

      public var sponsorState: String {
        get {
          return resultMap["sponsorState"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "sponsorState")
        }
      }

      public var sponsorTitle: String {
        get {
          return resultMap["sponsorTitle"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "sponsorTitle")
        }
      }

      public var statuses: [Status] {
        get {
          return (resultMap["statuses"] as! [ResultMap]).map { (value: ResultMap) -> Status in Status(unsafeResultMap: value) }
        }
        set {
          resultMap.updateValue(newValue.map { (value: Status) -> ResultMap in value.resultMap }, forKey: "statuses")
        }
      }

      public var likes: [Like] {
        get {
          return (resultMap["likes"] as! [ResultMap]).map { (value: ResultMap) -> Like in Like(unsafeResultMap: value) }
        }
        set {
          resultMap.updateValue(newValue.map { (value: Like) -> ResultMap in value.resultMap }, forKey: "likes")
        }
      }

      public var categories: [Category] {
        get {
          return (resultMap["categories"] as! [ResultMap]).map { (value: ResultMap) -> Category in Category(unsafeResultMap: value) }
        }
        set {
          resultMap.updateValue(newValue.map { (value: Category) -> ResultMap in value.resultMap }, forKey: "categories")
        }
      }

      public var liked: Bool {
        get {
          return resultMap["liked"]! as! Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "liked")
        }
      }

      public struct Status: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Status"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: GraphQLID) {
          self.init(unsafeResultMap: ["__typename": "Status", "id": id])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return resultMap["id"]! as! GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }
      }

      public struct Like: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Like"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: GraphQLID) {
          self.init(unsafeResultMap: ["__typename": "Like", "id": id])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return resultMap["id"]! as! GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }
      }

      public struct Category: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Category"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: GraphQLID, name: String) {
          self.init(unsafeResultMap: ["__typename": "Category", "id": id, "name": name])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return resultMap["id"]! as! GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String {
          get {
            return resultMap["name"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "name")
          }
        }
      }
    }
  }
}
