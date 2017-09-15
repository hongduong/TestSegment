//
//  ViewController.swift
//  TestSegment
//
//  Created by DuongPH on 9/15/17.
//  Copyright © 2017 DuongPH. All rights reserved.
//

import UIKit
import NKFrameLayoutKit

class ViewController: UIViewController {
    var gridFrameLayout : NKGridFrameLayout!
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        
        let segment = UISegmentedControl(items: ["1", "2", "3"])
        segment.selectedSegmentIndex = 0
        view.addSubview(segment)
        
        let label = UILabel()
        label.backgroundColor = .gray
        label.text = "label"
        view.addSubview(label)
        
        gridFrameLayout = NKGridFrameLayout(direction: .vertical)
        gridFrameLayout.add(withTargetView: segment).settingBlock = {
            layout in
            layout?.minSize = CGSize(width: 0.0, height: 40.0)
        }
        
        gridFrameLayout.add(withTargetView: label)
        gridFrameLayout.showFrameDebug = true
        view.addSubview(gridFrameLayout)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        gridFrameLayout.frame = CGRect(x: 0.0, y: 30.0, width: view.bounds.width, height: 500)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

