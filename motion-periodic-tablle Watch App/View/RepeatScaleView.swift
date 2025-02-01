import SwiftUI


struct RepeatScaleAnimationValues {
    var scale0 = 0.0
    var scale1 = 0.0
    var scale2 = 0.0
    var scale3 = 0.0
    var scale4 = 0.0
}

struct RepeatScaleView: View {
    var body: some View {
        KeyframeAnimator(initialValue: RepeatScaleAnimationValues()) { value in
            ZStack {
                Rectangle()
                    .stroke(Color.red10, lineWidth: 5)
                    .frame(width: 100, height: 100)
                    .rotationEffect(.degrees(45))
                
                Rectangle()
                    .stroke(Color.red10, lineWidth: 5)
                    .frame(width: value.scale0*100, height: value.scale0*100)
                    .rotationEffect(.degrees(45))
                Rectangle()
                    .stroke(Color.red10, lineWidth: 5)
                    .frame(width: value.scale1*100, height: value.scale1*100)
                    .rotationEffect(.degrees(45))
                Rectangle()
                    .stroke(Color.red10, lineWidth: 5)
                    .frame(width: value.scale2*100, height: value.scale2*100)
                    .rotationEffect(.degrees(45))
                Rectangle()
                    .stroke(Color.red10, lineWidth: 5)
                    .frame(width: value.scale3*100, height: value.scale3*100)
                    .rotationEffect(.degrees(45))
            }
        } keyframes: { _ in
            KeyframeTrack(\.scale0) {
                LinearKeyframe(1.0, duration: 1.0)
                SpringKeyframe(2.5, duration: 1.0, spring: .smooth)
                SpringKeyframe(0.0, duration: 0.5, spring: .smooth)
            }
            KeyframeTrack(\.scale1) {
                LinearKeyframe(0.0, duration: 0.2)
                LinearKeyframe(1.0, duration: 0.8)
                SpringKeyframe(1.9, duration: 1.0, spring: .smooth)
                SpringKeyframe(0.0, duration: 0.5, spring: .smooth)
            }
            KeyframeTrack(\.scale2) {
                LinearKeyframe(0.0, duration: 0.4)
                LinearKeyframe(1.0, duration: 0.6)
                SpringKeyframe(1.6, duration: 1.0, spring: .smooth)
                SpringKeyframe(0.0, duration: 0.5, spring: .smooth)
            }
            KeyframeTrack(\.scale3) {
                LinearKeyframe(0.0, duration: 0.6)
                LinearKeyframe(1.0, duration: 0.4)
                SpringKeyframe(1.3, duration: 1.0, spring: .smooth)
                SpringKeyframe(0.0, duration: 0.5, spring: .smooth)
            }
        }
    }
}

#Preview {
    RepeatScaleView()
}
