param virtualNetworks_aro_vnet_name string = 'aro-vnet'
param openShiftClusters_cluster_aro_name string = 'cluster-aro'
param networkSecurityGroups_cluster_aro_zcqjz_nsg_externalid string = '/subscriptions/8fdfcd42-cb6a-4f09-bd1d-984a332c84b1/resourceGroups/aro-cvrk480s/providers/Microsoft.Network/networkSecurityGroups/cluster-aro-zcqjz-nsg'

resource virtualNetworks_aro_vnet_name_master_subnet 'Microsoft.Network/virtualNetworks/subnets@2022-07-01' = {
  name: '${virtualNetworks_aro_vnet_name}/master-subnet'
  properties: {
    addressPrefix: '10.0.0.0/23'
    networkSecurityGroup: {
      id: networkSecurityGroups_cluster_aro_zcqjz_nsg_externalid
    }
    serviceEndpoints: [
      {
        service: 'Microsoft.ContainerRegistry'
        locations: [
          '*'
        ]
      }
      {
        service: 'Microsoft.Storage'
        locations: [
          'westeurope'
          'northeurope'
        ]
      }
    ]
    delegations: []
    privateEndpointNetworkPolicies: 'Disabled'
    privateLinkServiceNetworkPolicies: 'Disabled'
  }
  dependsOn: [
    virtualNetworks_aro_vnet_name_resource
  ]
}

resource virtualNetworks_aro_vnet_name_worker_subnet 'Microsoft.Network/virtualNetworks/subnets@2022-07-01' = {
  name: '${virtualNetworks_aro_vnet_name}/worker-subnet'
  properties: {
    addressPrefix: '10.0.2.0/23'
    networkSecurityGroup: {
      id: networkSecurityGroups_cluster_aro_zcqjz_nsg_externalid
    }
    serviceEndpoints: [
      {
        service: 'Microsoft.ContainerRegistry'
        locations: [
          '*'
        ]
      }
      {
        service: 'Microsoft.Storage'
        locations: [
          'westeurope'
          'northeurope'
        ]
      }
    ]
    delegations: []
    privateEndpointNetworkPolicies: 'Disabled'
    privateLinkServiceNetworkPolicies: 'Enabled'
  }
  dependsOn: [
    virtualNetworks_aro_vnet_name_resource
  ]
}

resource virtualNetworks_aro_vnet_name_resource 'Microsoft.Network/virtualNetworks@2022-07-01' = {
  name: virtualNetworks_aro_vnet_name
  location: 'westeurope'
  properties: {
    addressSpace: {
      addressPrefixes: [
        '10.0.0.0/22'
      ]
    }
    subnets: [
      {
        name: 'master-subnet'
        id: virtualNetworks_aro_vnet_name_master_subnet.id
        properties: {
          addressPrefix: '10.0.0.0/23'
          networkSecurityGroup: {
            id: networkSecurityGroups_cluster_aro_zcqjz_nsg_externalid
          }
          serviceEndpoints: [
            {
              service: 'Microsoft.ContainerRegistry'
              locations: [
                '*'
              ]
            }
            {
              service: 'Microsoft.Storage'
              locations: [
                'westeurope'
                'northeurope'
              ]
            }
          ]
          delegations: []
          privateEndpointNetworkPolicies: 'Disabled'
          privateLinkServiceNetworkPolicies: 'Disabled'
        }
        type: 'Microsoft.Network/virtualNetworks/subnets'
      }
      {
        name: 'worker-subnet'
        id: virtualNetworks_aro_vnet_name_worker_subnet.id
        properties: {
          addressPrefix: '10.0.2.0/23'
          networkSecurityGroup: {
            id: networkSecurityGroups_cluster_aro_zcqjz_nsg_externalid
          }
          serviceEndpoints: [
            {
              service: 'Microsoft.ContainerRegistry'
              locations: [
                '*'
              ]
            }
            {
              service: 'Microsoft.Storage'
              locations: [
                'westeurope'
                'northeurope'
              ]
            }
          ]
          delegations: []
          privateEndpointNetworkPolicies: 'Disabled'
          privateLinkServiceNetworkPolicies: 'Enabled'
        }
        type: 'Microsoft.Network/virtualNetworks/subnets'
      }
    ]
    virtualNetworkPeerings: []
    enableDdosProtection: false
  }
}

resource openShiftClusters_cluster_aro_name_resource 'Microsoft.RedHatOpenShift/openShiftClusters@2022-09-04' = {
  name: openShiftClusters_cluster_aro_name
  location: 'westeurope'
  properties: {
    provisioningState: 'Succeeded'
    clusterProfile: {
      domain: 'cvrk480s'
      version: '4.10.40'
      resourceGroupId: '/subscriptions/8fdfcd42-cb6a-4f09-bd1d-984a332c84b1/resourcegroups/aro-cvrk480s'
      fipsValidatedModules: 'Disabled'
    }
    consoleProfile: {
      url: 'https://console-openshift-console.apps.cvrk480s.westeurope.aroapp.io/'
    }
    servicePrincipalProfile: {
      clientId: '3df949d1-ac66-412b-9ce9-27758fd62115'
    }
    networkProfile: {
      podCidr: '10.128.0.0/14'
      serviceCidr: '172.30.0.0/16'
    }
    masterProfile: {
      vmSize: 'Standard_D8s_v3'
      subnetId: virtualNetworks_aro_vnet_name_master_subnet.id
      encryptionAtHost: 'Disabled'
    }
    workerProfiles: [
      {
        name: '${openShiftClusters_cluster_aro_name}-zcqjz-worker-westeurope1'
        vmSize: 'Standard_D4s_v3'
        diskSizeGB: 128
        subnetId: virtualNetworks_aro_vnet_name_worker_subnet.id
        count: 1
        encryptionAtHost: 'Disabled'
      }
      {
        name: '${openShiftClusters_cluster_aro_name}-zcqjz-worker-westeurope2'
        vmSize: 'Standard_D4s_v3'
        diskSizeGB: 128
        subnetId: virtualNetworks_aro_vnet_name_worker_subnet.id
        count: 1
        encryptionAtHost: 'Disabled'
      }
      {
        name: '${openShiftClusters_cluster_aro_name}-zcqjz-worker-westeurope3'
        vmSize: 'Standard_D4s_v3'
        diskSizeGB: 128
        subnetId: virtualNetworks_aro_vnet_name_worker_subnet.id
        count: 1
        encryptionAtHost: 'Disabled'
      }
    ]
    apiserverProfile: {
      visibility: 'Public'
      url: 'https://api.cvrk480s.westeurope.aroapp.io:6443/'
      ip: '20.160.129.200'
    }
    ingressProfiles: [
      {
        name: 'default'
        visibility: 'Public'
        ip: '20.160.129.206'
      }
    ]
  }
}