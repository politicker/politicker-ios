// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

public struct CreateLikeInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - billId
  public init(billId: GraphQLID) {
    graphQLMap = ["billID": billId]
  }

  public var billId: GraphQLID {
    get {
      return graphQLMap["billID"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "billID")
    }
  }
}

public final class BillsQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query Bills {
      bills {
        __typename
        ...DisplayableBill
      }
    }
    """

  public let operationName: String = "Bills"

  public var queryDocument: String {
    var document: String = operationDefinition
    document.append("\n" + DisplayableBill.fragmentDefinition)
    return document
  }

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
          GraphQLFragmentSpread(DisplayableBill.self),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var fragments: Fragments {
        get {
          return Fragments(unsafeResultMap: resultMap)
        }
        set {
          resultMap += newValue.resultMap
        }
      }

      public struct Fragments {
        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public var displayableBill: DisplayableBill {
          get {
            return DisplayableBill(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }
      }
    }
  }
}

public final class CreateLikeMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation CreateLike($input: CreateLikeInput!) {
      createLike(input: $input) {
        __typename
        bill {
          __typename
          ...DisplayableBill
        }
      }
    }
    """

  public let operationName: String = "CreateLike"

  public var queryDocument: String {
    var document: String = operationDefinition
    document.append("\n" + DisplayableBill.fragmentDefinition)
    return document
  }

  public var input: CreateLikeInput

  public init(input: CreateLikeInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("createLike", arguments: ["input": GraphQLVariable("input")], type: .nonNull(.object(CreateLike.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(createLike: CreateLike) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "createLike": createLike.resultMap])
    }

    public var createLike: CreateLike {
      get {
        return CreateLike(unsafeResultMap: resultMap["createLike"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "createLike")
      }
    }

    public struct CreateLike: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["CreateLikeResponse"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("bill", type: .nonNull(.object(Bill.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(bill: Bill) {
        self.init(unsafeResultMap: ["__typename": "CreateLikeResponse", "bill": bill.resultMap])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var bill: Bill {
        get {
          return Bill(unsafeResultMap: resultMap["bill"]! as! ResultMap)
        }
        set {
          resultMap.updateValue(newValue.resultMap, forKey: "bill")
        }
      }

      public struct Bill: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Bill"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLFragmentSpread(DisplayableBill.self),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var fragments: Fragments {
          get {
            return Fragments(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }

        public struct Fragments {
          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public var displayableBill: DisplayableBill {
            get {
              return DisplayableBill(unsafeResultMap: resultMap)
            }
            set {
              resultMap += newValue.resultMap
            }
          }
        }
      }
    }
  }
}

public struct DisplayableBill: GraphQLFragment {
  /// The raw GraphQL definition of this fragment.
  public static let fragmentDefinition: String =
    """
    fragment DisplayableBill on Bill {
      __typename
      id
      liked
      likeCount
      number
      categories {
        __typename
        id
        name
      }
      shortTitle
      sponsorName
      sponsorState
      sponsorParty
      summary
    }
    """

  public static let possibleTypes: [String] = ["Bill"]

  public static var selections: [GraphQLSelection] {
    return [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
      GraphQLField("liked", type: .nonNull(.scalar(Bool.self))),
      GraphQLField("likeCount", type: .nonNull(.scalar(Int.self))),
      GraphQLField("number", type: .nonNull(.scalar(String.self))),
      GraphQLField("categories", type: .nonNull(.list(.nonNull(.object(Category.selections))))),
      GraphQLField("shortTitle", type: .nonNull(.scalar(String.self))),
      GraphQLField("sponsorName", type: .nonNull(.scalar(String.self))),
      GraphQLField("sponsorState", type: .nonNull(.scalar(String.self))),
      GraphQLField("sponsorParty", type: .nonNull(.scalar(String.self))),
      GraphQLField("summary", type: .nonNull(.scalar(String.self))),
    ]
  }

  public private(set) var resultMap: ResultMap

  public init(unsafeResultMap: ResultMap) {
    self.resultMap = unsafeResultMap
  }

  public init(id: GraphQLID, liked: Bool, likeCount: Int, number: String, categories: [Category], shortTitle: String, sponsorName: String, sponsorState: String, sponsorParty: String, summary: String) {
    self.init(unsafeResultMap: ["__typename": "Bill", "id": id, "liked": liked, "likeCount": likeCount, "number": number, "categories": categories.map { (value: Category) -> ResultMap in value.resultMap }, "shortTitle": shortTitle, "sponsorName": sponsorName, "sponsorState": sponsorState, "sponsorParty": sponsorParty, "summary": summary])
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

  public var liked: Bool {
    get {
      return resultMap["liked"]! as! Bool
    }
    set {
      resultMap.updateValue(newValue, forKey: "liked")
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

  public var number: String {
    get {
      return resultMap["number"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "number")
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

  public var shortTitle: String {
    get {
      return resultMap["shortTitle"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "shortTitle")
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

  public var sponsorState: String {
    get {
      return resultMap["sponsorState"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "sponsorState")
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

  public var summary: String {
    get {
      return resultMap["summary"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "summary")
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
