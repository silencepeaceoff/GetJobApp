//
//  MockPositionRepository.swift
//  GetJobApp
//
//  Created by Dmitrii Tikhomirov on 31.03.2024.
//

import SwiftUI

class MockPositionRepository: PositionRepository {
  private let fetchService = FetchService()

  func fetchPositions() async throws -> [Position] {
    guard let url = URL(string: "https://8b324c952e65423faf9f8e30a6e5a7a7.api.mockbin.io/") else {
      throw NetworkError.invalidURL
    }

    return try await fetchService.fetchData(for: [Position].self, from: url)
  }
}
