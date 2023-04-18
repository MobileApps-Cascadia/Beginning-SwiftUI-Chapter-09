import SwiftUI
@available(iOS 15.0, *) // For Slider's min & max labels

// Frame found at https://publicdomainvectors.org/en/free-clipart/Gloss-transparent-green-frame-vector-image/25937.html

struct Exercise: View {
    @State var myToggle = true
    @State var sliderValue = 20.0
    
    var body: some View {
        VStack {
            ZStack {
                Rectangle()
                    .frame(width: CGFloat(sliderValue)*10, height: CGFloat(sliderValue) * 15)
                    .foregroundColor(myToggle ? .orange : .green)
                Image("Green-Frame")
                    .resizable()
                    .frame(width: CGFloat(sliderValue)*11, height: CGFloat(sliderValue) * 17)
            }
            .frame(width:200, height: 300)
            VStack {
                Toggle(myToggle ? "Orange" : "Green", isOn: $myToggle)
                Stepper(value: $sliderValue, in:10...20) {
                    Text("Stepper value = \(String(format:"%.2f", sliderValue))")
                }.padding()
            }
            VStack {
                Text("Adjust the size of the image")
                Slider(value: $sliderValue, in: 10...20, step: 1) {
                        Text("Rate UIKit's Awesomeness") // Doesn't appear on iOS
                                // but still gets used for accessibility, MacOS, etc
                    }
                    minimumValueLabel: {
                        Text("10")
                    } maximumValueLabel: {
                        Text("20")
                    }
                    .accentColor(.red)

                Spacer()
            }
        }
    }
}
struct ExercisePreviews: PreviewProvider {
    static var previews: some View {
        Exercise()
    }
}
