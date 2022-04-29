import SwiftUI

public struct botaoverde: ButtonStyle {
    public func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .font(.system(size: 40))
            .padding()
            .background(.white)
            .foregroundColor(Color("verdecampo"))
            .clipShape(Capsule())
            .scaleEffect(configuration.isPressed ? 1.2 : 1.0)
    }
}
