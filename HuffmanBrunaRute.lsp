;; ======================================================================
;; EP1 de Paradigmas: Codificacao de Huffman
;; Grupo: 
;; - Bruna Amorim Maia, RA 10431883
;; - Rute Willemann, RA 10436781
;; ======================================================================

;; COMO RODAR O PROGRAMA:
;; 1. Crie um arquivo de texto chamado "in.txt" na mesma pasta deste codigo.
;; 2. Escreva o texto (apenas letras e numeros) que deseja codificar.
;; 3. No seu interpretador Lisp, carregue este arquivo (.lsp).
;; 4. O programa executara automaticamente e criara o arquivo "out.txt" com o resultado.

;; 1. Leitura do arquivo "in.txt" (apenas letras e numeros)
(defun ler-arquivo (caminho)
  (with-open-file (stream caminho)
    (loop for c = (read-char stream nil)
      while c
        if (or (alpha-char-p c) (digit-char-p c))
          collect c )))

;; 2. Construcao da Arvore de Huffman
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

;; 3. Geracao da tabela de frequencias [cite: 10, 11]
(defun tabela-frequencia (texto)
  (let ((lista-freq '()))
    (dolist (char texto)
      (let ((par (assoc char lista-freq)))
        (if par
            (setf (cdr par) (+ (cdr par) 1))
            (setf lista-freq (cons (cons char 1) lista-freq)))))
    ;; Converte para o formato (frequencia caractere)
    (mapcar (lambda (p) (list (cdr p) (car p))) lista-freq)))

;; 4. Geracao dos codigos binarios a partir da arvore
(defun gerar-dicionario (arvore &optional (caminho ""))
  (if (null (cddr arvore)) ; Se nao tem filhos, eh uma folha
      (list (list (cadr arvore) caminho))
      (append (gerar-dicionario (cadr arvore) (concatenate 'string caminho "0"))
              (gerar-dicionario (caddr arvore) (concatenate 'string caminho "1")))))

;; 5. Codificacao do texto e gravacao no arquivo "out.txt" [cite: 5, 14]
(defun codificar-e-salvar (texto dicionario caminho-out)
  (with-open-file (stream caminho-out :direction :output :if-exists :supersede)
    (dolist (char texto)
      (let ((codigo (cadr (assoc char dicionario))))
        (format stream "~a" codigo)))))

;; ======================================================================
;; FUNCAO PRINCIPAL (ORQUESTRACAO)
;; ======================================================================

(defun executar-huffman ()
  (format t "Iniciando Codificacao de Huffman...~%")
  (let* ((texto (ler-arquivo "in.txt"))                    
         (freq (tabela-frequencia texto))             
         (arvore (construir-arvore freq))      
         (dict (gerar-dicionario arvore))
         (resultado (codificar-e-salvar texto dict "out.txt")))
    (format t "Arquivo codificado com sucesso em out.txt!~%")))

;; Execucao automatica ao carregar o arquivo
(executar-huffman)
