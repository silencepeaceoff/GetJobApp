//
//  PositionsListView.swift
//  GetJobApp
//
//  Created by Dmitrii Tikhomirov on 31.03.2024.
//

import SwiftUI

struct PositionsListView: View {
  @StateObject private var vm = PositionListViewModel(
    positionRepository: MockPositionRepository()
  )

  var body: some View {
    NavigationStack {

      List(vm.positions) { position in
        NavigationLink {
          PositionDetailsView(position: position)
        } label: {
          PositionListRow(position: position)
        }
      }
      .navigationTitle("Open Positions")
      .task {
        await vm.fetchPositions()
      }
      .alert("Error", isPresented: $vm.showAlert,
        actions: {
          Button("Ok") { }
        }, message: {
          Text(vm.alertMessage)
        }
      )

    }
  }
}



#Preview {
  PositionsListView()
}
