import SwiftUI

/// Keeping the access modifier public to allow full access by other modules and also the importing project
public struct RectangleView: View {
    public var topGradientColor: Color
    public var bottomGradientColor: Color
    public var strokeWidth: CGFloat

    public init(topGradientColor: Color = Color.blue, bottomGradientColor: Color = Color.green, strokeWidth: CGFloat = 20) {
        self.topGradientColor = topGradientColor
        self.bottomGradientColor = bottomGradientColor
        self.strokeWidth = strokeWidth
    }

    public var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 40)
                .stroke(
                    LinearGradient(
                        gradient: Gradient(colors: [topGradientColor, bottomGradientColor]),
                        startPoint: .top,
                        endPoint: .bottom
                    ),
                    lineWidth: strokeWidth
                )
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .aspectRatio(1.2, contentMode: .fit)
    }
}
