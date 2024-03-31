//
//  DefaultFetchPositionsUseCase.swift
//  GetJobApp
//
//  Created by Dmitrii Tikhomirov on 31.03.2024.
//

import Foundation

class DefaultFetchPositionsUseCase: FetchPositionsUseCase {
  private let positionRepository: PositionRepository

  init(positionRepository: PositionRepository) {
    self.positionRepository = positionRepository
  }

  func execute() async throws -> [Position] {
    return try await positionRepository.fetchPositions()
  }
}
