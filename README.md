# 📦 EP1 - Codificação de Huffman (Lisp)

## 👩‍💻 Integrantes

* Bruna Amorim Maia (RA 10431883) — Infraestrutura e Árvore
* Rute Willemann (RA 10436781) — Estatística e Codificação

---

## 🎯 Objetivo

Implementar o algoritmo de **codificação de Huffman** em Lisp, conforme solicitado no enunciado da disciplina.

O programa:

* lê um arquivo de entrada (`in.txt`)
* calcula a frequência dos caracteres
* constrói a árvore de Huffman
* gera os códigos binários
* produz um arquivo de saída (`out.txt`) com o texto codificado

---

## ⚙️ Como executar

### 1. Pré-requisitos

* Ter o **SBCL** instalado

```bash
sbcl --version
```

Se não estiver instalado:

```bash
sudo apt update
sudo apt install sbcl -y
```

---

### 2. Arquivos necessários

Certifique-se de ter no mesmo diretório:

```
HuffmanBrunaRute.lsp
in.txt
```

---

### 3. Executar o programa

```bash
sbcl --script HuffmanBrunaRute.lsp
```

---

### 4. Ver resultado

O programa irá gerar:

```
out.txt
```

Para visualizar:

```bash
cat out.txt
```

---

## 🧪 Teste de exemplo

Exemplo de conteúdo para `in.txt`:

```
ABRACADABRA123
```

Após execução, o arquivo `out.txt` conterá uma sequência binária correspondente à codificação de Huffman.

---

## ⚠️ Observações

* O programa implementa **codificação de Huffman**, não compressão binária completa
* O arquivo de saída pode ser maior que o de entrada, pois os bits são armazenados como texto (`"0"` e `"1"`)
* Não foi implementada a etapa de descompressão

---

## 📌 Estrutura do projeto

* `ler-arquivo` → leitura e filtragem do texto
* `tabela-frequencia` → contagem de caracteres
* `construir-arvore` → criação da árvore de Huffman
* `gerar-dicionario` → geração dos códigos binários
* `codificar-e-salvar` → escrita do resultado

---

## ✅ Status

✔ Implementação completa
✔ Testado com sucesso
✔ Pronto para execução via SBCL

---

## 📤 Entrega

De acordo com o enunciado, deve ser enviado:

```
apenas o arquivo .lisp
```

Não é necessário enviar:

* `in.txt`
* `out.txt`
* outros arquivos auxiliares

---

## 🚀 Execução final

```bash
sbcl --script HuffmanBrunaRute.lsp
```

---
