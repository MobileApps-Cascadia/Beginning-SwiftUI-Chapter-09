import SwiftUI

struct FileView: View {
    @State private var isToggled = false
    @State private var imageSize: CGFloat = 200
    @State private var imageBackground: Color = .white
    @State private var isBackgroundToggled = false
    
    var body: some View {
        ZStack {
            Color.white.edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 20) {
                Spacer()
                
                Image(systemName: "swift")
                    .resizable()
                    .scaledToFit()
                    .frame(width: imageSize, height: imageSize)
                    .foregroundColor(isToggled ? .green : .orange)
                    .background(imageBackground)
                    .padding(.top, 50)
                
                Toggle(isOn: $isToggled) {
                    Text("Toggle Image Color")
                }
                
                Toggle(isOn: $isBackgroundToggled) {
                    Text("Toggle Image Background")
                }
                .onChange(of: isBackgroundToggled) { value in
                    imageBackground = value ? .black : .white
                }
                
                Stepper(
                    onIncrement: {
                        imageSize += 20
                    },
                    onDecrement: {
                        imageSize -= 20
                    },
                    label: { Text("Image Size: \(Int(imageSize))") }
                )
                
                Slider(
                    value: $imageSize,
                    in: 50...300,
                    step: 10
                )
                .padding(.horizontal, 20)
                
                Spacer()
            }
        }
    }
}

struct FileView_Previews: PreviewProvider {
    static var previews: some View {
        FileView()
    }
}
