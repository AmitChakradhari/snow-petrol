
import UIKit

class SnowView: UIView {
    var snowImage: UIImage?
    override class var layerClass: AnyClass{
        return CAEmitterLayer.self
    }
    func makeEmitterCell(color: UIColor, scale: CGFloat, velocity: CGFloat) -> CAEmitterCell{
        let cell = CAEmitterCell()
        cell.birthRate = 10
        cell.color = color.cgColor
        cell.lifetime = 20
        cell.scale = scale
        cell.scaleRange = scale/3
        cell.velocity = velocity
        cell.velocityRange = velocity/4
        cell.lifetimeRange = 0
        cell.emissionLongitude = .pi
        cell.emissionRange = .pi/8
        cell.contents = snowImage!.cgImage
        return cell
    }
    override func layoutSubviews() {
        let emitter = self.layer as! CAEmitterLayer
        emitter.emitterShape = .line
        emitter.position = CGPoint(x: 2 * bounds.midX, y: 0)
        emitter.emitterSize = CGSize(width: bounds.size.width, height: 1)
        
        let near = makeEmitterCell(color: UIColor(white: 1, alpha: 1), scale: 0.3, velocity: 100)
        let middle = makeEmitterCell(color: UIColor(white: 1, alpha: 0.66), scale: 0.2, velocity: 80)
        let far = makeEmitterCell(color: UIColor(white: 1, alpha: 0.33), scale: 0.1, velocity: 60)
        emitter.emitterCells = [near, middle, far]
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
