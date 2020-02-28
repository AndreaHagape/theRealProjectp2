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
    @State var former: String = "Former:"
    @State var newBand: String = "New:"
    @State var score: String = "Score:"
    
    var body: some View {
        
        ZStack{
            Color.green
            .edgesIgnoringSafeArea(.all)
        VStack{
        HStack{
            Spacer()
           
                TextField("Enter name:", text: $name)
            
    
           
            Spacer()
            
                TextField("Enter current:", text: $current)
            
            Spacer()
            
                TextField("Enter former:", text: $former)
                
                Spacer()
            
                TextField("Enter new:", text: $newBand)
                
                Spacer()
            }
            VStack{
                HStack{
                    Spacer()
            
                TextField("Enter score:", text: $score)
                    .frame(width: 50)
            
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
            .previewLayout(.fixed(width: 450, height: 70))
    }
}
