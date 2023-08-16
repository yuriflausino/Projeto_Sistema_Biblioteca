import 'autor.dart';
import 'livro.dart';
import 'usuario.dart';

class Biblioteca {
  List<Livro> livros = [];
  List<Autor> autores = [];
  List<Usuario> usuarios = [];

  void cadastrarLivro(String titulo, String autor, int anoPublicacao) {
    livros.add(Livro(titulo, autor, anoPublicacao, true));
  }

  void cadastrarAutor(String nome, DateTime dataNascimento) {
    autores.add(Autor(nome, dataNascimento));
  }

  void cadastrarUsuario(String nome, String endereco) {
    usuarios.add(Usuario(nome, endereco));
  }

  void emprestarLivro(String livroTitulo, String usuarioNome) {
    Livro livro = livros.firstWhere((livro) => livro.titulo == livroTitulo);
    if (!livro.emprestado) {
      livro.emprestado = true;
      Usuario usuario = usuarios.firstWhere((usuario) => usuario.nome == usuarioNome);
      usuario.livrosEmprestados.add(livro.titulo);
    } else {
      print('Este livro já está emprestado.');
    }
  }

  void devolverLivro(String livroTitulo, String usuarioNome) {
    Livro livro = livros.firstWhere((livro) => livro.titulo == livroTitulo);
    if (livro.emprestado) {
      livro.emprestado = false;
      Usuario usuario = usuarios.firstWhere((usuario) => usuario.nome == usuarioNome);
      usuario.livrosEmprestados.remove(livro.titulo);
    } else {
      print('Este livro já está disponível.');
    }
  }

  void listarLivrosDisponiveis() {
    print('Livros Disponíveis:');
    for (var livro in livros) {
      if (!livro.emprestado) {
        print('- ${livro.titulo}, de ${livro.autor}');
      }
    }
  }

  void listarLivrosEmprestados() {
    print('Livros Emprestados:');
    for (var livro in livros) {
      if (livro.emprestado) {
        print('- ${livro.titulo}, de ${livro.autor}');
      }
    }
  }

  void listarLivrosAutor(String autorNome) {
    print('Livros do Autor $autorNome:');
    for (var autor in autores) {
      if (autor.nome == autorNome) {
        for (var livroTitulo in autor.livrosEscritos) {
          print('- $livroTitulo');
        }
        break;
      }
    }
  }
}
