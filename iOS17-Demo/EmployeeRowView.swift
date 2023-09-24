//
//  EmployeeRowView.swift
//  iOS17-Demo
//
//  Created by Daniel Ayala on 24/9/23.
//

import SwiftUI

struct EmployeeRowView: View {
    let employee: Employee
    
    var body: some View {
        HStack {
            AsyncImage(url: employee.avatar) { image in
                image
                    .resizable()
                    .scaledToFill()
            } placeholder: {
                ProgressView()
            }
            .frame(width: 44, height: 44)
            .background(Color.gray)
            .clipShape(Circle())
            
            VStack(alignment: .leading) {
                Text("\(employee.lastName), \(employee.firstName)")
                    .font(.headline)
                Text(employee.email)
                    .font(.caption)
                    .foregroundStyle(.secondary)
                Text(employee.department.rawValue)
                    .font(.footnote)
                    .padding(.top, 5)
            }
        }
    }
}

#Preview {
    EmployeeRowView(employee: .preview)
        .previewLayout(.sizeThatFits)
}
