;; ======================================================================
;; EP1 de Paradigmas: Codificação de Huffman
;; Grupo: 
;; - Bruna Amorim Maia, RA 10431883 - Infraestrutura e Árvore
;; - Rute Willemann, 10436781 - Estatística e Codificação
;; ======================================================================


;; 1. Leitura e Limpeza do Arquivo
(defun ler-arquivo (caminho)
  (with-open-file (stream caminho)
    (loop for c = (read-char stream nil)
      while c
        if (or (alpha-char-p c) (digit-char-p c))
          collect c )))

;; 2. Construção da Árvore de Huffman (O Algoritmo Principal)
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


;; 3. Conta a ocorrência de cada caractere no texto
(defun tabela-frequencia (texto)
  (let ((lista-freq '()))
    (dolist (char texto)
      (let ((par (assoc char lista-freq)))
        (if par
            (incf (cdr par))
            (push (cons char 1) lista-freq))))
    ;; Inverte para usar no sort
    (mapcar (lambda (p) (list (cdr p) (car p))) lista-freq)))

;; 4. Percorre a árvore e gera os códigos binários (Esquerda=0, Direita=1)
(defun gerar-dicionario (arvore &optional (caminho ""))
  (if (null (cddr arvore)) ; Se nao tem filhos, eh uma folha
      (list (list (cadr arvore) caminho))
      (append (gerar-dicionario (cadr arvore) (concatenate 'string caminho "0"))
              (gerar-dicionario (caddr arvore) (concatenate 'string caminho "1")))))

;; 5. Substitui o texto pelos códigos e salva no arquivo "out.txt"
(defun codificar-e-salvar (texto dicionario caminho-out)
  (with-open-file (stream caminho-out :direction :output :if-exists :supersede)
    (dolist (char texto)
      (let ((codigo (cadr (assoc char dicionario))))
        (format stream "~a" codigo)))))

;; ======================================================================
;; FUNÇÃO PRINCIPAL (ORQUESTRAÇÃO)
;; ======================================================================

(defun executar-huffman ()
  (format t "Iniciando Codificação de Huffman...~%")
  (let* ((texto (ler-arquivo "in.txt"))                 
         (freq (tabela-frequencia texto))            
         (arvore (construir-arvore freq))     
         (dict (gerar-dicionario arvore))
         (resultado (codificar-e-salvar texto dict "out.txt")))
    (format t "Arquivo codificado com sucesso em out.txt!~%")))
    
;; Executar 
(executar-huffman)
