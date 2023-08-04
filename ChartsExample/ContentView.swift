//
//  ContentView.swift
//  ChartsExample
//
//  Created by Jhosel Badillo Cortes on 04/08/23.
//

import SwiftUI

struct Sales : Hashable {
    var id = UUID()
    var product: String
    var amount : Int
    var color: Color
}

struct ContentView: View {
    
    var data: [Sales] = [
        .init(product: "T-Shirt", amount: 23, color: .green),
        .init(product: "Sweater", amount: 17, color: .orange),
        .init(product: "Caps", amount: 34, color: .purple)
    ]
    var body: some View {
        TabView{
            PieChart(sales: data)
                .tabItem {
                    Label("Pie Chart", systemImage: "chart.pie")
                }
            BarChart(sales: data)
                .tabItem {
                    Label("Bar Chart", systemImage: "chart.bar.fill")
                }
        }
    }
}

#Preview {
    ContentView()
}
