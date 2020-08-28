//
//  inputName.swift
//  FlourishedWords
//
//  Created by Liza Babaoglu on 2020-08-12.
//  Copyright © 2020 Liza Babaoglu. All rights reserved.
//

import UIKit

var setWord: Int = 0

class inputName: UIViewController {
    
    
    @IBOutlet var nameLabel: UILabel!
    var myFirstLabel: UILabel!
    var letterLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func gonext(_ sender: UIButton) {
    }

    @IBAction func gohome(_ sender: UIButton) {
    }
    
    @IBAction func startover(_ sender: UIButton) {
        loadView()
    }
    
    
    @IBAction func inputting(_ nameTextField: UITextField) {
    
        let alphabet: String = "ABCDEFGHIJKLMNOPQRSTUVWXYZՀՈԳԻՍԼԶԱ" //ԱԲԳԴԵԶԷԸԹԺԻԼԽԾԿՀՁՂՃՄՅՆՇՈՉՊՋ
        var set: [[String]] = [["Adventurous"]]//...I am not sharing the entire set in my youtube video or in this github repo. //2D array
        
        
        var letterIndex: Int = 0
        var position: Int = 0
        //var setWord: Int = 0
        var used : String = ""
        
        nameTextField.text! = nameTextField.text!.uppercased()

        //for every character in the entry, check each letter in the alphabet sets till a match.
        //the matched index of the alphabet sets is also the x-index of the 2D array of descriptive words.
        for char in nameTextField.text!{
            letterIndex = 0
            if used.contains(char){
                setWord += 1
                if setWord > 4 { //y-index of the 2D array.
                    setWord = 0
                }
            }
            for letter in alphabet{
                if char == letter{
                    myFirstLabel = UILabel()
                    letterLabel = UILabel()
                    letterLabel.text = "\(char)" //acts like string
                    myFirstLabel.text = ": \(set[letterIndex][setWord])" 
                    letterLabel.font = UIFont.systemFont(ofSize: 20)
                    myFirstLabel.font = UIFont.systemFont(ofSize: 20)
                    letterLabel.center = CGPoint(x:60, y:90+position)
                    myFirstLabel.center = CGPoint(x:80, y:90+position)
                    myFirstLabel.textAlignment = .left
                    letterLabel.sizeToFit()
                    myFirstLabel.sizeToFit() //order matters
                    view.addSubview(letterLabel)
                    view.addSubview(myFirstLabel)
                    used.append(letter)
                    //print(used)
                    break
                }else{
                    letterIndex += 1
                }
            }
            position = position + 22 
        }

    }
}

