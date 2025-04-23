# SuporteBat
Arquivos de manutenção de computadores

## 1º. Limpeza de Pastas Temporárias (limpeza_pastas_temporarias.bat)
#### Este arquivos faz limpeza nas pastas temp, %temp% e Prefetch
Automaticamente, o passo-a-passo do programa é:
* Auto-elevação segura - Solicita ao PowerShell, as permissões de administrador automaticamente. 
* Forçar fechar processos - encerra navegadores e Explorer que bloqueiam arquivos. 
* Exclusão robusta - apaga arquivos recursivamente e remove subpastas vazias após a limpeza. 
* Tratamento de erros - informa falhas específicas em cada etapa. 
* Reinicialização do Explorer - restaura a interface após fechar processos. 

## 2º. Verificação de Disco CHKDSK (verificacao_disco.bat) 
#### Script .bat para verificar e corrigir erros em discos rígidos
Automaticamente, o passo-a-passo do programa é:
* Prevenção de falhas : Identifica e corrige erros lógicos (ex: tabela de alocação corrompida) e físicos (setores defeituosos). 
* Segurança : O parâmetro /r previne perda de dados ao tentar recuperar informações de setores danificados. 
* Praticidade : Automatiza a verificação sem exigir conhecimento técnico avançado.

⚠️ Atenção : 
* O parâmetro /r pode demorar horas em discos grandes. Use em janelas de manutenção. 
* Se o disco estiver em uso (ex: sistema), a verificação ocorrerá após reiniciar o PC
