//
//  PositionListRow.swift
//  GetJobApp
//
//  Created by Dmitrii Tikhomirov on 31.03.2024.
//

import SwiftUI

struct PositionListRow: View {
  let position: Position

  var body: some View {
    HStack {
      if let url = position.imageURL {
        AsyncImage(url: url) { phase in
          if let image = phase.image {
            image
              .resizable()
              .scaledToFit()
              .frame(width: 50, height: 50)
          } else {
            ProgressView()
              .frame(width: 50, height: 50)
          }
        }
      }

      VStack(alignment: .leading) {
        if let name = position.name {
          Text(name)
            .font(.headline)
        }
      }
    }
  }
}

#Preview {
  PositionListRow(
    position: Position(
      id: 713, imageURL: nil,
      name: "Meta", salaryRange: "€40000-50000",
      technologies: ["technologie_1", "technologie_2"], description: "description...",
      companyDescription: "companyDescription..."
    )
  )
}
