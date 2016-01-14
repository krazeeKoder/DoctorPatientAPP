//
//  Docotor.h
//  DoctorPatientAPP
//
//  Created by Anthony Tulai on 2016-01-14.
//  Copyright © 2016 Anthony Tulai. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Patient;
@class Prescription;

@interface Doctor : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *specialization;
@property (nonatomic, strong) NSMutableArray *patientList;

-(instancetype) initWithName: (NSString *)name Specialization:(NSString *)specialization;

-(bool)patientRequest:(bool)healthCard patient:(Patient *)patient;
-(void)interviewPatient:(Patient *) patient;
-(void)requestMedication:(Patient *) patient prescriptionRepository: (Prescription *) prescriptionRepository;

-(void)requestPatientPrescriptionHistory: (Patient *)patient prescriptionRepository: (Prescription *)prescriptionRepository;


@end
