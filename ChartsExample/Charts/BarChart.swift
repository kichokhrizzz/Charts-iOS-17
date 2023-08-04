//
//  BarChart.swift
//  ChartsExample
//
//  Created by Jhosel Badillo Cortes on 04/08/23.
//

import SwiftUI
import Charts

struct BarChart: View {
    var sales: [Sales]
    var body: some View {
        VStack(alignment: .leading){
            Text("Sales")
                .font(.title)
            Text("July 2023")
                .font(.footnote)
            Chart{
                ForEach(sales, id: \.self) {
                    sale in
                    BarMark(
                        x: .value("Product", sale.product),
                        y: .value("Amount", sale.amount)
                    ).foregroundStyle(sale.color)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                }
                
            }.frame(width: 250, height: 500)
            
            
        }.padding()
    }
}

