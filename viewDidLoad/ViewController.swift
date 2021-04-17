//
//  ViewController.swift
//  viewDidLoad
//
//  Created by Lai Po Ying on 2021/4/16.
//

import UIKit
import SpriteKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // 漸層背景
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [UIColor.black.cgColor, UIColor(red: 177/255, green: 17/255, blue: 22/255, alpha: 1).cgColor]
        gradientLayer.locations = [0.5, 0.9]
        view.layer.addSublayer(gradientLayer)
        
        // 外圓繪製
        let logoView = UIView()
        view.addSubview(logoView)
        logoView.frame = CGRect(x: 0, y: 0, width: 414, height: 512)
        logoView.backgroundColor = UIColor.clear
        let aDgree = CGFloat.pi/180
        var path = UIBezierPath()

        path = UIBezierPath(arcCenter: CGPoint(x: 207, y: 282.5), radius: 190, startAngle: aDgree*0, endAngle: aDgree*360, clockwise: true)
        let outsideCircleLayer = CAShapeLayer()
        outsideCircleLayer.path = path.cgPath
        outsideCircleLayer.fillColor = UIColor.clear.cgColor
        outsideCircleLayer.strokeColor = UIColor.black.cgColor
        outsideCircleLayer.lineWidth = 8
        logoView.layer.addSublayer(outsideCircleLayer)
                
        // 鳥
        path = UIBezierPath()
        path.move(to: CGPoint(x: 149, y: 72))
        path.addQuadCurve(to: CGPoint(x: 68, y: 234), controlPoint: CGPoint(x: 81, y: 147))
        path.addQuadCurve(to: CGPoint(x: 115, y: 284), controlPoint: CGPoint(x: 71, y: 246))
        path.addLine(to: CGPoint(x: 100, y: 319))
        path.addLine(to: CGPoint(x: 96, y: 313))
        path.addLine(to: CGPoint(x: 95, y: 317))
        path.addLine(to: CGPoint(x: 87, y: 306))
        path.addLine(to: CGPoint(x: 84, y: 312))
        path.addQuadCurve(to: CGPoint(x: 82, y: 341), controlPoint: CGPoint(x: 87, y: 338))
        path.addQuadCurve(to: CGPoint(x: 81, y: 365), controlPoint: CGPoint(x: 72, y: 345))
        path.addQuadCurve(to: CGPoint(x: 128, y: 407), controlPoint: CGPoint(x: 90, y: 385))
        path.addQuadCurve(to: CGPoint(x: 181, y: 460), controlPoint: CGPoint(x: 135, y: 410))
        path.addLine(to: CGPoint(x: 176, y: 449))
        path.addLine(to: CGPoint(x: 187, y: 456))
        path.addLine(to: CGPoint(x: 151, y: 403))
        path.addQuadCurve(to: CGPoint(x: 135, y: 349), controlPoint: CGPoint(x: 128, y: 352))
        path.addQuadCurve(to: CGPoint(x: 144, y: 348), controlPoint: CGPoint(x: 139, y: 343))
        path.addQuadCurve(to: CGPoint(x: 206, y: 352), controlPoint: CGPoint(x: 174, y: 357))
        path.addQuadCurve(to: CGPoint(x: 218, y: 474), controlPoint: CGPoint(x: 229, y: 375))
        path.addQuadCurve(to: CGPoint(x: 361, y: 485), controlPoint: CGPoint(x: 252, y: 395))
        path.addQuadCurve(to: CGPoint(x: 302, y: 405), controlPoint: CGPoint(x: 324, y: 447))
        path.addQuadCurve(to: CGPoint(x: 234, y: 330), controlPoint: CGPoint(x: 274, y: 354))
        path.addQuadCurve(to: CGPoint(x: 249, y: 298), controlPoint: CGPoint(x: 245, y: 315))
        path.addQuadCurve(to: CGPoint(x: 312, y: 218), controlPoint: CGPoint(x: 281, y: 263))
        path.addQuadCurve(to: CGPoint(x: 380, y: 140), controlPoint: CGPoint(x: 360, y: 186))
        path.addLine(to: CGPoint(x: 370, y: 151))
        path.addLine(to: CGPoint(x: 373, y: 144))
        path.addLine(to: CGPoint(x: 355, y: 162))
        path.addLine(to: CGPoint(x: 361, y: 152))
        path.addLine(to: CGPoint(x: 329, y: 179))
        path.addQuadCurve(to: CGPoint(x: 311, y: 190), controlPoint: CGPoint(x: 370, y: 140))
        path.addQuadCurve(to: CGPoint(x: 274, y: 206), controlPoint: CGPoint(x: 300, y: 204))
        path.addQuadCurve(to: CGPoint(x: 196, y: 242), controlPoint: CGPoint(x: 235, y: 215))
        path.addQuadCurve(to: CGPoint(x: 154, y: 193), controlPoint: CGPoint(x: 177, y: 214))
        path.addQuadCurve(to: CGPoint(x: 149, y: 72), controlPoint: CGPoint(x: 140, y: 180))
        let birdLayer = CAShapeLayer()
        birdLayer.path = path.cgPath
        logoView.layer.addSublayer(birdLayer)
                
        //箭
        path = UIBezierPath()
        path.move(to: CGPoint(x: 14, y: 512))
        path.addLine(to: CGPoint(x: 71, y: 496))
        path.addLine(to: CGPoint(x: 57, y: 492))
        path.addLine(to: CGPoint(x: 284, y: 362))
        path.addLine(to: CGPoint(x: 297, y: 362))
        path.addLine(to: CGPoint(x: 318, y: 348))
        path.addLine(to: CGPoint(x: 303, y: 353))
        path.addLine(to: CGPoint(x: 331, y: 337))
        path.addLine(to: CGPoint(x: 355, y: 335))
        path.addLine(to: CGPoint(x: 397, y: 312))
        path.addLine(to: CGPoint(x: 364, y: 315))
        path.addLine(to: CGPoint(x: 387, y: 287))
        path.addLine(to: CGPoint(x: 345, y: 311))
        path.addLine(to: CGPoint(x: 330, y: 331))
        path.addLine(to: CGPoint(x: 302, y: 347))
        path.addLine(to: CGPoint(x: 312, y: 336))
        path.addLine(to: CGPoint(x: 291, y: 347))
        path.addLine(to: CGPoint(x: 282, y: 357))
        path.addLine(to: CGPoint(x: 54, y: 488))
        path.addLine(to: CGPoint(x: 59, y: 472))
        path.close()
        let arrowLayer = CAShapeLayer()
        arrowLayer.path = path.cgPath
        logoView.layer.addSublayer(arrowLayer)
        
        // 火焰Mask
        let fireImage = UIImage(named: "fire.png")
        let fireImageView = UIImageView(image: fireImage)
        view.addSubview(fireImageView)
        fireImageView.frame = logoView.bounds
        fireImageView.mask = logoView
        
        //火焰
        let skView = SKView(frame: view.frame)
        view.insertSubview(skView, at: 0)
        let scene = SKScene(size: skView.frame.size)
        scene.anchorPoint = CGPoint(x: 0.2, y: 0.2)
        let emitterNode = SKEmitterNode(fileNamed: "MyFireParticle")
        scene.addChild(emitterNode!)
        skView.presentScene(scene)
        

        // HungerGames label
        let hungerGamesLabel = UILabel()
        view.addSubview(hungerGamesLabel)
        hungerGamesLabel.text = "HUNGER GAMES"
        hungerGamesLabel.textAlignment = NSTextAlignment.center
        hungerGamesLabel.font = UIFont.italicSystemFont(ofSize: 28)
        hungerGamesLabel.frame = CGRect(x: 0, y: 0, width: 414, height: 30)
        hungerGamesLabel.center = CGPoint(x: 207, y: 730)
        
    }


}

