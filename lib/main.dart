
void main() {
  int jovens = 2; 
  int adultos = 0;
  int mes = 1;

  print('--- Simulação de População de Coelhos (12 meses) ---');

  while (mes <= 12) {
    int novosJovens = adultos; 
    adultos += jovens;    
    jovens = novosJovens * 2; 

    int total = jovens + adultos;
    print('Fim do Mês $mes: População de coelhos: $total, Jovens: $jovens, Adultos: $adultos');
    mes++;
  }

  print('\n--- Predador introduzido: Redução de 75% a cada mês ---');

  for (int i = 1; i <= 6; i++) {
    int total = jovens + adultos;
    total = (total * 0.25).floor(); 

    jovens = (total / 2).floor();
    adultos = total - jovens;

    print('Fim do Mês ${mes++}: População de coelhos: $total, Jovens: $jovens, Adultos: $adultos');
  }
}
