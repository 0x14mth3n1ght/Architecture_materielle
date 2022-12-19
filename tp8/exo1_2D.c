#include <stdlib.h>
#include <stdio.h>
#include <time.h>

//Exo1 
typedef int **mat;

mat create(int n){
    mat m = (mat) malloc(n*sizeof(int*));
    int i;
    for (i=0;i<n;i+=1){
        m[i]=(int*) malloc(n*sizeof(int));/*chaque case 1D pointe vers un tableau 1D*/
    }
    return m;
}

mat product_m(mat mat1,mat mat2,int n){
    mat product = create(n);
    for(int i=0; i<n;i++){
        for(int j=0; j<n;j++){
            product[i][j]=mat1[i][j]*mat2[i][j];
        }
    }
}

void print_m(mat m,int n){
    int i,j;
    for(i=0;i<n;i++){
        printf("|");
        for(j=0;j<n;j++){
            printf("%i",m[i][j]);
            if(j<n-1){
                printf(",");}
        }
        printf("|\n");
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
*/
