class Livro
    attr_reader :titulo, :preco, :ano_lancamento, :possui_reimpressao
    def initialize(titulo, preco, ano_lancamento, possui_reimpressao)
        @titulo = titulo
        @preco = preco
        @ano_lancamento = ano_lancamento
        @possui_reimpressao = possui_reimpressao
        @preco = calcula_preco(preco)
    end
    def possui_reimpressao?
        @possui_reimpressao
    end
    private
    def calcula_preco(base)
        if @ano_lancamento < 2006
            if @possui_reimpressao
                base * 0.9
            else
                base * 0.95
            end
        elsif @ano_lancamento <= 2010
            base * 0.96
        else
            base
        end
    end
end
def livros_para_newsletter(livros)
    livros.each do |livro|
        if livro.ano_lancamento < 1999
            puts livro.titulo
            puts livro.preco
            puts livro.possui_reimpressao?
            puts "======================================"
        end
    end
end
def aplica_promocoes(livro)
    if livro.ano_lancamento < 2000
        livro_preco *= 0.7
    end
end

algoritmosI = Livro.new("Algoritmos I", 100, 1998, true)
algoritmosII = Livro.new("Algoritmos II", 150, 2000, false)
thePragmaticProgrammer = Livro.new("The Pragmatic Programmer", 90, 1970, true)
programmingRuby = Livro.new("Programming Ruby", 150, 2000, false)
estoque = [algoritmosI, algoritmosII, thePragmaticProgrammer, programmingRuby]
livros_para_newsletter(estoque)
