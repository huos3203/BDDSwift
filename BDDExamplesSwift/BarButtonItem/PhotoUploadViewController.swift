//
//  PhotoUploadViewController.swift
//  BDDExamplesSwift
//
//  Created by huoshuguang on 2017/4/30.
//  Copyright © 2017年 huoshuguang. All rights reserved.
//

import UIKit

public class PhotoUploadViewController: UIViewController {

    override public func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //
        let barItem = UIBarButtonItem.init(title: "Upload", style: .plain, target: self, action: #selector(didTapUploadButton(uploadButton:)))
        self.navigationItem.rightBarButtonItem = barItem
        
    }

    func didTapUploadButton(uploadButton:UIBarButtonItem)
    {
        print("09867561527")
        //void (^completion)(NSError *) = ^(NSError* error){};
//        [self.photoUploader uploadPhoto:[UIImage new] completion:completion];

//        uploader.upLoad(image: UIImage(), to: NSURL.init(string: "")!) { (result, error) in
//            //
//            
//        }
    }
    override public func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var uploader:PhotoUploader!
    
    //依赖注入，便于测试
    init(uploader:PhotoUploader)
    {
        //
        super.init(nibName: nil, bundle: nil)
        self.uploader = uploader
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
