//
//  BasicCircle.swift
//  motion-periodic-tablle Watch App
//
//  Created by Yuki Kanai on 2025/02/02.
//

import SwiftUI

struct BasicCircleAnimationValues {
    var circle0 = 0.0
    var circle1 = 0.0
    var circle2 = 0.0
    var rotate = 0.0
}

struct BasicCircle: View {
    var body: some View {
        KeyframeAnimator(initialValue: BasicCircleAnimationValues()) { value in
            ZStack {
                Color.white.ignoresSafeArea()
                Circle()
                    .stroke(lineWidth: 100)
                    .foregroundColor(.gray02)
                    .frame(width: value.circle0, height: value.circle0)
                Circle()
                    .stroke(lineWidth: 50)
                    .foregroundColor(.gray04)
                    .frame(width: value.circle1, height: value.circle1)
                Circle()
                    .stroke(style: StrokeStyle(lineWidth: 2, dash: [10, 5]))
                    .foregroundColor(.gray02)
                    .frame(width: value.circle2, height: value.circle2)
                    .rotationEffect(.degrees(value.rotate))
            }
        } keyframes: { _ in
            KeyframeTrack(\.circle0) {
                SpringKeyframe(300, duration: 1.2, spring: .bouncy)
                SpringKeyframe(400, duration: 1.2, spring: .bouncy)
            }
            KeyframeTrack(\.circle1) {
                LinearKeyframe(0, duration: 0.05)
                SpringKeyframe(170, duration: 1.15, spring: .bouncy)
                SpringKeyframe(400, duration: 1.2, spring: .bouncy)
            }
            KeyframeTrack(\.circle2) {
                SpringKeyframe(200, duration: 1.2, spring: .bouncy)
                SpringKeyframe(400, duration: 1.2, spring: .bouncy)
            }
            KeyframeTrack(\.rotate) {
                LinearKeyframe(360, duration: 2.4)
            }
        }
    }
}

#Preview {
    BasicCircle()
}
