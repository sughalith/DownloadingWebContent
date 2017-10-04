//
//  ViewController.swift
//  Downloading Web Content
//
//  Created by Arkadiusz Stankiewicz on 04.10.2017.
//  Copyright © 2017 Arkadiusz Stankiewicz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let url = URL(string: "https://www.stackoverflow.com"){
        
            let request = NSMutableURLRequest(url: url)
            let task = URLSession.shared.dataTask(with: request as URLRequest){
                data ,response, error in
                if let error = error {
                    print(error)
                }
                else{
                    if let unwrappedData = data {
                        let dataString = NSString(data: unwrappedData, encoding: String.Encoding.utf8.rawValue)
                        print(dataString)
                    }
                }
            }
            
            task.resume()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

