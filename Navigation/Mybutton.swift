import Foundation
import UIKit


@IBDesignable
final class MyButton: UIButton {


    override init(frame: CGRect){
        super.init(frame: frame)
         addGradient(self)
        
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    
    }
    
    override func layoutSubviews() {
       
    }
    
    
    func isRotated() -> Bool {
        return (UIDevice.current.orientation == UIDeviceOrientation.landscapeLeft ||
                UIDevice.current.orientation == UIDeviceOrientation.landscapeRight )
    }

    func shakeMovement() {
        let animation = CAKeyframeAnimation(keyPath: "transform.translation.x")
        animation.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.linear)
        animation.duration = 0.05
        animation.values = [-5.0, 5.0, -5.0, 5.0, -5.0, 5.0, -10.0, 10.0, 0.0 ]
        layer.add(animation, forKey: "shake")
    }
    
    func addGradient(_ _button: UIButton?) {
        
        // Add Border
        let layer: CALayer? = _button?.layer
        layer?.cornerRadius = 8.0
        layer?.masksToBounds = true
        layer?.borderWidth = 1.0
        layer?.borderColor = UIColor(white: 0.5, alpha: 0.2).cgColor
        
        // Add Shine
        let shineLayer = CAGradientLayer()
        shineLayer.frame = layer?.bounds ?? CGRect.zero
        shineLayer.colors = [UIColor(white: 1.0, alpha: 0.4).cgColor, UIColor(white: 1.0, alpha: 0.2).cgColor, UIColor(white: 0.75, alpha: 0.2).cgColor, UIColor(white: 0.4, alpha: 0.2).cgColor, UIColor(white: 1.0, alpha: 0.4).cgColor]
        shineLayer.locations = [NSNumber(value: 0.0), NSNumber(value: 0.5), NSNumber(value: 0.5), NSNumber(value: 1.0), NSNumber(value: 1.0)]
        layer?.addSublayer(shineLayer)
    
    }

}
