//
//  Patient.h
//  DoctorPatientAPP
//
//  Created by Anthony Tulai on 2016-01-14.
//  Copyright © 2016 Anthony Tulai. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Doctor;

@interface Patient : NSObject

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *sex;
@property (assign, nonatomic) int age;
@property (assign, nonatomic) bool healthcard;
@property (nonatomic, strong) Doctor *myDoctor;
@property (assign) bool sneezing;
@property (assign) bool coughing;
@property (assign) bool fever;
@property (strong, nonatomic) NSString *medication;

-(instancetype) initWithName: (NSString *)name Sex:(NSString *)sex Age:(int)age Healthcard:(bool) healthcard;

-(bool)visitDoctor: (Doctor *)myDoctor;




@end
