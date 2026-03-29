;; ======================================================================
;; EP1 de Paradigmas: Codificação de Huffman
;; Integrantes: 
;; 1. [TO-DO: Nome da Pessoa 1] - Infraestrutura e Árvore
;; 2. [TO-DO: Nome da Pessoa 2] - Estatística e Codificação
;; ======================================================================

;; ======================================================================
;; PARTE 1: RESPONSABILIDADE DA PESSOA 1
;; ======================================================================

;; 1. Leitura e Limpeza do Arquivo
(defun ler-arquivo (caminho)
  ;; TO-DO Pessoa 1: Implementar a leitura do arquivo "in"[cite: 329].
  ;; Filtrar caracteres latinos e números, ignorando acentos conforme o PDF.
  ;; Dica: Use (with-open-file (stream caminho) ...) para abrir o arquivo.
  nil)

;; 2. Construção da Árvore de Huffman (O Algoritmo Principal)
(defun construir-arvore (tabela-freq)
  ;; TO-DO Pessoa 1: Criar a árvore binária baseada nas frequências.
  ;; Combine os dois nós de menor peso em um novo nó recursivamente.
  ;; Use (list) e (cons) para estruturar os nós[cite: 234, 266].
  nil)


;; ======================================================================
;; PARTE 2: RESPONSABILIDADE DA PESSOA 2
;; ======================================================================

;; 3. Tabela de Frequências (Estatística)
(defun tabela-frequencia (texto)
  ;; TO-DO Pessoa 2: Contar a ocorrência de cada caractere no texto.
  ;; Retorno sugerido: uma lista de sublistas, ex: ((#\A 5) (#\B 2)).
  ;; Dica: Ordenar a string antes pode facilitar a contagem.
  nil)

;; 4. Geração dos Códigos (Dicionário)
(defun gerar-dicionario (arvore)
  ;; TO-DO Pessoa 2: Percorrer a árvore (da Pessoa 1) e gerar códigos binários.
  ;; Esquerda = 0, Direita = 1. Use (car) e (cdr) para navegar[cite: 284, 297].
  nil)

;; 5. Codificação e Saída "out"
(defun codificar-e-salvar (texto dicionario caminho-out)
  ;; TO-DO Pessoa 2: Substituir cada letra do texto pelo código binário.
  ;; Gravar o resultado final (o texto codificado) no arquivo "out".
  nil)


;; ======================================================================
;; FUNÇÃO PRINCIPAL (ORQUESTRAÇÃO)
;; ======================================================================

(defun executar-huffman ()
  (format t "Iniciando Codificação de Huffman...~%")
  ;; Esta função une os módulos de ambos os integrantes:
  ;; 1. texto  <- (ler-arquivo "in.txt")             <- PESSOA 1
  ;; 2. freq   <- (tabela-frequencia texto)          <- PESSOA 2
  ;; 3. arvore <- (construir-arvore freq)            <- PESSOA 1
  ;; 4. dict   <- (gerar-dicionario arvore)          <- PESSOA 2
  ;; 5. (codificar-e-salvar texto dict "out.txt")    <- PESSOA 2
)
