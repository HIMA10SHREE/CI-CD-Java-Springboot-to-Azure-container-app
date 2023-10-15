@description('Provide a tier of your Azure Container Apps.')
param caenv string
@description('Provide a location for the registry.')
param location string = resourceGroup().location
param loganalyticsWorkspaceName string
param skuName string 


resource logws 'Microsoft.OperationalInsights/workspaces@2021-06-01' = {
  name: loganalyticsWorkspaceName
  location: location
  properties: {
    sku: {
      name: skuName
  }
}
}

resource containerappsenvironment 'Microsoft.App/managedEnvironments@2022-03-01' = {
  name: caenv
  location: location
  properties: {
    appLogsConfiguration: {
      destination: 'log-analytics'
        logAnalyticsConfiguration: {
          customerId: reference(logws.id, '2021-12-01-preview').customerId
          sharedKey: listKeys(logws.id, '2021-12-01-preview').primarySharedKey
        }
    }
  }
}
