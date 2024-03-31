//
//  ShareSheet.swift
//  GetJobApp
//
//  Created by Dmitrii Tikhomirov on 31.03.2024.
//

import SwiftUI

struct ShareSheet: UIViewControllerRepresentable {
  let activityItems: [Any]

  func makeUIViewController(context: Context) -> UIActivityViewController {
    return UIActivityViewController(activityItems: activityItems, applicationActivities: nil)
  }

  func updateUIViewController(_ uiViewController: UIActivityViewController, context: Context) {}
}
