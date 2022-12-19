#include <stdlib.h>
#include <stdio.h>
#include <math.h>

/*gcc -lm -o exo3 exo3.c*/

//Q1
struct point { 
int x; 
int y;
};

struct Barycentre
{
    double a, b, xA, yA, xB, yB;
};

void barycentre( double* v1, double *v2, struct Barycentre bar){

}

//Q2
double dist(double xa,double xb,double ya,double yb){
    return sqrt(pow((xa-xb),2) +pow((ya-yb),2));
}

int main(int argc, char* argv[]){
    if(argc != 3){ 
        fprintf(stderr, "%i args, expected 1 \n", argc-1);
        return 0;
    }
    int a = strtol(argv[1],NULL,10);
    printf("%d\n",a);
    int b = strtol(argv[2],NULL,10);
    printf("%d\n",b);

    double d = dist(1,3,a,b);
    printf("distance%d\n",d);
    return 0;
}