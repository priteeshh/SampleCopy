import SwiftUI

struct ProgressBar: View {
    @State var value: Float

    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Rectangle().frame(width: geometry.size.width, height: geometry.size.height)
                    .opacity(0.3)
                    .foregroundColor(Color(UIColor.gray))

                Rectangle().frame(width: min(CGFloat(self.value)*geometry.size.width, geometry.size.width), height: geometry.size.height)
                    .foregroundColor(Color(UIColor.green))
                    .animation(.linear)
            }.cornerRadius(45.0)
        }
    }
}
struct CustomProgressBar_Previews: PreviewProvider {
    static var previews: some View {
        ProgressBar(value: 0.01)
            .frame(height: 50)
            .padding()
    }
}
