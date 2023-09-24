//
//  ModelLogic.swift
//  iOS17-Demo
//
//  Created by Daniel Ayala on 24/9/23.
//

import SwiftUI

@Observable
final class ModelLogic {
    static let shared = ModelLogic()
    
    let intercator: Interactor
    var employees: [Employee]
    
    var showAlert = false
    var alertMessage = ""
    
    init(intercator: Interactor = IntercatorImplementation()) {
        self.intercator = intercator
        do {
            self.employees = try intercator.loadEmployees()
        } catch {
            print(error)
            self.employees = []
            alertMessage = error.localizedDescription
            showAlert.toggle()
        }
    }
}
