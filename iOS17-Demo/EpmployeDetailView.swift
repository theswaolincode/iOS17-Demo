//
//  EpmployeDetailView.swift
//  iOS17-Demo
//
//  Created by Daniel Ayala on 24/9/23.
//

import SwiftUI

struct EpmployeDetailView: View {
    let employee: Employee
    
    var body: some View {
        Form {
            LabeledContent ("First Name", value: employee.firstName)
            LabeledContent("Last Name", value: employee.lastName)
            LabeledContent ("Email" , value: employee.email)
                .navigationTitle ("Employees Detail")
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    EpmployeDetailView(employee: .preview)
}


