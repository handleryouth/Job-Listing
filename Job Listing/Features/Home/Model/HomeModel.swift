//
//  HomeModel.swift
//  Job Listing
//
//  Created by Tony Gultom on 08/09/24.
//

import Foundation

struct JobModel: Identifiable, Decodable {
    var id: Int
    var company: String
    var logo: String
    var new: Bool
    var featured: Bool
    var position: String
    var role: String
    var level: String
    var postedAt: String
    var contract: String
    var location: String
    var languages: [String]
    var tools: [String]
}
