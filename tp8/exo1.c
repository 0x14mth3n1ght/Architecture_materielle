#include <stdlib.h>
#include <stdio.h>
#include <time.h>

//Exo1 
typedef int *mat;

mat create(int n){
    mat m = (mat) malloc((n-1)*(n+1)*sizeof(int*));
    for (int i=0;i<n;i++){
        for (int j=1; j<=n-1; j++){
            m[i]=(int *) malloc(sizeof(int));/*m[i][j]=m[i-1+n*(j-1)]*/
        }
    }
    return m;
}

mat product_m(mat mat1,mat mat2,int n){
    mat product = create(n);
    for(int i=0; i<n;i++){
        for (int j=1; j<=n-1;j++){
            product[i-1+n*(j-1)]=mat1[i-1+n*(j-1)]*mat2[i-1+n*(j-1)];
        }
    }
}

int main(int argc, char* argv[]){
    if(argc != 2){ 
        fprintf(stderr, "%i args, expected 1 \n", argc-1);
        return 0;
    }
    int n = strtol(argv[1],NULL,10);
    printf("%d\n",n);
    mat m1 = create(n);
    mat m2 = create(n);
    clock_t ti = clock();
    mat product = product_m(m1,m2,n);
    clock_t tf = clock() - ti;
    printf("temps produit=%d\n",tf);
    return 0;
}

/*
for (i=1; i<=N-1; ++i)
for (j=1; j<=N-1; ++j)
A[i-1][N-j] = A[i][N-j-1];

exemple d'inversion:

for (i=1; i<=N-1; ++i)
for (j=1; j<=N-1; ++j)
A[i-1][j] = A[i][j-1];

L'algo naïf est plus lent
*/
