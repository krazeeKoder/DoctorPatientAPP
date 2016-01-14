//
//  Docotor.m
//  DoctorPatientAPP
//
//  Created by Anthony Tulai on 2016-01-14.
//  Copyright © 2016 Anthony Tulai. All rights reserved.
//

#import "Doctor.h"
#import "Patient.h"
#import "Prescription.h"

@implementation Doctor

-(instancetype) initWithName: (NSString *)name Specialization:(NSString *)specialization {
    self = [super init];
    if (self) {
        _name = name;
        _specialization = specialization;
    }
    return self;
}


-(bool)patientRequest:(bool)healthCard patient:(Patient *)patient{
    if (healthCard) {
        [self.patientList addObject:patient];
        return YES;
    }
    return NO;
}

-(void)interviewPatient:(Patient *) patient {
    char patientRequest[255];
    NSLog(@"Do you have coughing");
    fgets(patientRequest, 255, stdin);
    NSString *request = [NSString stringWithUTF8String:patientRequest];
    if ([request isEqual:@"yes\n"]) {
            patient.coughing = YES;
    }
    NSLog(@"Do you have sneezing");
    fgets(patientRequest, 255, stdin);
    request = [NSString stringWithUTF8String:patientRequest];
    if ([request isEqual:@"yes\n"]) {
        patient.sneezing = YES;
    }
    
    NSLog(@"Do you have fever");
    fgets(patientRequest, 255, stdin);
    request = [NSString stringWithUTF8String:patientRequest];
    if ([request isEqual:@"yes\n"]) {
        patient.fever = YES;
    }
    
}

-(void)requestMedication:(Patient *) patient prescriptionRepository: (Prescription *) prescriptionRepository{
    if ((patient.sneezing || patient.coughing) && !patient.fever) {
        patient.medication = @"Cold medicine";

    }
    if (patient.fever) {
        patient.medication = @"Flu medicine";
    }
    [prescriptionRepository.patientRepository setValue:[NSArray arrayWithObjects:patient.medication, nil] forKey:patient.name];
}

-(void)requestPatientPrescriptionHistory: (Patient *)patient prescriptionRepository: (Prescription *)prescriptionRepository {
    NSLog(@"In your life as a patient you have been assigned the following prescriptions: ");
    
    NSArray *listOfPrescriptions = prescriptionRepository.patientRepository[patient.name];
    
    for (NSString *prescriptions in listOfPrescriptions) {
        NSLog(@"%@",prescriptions);
    }
}

@end
