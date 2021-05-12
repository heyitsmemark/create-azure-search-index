# `create-azure-search-index` GitHub Action

This repository contains an action for use with GitHub Actions, which creates a new Index within a specified Azure Cognitive Search instance.

## Usage

Create a new index using a local definition file:

```yaml
- name: Create index
  uses: heyitsmemark/create-azure-search-index@main
  with:
    azureSearchInstance: plop
    azureSearchAdminKey: ${{ secrets.AZURE_SEARCH_ADMIN_KEY }}
    indexDefinitionFile: ./path/to/index.json
```

Create a new index using a remote definition file:

```yaml
- name: Create index 
  uses: heyitsmemark/create-azure-search-index@main
  with:
    azureSearchInstance: plop
    azureSearchAdminKey: ${{ secrets.AZURE_SEARCH_ADMIN_KEY }}
    indexDefinitionUri: https://domain.com/path/to/index.json
```

## Samples

Sample workflows are available [here](.github/workflows/)