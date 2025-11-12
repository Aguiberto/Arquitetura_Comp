/* 
que receba 10 numeiro inteiro em um array
encontre a maior sequência de dois elementos adjacentes
imprima a sequência
imprima a posição
imprima o valor
 */

#include <iostream>

using namespace std;

int main(){

    int tamanho;
    cin >> tamanho;

    int array[tamanho];

    for(int i = 0; i < tamanho; i++ ){
        cin >> array[i];
    }

    int maior_seq = array[0] + array[1];
    int position = 0;

    for(int j = 0; j < tamanho -1; j++){
        if( array[j] + array[j+1] > maior_seq){
            maior_seq = array[j] + array[j+1];
            position = j;
        }
    }

    cout << " A maior sequencia e: " << maior_seq << endl;
    cout << " a posição inicial da maior sequencia é: " << position << endl;


    return 0;
} 