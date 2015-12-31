//
//  ViewController.swift
//  BezierPathLineDrawingAnimation
//
//  Created by Nutchaphon Rewik on 30/12/2015.
//  Copyright © 2015 Nutchaphon Rewik. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let shapeLayer = CAShapeLayer()
    
    @IBOutlet weak var pathView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        shapeLayer.path = applePath.CGPath
        // shapeLayer.path = ringPath.CGPath
        
        shapeLayer.strokeColor = UIColor.blackColor().CGColor
        shapeLayer.fillColor = UIColor.clearColor().CGColor
        shapeLayer.lineWidth = 2.0
        shapeLayer.lineCap = kCALineCapRound
        
        pathView.layer.addSublayer(shapeLayer)
    }
    
    
    @IBAction func sliderValueChanged(sender: UISlider) {
        shapeLayer.removeAllAnimations()
        shapeLayer.strokeEnd = CGFloat(sender.value)
    }
    
    @IBAction func playButtonTapped(sender: UIBarButtonItem) {
        
        let animation = CABasicAnimation(keyPath: "strokeEnd")
        
        animation.fromValue = 0.0
        animation.byValue = 1.0
        animation.duration = 1.5
        
        animation.fillMode = kCAFillModeForwards
        animation.removedOnCompletion = false
        
        shapeLayer.addAnimation(animation, forKey: "drawLineAnimation")
    }
    
    
    var ringPath: UIBezierPath{
        let bezierPath = UIBezierPath()
        let arcCenter = CGPoint(x: 185, y: 110)
        bezierPath.addArcWithCenter(arcCenter, radius: 50.0, startAngle: 0, endAngle: CGFloat(2*M_PI), clockwise: true)
        return bezierPath

    }
    
    /// Apple logo bezier path generated from Paintcode.
    var applePath: UIBezierPath{
        
        let bezierPath = UIBezierPath()
        bezierPath.moveToPoint(CGPointMake(185.37, 151.25))
        bezierPath.addCurveToPoint(CGPointMake(176.66, 166.91), controlPoint1: CGPointMake(182.92, 156.91), controlPoint2: CGPointMake(180.02, 162.12))
        bezierPath.addCurveToPoint(CGPointMake(165.44, 180.47), controlPoint1: CGPointMake(172.08, 173.44), controlPoint2: CGPointMake(168.33, 177.96))
        bezierPath.addCurveToPoint(CGPointMake(151.02, 186.82), controlPoint1: CGPointMake(160.96, 184.59), controlPoint2: CGPointMake(156.16, 186.7))
        bezierPath.addCurveToPoint(CGPointMake(137.7, 183.64), controlPoint1: CGPointMake(147.33, 186.82), controlPoint2: CGPointMake(142.88, 185.77))
        bezierPath.addCurveToPoint(CGPointMake(123.36, 180.47), controlPoint1: CGPointMake(132.5, 181.52), controlPoint2: CGPointMake(127.73, 180.47))
        bezierPath.addCurveToPoint(CGPointMake(108.61, 183.64), controlPoint1: CGPointMake(118.78, 180.47), controlPoint2: CGPointMake(113.87, 181.52))
        bezierPath.addCurveToPoint(CGPointMake(95.87, 186.99), controlPoint1: CGPointMake(103.35, 185.77), controlPoint2: CGPointMake(99.11, 186.88))
        bezierPath.addCurveToPoint(CGPointMake(81.13, 180.47), controlPoint1: CGPointMake(90.94, 187.2), controlPoint2: CGPointMake(86.03, 185.03))
        bezierPath.addCurveToPoint(CGPointMake(69.39, 166.43), controlPoint1: CGPointMake(78, 177.74), controlPoint2: CGPointMake(74.08, 173.06))
        bezierPath.addCurveToPoint(CGPointMake(56.98, 141.78), controlPoint1: CGPointMake(64.36, 159.35), controlPoint2: CGPointMake(60.22, 151.14))
        bezierPath.addCurveToPoint(CGPointMake(51.77, 112.4), controlPoint1: CGPointMake(53.51, 131.67), controlPoint2: CGPointMake(51.77, 121.88))
        bezierPath.addCurveToPoint(CGPointMake(58.81, 84.33), controlPoint1: CGPointMake(51.77, 101.54), controlPoint2: CGPointMake(54.12, 92.18))
        bezierPath.addCurveToPoint(CGPointMake(73.57, 69.41), controlPoint1: CGPointMake(62.51, 78.03), controlPoint2: CGPointMake(67.42, 73.06))
        bezierPath.addCurveToPoint(CGPointMake(93.52, 63.78), controlPoint1: CGPointMake(79.72, 65.76), controlPoint2: CGPointMake(86.36, 63.9))
        bezierPath.addCurveToPoint(CGPointMake(108.95, 67.37), controlPoint1: CGPointMake(97.43, 63.78), controlPoint2: CGPointMake(102.57, 64.99))
        bezierPath.addCurveToPoint(CGPointMake(121.18, 70.97), controlPoint1: CGPointMake(115.31, 69.76), controlPoint2: CGPointMake(119.39, 70.97))
        bezierPath.addCurveToPoint(CGPointMake(134.75, 66.73), controlPoint1: CGPointMake(122.52, 70.97), controlPoint2: CGPointMake(127.06, 69.55))
        bezierPath.addCurveToPoint(CGPointMake(153.2, 63.46), controlPoint1: CGPointMake(142.03, 64.11), controlPoint2: CGPointMake(148.17, 63.03))
        bezierPath.addCurveToPoint(CGPointMake(183.88, 79.61), controlPoint1: CGPointMake(166.83, 64.56), controlPoint2: CGPointMake(177.07, 69.93))
        bezierPath.addCurveToPoint(CGPointMake(165.78, 110.61), controlPoint1: CGPointMake(171.69, 86.99), controlPoint2: CGPointMake(165.66, 97.34))
        bezierPath.addCurveToPoint(CGPointMake(177.01, 136.38), controlPoint1: CGPointMake(165.89, 120.95), controlPoint2: CGPointMake(169.64, 129.55))
        bezierPath.addCurveToPoint(CGPointMake(188.23, 143.74), controlPoint1: CGPointMake(180.35, 139.55), controlPoint2: CGPointMake(184.08, 142))
        bezierPath.addCurveToPoint(CGPointMake(185.37, 151.25), controlPoint1: CGPointMake(187.33, 146.35), controlPoint2: CGPointMake(186.38, 148.85))
        bezierPath.closePath()
        bezierPath.moveToPoint(CGPointMake(154.11, 28.24))
        bezierPath.addCurveToPoint(CGPointMake(145.25, 50.91), controlPoint1: CGPointMake(154.11, 36.34), controlPoint2: CGPointMake(151.15, 43.91))
        bezierPath.addCurveToPoint(CGPointMake(120.18, 63.28), controlPoint1: CGPointMake(138.13, 59.23), controlPoint2: CGPointMake(129.52, 64.04))
        bezierPath.addCurveToPoint(CGPointMake(119.99, 60.21), controlPoint1: CGPointMake(120.06, 62.31), controlPoint2: CGPointMake(119.99, 61.29))
        bezierPath.addCurveToPoint(CGPointMake(129.39, 37.31), controlPoint1: CGPointMake(119.99, 52.44), controlPoint2: CGPointMake(123.38, 44.11))
        bezierPath.addCurveToPoint(CGPointMake(140.84, 28.71), controlPoint1: CGPointMake(132.39, 33.86), controlPoint2: CGPointMake(136.21, 30.99))
        bezierPath.addCurveToPoint(CGPointMake(153.94, 25), controlPoint1: CGPointMake(145.46, 26.46), controlPoint2: CGPointMake(149.83, 25.21))
        bezierPath.addCurveToPoint(CGPointMake(154.11, 28.24), controlPoint1: CGPointMake(154.06, 26.08), controlPoint2: CGPointMake(154.11, 27.17))
        bezierPath.closePath()
        bezierPath.miterLimit = 4;

        return bezierPath
    }


}

















