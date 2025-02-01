import SwiftUI
import WatchKit

struct OpacityView: View {
    var duration: TimeInterval
    var extraBounce: Double
    
    @State private var selected: Bool = false
    var body: some View {
        Circle()
            .phaseAnimator([true, false]) { content, phase in
                // phaseAnimatorの第位置引数に与えた配列に従ってphaseが切り替わる。
                // phaseに合わせてopacityを切り替えることで点滅を実現できる。                content.opacity(phase ? 1 : 0)
                content.opacity(phase ? 1.0 : 0.0)
            } animation: { phase in
                // opacityの変化時にどういうアニメーションにするかを決められる。
                // defaultはsmoothだが、easeInOutなども指定可能。
                .smooth(duration: duration, extraBounce: extraBounce)
            }
    }
}


struct DebugView_Previews: PreviewProvider {
    static var previews: some View {
        OpacityView(duration: 0.8, extraBounce: 0.1)
    }
}
