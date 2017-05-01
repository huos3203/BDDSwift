//
//  PhotoUploaderVCSpec.swift
//  BDDExamplesSwift
//
//  Created by huoshuguang on 2017/5/1.
//  Copyright © 2017年 huoshuguang. All rights reserved.
//

import Quick
import Nimble
@testable import BDDExamplesSwift



class PhotoUploaderVCSpec: QuickSpec
{
    override func spec()
    {
        describe("PhotoUploadViewController") { 
            var photoUploadViewController:PhotoUploadViewController!
            //var mockPhotoUploader:PhotoUploader!
            beforeEach {
                //
//                mockPhotoUploader = OCMStrictClassMock(for: PhotoUploader.self) as! PhotoUploader
                let loader = PhotoUploader.init()
                photoUploadViewController = PhotoUploadViewController.init(uploader: loader)
                photoUploadViewController.viewDidLoad()
            }
            afterEach {
                photoUploadViewController = nil
            }
            
            describe("right bar button item", { 
                var barButtonItem:UIBarButtonItem!
                
                beforeEach {
                    //
                    barButtonItem = photoUploadViewController.navigationItem.rightBarButtonItem
                }
                
                it("should have a title", closure: { 
                    expect(barButtonItem.title).to(equal("Upload"))
                })
                
                it("should have a target", closure: { 
                    //
                    expect(barButtonItem.target).to(be(photoUploadViewController))
                })
                
                it("should have an action", closure: {
                    //be()
                    let action:Selector = #selector(PhotoUploadViewController.didTapUploadButton(uploadButton:))
                    expect(barButtonItem.action).to(be(action))
                })
            })
            
            describe("tapping right bar button item", { 
                beforeEach {
//                    photoUploadViewController.didTapUploadButton(uploadButton: nil)
                }
                
                it("should tell the mock photo uploader to upload the photo", closure: {
                   
                    //
//                    OCMVerify(mockPhotoUploader.upLoad(image: UIImage.init(), to: NSURL.init(string: "")!, handler: { (string, tring) in
//                        print("----")
//                    }))
                })
            })
        }
    }
}
