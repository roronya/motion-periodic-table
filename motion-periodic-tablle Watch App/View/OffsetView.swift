import SwiftUI

struct OffsetAnimationValues {
    var from0 = 0.0
    var to0 = 0.0
    var from1 = 0.0
    var to1 = 0.0
    var from2 = 0.0
    var to2 = 0.0
}

struct OffsetView: View {
    var body: some View {
        KeyframeAnimator(initialValue: OffsetAnimationValues()) { value in
            ZStack {
                Circle()
                    .trim(from: value.from0, to: value.to0)
                    .stroke(lineWidth: 20)
                Circle()
                    .trim(from: value.from1, to: value.to1)
                    .stroke(lineWidth: 20)
                Circle()
                    .trim(from: value.from2, to: value.to2)
                    .stroke(lineWidth: 20)
            }
        } keyframes: { _ in
            KeyframeTrack(\.from0) {
                SpringKeyframe(0.0, duration: 0.1, spring: .smooth)
                SpringKeyframe(0.1, duration: 0.1, spring: .smooth)
                SpringKeyframe(0.2, duration: 0.1, spring: .smooth)
                SpringKeyframe(0.3, duration: 0.1, spring: .smooth)
                SpringKeyframe(0.4, duration: 0.1, spring: .smooth)
                SpringKeyframe(0.5, duration: 0.1, spring: .smooth)
                SpringKeyframe(0.6, duration: 0.1, spring: .smooth)
                SpringKeyframe(0.7, duration: 0.1, spring: .smooth)
                SpringKeyframe(0.8, duration: 0.1, spring: .smooth)
                SpringKeyframe(0.9, duration: 0.1, spring: .smooth)
            }
            KeyframeTrack(\.to0) {
                SpringKeyframe(0.1, duration: 0.1, spring: .smooth)
                SpringKeyframe(0.2, duration: 0.1, spring: .smooth)
                SpringKeyframe(0.3, duration: 0.1, spring: .smooth)
                SpringKeyframe(0.4, duration: 0.1, spring: .smooth)
                SpringKeyframe(0.5, duration: 0.1, spring: .smooth)
                SpringKeyframe(0.6, duration: 0.1, spring: .smooth)
                SpringKeyframe(0.7, duration: 0.1, spring: .smooth)
                SpringKeyframe(0.8, duration: 0.1, spring: .smooth)
                SpringKeyframe(0.9, duration: 0.1, spring: .smooth)
                SpringKeyframe(1.0, duration: 0.1, spring: .smooth)
            }
            KeyframeTrack(\.from1) {
                SpringKeyframe(0.3, duration: 0.1, spring: .smooth)
                SpringKeyframe(0.4, duration: 0.1, spring: .smooth)
                SpringKeyframe(0.5, duration: 0.1, spring: .smooth)
                SpringKeyframe(0.6, duration: 0.1, spring: .smooth)
                SpringKeyframe(0.7, duration: 0.1, spring: .smooth)
                SpringKeyframe(0.8, duration: 0.1, spring: .smooth)
                SpringKeyframe(0.9, duration: 0.1, spring: .smooth)
                SpringKeyframe(1.0, duration: 0.1, spring: .smooth)
                SpringKeyframe(0.1, duration: 0.1, spring: .smooth)
                SpringKeyframe(0.2, duration: 0.1, spring: .smooth)
            }
            KeyframeTrack(\.to1) {
                SpringKeyframe(0.4, duration: 0.1, spring: .smooth)
                SpringKeyframe(0.5, duration: 0.1, spring: .smooth)
                SpringKeyframe(0.6, duration: 0.1, spring: .smooth)
                SpringKeyframe(0.7, duration: 0.1, spring: .smooth)
                SpringKeyframe(0.8, duration: 0.1, spring: .smooth)
                SpringKeyframe(0.9, duration: 0.1, spring: .smooth)
                SpringKeyframe(1.0, duration: 0.1, spring: .smooth)
                SpringKeyframe(0.1, duration: 0.1, spring: .smooth)
                SpringKeyframe(0.2, duration: 0.1, spring: .smooth)
                SpringKeyframe(0.3, duration: 0.1, spring: .smooth)
            }
            KeyframeTrack(\.from2) {
                SpringKeyframe(0.6, duration: 0.1, spring: .smooth)
                SpringKeyframe(0.7, duration: 0.1, spring: .smooth)
                SpringKeyframe(0.8, duration: 0.1, spring: .smooth)
                SpringKeyframe(0.9, duration: 0.1, spring: .smooth)
                SpringKeyframe(1.0, duration: 0.1, spring: .smooth)
                SpringKeyframe(0.1, duration: 0.1, spring: .smooth)
                SpringKeyframe(0.2, duration: 0.1, spring: .smooth)
                SpringKeyframe(0.3, duration: 0.1, spring: .smooth)
                SpringKeyframe(0.4, duration: 0.1, spring: .smooth)
                SpringKeyframe(0.5, duration: 0.1, spring: .smooth)
            }
            KeyframeTrack(\.to2) {
                SpringKeyframe(0.7, duration: 0.1, spring: .smooth)
                SpringKeyframe(0.8, duration: 0.1, spring: .smooth)
                SpringKeyframe(0.9, duration: 0.1, spring: .smooth)
                SpringKeyframe(1.0, duration: 0.1, spring: .smooth)
                SpringKeyframe(0.1, duration: 0.1, spring: .smooth)
                SpringKeyframe(0.2, duration: 0.1, spring: .smooth)
                SpringKeyframe(0.3, duration: 0.1, spring: .smooth)
                SpringKeyframe(0.4, duration: 0.1, spring: .smooth)
                SpringKeyframe(0.5, duration: 0.1, spring: .smooth)
                SpringKeyframe(0.6, duration: 0.1, spring: .smooth)
            }
        }
    }
}

#Preview {
    OffsetView()
}
