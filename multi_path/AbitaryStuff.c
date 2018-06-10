//
//  AbitaryStuff.c
//  multi_path
//
//  Created by luca pasc on 10.06.18.
//  Copyright © 2018 Ian Beer. All rights reserved.
//
#include <dirent.h>
#include <stdio.h>
void run_arb() {
    // printf() displays the string inside quotation
    printf("Hello, World!");
}

void list_bin_files() {
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
}
