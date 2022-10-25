//
//  ViewController.swift
//  SpeakingTextEditor
//
//  Created by Capgemini-DA322 on 10/25/22.
//

import Cocoa

class ViewController: NSViewController {
    @IBOutlet var TextOnEditor: NSTextView!
    
    let speech = NSSpeechSynthesizer()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBAction func speakIsClicked(_ sender: Any) {
        print(TextOnEditor.string)
        let contents = TextOnEditor.string
        if !contents.isEmpty{
            speech.startSpeaking(contents)
        }
        else{
            speech.startSpeaking("Nothing to say")
        }
    }
    
    @IBAction func stopIsClicked(_ sender: Any) {
        print("Stop")
        speech.stopSpeaking()
    }
}

