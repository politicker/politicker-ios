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
  let url = ProcessInfo.processInfo.environment["API_URL"]

//"https://api.politicker-internal.net/graphql"
  private(set) lazy var apollo = ApolloClient(url: URL(string: url!)!)
}

