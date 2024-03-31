//
//  UIImage+ext.swift
//  GetJobApp
//
//  Created by Dmitrii Tikhomirov on 31.03.2024.
//

import SwiftUI

extension UIImage: Identifiable {
  public var id: String {
    return self.pngData()?.base64EncodedString() ?? ""
  }
}
