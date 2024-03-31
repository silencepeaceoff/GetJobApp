//
//  PositionDetailsView.swift
//  GetJobApp
//
//  Created by Dmitrii Tikhomirov on 31.03.2024.
//

import SwiftUI

struct PositionDetailsView: View {
  @StateObject private var vm = PositionDetailsViewModel()
  @State private var screenshotImage: UIImage? = nil
  
  let position: Position

  var body: some View {
    ScrollView {
      VStack(alignment: .leading) {
        AsyncImage(url: position.imageURL) { phase in
          if let image = phase.image {
            image
              .resizable()
              .scaledToFit()
              .frame(maxWidth: .infinity)
          } else {
            ProgressView()
          }
        }

        if let name = position.name {
          Text(name)
            .font(.title2)
            .padding(.top)
        }

        if let salaryRange = position.salaryRange {
          Text(salaryRange)
            .font(.subheadline)
        }

        Text("Technologies:")
          .font(.headline)
          .padding(.top)

        if let technologies = position.technologies {
          ForEach(technologies, id: \.self) { technology in
            Text(technology)
              .padding(.bottom, 5)
          }
        }

        Text("Description:")
          .font(.headline)
          .padding(.top)

        if let description = position.description {
          Text(description)
            .padding(.bottom)
        }

        Text("Company Description:")
          .font(.headline)
          .padding(.top)

        if let companyDescription = position.companyDescription {
          Text(companyDescription)
        }

        Spacer()

        Button {
          screenshotImage = vm.takeScreenshot()
        } label: {
         Image(systemName: "square.and.arrow.up")
        }
        .sheet(item: $screenshotImage) { image in
          ShareSheet(activityItems: [image])
        }
        .padding(.top)

      }
      .padding()
    }
    .navigationTitle("Position Details")
  }
}


#Preview {
  PositionDetailsView(
    position: Position(
      id: 713, imageURL: nil,
      name: "Meta", salaryRange: "€40000-50000",
      technologies: ["technologie_1", "technologie_2"], description: "description...",
      companyDescription: "companyDescription..."
    )
  )
}
