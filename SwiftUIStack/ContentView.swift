//
//  ContentView.swift
//  SwiftUIStack
//
//  Created by DARYL AGUSTIN on 9/21/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            VStack {
//                HeaderView()
                
                ZStack {
                    
                    PricingView(title: "Basic", price: "$9", textColor: .white, bgColor: .purple, icon: "burst.fill")
                        .padding()
                        .offset(x: 0, y: 180)
                            
                    PricingView(title: "Pro", price: "$19", textColor: .white, bgColor: Color(red: 255/255, green: 183/255, blue: 37/255),
                        icon: "dial")
                        .padding()
                        .scaleEffect(0.95)
                    
                   
                    
                    PricingView(title: "Team", price: "$299", textColor: .white, bgColor: Color(red: 62/255, green: 63/255, blue: 70/255), icon: "wand.and.rays")
                        .padding()
                        .scaleEffect(0.9)
                        .offset(x: 0, y: -180)

                    
                    }
                    
                }
                .padding(.horizontal)
                
                }
        
        
        }
    
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HeaderView: View {
    var body: some View {
            HStack {
                VStack(alignment: .leading, spacing: 2) {
                    Text("Choose")
                        .font(.system(.largeTitle, design: .rounded))
                        .fontWeight(.black)
                    Text("Your Plan")
                        .font(.system(.largeTitle, design: .rounded))
                        .fontWeight(.black)
                }

                Spacer()
            }
            .padding()
        }
    }
    


struct PricingView: View {
    
    var title: String
        var price: String
        var textColor: Color
        var bgColor: Color
        var icon: String?

        var body: some View {
            VStack {

                icon.map({
                    Image(systemName: $0)
                        .font(.largeTitle)
                        .foregroundColor(textColor)
                })

                Text(title)
                    .font(.system(.title, design: .rounded))
                    .fontWeight(.black)
                    .foregroundColor(textColor)
                Text(price)
                    .font(.system(size: 40, weight: .heavy, design: .rounded))
                    .foregroundColor(textColor)
                Text("per month")
                    .font(.headline)
                    .foregroundColor(textColor)
            }
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 100)
            .padding(40)
            .background(bgColor)
            .cornerRadius(10)
        }
    }
