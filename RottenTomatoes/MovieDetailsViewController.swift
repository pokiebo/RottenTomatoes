//
//  MovieDetailsViewController.swift
//  RottenTomatoes
//
//  Created by Sudipta Bhowmik on 9/17/15.
//  Copyright © 2015 Sudipta Bhowmik. All rights reserved.
//

import UIKit

class MovieDetailsViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var labelsView: UIView!
    
    @IBOutlet weak var synopsisText: UITextView!
    var movie: NSDictionary!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //let url = NSURL(string: movie.valueForKeyPath("posters.thumbnail") as! String)!
        
        
        var urlString = (movie.valueForKeyPath("posters.thumbnail") as! String)
        
        let range = urlString.rangeOfString(".*cloudfront.net/", options: .RegularExpressionSearch)
        if let range = range {
            urlString = urlString.stringByReplacingCharactersInRange(range, withString: "https://content6.flixster.com/")
            print("\(urlString)")
        }

        let url = NSURL(string: urlString)!
        imageView.setImageWithURL(url)
        titleLabel.text = movie["title"] as? String
        //labelsView.addSubview(imageView)
        //synopsisLabel.text = movie["synopsis"] as? String
        synopsisText.text = movie["synopsis"] as? String
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
