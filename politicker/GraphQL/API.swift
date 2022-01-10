// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

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
        ...MatterShort
      }
    }
    """

  public let operationName: String = "Matters"

  public var queryDocument: String {
    var document: String = operationDefinition
    document.append("\n" + MatterShort.fragmentDefinition)
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
          GraphQLFragmentSpread(MatterShort.self),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: GraphQLID, shortDescription: String? = nil, committeeName: String, fileNumber: String? = nil, postDate: String, status: MatterStatus) {
        self.init(unsafeResultMap: ["__typename": "Matter", "id": id, "shortDescription": shortDescription, "committeeName": committeeName, "fileNumber": fileNumber, "postDate": postDate, "status": status])
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

        public var matterShort: MatterShort {
          get {
            return MatterShort(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }
      }
    }
  }
}

public final class MatterQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query Matter($id: ID!) {
      matter(id: $id) {
        __typename
        ...MatterFull
      }
    }
    """

  public let operationName: String = "Matter"

  public var queryDocument: String {
    var document: String = operationDefinition
    document.append("\n" + MatterFull.fragmentDefinition)
    return document
  }

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("matter", arguments: ["id": GraphQLVariable("id")], type: .nonNull(.object(Matter.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(matter: Matter) {
      self.init(unsafeResultMap: ["__typename": "Query", "matter": matter.resultMap])
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
          GraphQLFragmentSpread(MatterFull.self),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: GraphQLID, shortDescription: String? = nil, longDescription: String? = nil, billWould: String? = nil, fileNumber: String? = nil, typeName: String, status: MatterStatus, committeeName: String, lastModifiedAt: String? = nil, introducedAt: String? = nil, passedAt: String? = nil, enactedAt: String? = nil, agendaDate: String? = nil, enactmentNumber: String? = nil, updatedAt: String? = nil, postDate: String) {
        self.init(unsafeResultMap: ["__typename": "Matter", "id": id, "shortDescription": shortDescription, "longDescription": longDescription, "billWould": billWould, "fileNumber": fileNumber, "typeName": typeName, "status": status, "committeeName": committeeName, "lastModifiedAt": lastModifiedAt, "introducedAt": introducedAt, "passedAt": passedAt, "enactedAt": enactedAt, "agendaDate": agendaDate, "enactmentNumber": enactmentNumber, "updatedAt": updatedAt, "postDate": postDate])
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

        public var matterFull: MatterFull {
          get {
            return MatterFull(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }
      }
    }
  }
}

public struct MatterShort: GraphQLFragment {
  /// The raw GraphQL definition of this fragment.
  public static let fragmentDefinition: String =
    """
    fragment MatterShort on Matter {
      __typename
      id
      shortDescription
      committeeName
      fileNumber
      postDate
      status
    }
    """

  public static let possibleTypes: [String] = ["Matter"]

  public static var selections: [GraphQLSelection] {
    return [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
      GraphQLField("shortDescription", type: .scalar(String.self)),
      GraphQLField("committeeName", type: .nonNull(.scalar(String.self))),
      GraphQLField("fileNumber", type: .scalar(String.self)),
      GraphQLField("postDate", type: .nonNull(.scalar(String.self))),
      GraphQLField("status", type: .nonNull(.scalar(MatterStatus.self))),
    ]
  }

  public private(set) var resultMap: ResultMap

  public init(unsafeResultMap: ResultMap) {
    self.resultMap = unsafeResultMap
  }

  public init(id: GraphQLID, shortDescription: String? = nil, committeeName: String, fileNumber: String? = nil, postDate: String, status: MatterStatus) {
    self.init(unsafeResultMap: ["__typename": "Matter", "id": id, "shortDescription": shortDescription, "committeeName": committeeName, "fileNumber": fileNumber, "postDate": postDate, "status": status])
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

  public var shortDescription: String? {
    get {
      return resultMap["shortDescription"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "shortDescription")
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

  public var fileNumber: String? {
    get {
      return resultMap["fileNumber"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "fileNumber")
    }
  }

  public var postDate: String {
    get {
      return resultMap["postDate"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "postDate")
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
}

public struct MatterFull: GraphQLFragment {
  /// The raw GraphQL definition of this fragment.
  public static let fragmentDefinition: String =
    """
    fragment MatterFull on Matter {
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
      postDate
    }
    """

  public static let possibleTypes: [String] = ["Matter"]

  public static var selections: [GraphQLSelection] {
    return [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
      GraphQLField("shortDescription", type: .scalar(String.self)),
      GraphQLField("longDescription", type: .scalar(String.self)),
      GraphQLField("billWould", type: .scalar(String.self)),
      GraphQLField("fileNumber", type: .scalar(String.self)),
      GraphQLField("typeName", type: .nonNull(.scalar(String.self))),
      GraphQLField("status", type: .nonNull(.scalar(MatterStatus.self))),
      GraphQLField("committeeName", type: .nonNull(.scalar(String.self))),
      GraphQLField("lastModifiedAt", type: .scalar(String.self)),
      GraphQLField("introducedAt", type: .scalar(String.self)),
      GraphQLField("passedAt", type: .scalar(String.self)),
      GraphQLField("enactedAt", type: .scalar(String.self)),
      GraphQLField("agendaDate", type: .scalar(String.self)),
      GraphQLField("enactmentNumber", type: .scalar(String.self)),
      GraphQLField("updatedAt", type: .scalar(String.self)),
      GraphQLField("postDate", type: .nonNull(.scalar(String.self))),
    ]
  }

  public private(set) var resultMap: ResultMap

  public init(unsafeResultMap: ResultMap) {
    self.resultMap = unsafeResultMap
  }

  public init(id: GraphQLID, shortDescription: String? = nil, longDescription: String? = nil, billWould: String? = nil, fileNumber: String? = nil, typeName: String, status: MatterStatus, committeeName: String, lastModifiedAt: String? = nil, introducedAt: String? = nil, passedAt: String? = nil, enactedAt: String? = nil, agendaDate: String? = nil, enactmentNumber: String? = nil, updatedAt: String? = nil, postDate: String) {
    self.init(unsafeResultMap: ["__typename": "Matter", "id": id, "shortDescription": shortDescription, "longDescription": longDescription, "billWould": billWould, "fileNumber": fileNumber, "typeName": typeName, "status": status, "committeeName": committeeName, "lastModifiedAt": lastModifiedAt, "introducedAt": introducedAt, "passedAt": passedAt, "enactedAt": enactedAt, "agendaDate": agendaDate, "enactmentNumber": enactmentNumber, "updatedAt": updatedAt, "postDate": postDate])
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

  public var shortDescription: String? {
    get {
      return resultMap["shortDescription"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "shortDescription")
    }
  }

  public var longDescription: String? {
    get {
      return resultMap["longDescription"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "longDescription")
    }
  }

  public var billWould: String? {
    get {
      return resultMap["billWould"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "billWould")
    }
  }

  public var fileNumber: String? {
    get {
      return resultMap["fileNumber"] as? String
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

  public var lastModifiedAt: String? {
    get {
      return resultMap["lastModifiedAt"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "lastModifiedAt")
    }
  }

  public var introducedAt: String? {
    get {
      return resultMap["introducedAt"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "introducedAt")
    }
  }

  public var passedAt: String? {
    get {
      return resultMap["passedAt"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "passedAt")
    }
  }

  public var enactedAt: String? {
    get {
      return resultMap["enactedAt"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "enactedAt")
    }
  }

  public var agendaDate: String? {
    get {
      return resultMap["agendaDate"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "agendaDate")
    }
  }

  public var enactmentNumber: String? {
    get {
      return resultMap["enactmentNumber"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "enactmentNumber")
    }
  }

  public var updatedAt: String? {
    get {
      return resultMap["updatedAt"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "updatedAt")
    }
  }

  public var postDate: String {
    get {
      return resultMap["postDate"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "postDate")
    }
  }
}
