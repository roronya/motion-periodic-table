import SwiftUI

struct RepeatRotateAnimationValues {
    var angle0: Double = 60
    var angle1: Double = 75
    var angle2: Double = 90
    var angle3: Double = 105
}

struct RepeatRotate: View {
    var body: some View {
        KeyframeAnimator(initialValue: RepeatRotateAnimationValues()) { value in
            ZStack {
                Rectangle()
                    .stroke(Color.green02, lineWidth: 2)
                    .rotationEffect(.degrees(45))
                    .frame(width: 120, height: 120)
                Rectangle()
                    .stroke(Color.green02, lineWidth: 2)
                    .rotationEffect(.degrees(value.angle0))
                    .frame(width: 120, height: 120)
                Rectangle()
                    .stroke(Color.green02, lineWidth: 2)
                    .rotationEffect(.degrees(value.angle1))
                    .frame(width: 120, height: 120)
                Rectangle()
                    .stroke(Color.green02, lineWidth: 2)
                    .rotationEffect(.degrees(value.angle2))
                    .frame(width: 120, height: 120)
                Rectangle()
                    .stroke(Color.green02, lineWidth: 2)
                    .rotationEffect(.degrees(value.angle3))
                    .frame(width: 120, height: 120)
            }
        } keyframes: { values in
            let d = 0.8
            KeyframeTrack(\.angle0) {
                SpringKeyframe(61, duration: 0.01, spring: .bouncy)
                LinearKeyframe(30, duration: d, timingCurve: .easeInOut)
                SpringKeyframe(31, duration: 0.01, spring: .bouncy)
                LinearKeyframe(60, duration: d, timingCurve: .easeInOut)
            }
            KeyframeTrack(\.angle1) {
                SpringKeyframe(76, duration: 0.01, spring: .bouncy)
                LinearKeyframe(15, duration: d, timingCurve: .easeInOut)
                SpringKeyframe(14, duration: 0.01, spring: .bouncy)
                LinearKeyframe(75, duration: d, timingCurve: .easeInOut)
            }
            KeyframeTrack(\.angle2) {
                SpringKeyframe(91, duration: 0.01, spring: .bouncy)
                LinearKeyframe(0, duration: d, timingCurve: .easeInOut)
                SpringKeyframe(-1, duration: 0.01, spring: .bouncy)
                LinearKeyframe(90, duration: d, timingCurve: .easeInOut)
            }
            KeyframeTrack(\.angle3) {
                SpringKeyframe(106, duration: 0.01, spring: .bouncy)
                LinearKeyframe(-15, duration: d, timingCurve: .easeInOut)
                SpringKeyframe(-16, duration: 0.01, spring: .bouncy)
                LinearKeyframe(105, duration: d, timingCurve: .easeInOut)
            }
        }
    }
}

#Preview {
    RepeatRotate()
}
