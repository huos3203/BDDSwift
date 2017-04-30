//
//  PhotoUploadViewController.swift
//  BDDExamplesSwift
//
//  Created by huoshuguang on 2017/4/30.
//  Copyright © 2017年 huoshuguang. All rights reserved.
//

import UIKit

class PhotoUploadViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //UI交互伪代码
        let navigat = UINavigationController.init(rootViewController: self)
//        let method2 = #selector(uploadertt as ()->())
        
        let item = UIBarButtonItem.init(title: "上传", style: .plain, target: self, action: Selector(up))
        navigat.navigationItem.rightBarButtonItem = item
    }

    func uploadertt(image:UIImage)
    {
        //
        uploader.upLoad(image: UIImage(), to: NSURL()) { (result, error) in
            //
            
        }
    }
    override func didReceiveMemoryWarning() {
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
    
    required init?(coder aDecoder: NSCoder) {
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
