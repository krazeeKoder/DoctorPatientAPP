//
//  main.m
//  DoctorPatientAPP
//
//  Created by Anthony Tulai on 2016-01-14.
//  Copyright © 2016 Anthony Tulai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"
#import "Doctor.h"
#import "Prescription.h"


int main(int argc, const char * argv[]) {
    
    Patient *patient1 = [[Patient alloc] initWithName:@"Bill" Sex:@"Male" Age:12 Healthcard:YES];
    Doctor *doctor1 = [[Doctor alloc] initWithName:@"Dr.Sam" Specialization:@"General"];
    Prescription *globalPrescriptions = [[Prescription alloc] init];
    
    if([patient1 visitDoctor:doctor1]){
        [doctor1 interviewPatient:patient1];
        [doctor1 requestMedication:patient1 prescriptionRepository:globalPrescriptions];
        NSLog(@"The patient was given %@", patient1.medication);
        [doctor1 requestPatientPrescriptionHistory:patient1 prescriptionRepository:globalPrescriptions];
    }

    return 0;
}
