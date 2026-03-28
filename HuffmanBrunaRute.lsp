;; ======================================================================
;; EP1 de Paradigmas: Codificação de Huffman
;; Integrantes: 
;; 1. [TO-DO: Nome do Aluno 1]
;; 2. [TO-DO: Nome do Aluno 2]
;; (Lembrem-se de colocar os nomes no cabeçalho e no nome do arquivo)
;; ======================================================================

;; ======================================================================
;; PARTE 1: RESPONSABILIDADE DA PESSOA 1
;; ======================================================================

;; 1. Leitura do Arquivo in
(defun ler-arquivo (caminho)
  ;; TO-DO Pessoa 1: Implementar a leitura do arquivo texto "in".
  ;; O programa deve ler apenas caracteres do alfabeto latino e números.
  ;; Pontuação e acentuação podem ser desconsideradas.
  ;; (Nota: Pesquisar funções de leitura de arquivo fora das fontes, como with-open-file)
  nil) ; Retornando nil (falso/lista vazia) temporariamente

;; 2. Tabela de Frequências (Estatística)
(defun tabela-frequencia (texto)
  ;; TO-DO Pessoa 1: Fazer uma tabela estatística com a quantidade de 
  ;; cada letra no texto. Sugestão do professor: ordenar o texto e 
  ;; contar cada caractere.
  ;; Dica: Use listas (list) e construtores (cons) para agrupar os dados.
  nil)

;; 3. Construção da Árvore de Huffman
(defun construir-arvore (tabela-freq)
  ;; TO-DO Pessoa 1: Escrever o programa que cria a árvore de Huffman.
  ;; Lembre-se que há várias árvores possíveis e você só precisa criar uma.
  nil)


;; ======================================================================
;; PARTE 2: RESPONSABILIDADE DA PESSOA 2
;; ======================================================================

;; 4. Criação da Tabela de Códigos
(defun tabela-codigos (arvore)
  ;; TO-DO Pessoa 2: Criar a tabela dos códigos para cada símbolo 
  ;; (letra ou número, etc) percorrendo a árvore construída.
  ;; Dica: Para extrair dados da árvore, as funções car e cdr serão úteis.
  nil)

;; 5. Codificação do Texto
(defun codificar-texto (texto tabela-cod)
  ;; TO-DO Pessoa 2: Usar a tabela de códigos gerada para codificar 
  ;; o texto original lido de 'in', gerando o texto codificado.
  nil)

;; 6. Geração do Arquivo out
(defun gerar-arquivo-saida (caminho texto-codificado)
  ;; TO-DO Pessoa 2: Devolver como saída "out" o arquivo codificado 
  ;; pelo algoritmo.
  ;; (Nota: Pesquisar funções de gravação de arquivo externas às fontes)
  nil)


;; ======================================================================
;; FUNÇÃO PRINCIPAL
;; ======================================================================

;; Função que orquestra a execução de todas as etapas do EP1
(defun executar-huffman ()
  ;; TO-DO Compartilhado: Unir as chamadas de funções aqui. Exemplo lógico:
  ;; 1. Salvar o retorno de (ler-arquivo "in") em uma variável.
  ;; 2. Passar esse texto para (tabela-frequencia texto).
  ;; 3. Passar a tabela para (construir-arvore tabela).
  ;; 4. Passar a árvore para (tabela-codigos arvore).
  ;; 5. Passar o texto e a tabela de códigos para (codificar-texto ...).
  ;; 6. Passar o texto final para (gerar-arquivo-saida "out" ...).
  )
