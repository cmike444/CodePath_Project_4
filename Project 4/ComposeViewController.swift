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
    var photoButtonClosePosition: CGPoint!
    
    var quoteButtonStartPosition: CGPoint!
    var quoteButtonEndPosition: CGPoint!
    var quoteButtonClosePosition: CGPoint!
    
    var linkButtonStartPosition: CGPoint!
    var linkButtonEndPosition: CGPoint!
    var linkButtonClosePosition: CGPoint!
    
    var chatButtonStartPosition: CGPoint!
    var chatButtonEndPosition: CGPoint!
    var chatButtonClosePosition: CGPoint!
    
    var videoButtonStartPosition: CGPoint!
    var videoButtonEndPosition: CGPoint!
    var videoButtonClosePosition: CGPoint!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print("Text: \(textButton.center)")
        textButton.alpha = 0;
        textButtonStartPosition = CGPoint(x: 57.5, y: 524)
        textButton.center = textButtonStartPosition
        textButtonEndPosition = CGPoint(x: 57.5, y: 154.5)
        textButtonClosePosition = CGPoint(x: 57.5, y: -100.0)
        
        print("Photo: \(photoButton.center)")
        photoButton.alpha = 0;
        photoButtonStartPosition = CGPoint(x: 160.5, y: 400)
        photoButton.center = photoButtonStartPosition
        photoButtonEndPosition = CGPoint(x: 160.5, y: 154.5)
        photoButtonClosePosition = CGPoint(x: 160.5, y: -100.0)
        
        print("Quote: \(quoteButton.center)")
        quoteButton.alpha = 0;
        quoteButtonStartPosition = CGPoint(x: 262.5, y: 450)
        quoteButton.center = quoteButtonStartPosition
        quoteButtonEndPosition = CGPoint(x: 262.5, y: 154.5)
        quoteButtonClosePosition = CGPoint(x: 262.5, y: -100.0)
        
        print("Link: \(linkButton.center)")
        linkButton.alpha = 0;
        linkButtonStartPosition = CGPoint(x: 57.5, y: 480)
        linkButton.center = linkButtonStartPosition
        linkButtonEndPosition = CGPoint(x: 57.5, y: 283.5)
        linkButtonClosePosition = CGPoint(x: 57.7, y: -100.0)
        
        print("Chat: \(chatButton.center)")
        chatButton.alpha = 0;
        chatButtonStartPosition = CGPoint(x:160.5, y: 410)
        chatButton.center = chatButtonStartPosition
        chatButtonEndPosition = CGPoint(x: 160.5, y: 283.5)
        chatButtonClosePosition = CGPoint(x: 160.5, y: -100.0)
        
        print("Video: \(videoButton.center)")
        videoButton.alpha = 0;
        videoButtonStartPosition = CGPoint(x:262.5, y: 410)
        videoButton.center = videoButtonStartPosition
        videoButtonEndPosition = CGPoint(x: 262.5, y: 283.5)
        videoButtonClosePosition = CGPoint(x: 262.5, y: -100.0)
    }

    override func viewDidAppear(animated: Bool) {
        
        UIView.animateWithDuration(0.25, delay: 0, options: .CurveEaseInOut, animations: { () -> Void in
            self.textButton.alpha = 1;
            self.textButton.center = self.textButtonEndPosition
            }, completion: nil)
        UIView.animateWithDuration(0.25, delay: 0.1, options: .CurveEaseInOut, animations: { () -> Void in
            self.photoButton.alpha = 1;
            self.photoButton.center = self.photoButtonEndPosition
            }, completion: nil)
        UIView.animateWithDuration(0.25, delay: 0.15, options: .CurveEaseInOut, animations: { () -> Void in
            self.quoteButton.alpha = 1;
            self.quoteButton.center = self.quoteButtonEndPosition
            }, completion: nil)
        UIView.animateWithDuration(0.25, delay: 0.2, options: .CurveEaseInOut, animations: { () -> Void in
            self.linkButton.alpha = 1;
            self.linkButton.center = self.linkButtonEndPosition
            }, completion: nil)
        UIView.animateWithDuration(0.25, delay: 0.12, options: .CurveEaseInOut, animations: { () -> Void in
            self.chatButton.alpha = 1;
            self.chatButton.center = self.chatButtonEndPosition
            }, completion: nil)
        UIView.animateWithDuration(0.25, delay: 0.17, options: .CurveEaseInOut, animations: { () -> Void in
            self.videoButton.alpha = 1;
            self.videoButton.center = self.videoButtonEndPosition
            }, completion: nil)
        
    }
    @IBAction func onNevermindButton(button: UIButton) {
        
        UIView.animateWithDuration(3, delay: 0, usingSpringWithDamping: 3.0, initialSpringVelocity: 10.0, options: [], animations: { () -> Void in
            
            UIView.animateWithDuration(0.25, delay: 0, options: .CurveEaseInOut, animations: { () -> Void in
                self.textButton.center = self.textButtonClosePosition
                self.textButton.alpha = 0;
                }, completion: nil)
            UIView.animateWithDuration(0.25, delay: 0.1, options: .CurveEaseInOut, animations: { () -> Void in
                self.photoButton.center = self.photoButtonClosePosition
                self.photoButton.alpha = 0;
                }, completion: nil)
            UIView.animateWithDuration(0.25, delay: 0.15, options: .CurveEaseInOut, animations: { () -> Void in
                self.quoteButton.center = self.quoteButtonClosePosition
                self.quoteButton.alpha = 0;
                }, completion: nil)
            UIView.animateWithDuration(0.25, delay: 0.2, options: .CurveEaseInOut, animations: { () -> Void in
                self.linkButton.center = self.linkButtonClosePosition
                self.linkButton.alpha = 0;
                }, completion: nil)
            UIView.animateWithDuration(0.25, delay: 0.12, options: .CurveEaseInOut, animations: { () -> Void in
                self.chatButton.center = self.chatButtonClosePosition
                self.chatButton.alpha = 0;
                }, completion: nil)
            UIView.animateWithDuration(0.25, delay: 0.17, options: .CurveEaseInOut, animations: { () -> Void in
                self.videoButton.center = self.videoButtonClosePosition
                self.videoButton.alpha = 0;
                }, completion: nil)
            
            }) { (completed) -> Void in
                self.delay(0.5) {
                    self.dismissViewControllerAnimated(true, completion: nil)
                }
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func delay(delay:Double, closure:()->()) {
        dispatch_after(
            dispatch_time(
                DISPATCH_TIME_NOW,
                Int64(delay * Double(NSEC_PER_SEC))
            ),
            dispatch_get_main_queue(), closure)
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
