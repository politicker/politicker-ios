// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

public struct CreateLikeInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - matterId
  public init(matterId: GraphQLID) {
    graphQLMap = ["MatterID": matterId]
  }

  public var matterId: GraphQLID {
    get {
      return graphQLMap["MatterID"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "MatterID")
    }
  }
}

public enum MatterStatus: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  case enacted
  case committee
  case withdrawn
  case approved
  case disapproved
  case failed
  case adopted
  case special
  case local
  case hearing
  case filed
  case general
  case received
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "ENACTED": self = .enacted
      case "COMMITTEE": self = .committee
      case "WITHDRAWN": self = .withdrawn
      case "APPROVED": self = .approved
      case "DISAPPROVED": self = .disapproved
      case "FAILED": self = .failed
      case "ADOPTED": self = .adopted
      case "SPECIAL": self = .special
      case "LOCAL": self = .local
      case "HEARING": self = .hearing
      case "FILED": self = .filed
      case "GENERAL": self = .general
      case "RECEIVED": self = .received
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .enacted: return "ENACTED"
      case .committee: return "COMMITTEE"
      case .withdrawn: return "WITHDRAWN"
      case .approved: return "APPROVED"
      case .disapproved: return "DISAPPROVED"
      case .failed: return "FAILED"
      case .adopted: return "ADOPTED"
      case .special: return "SPECIAL"
      case .local: return "LOCAL"
      case .hearing: return "HEARING"
      case .filed: return "FILED"
      case .general: return "GENERAL"
      case .received: return "RECEIVED"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: MatterStatus, rhs: MatterStatus) -> Bool {
    switch (lhs, rhs) {
      case (.enacted, .enacted): return true
      case (.committee, .committee): return true
      case (.withdrawn, .withdrawn): return true
      case (.approved, .approved): return true
      case (.disapproved, .disapproved): return true
      case (.failed, .failed): return true
      case (.adopted, .adopted): return true
      case (.special, .special): return true
      case (.local, .local): return true
      case (.hearing, .hearing): return true
      case (.filed, .filed): return true
      case (.general, .general): return true
      case (.received, .received): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [MatterStatus] {
    return [
      .enacted,
      .committee,
      .withdrawn,
      .approved,
      .disapproved,
      .failed,
      .adopted,
      .special,
      .local,
      .hearing,
      .filed,
      .general,
      .received,
    ]
  }
}

public final class MattersQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query Matters {
      matters {
        __typename
        ...DisplayableMatter
      }
    }
    """

  public let operationName: String = "Matters"

  public var queryDocument: String {
    var document: String = operationDefinition
    document.append("\n" + DisplayableMatter.fragmentDefinition)
    return document
  }

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("matters", type: .nonNull(.list(.nonNull(.object(Matter.selections))))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(matters: [Matter]) {
      self.init(unsafeResultMap: ["__typename": "Query", "matters": matters.map { (value: Matter) -> ResultMap in value.resultMap }])
    }

    public var matters: [Matter] {
      get {
        return (resultMap["matters"] as! [ResultMap]).map { (value: ResultMap) -> Matter in Matter(unsafeResultMap: value) }
      }
      set {
        resultMap.updateValue(newValue.map { (value: Matter) -> ResultMap in value.resultMap }, forKey: "matters")
      }
    }

    public struct Matter: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Matter"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLFragmentSpread(DisplayableMatter.self),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: GraphQLID, shortDescription: String, longDescription: String, billWould: String, fileNumber: String, typeName: String, status: MatterStatus, committeeName: String, lastModifiedAt: String, introducedAt: String, passedAt: String, enactedAt: String, agendaDate: String, enactmentNumber: String, updatedAt: String, liked: Bool, likeCount: Int) {
        self.init(unsafeResultMap: ["__typename": "Matter", "id": id, "shortDescription": shortDescription, "longDescription": longDescription, "billWould": billWould, "fileNumber": fileNumber, "typeName": typeName, "status": status, "committeeName": committeeName, "lastModifiedAt": lastModifiedAt, "introducedAt": introducedAt, "passedAt": passedAt, "enactedAt": enactedAt, "agendaDate": agendaDate, "enactmentNumber": enactmentNumber, "updatedAt": updatedAt, "liked": liked, "likeCount": likeCount])
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

        public var displayableMatter: DisplayableMatter {
          get {
            return DisplayableMatter(unsafeResultMap: resultMap)
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
        matter {
          __typename
          ...DisplayableMatter
        }
      }
    }
    """

  public let operationName: String = "CreateLike"

  public var queryDocument: String {
    var document: String = operationDefinition
    document.append("\n" + DisplayableMatter.fragmentDefinition)
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
          GraphQLField("matter", type: .nonNull(.object(Matter.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(matter: Matter) {
        self.init(unsafeResultMap: ["__typename": "CreateLikeResponse", "matter": matter.resultMap])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var matter: Matter {
        get {
          return Matter(unsafeResultMap: resultMap["matter"]! as! ResultMap)
        }
        set {
          resultMap.updateValue(newValue.resultMap, forKey: "matter")
        }
      }

      public struct Matter: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Matter"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLFragmentSpread(DisplayableMatter.self),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: GraphQLID, shortDescription: String, longDescription: String, billWould: String, fileNumber: String, typeName: String, status: MatterStatus, committeeName: String, lastModifiedAt: String, introducedAt: String, passedAt: String, enactedAt: String, agendaDate: String, enactmentNumber: String, updatedAt: String, liked: Bool, likeCount: Int) {
          self.init(unsafeResultMap: ["__typename": "Matter", "id": id, "shortDescription": shortDescription, "longDescription": longDescription, "billWould": billWould, "fileNumber": fileNumber, "typeName": typeName, "status": status, "committeeName": committeeName, "lastModifiedAt": lastModifiedAt, "introducedAt": introducedAt, "passedAt": passedAt, "enactedAt": enactedAt, "agendaDate": agendaDate, "enactmentNumber": enactmentNumber, "updatedAt": updatedAt, "liked": liked, "likeCount": likeCount])
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

          public var displayableMatter: DisplayableMatter {
            get {
              return DisplayableMatter(unsafeResultMap: resultMap)
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

public struct DisplayableMatter: GraphQLFragment {
  /// The raw GraphQL definition of this fragment.
  public static let fragmentDefinition: String =
    """
    fragment DisplayableMatter on Matter {
      __typename
      id
      shortDescription
      longDescription
      billWould
      fileNumber
      typeName
      status
      committeeName
      lastModifiedAt
      introducedAt
      passedAt
      enactedAt
      agendaDate
      enactmentNumber
      updatedAt
      liked
      likeCount
    }
    """

  public static let possibleTypes: [String] = ["Matter"]

  public static var selections: [GraphQLSelection] {
    return [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
      GraphQLField("shortDescription", type: .nonNull(.scalar(String.self))),
      GraphQLField("longDescription", type: .nonNull(.scalar(String.self))),
      GraphQLField("billWould", type: .nonNull(.scalar(String.self))),
      GraphQLField("fileNumber", type: .nonNull(.scalar(String.self))),
      GraphQLField("typeName", type: .nonNull(.scalar(String.self))),
      GraphQLField("status", type: .nonNull(.scalar(MatterStatus.self))),
      GraphQLField("committeeName", type: .nonNull(.scalar(String.self))),
      GraphQLField("lastModifiedAt", type: .nonNull(.scalar(String.self))),
      GraphQLField("introducedAt", type: .nonNull(.scalar(String.self))),
      GraphQLField("passedAt", type: .nonNull(.scalar(String.self))),
      GraphQLField("enactedAt", type: .nonNull(.scalar(String.self))),
      GraphQLField("agendaDate", type: .nonNull(.scalar(String.self))),
      GraphQLField("enactmentNumber", type: .nonNull(.scalar(String.self))),
      GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      GraphQLField("liked", type: .nonNull(.scalar(Bool.self))),
      GraphQLField("likeCount", type: .nonNull(.scalar(Int.self))),
    ]
  }

  public private(set) var resultMap: ResultMap

  public init(unsafeResultMap: ResultMap) {
    self.resultMap = unsafeResultMap
  }

  public init(id: GraphQLID, shortDescription: String, longDescription: String, billWould: String, fileNumber: String, typeName: String, status: MatterStatus, committeeName: String, lastModifiedAt: String, introducedAt: String, passedAt: String, enactedAt: String, agendaDate: String, enactmentNumber: String, updatedAt: String, liked: Bool, likeCount: Int) {
    self.init(unsafeResultMap: ["__typename": "Matter", "id": id, "shortDescription": shortDescription, "longDescription": longDescription, "billWould": billWould, "fileNumber": fileNumber, "typeName": typeName, "status": status, "committeeName": committeeName, "lastModifiedAt": lastModifiedAt, "introducedAt": introducedAt, "passedAt": passedAt, "enactedAt": enactedAt, "agendaDate": agendaDate, "enactmentNumber": enactmentNumber, "updatedAt": updatedAt, "liked": liked, "likeCount": likeCount])
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

  public var shortDescription: String {
    get {
      return resultMap["shortDescription"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "shortDescription")
    }
  }

  public var longDescription: String {
    get {
      return resultMap["longDescription"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "longDescription")
    }
  }

  public var billWould: String {
    get {
      return resultMap["billWould"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "billWould")
    }
  }

  public var fileNumber: String {
    get {
      return resultMap["fileNumber"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "fileNumber")
    }
  }

  public var typeName: String {
    get {
      return resultMap["typeName"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "typeName")
    }
  }

  public var status: MatterStatus {
    get {
      return resultMap["status"]! as! MatterStatus
    }
    set {
      resultMap.updateValue(newValue, forKey: "status")
    }
  }

  public var committeeName: String {
    get {
      return resultMap["committeeName"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "committeeName")
    }
  }

  public var lastModifiedAt: String {
    get {
      return resultMap["lastModifiedAt"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "lastModifiedAt")
    }
  }

  public var introducedAt: String {
    get {
      return resultMap["introducedAt"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "introducedAt")
    }
  }

  public var passedAt: String {
    get {
      return resultMap["passedAt"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "passedAt")
    }
  }

  public var enactedAt: String {
    get {
      return resultMap["enactedAt"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "enactedAt")
    }
  }

  public var agendaDate: String {
    get {
      return resultMap["agendaDate"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "agendaDate")
    }
  }

  public var enactmentNumber: String {
    get {
      return resultMap["enactmentNumber"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "enactmentNumber")
    }
  }

  public var updatedAt: String {
    get {
      return resultMap["updatedAt"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "updatedAt")
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
}
