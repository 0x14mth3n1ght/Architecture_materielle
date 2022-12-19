#include <stdlib.h>
#include <stdio.h>
#include <time.h>
#include <assert.h>
#include <x86intrin.h>

//Exo2

double C_somme_m128(double *A,double *B,double *C,int n){
    int i;
    for (i=0;i<n;i+=16){
        __m128d ai = _mm_load_pd(&A[i]);
        __m128d bi = _mm_load_pd(&B[i]);
        _mm_store_pd(&C[i], _mm_add_pd(ai,bi));
    }
    return *C;
}

int main(int argc, char* argv[]){
    int n = 16;
    double *A = malloc(n*sizeof(double));
    double *B = malloc(n*sizeof(double));
    return 0;
}