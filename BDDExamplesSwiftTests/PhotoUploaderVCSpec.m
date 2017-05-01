//
//  PhotoUploaderVCSpec.m
//  BDDExamplesSwift
//
//  Created by huoshuguang on 2017/5/1.
//  Copyright © 2017年 huoshuguang. All rights reserved.
//

@import OCMock;
@import Quick;
@import Nimble;
#import "UIBarButtonItem+Specs.h"
#import "BDDExamplesSwiftTests-Swift.h"
/**/
//@interface PhotoUploadViewController (Specs)
//- (void)didTapUploadButton:(UIBarButtonItem *)uploadButton;
//@end

QuickSpecBegin(PhotoUploaderVCSpecd)

describe(@"PhotoUploadViewController", ^{
    __block PhotoUploadViewController *photoUploadViewController;
    __block id mockPhotoUploader;
    
    beforeEach(^{
        mockPhotoUploader = OCMClassMock([PhotoUploader class]);
        photoUploadViewController = [[PhotoUploadViewController alloc] initWithUploader:mockPhotoUploader];
        [photoUploadViewController viewDidLoad];
    });
    
    afterEach(^{
        photoUploadViewController = nil;
    });
    
    // Non-behavior style
    
    describe(@"right bar button item", ^{
        
        __block UIBarButtonItem *barButtonItem;
        
        beforeEach(^{
            barButtonItem = [[photoUploadViewController navigationItem] rightBarButtonItem];
        });
        
        it(@"should have a title", ^{
            expect(barButtonItem.title).to(equal(@"Upload"));
        });
        
        it(@"should have a target", ^{
            expect(barButtonItem.target).to(equal(photoUploadViewController));
        });
        
        it(@"should have an action", ^{
            //expect(barButtonItem.action).to(equal(@selector(didTapUploadButton:)));
        });
    });
    
    describe(@"tapping right bar button item", ^{
        beforeEach(^{
            [photoUploadViewController didTapUploadButtonWithUploadButton:[UIBarButtonItem new]];
        });
        
        it(@"should tell the mock photo uploader to upload the photo", ^{
//            [verify(mockPhotoUploader) uploadPhoto:instanceOf([UIImage class])
//                                        completion:anything()];
            
            OCMVerify([(PhotoUploader *)mockPhotoUploader upLoadWithImage:[UIImage new] to:[[NSURL alloc] initWithString:@""] handler:^(NSString *result,NSString *error) {
                NSLog(@"======");
            }]);
        });
    });
    
    // BDD Style
    
    describe(@"right bar button item", ^{
        
        __block UIBarButtonItem *barButtonItem;
        
        beforeEach(^{
            barButtonItem = [[photoUploadViewController navigationItem] rightBarButtonItem];
        });
        
        it(@"should have a title", ^{
            expect(barButtonItem.title).to(equal(@"Upload"));
        });
        
        describe(@"when it is tapped", ^{
            beforeEach(^{
                [barButtonItem specsSimulateTap];
            });
            
            it(@"should tell the mock photo uploader to upload the photo", ^{
//                [verify(mockPhotoUploader) uploadPhoto:instanceOf([UIImage class])
//                                            completion:anything()];
                PhotoUploader *uploader = (PhotoUploader *)mockPhotoUploader;
                OCMVerify([uploader upLoadWithImage:[UIImage new] to:[[NSURL alloc] initWithString:@""] handler:^(NSString *result,NSString *error) {
                    NSLog(@"-------0000000000");
                    
                }]);
            });
        });
    });
});


QuickSpecEnd
