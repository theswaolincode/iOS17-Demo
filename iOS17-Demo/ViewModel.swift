//
//  ViewModel.swift
//  iOS17-Demo
//
//  Created by Daniel Ayala on 24/9/23.
//

import Foundation

@Observable
final class ViewModel {
    var modelLogic: ModelLogic
    
    init(modelLogic: ModelLogic = .shared) {
        self.modelLogic = modelLogic
    }
}
