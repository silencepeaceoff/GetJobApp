//
//  PositionListViewModel.swift
//  GetJobApp
//
//  Created by Dmitrii Tikhomirov on 31.03.2024.
//

import SwiftUI

@MainActor
class PositionListViewModel: ObservableObject {
  private let positionRepository: PositionRepository

  @Published private(set) var positions: [Position] = []

  @Published var showAlert = false
  @Published private(set) var alertMessage = ""

  init(positionRepository: PositionRepository) {
    self.positionRepository = positionRepository
  }

  func fetchPositions() async {
    do {
      self.positions = try await positionRepository.fetchPositions()

    } catch {
      self.handleError(error)
    }
  }

  func handleError(_ error: Error) {
    showAlert = true
    alertMessage = error.localizedDescription
  }

}
