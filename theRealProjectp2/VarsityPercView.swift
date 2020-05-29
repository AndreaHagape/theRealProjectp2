 
import SwiftUI
 
struct ListItem: Identifiable, Equatable {
    var id = UUID()
    var name: String
    var score: String
    var band: String
}
 
class MyListClass: ObservableObject {
    @Published var items = [ListItem]()
    
}
 
struct VarsityPercView: View {
 
    @ObservedObject var myList = MyListClass()
    @Environment(\.managedObjectContext) var moc
    @FetchRequest(entity: VPStudent.entity(), sortDescriptors: []) var students: FetchedResults<VPStudent>
 
    var body: some View {
      
        
        NavigationView {
            List {
                ForEach(students, id: \.id) {
                    student in
                    // Pass binding to item into VPCalculatorView
                    NavigationLink(destination: VPCalculatorView(
                        student: student)) {
                        Text(student.name  + student.score  + student.band)
                    }
                }

            }
                   .navigationBarTitle(Text("Varsity Percussion"))
            .navigationBarItems(trailing:
                Button(action: {
                    let student = Student(context: self.moc)
                    student.id = UUID()
                    student.name = "New Student"
                    student.score = " Score: "
                    student.band = " Band: "
                    try? self.moc.save()
                }) {
                    Image(systemName: "plus")
                }
            )
                .navigationViewStyle(StackNavigationViewStyle())

        }
    }
}
 
 
 
struct VarsityPercView_Previews: PreviewProvider {
    static var previews: some View {
        VarsityPercView()
    }
}
 
 
 
 
 
 
                                                                                                                      
                                           
