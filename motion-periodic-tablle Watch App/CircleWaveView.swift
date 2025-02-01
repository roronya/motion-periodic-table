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
}

struct CircleWaveView: View {
    var body: some View {
        KeyframeAnimator(initialValue: WaveAnimationValues()) { value in
            ZStack {
                Circle().stroke(Color.green03, lineWidth: 10).scaleEffect(value.scale0)
                Circle().stroke(Color.green03, lineWidth: 10).scaleEffect(value.scale1)
                Circle().stroke(Color.green03, lineWidth: 10).scaleEffect(value.scale2)
            }
        } keyframes: { _ in
            KeyframeTrack(\.scale0) {
                LinearKeyframe(0.7, duration: 0.4)
                LinearKeyframe(1.4, duration: 0.4)
                LinearKeyframe(2.1, duration: 0.4)
            }
            KeyframeTrack(\.scale1) {
                LinearKeyframe(0.7, duration: 0.0)
                LinearKeyframe(1.4, duration: 0.4)
                LinearKeyframe(2.1, duration: 0.4)
                LinearKeyframe(0.0, duration: 0.0)
                LinearKeyframe(0.7, duration: 0.4)
            }
            KeyframeTrack(\.scale2) {
                LinearKeyframe(1.4, duration: 0.0)
                LinearKeyframe(2.1, duration: 0.4)
                LinearKeyframe(0.0, duration: 0.0)
                LinearKeyframe(0.7, duration: 0.4)
                LinearKeyframe(1.4, duration: 0.4)
            }
        }
    }
}

struct RectangleWaveView: View {
    var body: some View {
        KeyframeAnimator(initialValue: WaveAnimationValues()) { value in
            ZStack {
                Rectangle()
                    .stroke(Color.blue03, lineWidth: 10)
                    .frame(width: value.scale0*100, height: value.scale0*100)
                Rectangle()
                    .stroke(Color.blue03, lineWidth: 10)
                    .frame(width: value.scale1*100, height: value.scale1*100)
                Rectangle()
                    .stroke(Color.blue03, lineWidth: 10)
                    .frame(width: value.scale2*100, height: value.scale2*100)
            }
        } keyframes: { _ in
            KeyframeTrack(\.scale0) {
                LinearKeyframe(0.0, duration: 0.0)
                LinearKeyframe(1.0, duration: 0.4)
                LinearKeyframe(2.0, duration: 0.4)
                LinearKeyframe(3.0, duration: 0.4)
            }
            KeyframeTrack(\.scale1) {
                LinearKeyframe(1.0, duration: 0.0)
                LinearKeyframe(2.0, duration: 0.4)
                LinearKeyframe(3.0, duration: 0.4)
                LinearKeyframe(0.0, duration: 0.0)
                LinearKeyframe(1.0, duration: 0.4)
            }
            KeyframeTrack(\.scale2) {
                LinearKeyframe(2.0, duration: 0.0)
                LinearKeyframe(3.0, duration: 0.4)
                LinearKeyframe(0.0, duration: 0.0)
                LinearKeyframe(1.0, duration: 0.4)
                LinearKeyframe(2.0, duration: 0.4)
            }
        }
    }
}

#Preview {
    RectangleWaveView()
    //CircleWaveView()
}
