//
//  ContentView.swift
//  iOS17-Demo
//
//  Created by Daniel Ayala on 23/9/23.
//

import SwiftUI

struct ContentView: View {
    @Environment(ViewModel.self) var viewModel
    
    var body: some View {
        @Bindable var modelLogicBinding = viewModel.modelLogic
        
        NavigationStack {
            List(viewModel.modelLogic.employees ) { employee in
                EmployeeRowView(employee: employee)
            }
            .navigationDestination(for: Employee.self, destination: { employee in
                EpmployeDetailView(employee: employee)
            })
            .navigationTitle("NTT Data Employees")
        }
        .alert("App error",
               isPresented: $modelLogicBinding.showAlert) {
        } message: {
            Text(viewModel.modelLogic.alertMessage)
        }
    }
}

#Preview {
    ContentView()
        .environment(ViewModel.preview)
}
