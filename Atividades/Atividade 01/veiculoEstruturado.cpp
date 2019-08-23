#include<iostream>
#include<string>

//simplifica o uso do cout  
using namespace std;

//estrutura definida pelo programador
typedef struct{
    string cor;
    string tipo;
    int totalRodas;
    int qtRodas;
    int ano;
}veiculo;

//assinatura do metodo
void tipoVeiculo(veiculo *p);

int main(void){

	//definicao de estrutura do tipo veiculo
    veiculo moto;
    moto.tipo = "moto";
    moto.totalRodas = 2;
    moto.cor = "verde";
    moto.ano = 2008;

    tipoVeiculo(&moto);

    veiculo carro;
    carro.tipo = "carro";
    carro.totalRodas = 4;
    carro.cor = "azul";
    carro.ano = 1993;

    tipoVeiculo(&carro);

    return 0;  
}

//passagem de parametro por referencia 
void tipoVeiculo(veiculo *p){
		cout<< "O veiculo do tipo "<<(*p).tipo<<" e da cor "<<(*p).cor<<" e possui "<< (*p).totalRodas<<" rodas "<<endl;
}