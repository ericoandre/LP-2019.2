#include <iostream>
#include <string>

using namespace std;

class veiculo{
private:
	string cor;
	string tipo;
	int qtRodas;
public:
	veiculo(string,string,int);
	~veiculo();
	void display(void);
};
veiculo::~veiculo(){};

veiculo::veiculo(string _tipo, string _cor, int _qtRodas){
	tipo = _tipo;
	cor = _cor;
	qtRodas = _qtRodas;
};
void veiculo::display(void){
	cout<< "O veiculo do tipo "<<tipo<<" e da cor "<<cor<<" e possui "<<qtRodas<<" rodas "<<endl;
};

int main(int argc, char const *argv[]){
	veiculo moto("moto", "azul", 2);
	moto.display();
	
	veiculo carro("carro", "verde", 4);
	carro.display();	

	return 0;
}