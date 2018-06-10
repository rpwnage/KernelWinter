//
//  AbitaryStuff.c
//  multi_path
//
//  Created by luca pasc on 10.06.18.
//  Copyright © 2018 Ian Beer. All rights reserved.
//
#include <objc/runtime.h>
#include <dirent.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <mach/mach.h>
#include <sys/sysctl.h>



#define Changemeaddress 0xfffffff00702c8e4;

/*

int list_bin_files() {
    DIR *d;
    struct dirent *dir;
    d = opendir("/bin/");
    if (d)
    {
        while ((dir = readdir(d)) != NULL)
        {
            printf("%s\n", dir->d_name);
        }
        closedir(d);
    }
    return 0;
}

 */

void run_arb() {
    // printf() displays the string inside quotation
    printf("C File runned\n");
    
    
}



int get_kernel_task(){
    
    kern_return_t kr;
    mach_port_t task;
    
    
    printf("getting kernel_task");
    
    if (kr == task_for_pid(mach_host_self(),0,&task) != KERN_SUCCESS){
        printf("error\n");
    }
    return task;
}

void write_test(int task){
    
    long int data = 0x5365796564;
    
    printf("done2\n");
    
    if (vm_write(task, (vm_address_t) 0xfffffff00702c8e4, (vm_address_t)&data, sizeof(data))){
        
    
        printf("error\n");
    
        return reading;

    }
   
}


void read_test(int reading) {
    
    kern_return_t kr;
    mach_port_t task;
    
    long int data = 0x5365796564;
    
    printf("reading kernel addresses now!\n");
    
    if (vm_read(task, (vm_address_t) 0xfffffff00702c8e4, (vm_address_t)&data, sizeof(data))){
        
        printf("error!\n");
        
    }
    

}

