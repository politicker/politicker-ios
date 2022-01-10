//
//  Network.swift
//  politicker
//
//  Created by Harrison Borges on 12/27/21.
//

import Foundation
import Apollo

class Network {
  static let shared = Network()

//"https://api.politicker-internal.net/graphql"
  private(set) lazy var apollo = ApolloClient(url: URL(string: "http://localhost:8001/graphql")!)
}

