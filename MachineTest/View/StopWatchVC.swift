//
//  ViewController.swift
//  MachineTest
//
//  Created by Simranjeet Aulakh on 29/10/21.
//

import UIKit

class StopWatchVC: UIViewController {
    
    //MARK:- IBOutlets
    @IBOutlet weak var timerLbl: UILabel!
    @IBOutlet weak var startBtn: UIButton!
    @IBOutlet weak var stopResetBtn: UIButton!
    
    //MARK:- Variables
    let viewModel = StopWatchVM()
    var timer = Timer()
    
    //MARK:- View life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        timerLbl.text = viewModel.timeFormat(viewModel.counter)
    }
    
    
    //MARK:- IBActions
    @IBAction func stopResetBtnClicked(_ sender: Any) {
        timer.invalidate()
        viewModel.isPlaying = false
        viewModel.counter = 0.0
        startBtn.setTitle(ButtonStates.start.rawValue, for: .normal)
        timerLbl.text = viewModel.timeFormat(viewModel.counter)
        stopResetBtn.isHidden = true
    }
    
    @IBAction func startBtnClicked(_ sender: UIButton) {
        if viewModel.isPlaying {
            timer.invalidate()
            viewModel.isPlaying = false
            sender.setTitle(ButtonStates.resume.rawValue, for: .normal)
        }else{
            timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
            sender.setTitle(ButtonStates.pause.rawValue, for: .normal)
            stopResetBtn.isHidden = false
            viewModel.isPlaying = true
        }
    }
    
    @objc func updateTimer(){
        viewModel.counter = viewModel.counter + 0.1
        timerLbl.text = viewModel.timeFormat(viewModel.counter)
    }
}

