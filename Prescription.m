//
//  Prescription.m
//  DoctorPatientAPP
//
//  Created by Anthony Tulai on 2016-01-14.
//  Copyright © 2016 Anthony Tulai. All rights reserved.
//

#import "Prescription.h"

@implementation Prescription

-(instancetype)init {
    self = [super init];
    if (self) {
        _patientRepository = [[NSMutableDictionary alloc] init];
    }
    return self;
}

@end
