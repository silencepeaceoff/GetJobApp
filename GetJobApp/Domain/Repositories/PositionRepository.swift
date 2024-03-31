//
//  PositionRepository.swift
//  GetJobApp
//
//  Created by Dmitrii Tikhomirov on 31.03.2024.
//

import Foundation

protocol PositionRepository {
  func fetchPositions() async throws -> [Position]
}
