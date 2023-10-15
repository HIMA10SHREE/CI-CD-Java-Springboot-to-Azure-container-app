@minLength(5)
@maxLength(50)
@description('Provide a location for the registry.')
param location string
@description('Provide a tier of your Azure Container Registry.')
param Sku string 
@description('Provide a globally unique name of your Azure Container Registry')
param acrName string
resource acrResource 'Microsoft.ContainerRegistry/registries@2023-01-01-preview' = {
  name: acrName
  location: location
  sku: {
    name: Sku
  }
  properties: {
    adminUserEnabled: false
  }
}

