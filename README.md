## Scripts Windows – Personalização e Limpeza

Este repositório contém scripts `.bat` para automação de tarefas em sistemas Windows, com foco em personalização, otimização e limpeza de arquivos desnecessários. Os scripts são projetados para melhorar o desempenho do sistema, liberar espaço em disco e personalizar a configuração do sistema.

## Scripts Disponíveis

### 1. **Personalização e Limpeza de Arquivos de Navegação (Chrome)**

- **Objetivo**: Apaga todos os dados de navegação e configurações do **Google Chrome** para todos os usuários do sistema.
- **Ação**: Exclui arquivos localizados na pasta de perfil do Chrome, removendo qualquer dado de navegação.

### 2. **Movimento e Exclusão de Arquivos Padrão (Área de Trabalho, Documentos, Downloads)**

- **Objetivo**: Movimenta todos os arquivos e pastas das pastas **Área de Trabalho**, **Documentos** e **Downloads** para a pasta `C:\useless_trash`, e então exclui essa pasta.
- **Ação**: Move arquivos de todas as contas de usuário para a pasta `C:\useless_trash` e exclui a pasta após a movimentação.

### 3. **Limpeza de Arquivos Temporários de Usuários**

- **Objetivo**: Limpa os arquivos temporários das pastas **Temp** de todos os usuários do sistema.
- **Ação**:
  - Exclui todos os arquivos na pasta **Temp**, mantendo apenas as pastas.
  - Cria e apaga um arquivo `vazio.txt` para ajudar a remover pastas vazias.
  - Utiliza o `robocopy` para garantir que as pastas vazias sejam removidas corretamente.

### 4. **Limpeza de Arquivos Temporários do Sistema Windows**

- **Objetivo**: Limpa arquivos temporários do próprio sistema operacional Windows.
- **Ação**:
  - Exclui todos os arquivos da pasta `C:\Windows\Temp`, mantendo apenas as pastas.
  - Cria e apaga um arquivo `vazio.txt` na pasta `Temp` do Windows para ajudar na remoção das pastas vazias.
  - Limpa a Lixeira do Windows.

## Como Usar

1. **Baixe os scripts** do repositório ou clone-o para o seu sistema.
2. **Execute os scripts** como administrador. Eles automatizam a limpeza de arquivos temporários e outras pastas específicas, ajudando a liberar espaço e melhorar o desempenho do sistema.
3. **Certifique-se de que você está ciente dos efeitos**: esses scripts podem apagar permanentemente dados, então, use-os com cautela.

## Avisos

- **Backup recomendado**: Antes de executar os scripts, é altamente recomendável fazer backup de arquivos importantes, pois os scripts podem excluir dados de forma irreversível.
- **Afeta todas as contas de usuário**: Os scripts atuam em todas as contas de usuário no sistema, portanto, verifique se nenhum usuário precisa de dados de navegação ou arquivos nessas pastas.
- **Pode afetar o funcionamento de alguns programas**: Ao excluir dados de navegação e arquivos temporários, alguns programas podem precisar recarregar ou reconfigurar suas preferências.

## Contribuições

Se você tiver sugestões ou melhorias para esses scripts, sinta-se à vontade para abrir um **Pull Request** ou um **Issue**!

---

Esse formato combina todas as funções e descrições dos scripts em um único arquivo `README.md`. Se precisar de mais alguma modificação ou ajuste, é só avisar!
