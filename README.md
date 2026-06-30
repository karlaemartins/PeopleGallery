# iOS People Gallery - Projeto de Estudo

Aplicativo desenvolvido em **UIKit** para cadastro e gerenciamento de pessoas com foto. O projeto permite adicionar, visualizar, editar e excluir registros, além de persistir os dados localmente entre execuções do aplicativo.

Este projeto faz parte dos **Projects 10 e 12** do curso **100 Days of Swift**, mas foi adaptado com foco em organização, arquitetura e escalabilidade, simulando uma estrutura mais próxima de projetos utilizados no mercado.

## O que o app faz

- Adiciona pessoas utilizando fotos da galeria
- Permite editar o nome de uma pessoa cadastrada
- Permite excluir pessoas
- Exibe foto e nome em uma UICollectionView
- Persiste os dados localmente utilizando UserDefaults e Codable
- Mantém as imagens armazenadas no diretório Documents

## Arquitetura

O projeto foi estruturado com separação de responsabilidades, isolando as regras de armazenamento e persistência da camada de interface.

## Decisões importantes

- UIKit programático (sem Storyboard)
- Separação de responsabilidades através de Services
- Persistência utilizando Codable
- Estrutura organizada para facilitar manutenção e evolução
- Atualização eficiente da UICollectionView utilizando `insertItems`, `reloadItems` e `deleteItems`

## Melhorias em relação ao projeto original

Comparado ao projeto apresentado no curso, foram realizadas algumas adaptações:

- Interface totalmente programática
- Criação do `ImageStorageService` para gerenciamento de imagens
- Criação do `PersonStorageService` para persistência de dados
- Separação da lógica de armazenamento da ViewController
- Layout adaptativo para diferentes larguras de tela
- Utilização de atualizações específicas da UICollectionView em vez de recarregar toda a interface
- Estrutura preparada para crescimento futuro

## Conceitos praticados

- UIKit
- UICollectionView
- UICollectionViewCell
- UIImagePickerController
- UIAlertController
- Delegate Pattern
- Codable
- JSONEncoder
- JSONDecoder
- UserDefaults
- Persistência local
- Manipulação de arquivos no diretório Documents

## Créditos

Projeto baseado nos **Projects 10 e 12**, do curso **100 Days of Swift**, criado por **Paul Hudson (Hacking with Swift)**.
