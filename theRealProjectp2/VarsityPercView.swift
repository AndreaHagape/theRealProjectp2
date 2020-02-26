//
//  VarsityPercView.swift
//  theRealProjectp2
//
//  Created by JOHNSON, OLIVIA on 2/5/20.
//  Copyright © 2020 HAGAPE, ANDREA. All rights reserved.
//

import SwiftUI

struct VarsityPercView: View {
    
    @State private var students = ["Paul", "Taylor", "Adele"]

    var body: some View {
        NavigationView {
                List {
                    ForEach(students, id: \.self) { student in
                        Text(student) }
                .onDelete(perform: delete)
                }
                .navigationBarTitle(Text("Students"))
                    
                .navigationBarItems(trailing:
                    HStack {
                        EditButton() 
                            
                        
                    
                        Button(action: {self.addRow() })  {
                            Text("add")
                        }
                    })
        
                
        }
        
        }
    
        func delete(at offsets: IndexSet) {
            students.remove(atOffsets: offsets) }
            
        private func addRow() {
            self.students.append("New Student")
        }

}
    
struct VarsityPercView_Previews: PreviewProvider {
    static var previews: some View {
        VarsityPercView()
    }
}
    





                                                                                                                      
                                                      
