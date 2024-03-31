//
//  PositionModel.swift
//  GetJobApp
//
//  Created by Dmitrii Tikhomirov on 31.03.2024.
//

import SwiftUI

struct Position: Codable, Hashable, Identifiable {
  let id: Int?
  let imageURL: URL?
  let name: String?
  let salaryRange: String?
  let technologies: [String]?
  let description: String?
  let companyDescription: String?
}
