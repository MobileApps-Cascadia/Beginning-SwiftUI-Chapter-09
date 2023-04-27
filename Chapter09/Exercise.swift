import SwiftUI
@available(iOS 15.0, *) // For Slider's min & max labels

// Frame found at https://publicdomainvectors.org/en/free-clipart/Gloss-transparent-green-frame-vector-image/25937.html

struct Exercise: View {
    
    @State var myToggle = true
    @State var sliderValue = 0.25
    

    var body: some View {
        VStack {
            ZStack {
                Rectangle()
                    .frame(width: 200, height: 300)
                    .foregroundColor(myToggle ? .pink : .blue)
                    .scaleEffect(sliderValue)
                    
                Image("Green-Frame")
                    .resizable()
                    .frame(width: 210, height: 330)
                    .scaleEffect(sliderValue)
                
            }
                .frame(width:200, height: 300)
            Toggle(myToggle ? "Pink" : "Blue", isOn: $myToggle)


            
            
            VStack {
                Text("Use the tools below to adjust the size of the image above")
                    .multilineTextAlignment(.center)
                    
                Stepper(value: $sliderValue, in: 0.25...1.25, step: 0.25){
                    Text("Stepper value = \(sliderValue)")
                }
                
            }.padding()
            
            VStack {
                Slider(value: $sliderValue, in:0.25...1.25)
                Spacer()
            }
        }
        .padding()
    }
    
}
struct ExercisePreviews: PreviewProvider {
    static var previews: some View {
        Exercise()
    }
}
