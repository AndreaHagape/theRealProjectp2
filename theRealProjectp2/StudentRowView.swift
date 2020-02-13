//
//  StudentRowView.swift
//  theRealProjectp2
//
//  Created by Shah, Rani on 2/6/20.
//  Copyright © 2020 HAGAPE, ANDREA. All rights reserved.
//

import SwiftUI

struct StudentRowView: View {
    @State var name: String = "Student:"
    @State var instrument: String = "Instrument:"
    @State var current: String = "Current:"
    @State var former: String = "Fomer:"
    @State var newBand: String = "New:"
    @State var score: String = "Score"
    
    var body: some View {
        ZStack{
            Color.green
            .edgesIgnoringSafeArea(.all)
        VStack{
        HStack{
            Spacer()
            VStack{
                TextField("Enter name:", text: $name)
            }
    
           
            Spacer()
            VStack{
                TextField("Enter current:", text: $current)
            }
            Spacer()
            VStack{
                TextField("Enter former:", text: $former)
                }
                Spacer()
            VStack{
                TextField("Enter new:", text: $newBand)
                }
                Spacer()
            }
            VStack{
                HStack{
                    Spacer()
            VStack{
                TextField("Enter score:", text: $score)
                    .frame(width: 50)
            }
            Spacer()
                }
            }
        }
       
        }
        }
        }
    


struct StudentRowView_Previews: PreviewProvider {
    static var previews: some View {
        StudentRowView()
            .previewLayout(.fixed(width: 400, height: 70))
    }
}
