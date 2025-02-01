import SwiftUI

struct OrbitView: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                // 軌道（大きな円）を描画
                Circle()
                    .stroke(Color.blue04, lineWidth: 2)
                    .frame(width: 150, height: 150)
                    .position(x: 100, y: 100)
                
                // 軌道上を動く小さい円
                Circle()
                    .frame(width: 30, height: 30)
                    .offset(x: 0, y: 75) // 半径分ずらす、ずらす場所によって軌道の開始位置が変わる
                    .phaseAnimator([0.0, 1.0]) { content, phase in
                        content.rotationEffect(Angle.degrees(360 * phase))
                    } animation: { _ in
                            .timingCurve(.easeOut, duration: 0.8)
                            .repeatForever(autoreverses: false)
                    }
                    .position(x : 100, y:100) // 軌道と同じ座標を指定する
                    .foregroundColor(.blue04)
            }
        }
    }
}

#Preview {
    OrbitView()
}
