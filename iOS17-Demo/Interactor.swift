//
//  PersistanceInteractor.swift
//  iOS17-Demo
//
//  Created by Daniel Ayala on 23/9/23.
//

import Foundation

protocol Interactor {
    var bundleURL: URL { get }
    var docURL: URL { get }
    
    func loadEmployees() throws -> [Employee]
    func saveEmployees(_ employees: [Employee]) throws
}

extension Interactor {
    func loadEmployees() throws -> [Employee] {
        var url = docURL
        if !FileManager.default.fileExists(atPath: url.path()) {
            url = bundleURL
        }
        let data = try Data(contentsOf: url)
        return try JSONDecoder().decode([Employee].self, from: data)
    }
    
    func saveEmployees(_ employees: [Employee]) throws {
        let data = try JSONEncoder().encode(employees)
        try data.write(to: docURL, options: .atomic)
    }
}

struct IntercatorImplementation: Interactor {
    var bundleURL: URL {
        Bundle.main.url(forResource: "Employees", withExtension: "json")!
    }
    
    var docURL: URL {
        URL.documentsDirectory.appending(path: "Employees.json")
    }
    
}
