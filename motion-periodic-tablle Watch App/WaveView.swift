//
//  WaveView.swift
//  motion-periodic-tablle Watch App
//
//  Created by Yuki Kanai on 2025/02/01.
//

import SwiftUI

struct WaveAnimationValues {
    var scale0 = 0.0
    var scale1 = 0.0
    var scale2 = 0.0
    var scale3 = 0.0
}

struct WaveView: View {
    var body: some View {
        KeyframeAnimator(initialValue: WaveAnimationValues()) { value in
            ZStack {
                Circle().stroke(lineWidth: 10).scaleEffect(value.scale0)
                Circle().stroke(lineWidth: 10).scaleEffect(value.scale1)
                Circle().stroke(lineWidth: 10).scaleEffect(value.scale2)
            }
        } keyframes: { _ in
            KeyframeTrack(\.scale0) {
                LinearKeyframe(2.0, duration: 1.2)
                LinearKeyframe(0.0, duration: 0.0)
            }
            KeyframeTrack(\.scale1) {
                LinearKeyframe(0.0, duration: 0.4)
                LinearKeyframe(2.0, duration: 1.2)
                LinearKeyframe(0.0, duration: 0.0)
            }
            KeyframeTrack(\.scale2) {
                LinearKeyframe(0.0, duration: 0.8)
                LinearKeyframe(2.0, duration: 1.2)
                LinearKeyframe(0.0, duration: 0.0)
            }
        }
    }
}

#Preview {
    WaveView()
}
