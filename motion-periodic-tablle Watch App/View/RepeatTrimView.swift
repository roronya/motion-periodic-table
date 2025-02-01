import SwiftUI

struct RepeatTrimAnimationValues {
    var from0 = 0.0
    var to0 = 0.0
    var from1 = 0.0
    var to1 = 0.0
    var from2 = 0.0
    var to2 = 0.0
}

struct RepeatTrimView: View {
    var body: some View {
        KeyframeAnimator(initialValue: RepeatTrimAnimationValues()) { value in
            Circle()
                .trim(from: value.from0, to: value.to0)
                .stroke(Color.green00, lineWidth: 20)
                .rotationEffect(.degrees(-90))
                .overlay {
                    Circle()
                        .trim(from: value.from1, to: value.to1)
                        .stroke(Color.green01, lineWidth: 20)
                        .rotationEffect(.degrees(-90))
                        .overlay {
                            Circle()
                                .trim(from: value.from2, to: value.to2)
                                .stroke(Color.green02, lineWidth: 20)
                                .rotationEffect(.degrees(-90))
                        }
                }
        } keyframes: { _ in
            let duration = 0.8
            KeyframeTrack(\.to0) {
                SpringKeyframe(1.0, duration: duration, spring: .smooth)
            }
            KeyframeTrack(\.to1) {
                SpringKeyframe(0.0, duration: 0.2, spring: .smooth)
                SpringKeyframe(1.0, duration: duration, spring: .smooth)
            }
            KeyframeTrack(\.to2) {
                SpringKeyframe(0.0, duration: 0.4, spring: .smooth)
                SpringKeyframe(1.0, duration: duration, spring: .smooth)
            }
            KeyframeTrack(\.from2) {
                SpringKeyframe(0.0, duration: 1.4, spring: .smooth)
                SpringKeyframe(1.0, duration: duration, spring: .smooth)
            }
            KeyframeTrack(\.from1) {
                SpringKeyframe(0.0, duration: 1.6, spring: .smooth)
                SpringKeyframe(1.0, duration: duration, spring: .smooth)
            }
            KeyframeTrack(\.from0) {
                SpringKeyframe(0.0, duration: 1.8, spring: .smooth)
                SpringKeyframe(1.0, duration: duration, spring: .smooth)
            }
        }
    }
}

#Preview {
    RepeatTrimView()
}
