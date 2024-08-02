
import SwiftUI

struct popUp: View {
    var image: Image
    @Binding var isPresented: Bool

    var body: some View {
        VStack {
            Text("The duck of the day is...")
                .foregroundColor(.black)
                .background(Rectangle() .foregroundColor(Color(.white)))
                .cornerRadius(15.0)
                .fontWeight(.bold)
                .fontWeight(.black)
                .padding()
            image
                .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .padding()
            Button(action: {
                isPresented = false
            }) {
                Text("Close")
                    .foregroundColor(.black)
                    .padding()
                    .background(Rectangle() .foregroundColor(Color(.white)))
                    .cornerRadius(15.0)
                    .fontWeight(.bold)
            }
            .padding()
        }
        .background(Color.green.opacity(0.6))
        .edgesIgnoringSafeArea(.all)
    }
}

