
import UIKit

class GradientView: UIView {
    
    var startColor: UIColor = UIColor.white
    var endColor: UIColor = UIColor.white
    
    override class var layerClass: AnyClass{
        return CAGradientLayer.self
    }
    override func layoutSubviews() {
        (layer as! CAGradientLayer).colors = [startColor.cgColor, endColor.cgColor]
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
