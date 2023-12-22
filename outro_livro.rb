class Livro
  attr_reader :titulo, :preco, :ano_lancamento, :possui_reimpressao
  def initialize(titulo, preco, ano_lancamento, possui_reimpressao)
    @titulo = titulo
    @preco = preco
    @ano_lancamento = ano_lancamento
    @possui_reimpressao = possui_reimpressao
  end
  def possui_reimpressao?
    @possui_reimpressao
  end
end

class Estoque
  attr_reader :livros
  def initialize
    @livros = []


    def @livros.<<(livro)
      push(livro)
      if @maximo_necessario.nil? || @maximo_necessario < size
        @maximo_necessario = size
      end
      self
    end

    def @livros.maximo_necessario
      @maximo_necessario
    end

  end



  def exporta_csv
    @livros.each do |livro|
      puts "#{livro.titulo},#{livro.ano_lancamento},#{livro.preco}"
    end
  end

  def mais_baratos_que(valor)
    @livros.select do |livro|
      livro.preco <= valor
    end
  end

  def total
    @livros.size
  end

  def adiciona(livro)
    @livros << livro if livro
  end
end

arquitetura = Livro.new("Introdução a arquitetura de software", 200, 2004, false)
algoritmos = Livro.new("Algoritmos", 100, 1998, true)
programmer = Livro.new("The pragmatic Programmer", 100, 1999, true)
ruby = Livro.new("Programming in Ruby", 120, 2005, true)

estoque = Estoque.new
estoque.livros << algoritmos << arquitetura
puts estoque.livros.maximo_necessario
estoque.livros << programmer << ruby
puts estoque.livros.maximo_necessario
estoque.livros.delete algoritmos
puts estoque.livros.maximo_necessario
