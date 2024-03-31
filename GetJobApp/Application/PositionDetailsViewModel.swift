//
//  PositionDetailsViewModel.swift
//  GetJobApp
//
//  Created by Dmitrii Tikhomirov on 31.03.2024.
//

import SwiftUI

class PositionDetailsViewModel: ObservableObject {

  func takeScreenshot() -> UIImage? {
    guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
          let window = windowScene.windows.first else { return nil }

    let renderer = UIGraphicsImageRenderer(size: window.bounds.size)
    let image = renderer.image { context in
      window.drawHierarchy(in: window.bounds, afterScreenUpdates: true)
    }

    return image
  }

}
