//
//  ContentView.swift
//  State and Binding
//
//  Created by Samantha Castillo
//

import SwiftUI


struct ContentView: View {
    @State var counter1 = 1
    @State var counter2 = 1
    @State var counter3 = 1
    
    var body: some View {
        VStack {
            Spacer()
            Text("\(counter1 + counter2 + counter3)")
                .font(.system(size: 100, weight: .bold, design: .rounded))
                .foregroundStyle(.black)
            Spacer()
            HStack {
                CounterButton(counter: $counter1, color: .red)
                CounterButton(counter: $counter2, color: .blue)
                CounterButton(counter: $counter3, color: .green)
                
            }
            
        }
    }
}

struct CounterButton: View {
    @Binding var counter: Int
    var color: Color
    
    var body: some View {
        HStack {
            Button {
                counter += 1
            } label: {
                Circle()
                    .frame(width: 120, height: 120)
                    .foregroundStyle(color)
                    .overlay(
                        Text("\(counter)")
                            .font(.system(size: 60, weight: .bold, design: .rounded))
                            .foregroundStyle(.white)
                    )
            }
        }
    }
}

#Preview {
    ContentView()
}
