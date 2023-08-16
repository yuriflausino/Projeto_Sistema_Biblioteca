import 'package:gerenciamento_biblioteca/biblioteca.dart';

void main() {
  var biblioteca = Biblioteca();

  biblioteca.cadastrarLivro('O Senhor dos Anéis', 'J.R.R. Tolkien', 1954);
  biblioteca.cadastrarLivro('Harry Potter e a Pedra Filosofal', 'J.K. Rowling', 1997);
  biblioteca.cadastrarLivro('Harry Potter e o Calice de Fogo', 'J.K. Rowling', 1998);
  biblioteca.cadastrarLivro('Animais Fantásticos', 'J.K. Rowling', 1998);

  biblioteca.cadastrarAutor('J.R.R. Tolkien', DateTime(1892, 1, 3));
  biblioteca.cadastrarAutor('J.K. Rowling', DateTime(1965, 7, 31));

  biblioteca.cadastrarUsuario('Yuri', 'Rua da Musica, 110');
  biblioteca.cadastrarUsuario('Everton', 'Rua Brazil, 123');
  biblioteca.cadastrarUsuario('Mariana', 'Rua Paraná, 456');

  biblioteca.emprestarLivro('Animais Fantásticos', 'Yuri');
  biblioteca.emprestarLivro('Harry Potter e a Pedra Filosofal', 'Everton');

  biblioteca.listarLivrosDisponiveis();
  biblioteca.listarLivrosEmprestados();
  biblioteca.listarLivrosAutor('J.K. Rowling');
}
