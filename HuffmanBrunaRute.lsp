;; ======================================================================
;; EP1 de Paradigmas: Codificação de Huffman
;; Grupo: 
;; - Bruna Amorim Maia, RA 10431883 - Infraestrutura e Árvore
;; - [TO-DO: Nome da Pessoa 2] - Estatística e Codificação
;; ======================================================================

;; ======================================================================
;; PARTE 1: RESPONSABILIDADE DA PESSOA 1
;; ======================================================================

;; 1. Leitura e Limpeza do Arquivo
;; TO-DO Pessoa 1: Implementar a leitura do arquivo "in"
(defun ler-arquivo (caminho)
  (with-open-file (stream caminho)
    (loop for c = (read-char stream nil)
      while c
        if (or (alpha-char-p c) (digit-char-p c))
          collect c )))

;; 2. Construção da Árvore de Huffman (O Algoritmo Principal)
;; TO-DO Pessoa 1: Criar a árvore binária baseada nas frequências.
(defun construir-arvore (tabela-freq)
  (if (= (length tabela-freq) 1)
      (car tabela-freq)
      (let* (
             (ordenada (sort (copy-list tabela-freq) #'< :key #'car))
             (menor (car ordenada))
             (segundo (cadr ordenada))
             (resto (cddr ordenada))
             (novo-no (list (+ (car menor) (car segundo)) menor segundo))
            )
        (construir-arvore (cons novo-no resto)))))

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
;; FUNÇÃO PRINCIPAL (ORQUESTRAÇÃO) - PESSOA 1 E 2
;; ======================================================================

(defun executar-huffman ()
  (format t "Iniciando Codificação de Huffman...~%")
      (let* ((texto (ler-arquivo "in.txt"))
              ;; 2. freq   <- (tabela-frequencia texto)          <- PESSOA 2
              (arvore (construir-arvore freq))
              ;; 4. dict   <- (gerar-dicionario arvore)          <- PESSOA 2
              ;; 5. (codificar-e-salvar texto dict "out.txt")    <- PESSOA 2
)))
