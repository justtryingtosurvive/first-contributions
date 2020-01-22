//
//  ViewController.swift
//  assignment
//
//  Created by Akash Parvatikar on 20/01/20.
//  Copyright © 2020 Akash Parvatikar. All rights reserved.
//

import UIKit
import Alamofire

struct Hero : Codable{
    let name:String?
    let realname: String?
    let team: String?
    let firstappearance: String?
    let createdby: String?
    let publisher: String?
    let imageurl: String?
    let bio: String?
}


class ViewController: UIViewController {
    @IBOutlet weak var labelthing: UILabel!
    
    var heroes = [Hero]()
    //Some random API
    let API_URL = "https://www.simplifiedcoding.net/demos/marvel/"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        labelthing.text = "Yoooo"

    
    }


    
    @IBAction func onclick(_ sender: Any) {
        //labelthing.text = "Inside the onclick function"
        var msg=""
        
        Alamofire.request(API_URL).responseJSON { response in
            let json = response.data
            
            do{
                //created the json decoder
                let decoder = JSONDecoder()
                
                //using the array to put values
                self.heroes = try decoder.decode([Hero].self, from: json!)
                
                //printing all the hero names
                for hero in self.heroes{
                    print(hero.name!)
                    msg = msg + (hero.name ?? "") + " "
                }
                self.labelthing.text = msg
                
            }catch let err{
                print(err)
            }
        }
        
        
        
        
        
    }
    
    
}

