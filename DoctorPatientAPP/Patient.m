//
//  Patient.m
//  DoctorPatientAPP
//
//  Created by Anthony Tulai on 2016-01-14.
//  Copyright © 2016 Anthony Tulai. All rights reserved.
//

#import "Patient.h"
#import "Doctor.h"

@implementation Patient

-(instancetype) initWithName: (NSString *)name Sex:(NSString *)sex Age:(int)age Healthcard:(bool) healthcard{
    self = [super init];
    if (self) {
        _name = name;
        _sex = sex;
        _age = age;
        _healthcard = healthcard;
        _medication = [[NSString alloc] init];
    }
    return self;
    
}

-(bool)visitDoctor: (Doctor *)myDoctor {
    if([myDoctor patientRequest:self.healthcard patient:self]){
        NSLog(@"Great you visited the doctor and were accepted as a patient!");
        return YES;
    }
    NSLog(@"Oh no you have no healthcard and can't visit the doctor");
    return NO;
}




@end
