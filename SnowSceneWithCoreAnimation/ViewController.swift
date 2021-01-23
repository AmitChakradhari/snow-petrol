
import UIKit

class ViewController: UIViewController {

    override var preferredStatusBarStyle: UIStatusBarStyle{
        return .lightContent
    }
    override var prefersHomeIndicatorAutoHidden: Bool{
        return false
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // sky View
        let gradientSkyView = GradientView()
        gradientSkyView.startColor = UIColor(displayP3Red: 0.1, green: 0.25, blue: 0.5, alpha: 1)
        gradientSkyView.endColor = UIColor(displayP3Red: 0.75, green: 0.8, blue: 0.9, alpha: 1)
        gradientSkyView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(gradientSkyView)
        
        // snow Particles
        let snowView = SnowView()
        snowView.snowImage = UIImage(named: "snowParticle.png")
        snowView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(snowView)
        
        // groundView
        let groundView = GroundView()
        groundView.fillColor = UIColor.white
        groundView.strokeColor = UIColor.white
        groundView.path = groundView.makeGround()
        groundView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(groundView)
        // constraints
        NSLayoutConstraint.activate([
            gradientSkyView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            gradientSkyView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            gradientSkyView.topAnchor.constraint(equalTo: view.topAnchor),
            gradientSkyView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            snowView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            snowView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            snowView.topAnchor.constraint(equalTo: view.topAnchor),
            snowView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            groundView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            groundView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            groundView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            groundView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.2)
            
            ])
        
    }


}

