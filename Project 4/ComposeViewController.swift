//
//  ComposeViewController.swift
//  Project 4
//
//  Created by Chris Mikelson on 10/11/15.
//  Copyright © 2015 Chris Mikelson. All rights reserved.
//

import UIKit

class ComposeViewController: UIViewController {

    @IBOutlet weak var textButton: UIButton!
    @IBOutlet weak var photoButton: UIButton!
    @IBOutlet weak var quoteButton: UIButton!
    @IBOutlet weak var linkButton: UIButton!
    @IBOutlet weak var chatButton: UIButton!
    @IBOutlet weak var videoButton: UIButton!
    
    var textButtonStartPosition: CGPoint!
    var textButtonEndPosition: CGPoint!
    var textButtonClosePosition: CGPoint!
    
    var photoButtonStartPosition: CGPoint!
    var photoButtonEndPosition: CGPoint!
    
    var quoteButtonStartPosition: CGPoint!
    var quoteButtonEndPosition: CGPoint!
    
    var linkButtonStartPosition: CGPoint!
    var linkButtonEndPosition: CGPoint!
    
    var chatButtonStartPosition: CGPoint!
    var chatButtonEndPosition: CGPoint!
    
    var videoButtonStartPosition: CGPoint!
    var videoButtonEndPosition: CGPoint!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print("Text: \(textButton.center)")
        textButton.alpha = 0;
        textButtonStartPosition = CGPoint(x: 57.5, y: 524)
        textButtonEndPosition = CGPoint(x: 57.5, y: 154.5)
        textButtonClosePosition = CGPoint(x: 57.5, y: -50.0)
        
        print("Photo: \(photoButton.center)")
        photoButton.alpha = 0;
        photoButtonStartPosition = CGPoint(x: 160.5, y: 400)
        photoButtonEndPosition = CGPoint(x: 160.5, y: 154.5)
        
        print("Quote: \(quoteButton.center)")
        quoteButton.alpha = 0;
        quoteButtonStartPosition = CGPoint(x: 262.5, y: 450)
        quoteButtonEndPosition = CGPoint(x: 262.5, y: 154.5)
        
        print("Link: \(linkButton.center)")
        linkButton.alpha = 0;
        linkButtonStartPosition = CGPoint(x: 57.5, y: 480)
        linkButtonEndPosition = CGPoint(x: 57.5, y: 283.5)
        
        print("Chat: \(chatButton.center)")
        chatButton.alpha = 0;
        chatButtonStartPosition = CGPoint(x:160.5, y: 410)
        chatButtonEndPosition = CGPoint(x: 160.5, y: 283.5)
        
        print("Video: \(videoButton.center)")
        videoButton.alpha = 0;
        videoButtonStartPosition = CGPoint(x:262.5, y: 410)
        videoButtonEndPosition = CGPoint(x: 262.5, y: 283.5)
    }

    override func viewDidAppear(animated: Bool) {
        
        UIView.animateWithDuration(0.25, delay: 0, usingSpringWithDamping: 10.0, initialSpringVelocity: 3.0, options: [], animations: { () -> Void in
            
            self.textButton.alpha = 1;
            self.textButton.layer.position = self.textButtonEndPosition
            let textAnimation = CABasicAnimation(keyPath: "position")
            textAnimation.fromValue = NSValue(CGPoint:self.textButtonStartPosition)
            textAnimation.toValue = NSValue(CGPoint:self.textButtonEndPosition)
            textAnimation.duration = 0.17
            self.textButton.layer.addAnimation(textAnimation, forKey: "textButtonAnimationKey")
            
            self.photoButton.alpha = 1;
            self.photoButton.layer.position = self.photoButtonEndPosition
            let photoAnimation = CABasicAnimation(keyPath: "position")
            photoAnimation.fromValue = NSValue(CGPoint:self.photoButtonStartPosition)
            photoAnimation.toValue = NSValue(CGPoint:self.photoButtonEndPosition)
            photoAnimation.duration = 0.12
            self.photoButton.layer.addAnimation(photoAnimation, forKey: "photoButtonAnimationKey")
            
            self.quoteButton.alpha = 1;
            self.quoteButton.layer.position = self.quoteButtonEndPosition
            let quoteAnimation = CABasicAnimation(keyPath: "position")
            quoteAnimation.fromValue = NSValue(CGPoint:self.quoteButtonStartPosition)
            quoteAnimation.toValue = NSValue(CGPoint:self.quoteButtonEndPosition)
            quoteAnimation.duration = 0.16
            self.quoteButton.layer.addAnimation(quoteAnimation, forKey: "quoteButtonAnimationKey")
            
            self.linkButton.alpha = 1;
            self.linkButton.layer.position = self.linkButtonEndPosition
            let linkAnimation = CABasicAnimation(keyPath: "position")
            linkAnimation.fromValue = NSValue(CGPoint:self.linkButtonStartPosition)
            linkAnimation.toValue = NSValue(CGPoint:self.linkButtonEndPosition)
            linkAnimation.duration = 0.13
            self.linkButton.layer.addAnimation(linkAnimation, forKey: "linkButtonAnimationKey")
            
            self.chatButton.alpha = 1;
            self.chatButton.layer.position = self.chatButtonEndPosition
            let chatAnimation = CABasicAnimation(keyPath: "position")
            chatAnimation.fromValue = NSValue(CGPoint:self.chatButtonStartPosition)
            chatAnimation.toValue = NSValue(CGPoint:self.chatButtonEndPosition)
            chatAnimation.duration = 0.17
            self.chatButton.layer.addAnimation(chatAnimation, forKey: "chatButtonAnimationKey")
            
            self.videoButton.alpha = 1;
            self.videoButton.layer.position = self.videoButtonEndPosition
            let videoAnimation = CABasicAnimation(keyPath: "position")
            videoAnimation.fromValue = NSValue(CGPoint:self.videoButtonStartPosition)
            videoAnimation.toValue = NSValue(CGPoint:self.videoButtonEndPosition)
            videoAnimation.duration = 0.19
            self.videoButton.layer.addAnimation(videoAnimation, forKey: "videoButtonAnimationKey")


            
            }) { (completed) -> Void in
                NSLog("Compose Modal Animation Completed.")
        }
        
        
    }
    @IBAction func onNevermindButton(button: UIButton) {
        
        UIView.animateWithDuration(3, delay: 3, usingSpringWithDamping: 3.0, initialSpringVelocity: 10.0, options: [], animations: { () -> Void in
            
            let textCloseAnimation = CABasicAnimation(keyPath: "position")
            textCloseAnimation.fromValue = NSValue(CGPoint: self.textButton.center)
            textCloseAnimation.toValue = NSValue(CGPoint:self.textButtonClosePosition)
            textCloseAnimation.duration = 3
            self.textButton.layer.addAnimation(textCloseAnimation, forKey: "textButtonCloseAnimationKey")
            
            }) { (completed) -> Void in
                 NSLog("Dismiss Compose Animation Completed.")
                self.dismissViewControllerAnimated(true, completion: nil)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
