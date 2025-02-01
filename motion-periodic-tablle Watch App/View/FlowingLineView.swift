import SwiftUI

struct FlowingLineAnimationValues {
    var from = 0.0
    var to = 0.0
}

struct FlowingLineView: View {
    var body: some View {
        KeyframeAnimator(initialValue: FlowingLineAnimationValues()) { value in
            GeometryReader { geometry in
                ZStack {
                    // 下地
                    Circle()
                        .trim(from: 0, to: 0.25)
                        .stroke(Color.green00, lineWidth: 10)
                        .frame(width: 240)
                        .scaleEffect(x: 1, y: -1)
                        .position(x: 0, y: geometry.size.height)
                    Circle()
                        .trim(from: 0, to: 0.25)
                        .stroke(Color.green00, lineWidth: 10)
                        .frame(width: 200)
                        .scaleEffect(x: 1, y: -1)
                        .position(x: 0, y: geometry.size.height)
                    Circle()
                        .trim(from: 0, to: 0.25)
                        .stroke(Color.green00, lineWidth: 10)
                        .frame(width: 160)
                        .scaleEffect(x: 1, y: -1)
                        .position(x: 0, y: geometry.size.height)
                    Circle()
                        .trim(from: 0, to: 0.25)
                        .stroke(Color.green00, lineWidth: 10)
                        .frame(width: 120)
                        .scaleEffect(x: 1, y: -1)
                        .position(x: 0, y: geometry.size.height)
                    Circle()
                        .trim(from: 0, to: 0.25)
                        .stroke(Color.green00, lineWidth: 10)
                        .frame(width: 80)
                        .scaleEffect(x: 1, y: -1)
                        .position(x: 0, y: geometry.size.height)
                    
                    Circle()
                        .trim(from: value.from, to: value.to)
                        .stroke(Color.green04, lineWidth: 10)
                        .frame(width: 240)
                        .scaleEffect(x: 1, y: -1)
                        .position(x: 0, y: geometry.size.height)
                    Circle()
                        .trim(from: value.from, to: value.to)
                        .stroke(Color.green04, lineWidth: 10)
                        .frame(width: 200)
                        .scaleEffect(x: 1, y: -1)
                        .position(x: 0, y: geometry.size.height)
                    Circle()
                        .trim(from: value.from, to: value.to)
                        .stroke(Color.green04, lineWidth: 10)
                        .frame(width: 160)
                        .scaleEffect(x: 1, y: -1)
                        .position(x: 0, y: geometry.size.height)
                    Circle()
                        .trim(from: value.from, to: value.to)
                        .stroke(Color.green04, lineWidth: 10)
                        .frame(width: 120)
                        .scaleEffect(x: 1, y: -1)
                        .position(x: 0, y: geometry.size.height)
                    Circle()
                        .trim(from: value.from, to: value.to)
                        .stroke(Color.green04, lineWidth: 10)
                        .frame(width: 80)
                        .scaleEffect(x: 1, y: -1)
                        .position(x: 0, y: geometry.size.height)
                }
            }.ignoresSafeArea()
        } keyframes: { _ in
            let duration = 0.5
            KeyframeTrack(\.from) {
                LinearKeyframe(0.0, duration: duration)
                LinearKeyframe(0.25, duration: duration)
            }
            KeyframeTrack(\.to) {
                LinearKeyframe(0.25, duration: duration)
                LinearKeyframe(0.25, duration: duration)
            }
        }
    }
   
}

#Preview {
    FlowingLineView()
}
