//
//  FetchPositionsUseCase.swift
//  GetJobApp
//
//  Created by Dmitrii Tikhomirov on 31.03.2024.
//

import Foundation

protocol FetchPositionsUseCase {
  func execute() async throws -> [Position]
}
