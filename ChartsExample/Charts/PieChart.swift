//
//  PieChart.swift
//  ChartsExample
//
//  Created by Jhosel Badillo Cortes on 04/08/23.
//

import SwiftUI
import Charts

struct PieChart: View {
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
                    SectorMark(
                        angle: .value("Sales", sale.amount),
                        innerRadius: .ratio(0.5),
                        angularInset: 20
                    )
                    
                    .foregroundStyle(sale.color)
                }
                
            }.frame(width: 250, height: 500)
            
            HStack(){
                ForEach(sales, id:\.self ) { sale in
                    Circle()
                        .fill(sale.color)
                        .frame(width: 10, height: 10)
                    Text(sale.product)
                        .font(.footnote)
                    
                }
            }
            
        }.padding()
    }
}


