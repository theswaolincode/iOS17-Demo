//
//  PersistancePreview.swift
//  iOS17-Demo
//
//  Created by Daniel Ayala on 23/9/23.
//

import Foundation

struct InteractorImplementationPreview: Interactor {
    var bundleURL: URL {
        Bundle.main.url(forResource: "EmployeesPreview", withExtension: "json")!
    }
    
    var docURL: URL {
        URL.documentsDirectory.appending(path: "EmployeesPreview.json")
    }
}

extension ViewModel {
    static let preview = ViewModel(modelLogic: ModelLogic(intercator: InteractorImplementationPreview()))
}

extension Employee {
    static let preview = Employee(id: 1, firstName: "Daniel", lastName: "Ayala", email: "sedi@gmail.com", gender: .male, department: .engineering, avatar: URL(string: "https://robohash.org/benjaminrobinson.png")!)
}
