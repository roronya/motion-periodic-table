import SwiftUI
import WatchKit

struct TrimCircleAnimationValues {
    var from = 0.0
    var to = 0.0
}

struct TrimCircleView: View {
    var body: some View {
        // Circle().keyFrameAnimatorではtrimやstrokeできない。
        // .keyFrameAnimatorや.phaseAnimatorは抽象型にラップされるため、Circleの独自メソッドが呼び出せなくなる。
        // .phaseAnimatorではタプルの配列が使えないため、複数のパラメータを同時に動かしたいときはkeyFrameAnimatorを使う。
        KeyframeAnimator(initialValue: TrimCircleAnimationValues()) { value in
            Circle()
                .trim(from: value.from, to: value.to)
                .stroke(lineWidth: 20)
                .rotationEffect(.degrees(-90))
        } keyframes: { _ in
            KeyframeTrack(\.from) {
                SpringKeyframe(0.0, duration: 0.8, spring: .smooth)
                SpringKeyframe(1.0, duration: 0.8, spring: .smooth)
            }
            KeyframeTrack(\.to) {
                SpringKeyframe(1.0, duration: 0.8, spring: .smooth)
                SpringKeyframe(1.0, duration: 0.8, spring: .smooth)
            }
        }
    }
}

struct TrimCircleView_Previews: PreviewProvider {
    static var previews: some View {
        TrimCircleView()
    }
}
