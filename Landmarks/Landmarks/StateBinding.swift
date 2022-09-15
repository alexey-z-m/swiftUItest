import SwiftUI

struct StateBinding: View {
    @State var myTitle: String = "Tith is my TITLE!"
    
    var body: some View {
        VStack(spacing: 20){
            Text(myTitle)
            Button("Press Me!") {
                myTitle = "Button #1 was pressed"
            }
            Button {
                myTitle = "button #2 was pressed"
            } label: {
                Text("Start".uppercased())
                    .font(.headline)
                    .bold()
                    .foregroundColor(.white)
                    .padding()
                    .background(
                        Color.blue
                            .cornerRadius(10)
                            .shadow(radius: 10)
                    )
            }
            Button {
                myTitle = "button #3 was pressed"
            } label: {
                Image(systemName: "heart.fill")
                    .font(.system(size: 30))
                    .frame(width: 40, height: 40, alignment: .center)
                    .foregroundColor(.red)
                    .padding()
                    .background(
                        Color.white
                            .cornerRadius(40)
                            .shadow(radius: 10)
                    )
            }
            Button {
                myTitle = "button #4 was pressed"
            } label: {
                Text("Finish".uppercased())
                    .foregroundColor(.gray)
                    .padding()
                    .padding(.leading, 10)
                    .padding(.trailing, 10)
                    .font(.subheadline)
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(.gray, lineWidth: 2)
                    )
            }
        }
    }
}

struct StateBinding_Previews: PreviewProvider {
    static var previews: some View {
        StateBinding()
    }
}
