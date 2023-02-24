param storageAccounts_clusterq0076_name string = 'clusterq0076'
param loadBalancers_cluster_aro_zcqjz_name string = 'cluster-aro-zcqjz'
param storageAccounts_imageregistryq0076_name string = 'imageregistryq0076'
param privateEndpoints_cluster_aro_zcqjz_pe_name string = 'cluster-aro-zcqjz-pe'
param loadBalancers_cluster_aro_zcqjz_internal_name string = 'cluster-aro-zcqjz-internal'
param privateLinkServices_cluster_aro_zcqjz_pls_name string = 'cluster-aro-zcqjz-pls'
param virtualMachines_cluster_aro_zcqjz_master_0_name string = 'cluster-aro-zcqjz-master-0'
param virtualMachines_cluster_aro_zcqjz_master_1_name string = 'cluster-aro-zcqjz-master-1'
param virtualMachines_cluster_aro_zcqjz_master_2_name string = 'cluster-aro-zcqjz-master-2'
param publicIPAddresses_cluster_aro_zcqjz_pip_v4_name string = 'cluster-aro-zcqjz-pip-v4'
param networkSecurityGroups_cluster_aro_zcqjz_nsg_name string = 'cluster-aro-zcqjz-nsg'
param publicIPAddresses_cluster_aro_zcqjz_default_v4_name string = 'cluster-aro-zcqjz-default-v4'
param networkInterfaces_cluster_aro_zcqjz_master0_nic_name string = 'cluster-aro-zcqjz-master0-nic'
param networkInterfaces_cluster_aro_zcqjz_master1_nic_name string = 'cluster-aro-zcqjz-master1-nic'
param networkInterfaces_cluster_aro_zcqjz_master2_nic_name string = 'cluster-aro-zcqjz-master2-nic'
param virtualMachines_cluster_aro_zcqjz_worker_westeurope1_jpr7z_name string = 'cluster-aro-zcqjz-worker-westeurope1-jpr7z'
param virtualMachines_cluster_aro_zcqjz_worker_westeurope2_hsdjh_name string = 'cluster-aro-zcqjz-worker-westeurope2-hsdjh'
param virtualMachines_cluster_aro_zcqjz_worker_westeurope3_gl5hj_name string = 'cluster-aro-zcqjz-worker-westeurope3-gl5hj'
param networkInterfaces_cluster_aro_zcqjz_worker_westeurope1_jpr7z_nic_name string = 'cluster-aro-zcqjz-worker-westeurope1-jpr7z-nic'
param networkInterfaces_cluster_aro_zcqjz_worker_westeurope2_hsdjh_nic_name string = 'cluster-aro-zcqjz-worker-westeurope2-hsdjh-nic'
param networkInterfaces_cluster_aro_zcqjz_worker_westeurope3_gl5hj_nic_name string = 'cluster-aro-zcqjz-worker-westeurope3-gl5hj-nic'
param disks_cluster_aro_zcqjz_dynamic_pvc_0cd0b5a6_a90a_497b_a567_e9fea76c9cdc_name string = 'cluster-aro-zcqjz-dynamic-pvc-0cd0b5a6-a90a-497b-a567-e9fea76c9cdc'
param networkInterfaces_cluster_aro_zcqjz_pe_nic_0044dba0_7671_4a24_850a_d34369a604e5_name string = 'cluster-aro-zcqjz-pe.nic.0044dba0-7671-4a24-850a-d34369a604e5'
param networkInterfaces_cluster_aro_zcqjz_pls_nic_3b052138_5dd5_45e9_b69c_390b05544d7f_name string = 'cluster-aro-zcqjz-pls.nic.3b052138-5dd5-45e9-b69c-390b05544d7f'
param virtualNetworks_aro_vnet_externalid string = '/subscriptions/8fdfcd42-cb6a-4f09-bd1d-984a332c84b1/resourceGroups/aro-rg/providers/Microsoft.Network/virtualNetworks/aro-vnet'
param privateLinkServices_gateway_pls_001_externalid string = '/subscriptions/670fef00-02e0-4cd9-8c92-5f593005be0d/resourceGroups/gwy-westeurope/providers/Microsoft.Network/privateLinkServices/gateway-pls-001'
param virtualNetworks_rp_pe_vnet_001_externalid string = '/subscriptions/670fef00-02e0-4cd9-8c92-5f593005be0d/resourceGroups/rp-westeurope/providers/Microsoft.Network/virtualNetworks/rp-pe-vnet-001'
param virtualNetworks_rp_vnet_externalid string = '/subscriptions/670fef00-02e0-4cd9-8c92-5f593005be0d/resourceGroups/rp-westeurope/providers/Microsoft.Network/virtualNetworks/rp-vnet'
param virtualNetworks_gateway_vnet_externalid string = '/subscriptions/670fef00-02e0-4cd9-8c92-5f593005be0d/resourceGroups/gwy-westeurope/providers/Microsoft.Network/virtualNetworks/gateway-vnet'

resource disks_cluster_aro_zcqjz_dynamic_pvc_0cd0b5a6_a90a_497b_a567_e9fea76c9cdc_name_resource 'Microsoft.Compute/disks@2022-07-02' = {
  name: disks_cluster_aro_zcqjz_dynamic_pvc_0cd0b5a6_a90a_497b_a567_e9fea76c9cdc_name
  location: 'westeurope'
  tags: {
    'created-by': 'kubernetes-azure-dd'
    'kubernetes.io-created-for-pv-name': 'pvc-0cd0b5a6-a90a-497b-a567-e9fea76c9cdc'
    'kubernetes.io-created-for-pvc-name': 'pvc-c7a31f21f8'
    'kubernetes.io-created-for-pvc-namespace': 'newproject'
  }
  sku: {
    name: 'Premium_LRS'
    tier: 'Premium'
  }
  zones: [
    '1'
  ]
  properties: {
    creationData: {
      createOption: 'Empty'
    }
    diskSizeGB: 1
    diskIOPSReadWrite: 120
    diskMBpsReadWrite: 25
    encryption: {
      type: 'EncryptionAtRestWithPlatformKey'
    }
    networkAccessPolicy: 'AllowAll'
    publicNetworkAccess: 'Enabled'
    diskState: 'Unattached'
    tier: 'P1'
  }
}

resource networkInterfaces_cluster_aro_zcqjz_pe_nic_0044dba0_7671_4a24_850a_d34369a604e5_name_resource 'Microsoft.Network/networkInterfaces@2022-07-01' = {
  name: networkInterfaces_cluster_aro_zcqjz_pe_nic_0044dba0_7671_4a24_850a_d34369a604e5_name
  location: 'westeurope'
  kind: 'Regular'
  properties: {
    ipConfigurations: [
      {
        name: 'privateEndpointIpConfig.d7d8ef87-04fc-4980-aec7-07c9f98e5fff'
        id: '${networkInterfaces_cluster_aro_zcqjz_pe_nic_0044dba0_7671_4a24_850a_d34369a604e5_name_resource.id}/ipConfigurations/privateEndpointIpConfig.d7d8ef87-04fc-4980-aec7-07c9f98e5fff'
        etag: 'W/"14e23fd4-d214-4a92-840a-b85b3132ae02"'
        type: 'Microsoft.Network/networkInterfaces/ipConfigurations'
        properties: {
          provisioningState: 'Succeeded'
          privateIPAddress: '10.0.0.5'
          privateIPAllocationMethod: 'Dynamic'
          subnet: {
            id: '${virtualNetworks_aro_vnet_externalid}/subnets/master-subnet'
          }
          primary: true
          privateIPAddressVersion: 'IPv4'
          privateLinkConnectionProperties: {
            groupId: ''
            requiredMemberName: ''
            fqdns: []
          }
        }
      }
    ]
    dnsSettings: {
      dnsServers: []
    }
    enableAcceleratedNetworking: false
    enableIPForwarding: false
    disableTcpStateTracking: false
    nicType: 'Standard'
  }
}

resource privateEndpoints_cluster_aro_zcqjz_pe_name_resource 'Microsoft.Network/privateEndpoints@2022-07-01' = {
  name: privateEndpoints_cluster_aro_zcqjz_pe_name
  location: 'westeurope'
  properties: {
    privateLinkServiceConnections: []
    manualPrivateLinkServiceConnections: [
      {
        name: 'gateway-plsconnection'
        id: '${privateEndpoints_cluster_aro_zcqjz_pe_name_resource.id}/manualPrivateLinkServiceConnections/gateway-plsconnection'
        properties: {
          privateLinkServiceId: privateLinkServices_gateway_pls_001_externalid
          privateLinkServiceConnectionState: {
            status: 'Approved'
            description: 'Approved'
            actionsRequired: 'None'
          }
        }
      }
    ]
    subnet: {
      id: '${virtualNetworks_aro_vnet_externalid}/subnets/master-subnet'
    }
    ipConfigurations: []
    customDnsConfigs: []
  }
}

resource publicIPAddresses_cluster_aro_zcqjz_default_v4_name_resource 'Microsoft.Network/publicIPAddresses@2022-07-01' = {
  name: publicIPAddresses_cluster_aro_zcqjz_default_v4_name
  location: 'westeurope'
  sku: {
    name: 'Standard'
    tier: 'Regional'
  }
  properties: {
    ipAddress: '20.160.129.206'
    publicIPAddressVersion: 'IPv4'
    publicIPAllocationMethod: 'Static'
    idleTimeoutInMinutes: 4
    ipTags: []
  }
}

resource publicIPAddresses_cluster_aro_zcqjz_pip_v4_name_resource 'Microsoft.Network/publicIPAddresses@2022-07-01' = {
  name: publicIPAddresses_cluster_aro_zcqjz_pip_v4_name
  location: 'westeurope'
  sku: {
    name: 'Standard'
    tier: 'Regional'
  }
  properties: {
    ipAddress: '20.160.129.200'
    publicIPAddressVersion: 'IPv4'
    publicIPAllocationMethod: 'Static'
    idleTimeoutInMinutes: 4
    ipTags: []
  }
}

resource storageAccounts_clusterq0076_name_resource 'Microsoft.Storage/storageAccounts@2022-09-01' = {
  name: storageAccounts_clusterq0076_name
  location: 'westeurope'
  sku: {
    name: 'Standard_LRS'
    tier: 'Standard'
  }
  kind: 'StorageV2'
  properties: {
    minimumTlsVersion: 'TLS1_2'
    allowBlobPublicAccess: false
    networkAcls: {
      bypass: 'AzureServices'
      virtualNetworkRules: [
        {
          id: '${virtualNetworks_aro_vnet_externalid}/subnets/master-subnet'
          action: 'Allow'
          state: 'Succeeded'
        }
        {
          id: '${virtualNetworks_aro_vnet_externalid}/subnets/worker-subnet'
          action: 'Allow'
          state: 'Succeeded'
        }
        {
          id: '${virtualNetworks_rp_pe_vnet_001_externalid}/subnets/rp-pe-subnet'
          action: 'Allow'
          state: 'Succeeded'
        }
        {
          id: '${virtualNetworks_rp_vnet_externalid}/subnets/rp-subnet'
          action: 'Allow'
          state: 'Succeeded'
        }
        {
          id: '${virtualNetworks_gateway_vnet_externalid}/subnets/gateway-subnet'
          action: 'Allow'
          state: 'Succeeded'
        }
      ]
      ipRules: []
      defaultAction: 'Deny'
    }
    supportsHttpsTrafficOnly: true
    encryption: {
      services: {
        file: {
          keyType: 'Account'
          enabled: true
        }
        blob: {
          keyType: 'Account'
          enabled: true
        }
      }
      keySource: 'Microsoft.Storage'
    }
    accessTier: 'Hot'
  }
}

resource storageAccounts_imageregistryq0076_name_resource 'Microsoft.Storage/storageAccounts@2022-09-01' = {
  name: storageAccounts_imageregistryq0076_name
  location: 'westeurope'
  sku: {
    name: 'Standard_LRS'
    tier: 'Standard'
  }
  kind: 'StorageV2'
  properties: {
    minimumTlsVersion: 'TLS1_2'
    allowBlobPublicAccess: false
    networkAcls: {
      bypass: 'AzureServices'
      virtualNetworkRules: [
        {
          id: '${virtualNetworks_aro_vnet_externalid}/subnets/master-subnet'
          action: 'Allow'
          state: 'Succeeded'
        }
        {
          id: '${virtualNetworks_aro_vnet_externalid}/subnets/worker-subnet'
          action: 'Allow'
          state: 'Succeeded'
        }
        {
          id: '${virtualNetworks_rp_pe_vnet_001_externalid}/subnets/rp-pe-subnet'
          action: 'Allow'
          state: 'Succeeded'
        }
        {
          id: '${virtualNetworks_rp_vnet_externalid}/subnets/rp-subnet'
          action: 'Allow'
          state: 'Succeeded'
        }
        {
          id: '${virtualNetworks_gateway_vnet_externalid}/subnets/gateway-subnet'
          action: 'Allow'
          state: 'Succeeded'
        }
      ]
      ipRules: []
      defaultAction: 'Deny'
    }
    supportsHttpsTrafficOnly: true
    encryption: {
      services: {
        file: {
          keyType: 'Account'
          enabled: true
        }
        blob: {
          keyType: 'Account'
          enabled: true
        }
      }
      keySource: 'Microsoft.Storage'
    }
    accessTier: 'Hot'
  }
}

resource virtualMachines_cluster_aro_zcqjz_worker_westeurope1_jpr7z_name_resource 'Microsoft.Compute/virtualMachines@2022-11-01' = {
  name: virtualMachines_cluster_aro_zcqjz_worker_westeurope1_jpr7z_name
  location: 'westeurope'
  tags: {
    'kubernetes.io-cluster-cluster-aro-zcqjz': 'owned'
  }
  zones: [
    '1'
  ]
  properties: {
    hardwareProfile: {
      vmSize: 'Standard_D4s_v3'
    }
    storageProfile: {
      imageReference: {
        publisher: 'azureopenshift'
        offer: 'aro4'
        sku: 'aro_410'
        version: '410.84.20220125'
      }
      osDisk: {
        osType: 'Linux'
        name: '${virtualMachines_cluster_aro_zcqjz_worker_westeurope1_jpr7z_name}_OSDisk'
        createOption: 'FromImage'
        caching: 'ReadWrite'
        managedDisk: {
          storageAccountType: 'Premium_LRS'
          id: resourceId('Microsoft.Compute/disks', '${virtualMachines_cluster_aro_zcqjz_worker_westeurope1_jpr7z_name}_OSDisk')
        }
        deleteOption: 'Detach'
        diskSizeGB: 128
      }
      dataDisks: []
    }
    osProfile: {
      computerName: virtualMachines_cluster_aro_zcqjz_worker_westeurope1_jpr7z_name
      adminUsername: 'capi'
      linuxConfiguration: {
        disablePasswordAuthentication: true
        ssh: {
          publicKeys: [
            {
              path: '/home/capi/.ssh/authorized_keys'
              keyData: 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCnIGweSRwIH2BzCluS9UzF9qQEDLdv6yEe0tlwgmT7nn5rS2ekQbhToAnNueZQubzW9RJtwnaCmFpMHPSq2bVyt4adi/YgolNY31i124WsbmxOue1t7ZLa63PQyRt2TaZMOo84NSNBxTShq5opEKnDxZSVUyt3p62rkhrF4WCMsjZTMOrkbbxPZNUn/Eg2v51VOLSm4Sd+AdUxcTg4GlHz1LXrfl+XR0MZmB+RcEXo+uOpq2/BIunnt82/8pipl94WGmjbEUAaadkMYU3g6C/d0DAAGujRMVolWhevSs/NqzP8DN9SUT3ncxlyR5dNnlQFw5MCHQ7LOAKD4XjxmHdR\n'
            }
          ]
        }
        provisionVMAgent: true
        patchSettings: {
          patchMode: 'ImageDefault'
          assessmentMode: 'ImageDefault'
        }
        enableVMAgentPlatformUpdates: false
      }
      secrets: []
      allowExtensionOperations: true
      requireGuestProvisionSignal: true
    }
    networkProfile: {
      networkInterfaces: [
        {
          id: networkInterfaces_cluster_aro_zcqjz_worker_westeurope1_jpr7z_nic_name_resource.id
          properties: {
            primary: true
          }
        }
      ]
    }
  }
}

resource virtualMachines_cluster_aro_zcqjz_worker_westeurope2_hsdjh_name_resource 'Microsoft.Compute/virtualMachines@2022-11-01' = {
  name: virtualMachines_cluster_aro_zcqjz_worker_westeurope2_hsdjh_name
  location: 'westeurope'
  tags: {
    'kubernetes.io-cluster-cluster-aro-zcqjz': 'owned'
  }
  zones: [
    '2'
  ]
  properties: {
    hardwareProfile: {
      vmSize: 'Standard_D4s_v3'
    }
    storageProfile: {
      imageReference: {
        publisher: 'azureopenshift'
        offer: 'aro4'
        sku: 'aro_410'
        version: '410.84.20220125'
      }
      osDisk: {
        osType: 'Linux'
        name: '${virtualMachines_cluster_aro_zcqjz_worker_westeurope2_hsdjh_name}_OSDisk'
        createOption: 'FromImage'
        caching: 'ReadWrite'
        managedDisk: {
          storageAccountType: 'Premium_LRS'
          id: resourceId('Microsoft.Compute/disks', '${virtualMachines_cluster_aro_zcqjz_worker_westeurope2_hsdjh_name}_OSDisk')
        }
        deleteOption: 'Detach'
        diskSizeGB: 128
      }
      dataDisks: []
    }
    osProfile: {
      computerName: virtualMachines_cluster_aro_zcqjz_worker_westeurope2_hsdjh_name
      adminUsername: 'capi'
      linuxConfiguration: {
        disablePasswordAuthentication: true
        ssh: {
          publicKeys: [
            {
              path: '/home/capi/.ssh/authorized_keys'
              keyData: 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDp/mP4MglrmWavfy8v6YVUEJ8uJMgfQA2OrJ6kkiOt9ozR2eKSzJcM7FYzJKYuvpFsGIngMPzH0GmSjKxt+GqmffTZyzv7sE2Ivej4LVCf1dqQ4eFALpUsZwUvskP8KUuVB3iEZ3B/B4kN8IYayOWB4m4tJMKvdiHjEC/523kGUkGlJJy+ZBGUg1UZQD5IVDdAT58CerZsgmK/wolZpVYXLgmBwxXWQP4uJ48IcQqeJJmqd1kDkkMw4J/A806UUZX5ozadO3PpwrIwO8xnG+eT/v4MZ/XLZBa7lBX1kyOUaWHvjX8efDSknKhir0PC951jwa/vU8dnhSKn1YdqkdTJ\n'
            }
          ]
        }
        provisionVMAgent: true
        patchSettings: {
          patchMode: 'ImageDefault'
          assessmentMode: 'ImageDefault'
        }
        enableVMAgentPlatformUpdates: false
      }
      secrets: []
      allowExtensionOperations: true
      requireGuestProvisionSignal: true
    }
    networkProfile: {
      networkInterfaces: [
        {
          id: networkInterfaces_cluster_aro_zcqjz_worker_westeurope2_hsdjh_nic_name_resource.id
          properties: {
            primary: true
          }
        }
      ]
    }
  }
}

resource virtualMachines_cluster_aro_zcqjz_worker_westeurope3_gl5hj_name_resource 'Microsoft.Compute/virtualMachines@2022-11-01' = {
  name: virtualMachines_cluster_aro_zcqjz_worker_westeurope3_gl5hj_name
  location: 'westeurope'
  tags: {
    'kubernetes.io-cluster-cluster-aro-zcqjz': 'owned'
  }
  zones: [
    '3'
  ]
  properties: {
    hardwareProfile: {
      vmSize: 'Standard_D4s_v3'
    }
    storageProfile: {
      imageReference: {
        publisher: 'azureopenshift'
        offer: 'aro4'
        sku: 'aro_410'
        version: '410.84.20220125'
      }
      osDisk: {
        osType: 'Linux'
        name: '${virtualMachines_cluster_aro_zcqjz_worker_westeurope3_gl5hj_name}_OSDisk'
        createOption: 'FromImage'
        caching: 'ReadWrite'
        managedDisk: {
          storageAccountType: 'Premium_LRS'
          id: resourceId('Microsoft.Compute/disks', '${virtualMachines_cluster_aro_zcqjz_worker_westeurope3_gl5hj_name}_OSDisk')
        }
        deleteOption: 'Detach'
        diskSizeGB: 128
      }
      dataDisks: []
    }
    osProfile: {
      computerName: virtualMachines_cluster_aro_zcqjz_worker_westeurope3_gl5hj_name
      adminUsername: 'capi'
      linuxConfiguration: {
        disablePasswordAuthentication: true
        ssh: {
          publicKeys: [
            {
              path: '/home/capi/.ssh/authorized_keys'
              keyData: 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCvZWNwdPAAIRzcWy4MPipoAGQ/n9k+I0X9Q8H/1aNlDpzHPiTlhJlnioC172fStc4gOTjtdVA+llkl10AIvgYPIGCbukjZJLiENMXEHtslPgQO1nanKTfN+EDGfbfRS9vfChGtK2LYLogJNM59/mJ6m2hUl8OZbV15b4rSb/uCc9rwHJE1Dp6v+pd2aVBL6LHgnEjRTNcA/7j0uq2uJQ9NBrbMMhLDldvSZitAxXd3suvBkUVXVWdv/d97QIdSn079vB+xg2mOuDv0ESFlqEDWfndS/hC6i4SqSanfmj4T6RHIun4ASfkOle9YmJlieoMNf4CRScxfH7BPV/VlC/6d\n'
            }
          ]
        }
        provisionVMAgent: true
        patchSettings: {
          patchMode: 'ImageDefault'
          assessmentMode: 'ImageDefault'
        }
        enableVMAgentPlatformUpdates: false
      }
      secrets: []
      allowExtensionOperations: true
      requireGuestProvisionSignal: true
    }
    networkProfile: {
      networkInterfaces: [
        {
          id: networkInterfaces_cluster_aro_zcqjz_worker_westeurope3_gl5hj_nic_name_resource.id
          properties: {
            primary: true
          }
        }
      ]
    }
  }
}

resource loadBalancers_cluster_aro_zcqjz_name_loadBalancers_cluster_aro_zcqjz_name 'Microsoft.Network/loadBalancers/backendAddressPools@2022-07-01' = {
  name: '${loadBalancers_cluster_aro_zcqjz_name}/${loadBalancers_cluster_aro_zcqjz_name}'
  properties: {
    loadBalancerBackendAddresses: [
      {
        name: 'aro-cvrk480s_cluster-aro-zcqjz-master0-nicpipConfig'
        properties: {
        }
      }
      {
        name: 'aro-cvrk480s_cluster-aro-zcqjz-master2-nicpipConfig'
        properties: {
        }
      }
      {
        name: 'aro-cvrk480s_cluster-aro-zcqjz-master1-nicpipConfig'
        properties: {
        }
      }
      {
        name: 'aro-cvrk480s_cluster-aro-zcqjz-worker-westeurope2-hsdjh-nicpipConfig'
        properties: {
        }
      }
      {
        name: 'aro-cvrk480s_cluster-aro-zcqjz-worker-westeurope3-gl5hj-nicpipConfig'
        properties: {
        }
      }
      {
        name: 'aro-cvrk480s_cluster-aro-zcqjz-worker-westeurope1-jpr7z-nicpipConfig'
        properties: {
        }
      }
    ]
  }
  dependsOn: [
    loadBalancers_cluster_aro_zcqjz_name_resource
  ]
}

resource loadBalancers_cluster_aro_zcqjz_internal_name_cluster_aro_zcqjz 'Microsoft.Network/loadBalancers/backendAddressPools@2022-07-01' = {
  name: '${loadBalancers_cluster_aro_zcqjz_internal_name}/cluster-aro-zcqjz'
  properties: {
    loadBalancerBackendAddresses: [
      {
        name: 'aro-cvrk480s_cluster-aro-zcqjz-master0-nicpipConfig'
        properties: {
        }
      }
      {
        name: 'aro-cvrk480s_cluster-aro-zcqjz-master2-nicpipConfig'
        properties: {
        }
      }
      {
        name: 'aro-cvrk480s_cluster-aro-zcqjz-master1-nicpipConfig'
        properties: {
        }
      }
    ]
  }
  dependsOn: [
    loadBalancers_cluster_aro_zcqjz_internal_name_resource
  ]
}

resource loadBalancers_cluster_aro_zcqjz_internal_name_ssh_0 'Microsoft.Network/loadBalancers/backendAddressPools@2022-07-01' = {
  name: '${loadBalancers_cluster_aro_zcqjz_internal_name}/ssh-0'
  properties: {
    loadBalancerBackendAddresses: [
      {
        name: 'aro-cvrk480s_cluster-aro-zcqjz-master0-nicpipConfig'
        properties: {
        }
      }
    ]
  }
  dependsOn: [
    loadBalancers_cluster_aro_zcqjz_internal_name_resource
  ]
}

resource loadBalancers_cluster_aro_zcqjz_internal_name_ssh_1 'Microsoft.Network/loadBalancers/backendAddressPools@2022-07-01' = {
  name: '${loadBalancers_cluster_aro_zcqjz_internal_name}/ssh-1'
  properties: {
    loadBalancerBackendAddresses: [
      {
        name: 'aro-cvrk480s_cluster-aro-zcqjz-master1-nicpipConfig'
        properties: {
        }
      }
    ]
  }
  dependsOn: [
    loadBalancers_cluster_aro_zcqjz_internal_name_resource
  ]
}

resource loadBalancers_cluster_aro_zcqjz_internal_name_ssh_2 'Microsoft.Network/loadBalancers/backendAddressPools@2022-07-01' = {
  name: '${loadBalancers_cluster_aro_zcqjz_internal_name}/ssh-2'
  properties: {
    loadBalancerBackendAddresses: [
      {
        name: 'aro-cvrk480s_cluster-aro-zcqjz-master2-nicpipConfig'
        properties: {
        }
      }
    ]
  }
  dependsOn: [
    loadBalancers_cluster_aro_zcqjz_internal_name_resource
  ]
}

resource networkInterfaces_cluster_aro_zcqjz_pls_nic_3b052138_5dd5_45e9_b69c_390b05544d7f_name_resource 'Microsoft.Network/networkInterfaces@2022-07-01' = {
  name: networkInterfaces_cluster_aro_zcqjz_pls_nic_3b052138_5dd5_45e9_b69c_390b05544d7f_name
  location: 'westeurope'
  kind: 'Regular'
  properties: {
    ipConfigurations: [
      {
        name: 'cluster-aro-zcqjz-pls-nic'
        id: '${networkInterfaces_cluster_aro_zcqjz_pls_nic_3b052138_5dd5_45e9_b69c_390b05544d7f_name_resource.id}/ipConfigurations/cluster-aro-zcqjz-pls-nic'
        etag: 'W/"c686f4df-4df6-4b2f-bc35-a214b68016f1"'
        type: 'Microsoft.Network/networkInterfaces/ipConfigurations'
        properties: {
          provisioningState: 'Succeeded'
          privateIPAddress: '10.0.0.6'
          privateIPAllocationMethod: 'Dynamic'
          subnet: {
            id: '${virtualNetworks_aro_vnet_externalid}/subnets/master-subnet'
          }
          primary: true
          privateIPAddressVersion: 'IPv4'
        }
      }
    ]
    dnsSettings: {
      dnsServers: []
    }
    enableAcceleratedNetworking: false
    enableIPForwarding: false
    disableTcpStateTracking: false
    privateLinkService: {
      id: privateLinkServices_cluster_aro_zcqjz_pls_name_resource.id
    }
    nicType: 'Standard'
  }
}

resource networkInterfaces_cluster_aro_zcqjz_worker_westeurope1_jpr7z_nic_name_resource 'Microsoft.Network/networkInterfaces@2022-07-01' = {
  name: networkInterfaces_cluster_aro_zcqjz_worker_westeurope1_jpr7z_nic_name
  location: 'westeurope'
  kind: 'Regular'
  properties: {
    ipConfigurations: [
      {
        name: 'pipConfig'
        id: '${networkInterfaces_cluster_aro_zcqjz_worker_westeurope1_jpr7z_nic_name_resource.id}/ipConfigurations/pipConfig'
        etag: 'W/"5a2d1d24-a714-41de-9583-26e0a2aceb8d"'
        type: 'Microsoft.Network/networkInterfaces/ipConfigurations'
        properties: {
          provisioningState: 'Succeeded'
          privateIPAddress: '10.0.2.6'
          privateIPAllocationMethod: 'Dynamic'
          subnet: {
            id: '${virtualNetworks_aro_vnet_externalid}/subnets/worker-subnet'
          }
          primary: true
          privateIPAddressVersion: 'IPv4'
          loadBalancerBackendAddressPools: [
            {
              id: loadBalancers_cluster_aro_zcqjz_name_loadBalancers_cluster_aro_zcqjz_name.id
            }
          ]
        }
      }
    ]
    dnsSettings: {
      dnsServers: []
    }
    enableAcceleratedNetworking: false
    enableIPForwarding: false
    disableTcpStateTracking: false
    nicType: 'Standard'
  }
}

resource networkInterfaces_cluster_aro_zcqjz_worker_westeurope2_hsdjh_nic_name_resource 'Microsoft.Network/networkInterfaces@2022-07-01' = {
  name: networkInterfaces_cluster_aro_zcqjz_worker_westeurope2_hsdjh_nic_name
  location: 'westeurope'
  kind: 'Regular'
  properties: {
    ipConfigurations: [
      {
        name: 'pipConfig'
        id: '${networkInterfaces_cluster_aro_zcqjz_worker_westeurope2_hsdjh_nic_name_resource.id}/ipConfigurations/pipConfig'
        etag: 'W/"6a64faa9-9f6e-4891-8a26-55b1a2f80e18"'
        type: 'Microsoft.Network/networkInterfaces/ipConfigurations'
        properties: {
          provisioningState: 'Succeeded'
          privateIPAddress: '10.0.2.5'
          privateIPAllocationMethod: 'Dynamic'
          subnet: {
            id: '${virtualNetworks_aro_vnet_externalid}/subnets/worker-subnet'
          }
          primary: true
          privateIPAddressVersion: 'IPv4'
          loadBalancerBackendAddressPools: [
            {
              id: loadBalancers_cluster_aro_zcqjz_name_loadBalancers_cluster_aro_zcqjz_name.id
            }
          ]
        }
      }
    ]
    dnsSettings: {
      dnsServers: []
    }
    enableAcceleratedNetworking: false
    enableIPForwarding: false
    disableTcpStateTracking: false
    nicType: 'Standard'
  }
}

resource networkInterfaces_cluster_aro_zcqjz_worker_westeurope3_gl5hj_nic_name_resource 'Microsoft.Network/networkInterfaces@2022-07-01' = {
  name: networkInterfaces_cluster_aro_zcqjz_worker_westeurope3_gl5hj_nic_name
  location: 'westeurope'
  kind: 'Regular'
  properties: {
    ipConfigurations: [
      {
        name: 'pipConfig'
        id: '${networkInterfaces_cluster_aro_zcqjz_worker_westeurope3_gl5hj_nic_name_resource.id}/ipConfigurations/pipConfig'
        etag: 'W/"1447e663-1cfa-4666-bb11-f1ef3dc7b934"'
        type: 'Microsoft.Network/networkInterfaces/ipConfigurations'
        properties: {
          provisioningState: 'Succeeded'
          privateIPAddress: '10.0.2.4'
          privateIPAllocationMethod: 'Dynamic'
          subnet: {
            id: '${virtualNetworks_aro_vnet_externalid}/subnets/worker-subnet'
          }
          primary: true
          privateIPAddressVersion: 'IPv4'
          loadBalancerBackendAddressPools: [
            {
              id: loadBalancers_cluster_aro_zcqjz_name_loadBalancers_cluster_aro_zcqjz_name.id
            }
          ]
        }
      }
    ]
    dnsSettings: {
      dnsServers: []
    }
    enableAcceleratedNetworking: false
    enableIPForwarding: false
    disableTcpStateTracking: false
    nicType: 'Standard'
  }
}

resource networkSecurityGroups_cluster_aro_zcqjz_nsg_name_aeab19f36c1b6491a940e5945ed8c731_TCP_443_Internet 'Microsoft.Network/networkSecurityGroups/securityRules@2022-07-01' = {
  name: '${networkSecurityGroups_cluster_aro_zcqjz_nsg_name}/aeab19f36c1b6491a940e5945ed8c731-TCP-443-Internet'
  properties: {
    protocol: 'Tcp'
    sourcePortRange: '*'
    destinationPortRange: '443'
    sourceAddressPrefix: 'Internet'
    destinationAddressPrefix: '20.160.129.206'
    access: 'Allow'
    priority: 501
    direction: 'Inbound'
    sourcePortRanges: []
    destinationPortRanges: []
    sourceAddressPrefixes: []
    destinationAddressPrefixes: []
  }
  dependsOn: [
    networkSecurityGroups_cluster_aro_zcqjz_nsg_name_resource
  ]
}

resource networkSecurityGroups_cluster_aro_zcqjz_nsg_name_aeab19f36c1b6491a940e5945ed8c731_TCP_80_Internet 'Microsoft.Network/networkSecurityGroups/securityRules@2022-07-01' = {
  name: '${networkSecurityGroups_cluster_aro_zcqjz_nsg_name}/aeab19f36c1b6491a940e5945ed8c731-TCP-80-Internet'
  properties: {
    protocol: 'Tcp'
    sourcePortRange: '*'
    destinationPortRange: '80'
    sourceAddressPrefix: 'Internet'
    destinationAddressPrefix: '20.160.129.206'
    access: 'Allow'
    priority: 500
    direction: 'Inbound'
    sourcePortRanges: []
    destinationPortRanges: []
    sourceAddressPrefixes: []
    destinationAddressPrefixes: []
  }
  dependsOn: [
    networkSecurityGroups_cluster_aro_zcqjz_nsg_name_resource
  ]
}

resource networkSecurityGroups_cluster_aro_zcqjz_nsg_name_apiserver_in 'Microsoft.Network/networkSecurityGroups/securityRules@2022-07-01' = {
  name: '${networkSecurityGroups_cluster_aro_zcqjz_nsg_name}/apiserver_in'
  properties: {
    protocol: 'Tcp'
    sourcePortRange: '*'
    destinationPortRange: '6443'
    sourceAddressPrefix: '*'
    destinationAddressPrefix: '*'
    access: 'Allow'
    priority: 120
    direction: 'Inbound'
    sourcePortRanges: []
    destinationPortRanges: []
    sourceAddressPrefixes: []
    destinationAddressPrefixes: []
  }
  dependsOn: [
    networkSecurityGroups_cluster_aro_zcqjz_nsg_name_resource
  ]
}

resource privateLinkServices_cluster_aro_zcqjz_pls_name_resource 'Microsoft.Network/privateLinkServices@2022-07-01' = {
  name: privateLinkServices_cluster_aro_zcqjz_pls_name
  location: 'westeurope'
  properties: {
    fqdns: []
    visibility: {
      subscriptions: [
        '670fef00-02e0-4cd9-8c92-5f593005be0d'
      ]
    }
    autoApproval: {
      subscriptions: [
        '670fef00-02e0-4cd9-8c92-5f593005be0d'
      ]
    }
    enableProxyProtocol: false
    loadBalancerFrontendIpConfigurations: [
      {
        id: '${loadBalancers_cluster_aro_zcqjz_internal_name_resource.id}/frontendIPConfigurations/internal-lb-ip-v4'
      }
    ]
    ipConfigurations: [
      {
        name: '${privateLinkServices_cluster_aro_zcqjz_pls_name}-nic'
        id: '${privateLinkServices_cluster_aro_zcqjz_pls_name_resource.id}/ipConfigurations/${privateLinkServices_cluster_aro_zcqjz_pls_name}-nic'
        properties: {
          privateIPAllocationMethod: 'Dynamic'
          subnet: {
            id: '${virtualNetworks_aro_vnet_externalid}/subnets/master-subnet'
          }
          primary: true
          privateIPAddressVersion: 'IPv4'
        }
      }
    ]
  }
}

resource privateLinkServices_cluster_aro_zcqjz_pls_name_rp_pe_9db639a3_c22e_47ba_bcf7_5ef5cfcd43c4_b6e3dc05_4f2f_483f_a8f3_e9277dfadb49 'Microsoft.Network/privateLinkServices/privateEndpointConnections@2022-07-01' = {
  name: '${privateLinkServices_cluster_aro_zcqjz_pls_name}/rp-pe-9db639a3-c22e-47ba-bcf7-5ef5cfcd43c4.b6e3dc05-4f2f-483f-a8f3-e9277dfadb49'
  properties: {
    privateLinkServiceConnectionState: {
      status: 'Approved'
      description: 'Approved'
      actionsRequired: 'None'
    }
  }
  dependsOn: [
    privateLinkServices_cluster_aro_zcqjz_pls_name_resource
  ]
}

resource storageAccounts_clusterq0076_name_default 'Microsoft.Storage/storageAccounts/blobServices@2022-09-01' = {
  parent: storageAccounts_clusterq0076_name_resource
  name: 'default'
  sku: {
    name: 'Standard_LRS'
    tier: 'Standard'
  }
  properties: {
    cors: {
      corsRules: []
    }
    deleteRetentionPolicy: {
      allowPermanentDelete: false
      enabled: false
    }
  }
}

resource storageAccounts_imageregistryq0076_name_default 'Microsoft.Storage/storageAccounts/blobServices@2022-09-01' = {
  parent: storageAccounts_imageregistryq0076_name_resource
  name: 'default'
  sku: {
    name: 'Standard_LRS'
    tier: 'Standard'
  }
  properties: {
    cors: {
      corsRules: []
    }
    deleteRetentionPolicy: {
      allowPermanentDelete: false
      enabled: false
    }
  }
}

resource Microsoft_Storage_storageAccounts_fileServices_storageAccounts_clusterq0076_name_default 'Microsoft.Storage/storageAccounts/fileServices@2022-09-01' = {
  parent: storageAccounts_clusterq0076_name_resource
  name: 'default'
  sku: {
    name: 'Standard_LRS'
    tier: 'Standard'
  }
  properties: {
    protocolSettings: {
      smb: {
      }
    }
    cors: {
      corsRules: []
    }
    shareDeleteRetentionPolicy: {
      enabled: true
      days: 7
    }
  }
}

resource Microsoft_Storage_storageAccounts_fileServices_storageAccounts_imageregistryq0076_name_default 'Microsoft.Storage/storageAccounts/fileServices@2022-09-01' = {
  parent: storageAccounts_imageregistryq0076_name_resource
  name: 'default'
  sku: {
    name: 'Standard_LRS'
    tier: 'Standard'
  }
  properties: {
    protocolSettings: {
      smb: {
      }
    }
    cors: {
      corsRules: []
    }
    shareDeleteRetentionPolicy: {
      enabled: true
      days: 7
    }
  }
}

resource Microsoft_Storage_storageAccounts_queueServices_storageAccounts_clusterq0076_name_default 'Microsoft.Storage/storageAccounts/queueServices@2022-09-01' = {
  parent: storageAccounts_clusterq0076_name_resource
  name: 'default'
  properties: {
    cors: {
      corsRules: []
    }
  }
}

resource Microsoft_Storage_storageAccounts_queueServices_storageAccounts_imageregistryq0076_name_default 'Microsoft.Storage/storageAccounts/queueServices@2022-09-01' = {
  parent: storageAccounts_imageregistryq0076_name_resource
  name: 'default'
  properties: {
    cors: {
      corsRules: []
    }
  }
}

resource Microsoft_Storage_storageAccounts_tableServices_storageAccounts_clusterq0076_name_default 'Microsoft.Storage/storageAccounts/tableServices@2022-09-01' = {
  parent: storageAccounts_clusterq0076_name_resource
  name: 'default'
  properties: {
    cors: {
      corsRules: []
    }
  }
}

resource Microsoft_Storage_storageAccounts_tableServices_storageAccounts_imageregistryq0076_name_default 'Microsoft.Storage/storageAccounts/tableServices@2022-09-01' = {
  parent: storageAccounts_imageregistryq0076_name_resource
  name: 'default'
  properties: {
    cors: {
      corsRules: []
    }
  }
}

resource virtualMachines_cluster_aro_zcqjz_master_0_name_resource 'Microsoft.Compute/virtualMachines@2022-11-01' = {
  name: virtualMachines_cluster_aro_zcqjz_master_0_name
  location: 'westeurope'
  zones: [
    '1'
  ]
  properties: {
    hardwareProfile: {
      vmSize: 'Standard_D8s_v3'
    }
    storageProfile: {
      imageReference: {
        publisher: 'azureopenshift'
        offer: 'aro4'
        sku: 'aro_410'
        version: '410.84.20220125'
      }
      osDisk: {
        osType: 'Linux'
        name: '${virtualMachines_cluster_aro_zcqjz_master_0_name}_OSDisk'
        createOption: 'FromImage'
        caching: 'ReadOnly'
        managedDisk: {
          storageAccountType: 'Premium_LRS'
          id: resourceId('Microsoft.Compute/disks', '${virtualMachines_cluster_aro_zcqjz_master_0_name}_OSDisk')
        }
        deleteOption: 'Detach'
        diskSizeGB: 1024
      }
      dataDisks: []
    }
    osProfile: {
      computerName: virtualMachines_cluster_aro_zcqjz_master_0_name
      adminUsername: 'core'
      linuxConfiguration: {
        disablePasswordAuthentication: false
        provisionVMAgent: true
        patchSettings: {
          patchMode: 'ImageDefault'
          assessmentMode: 'ImageDefault'
        }
        enableVMAgentPlatformUpdates: false
      }
      secrets: []
      allowExtensionOperations: true
      requireGuestProvisionSignal: true
    }
    networkProfile: {
      networkInterfaces: [
        {
          id: networkInterfaces_cluster_aro_zcqjz_master0_nic_name_resource.id
        }
      ]
    }
    diagnosticsProfile: {
      bootDiagnostics: {
        enabled: true
        storageUri: 'https://${storageAccounts_clusterq0076_name}.blob.core.windows.net/'
      }
    }
  }
  dependsOn: [

    storageAccounts_clusterq0076_name_resource
  ]
}

resource virtualMachines_cluster_aro_zcqjz_master_1_name_resource 'Microsoft.Compute/virtualMachines@2022-11-01' = {
  name: virtualMachines_cluster_aro_zcqjz_master_1_name
  location: 'westeurope'
  zones: [
    '2'
  ]
  properties: {
    hardwareProfile: {
      vmSize: 'Standard_D8s_v3'
    }
    storageProfile: {
      imageReference: {
        publisher: 'azureopenshift'
        offer: 'aro4'
        sku: 'aro_410'
        version: '410.84.20220125'
      }
      osDisk: {
        osType: 'Linux'
        name: '${virtualMachines_cluster_aro_zcqjz_master_1_name}_OSDisk'
        createOption: 'FromImage'
        caching: 'ReadOnly'
        managedDisk: {
          storageAccountType: 'Premium_LRS'
          id: resourceId('Microsoft.Compute/disks', '${virtualMachines_cluster_aro_zcqjz_master_1_name}_OSDisk')
        }
        deleteOption: 'Detach'
        diskSizeGB: 1024
      }
      dataDisks: []
    }
    osProfile: {
      computerName: virtualMachines_cluster_aro_zcqjz_master_1_name
      adminUsername: 'core'
      linuxConfiguration: {
        disablePasswordAuthentication: false
        provisionVMAgent: true
        patchSettings: {
          patchMode: 'ImageDefault'
          assessmentMode: 'ImageDefault'
        }
        enableVMAgentPlatformUpdates: false
      }
      secrets: []
      allowExtensionOperations: true
      requireGuestProvisionSignal: true
    }
    networkProfile: {
      networkInterfaces: [
        {
          id: networkInterfaces_cluster_aro_zcqjz_master1_nic_name_resource.id
        }
      ]
    }
    diagnosticsProfile: {
      bootDiagnostics: {
        enabled: true
        storageUri: 'https://${storageAccounts_clusterq0076_name}.blob.core.windows.net/'
      }
    }
  }
  dependsOn: [

    storageAccounts_clusterq0076_name_resource
  ]
}

resource virtualMachines_cluster_aro_zcqjz_master_2_name_resource 'Microsoft.Compute/virtualMachines@2022-11-01' = {
  name: virtualMachines_cluster_aro_zcqjz_master_2_name
  location: 'westeurope'
  zones: [
    '3'
  ]
  properties: {
    hardwareProfile: {
      vmSize: 'Standard_D8s_v3'
    }
    storageProfile: {
      imageReference: {
        publisher: 'azureopenshift'
        offer: 'aro4'
        sku: 'aro_410'
        version: '410.84.20220125'
      }
      osDisk: {
        osType: 'Linux'
        name: '${virtualMachines_cluster_aro_zcqjz_master_2_name}_OSDisk'
        createOption: 'FromImage'
        caching: 'ReadOnly'
        managedDisk: {
          storageAccountType: 'Premium_LRS'
          id: resourceId('Microsoft.Compute/disks', '${virtualMachines_cluster_aro_zcqjz_master_2_name}_OSDisk')
        }
        deleteOption: 'Detach'
        diskSizeGB: 1024
      }
      dataDisks: []
    }
    osProfile: {
      computerName: virtualMachines_cluster_aro_zcqjz_master_2_name
      adminUsername: 'core'
      linuxConfiguration: {
        disablePasswordAuthentication: false
        provisionVMAgent: true
        patchSettings: {
          patchMode: 'ImageDefault'
          assessmentMode: 'ImageDefault'
        }
        enableVMAgentPlatformUpdates: false
      }
      secrets: []
      allowExtensionOperations: true
      requireGuestProvisionSignal: true
    }
    networkProfile: {
      networkInterfaces: [
        {
          id: networkInterfaces_cluster_aro_zcqjz_master2_nic_name_resource.id
        }
      ]
    }
    diagnosticsProfile: {
      bootDiagnostics: {
        enabled: true
        storageUri: 'https://${storageAccounts_clusterq0076_name}.blob.core.windows.net/'
      }
    }
  }
  dependsOn: [

    storageAccounts_clusterq0076_name_resource
  ]
}

resource storageAccounts_clusterq0076_name_default_aro 'Microsoft.Storage/storageAccounts/blobServices/containers@2022-09-01' = {
  parent: storageAccounts_clusterq0076_name_default
  name: 'aro'
  properties: {
    immutableStorageWithVersioning: {
      enabled: false
    }
    defaultEncryptionScope: '$account-encryption-key'
    denyEncryptionScopeOverride: false
    publicAccess: 'None'
  }
  dependsOn: [

    storageAccounts_clusterq0076_name_resource
  ]
}

resource storageAccounts_clusterq0076_name_default_bootdiagnostics_clusterar_24e4d0fe_d52b_44e5_914f_d863c244dd82 'Microsoft.Storage/storageAccounts/blobServices/containers@2022-09-01' = {
  parent: storageAccounts_clusterq0076_name_default
  name: 'bootdiagnostics-clusterar-24e4d0fe-d52b-44e5-914f-d863c244dd82'
  properties: {
    immutableStorageWithVersioning: {
      enabled: false
    }
    defaultEncryptionScope: '$account-encryption-key'
    denyEncryptionScopeOverride: false
    publicAccess: 'None'
  }
  dependsOn: [

    storageAccounts_clusterq0076_name_resource
  ]
}

resource storageAccounts_clusterq0076_name_default_bootdiagnostics_clusterar_cef2458b_0790_4470_a7dd_d308fb4f98d1 'Microsoft.Storage/storageAccounts/blobServices/containers@2022-09-01' = {
  parent: storageAccounts_clusterq0076_name_default
  name: 'bootdiagnostics-clusterar-cef2458b-0790-4470-a7dd-d308fb4f98d1'
  properties: {
    immutableStorageWithVersioning: {
      enabled: false
    }
    defaultEncryptionScope: '$account-encryption-key'
    denyEncryptionScopeOverride: false
    publicAccess: 'None'
  }
  dependsOn: [

    storageAccounts_clusterq0076_name_resource
  ]
}

resource storageAccounts_clusterq0076_name_default_bootdiagnostics_clusterar_dace7636_6890_4435_af21_b5cdbf3fb8ce 'Microsoft.Storage/storageAccounts/blobServices/containers@2022-09-01' = {
  parent: storageAccounts_clusterq0076_name_default
  name: 'bootdiagnostics-clusterar-dace7636-6890-4435-af21-b5cdbf3fb8ce'
  properties: {
    immutableStorageWithVersioning: {
      enabled: false
    }
    defaultEncryptionScope: '$account-encryption-key'
    denyEncryptionScopeOverride: false
    publicAccess: 'None'
  }
  dependsOn: [

    storageAccounts_clusterq0076_name_resource
  ]
}

resource storageAccounts_clusterq0076_name_default_bootdiagnostics_clusterar_f1d98df7_3776_4868_8c37_8089caeeb4ff 'Microsoft.Storage/storageAccounts/blobServices/containers@2022-09-01' = {
  parent: storageAccounts_clusterq0076_name_default
  name: 'bootdiagnostics-clusterar-f1d98df7-3776-4868-8c37-8089caeeb4ff'
  properties: {
    immutableStorageWithVersioning: {
      enabled: false
    }
    defaultEncryptionScope: '$account-encryption-key'
    denyEncryptionScopeOverride: false
    publicAccess: 'None'
  }
  dependsOn: [

    storageAccounts_clusterq0076_name_resource
  ]
}

resource storageAccounts_imageregistryq0076_name_default_image_registry 'Microsoft.Storage/storageAccounts/blobServices/containers@2022-09-01' = {
  parent: storageAccounts_imageregistryq0076_name_default
  name: 'image-registry'
  properties: {
    immutableStorageWithVersioning: {
      enabled: false
    }
    defaultEncryptionScope: '$account-encryption-key'
    denyEncryptionScopeOverride: false
    publicAccess: 'None'
  }
  dependsOn: [

    storageAccounts_imageregistryq0076_name_resource
  ]
}

resource loadBalancers_cluster_aro_zcqjz_name_resource 'Microsoft.Network/loadBalancers@2022-07-01' = {
  name: loadBalancers_cluster_aro_zcqjz_name
  location: 'westeurope'
  sku: {
    name: 'Standard'
    tier: 'Regional'
  }
  properties: {
    frontendIPConfigurations: [
      {
        name: 'public-lb-ip-v4'
        id: '${loadBalancers_cluster_aro_zcqjz_name_resource.id}/frontendIPConfigurations/public-lb-ip-v4'
        properties: {
          privateIPAllocationMethod: 'Dynamic'
          publicIPAddress: {
            id: publicIPAddresses_cluster_aro_zcqjz_pip_v4_name_resource.id
          }
        }
      }
      {
        name: 'aeab19f36c1b6491a940e5945ed8c731'
        id: '${loadBalancers_cluster_aro_zcqjz_name_resource.id}/frontendIPConfigurations/aeab19f36c1b6491a940e5945ed8c731'
        properties: {
          privateIPAllocationMethod: 'Dynamic'
          publicIPAddress: {
            id: publicIPAddresses_cluster_aro_zcqjz_default_v4_name_resource.id
          }
        }
      }
    ]
    backendAddressPools: [
      {
        name: loadBalancers_cluster_aro_zcqjz_name
        id: loadBalancers_cluster_aro_zcqjz_name_loadBalancers_cluster_aro_zcqjz_name.id
        properties: {
          loadBalancerBackendAddresses: [
            {
              name: 'aro-cvrk480s_${loadBalancers_cluster_aro_zcqjz_name}-master0-nicpipConfig'
              properties: {
              }
            }
            {
              name: 'aro-cvrk480s_${loadBalancers_cluster_aro_zcqjz_name}-master2-nicpipConfig'
              properties: {
              }
            }
            {
              name: 'aro-cvrk480s_${loadBalancers_cluster_aro_zcqjz_name}-master1-nicpipConfig'
              properties: {
              }
            }
            {
              name: 'aro-cvrk480s_${loadBalancers_cluster_aro_zcqjz_name}-worker-westeurope2-hsdjh-nicpipConfig'
              properties: {
              }
            }
            {
              name: 'aro-cvrk480s_${loadBalancers_cluster_aro_zcqjz_name}-worker-westeurope3-gl5hj-nicpipConfig'
              properties: {
              }
            }
            {
              name: 'aro-cvrk480s_${loadBalancers_cluster_aro_zcqjz_name}-worker-westeurope1-jpr7z-nicpipConfig'
              properties: {
              }
            }
          ]
        }
      }
    ]
    loadBalancingRules: [
      {
        name: 'api-internal-v4'
        id: '${loadBalancers_cluster_aro_zcqjz_name_resource.id}/loadBalancingRules/api-internal-v4'
        properties: {
          frontendIPConfiguration: {
            id: '${loadBalancers_cluster_aro_zcqjz_name_resource.id}/frontendIPConfigurations/public-lb-ip-v4'
          }
          frontendPort: 6443
          backendPort: 6443
          enableFloatingIP: false
          idleTimeoutInMinutes: 30
          protocol: 'Tcp'
          enableTcpReset: false
          loadDistribution: 'Default'
          disableOutboundSnat: true
          backendAddressPool: {
            id: loadBalancers_cluster_aro_zcqjz_name_loadBalancers_cluster_aro_zcqjz_name.id
          }
          backendAddressPools: [
            {
              id: loadBalancers_cluster_aro_zcqjz_name_loadBalancers_cluster_aro_zcqjz_name.id
            }
          ]
          probe: {
            id: '${loadBalancers_cluster_aro_zcqjz_name_resource.id}/probes/api-internal-probe'
          }
        }
      }
      {
        name: 'aeab19f36c1b6491a940e5945ed8c731-TCP-80'
        id: '${loadBalancers_cluster_aro_zcqjz_name_resource.id}/loadBalancingRules/aeab19f36c1b6491a940e5945ed8c731-TCP-80'
        properties: {
          frontendIPConfiguration: {
            id: '${loadBalancers_cluster_aro_zcqjz_name_resource.id}/frontendIPConfigurations/aeab19f36c1b6491a940e5945ed8c731'
          }
          frontendPort: 80
          backendPort: 80
          enableFloatingIP: true
          idleTimeoutInMinutes: 4
          protocol: 'Tcp'
          enableTcpReset: true
          loadDistribution: 'Default'
          disableOutboundSnat: false
          backendAddressPool: {
            id: loadBalancers_cluster_aro_zcqjz_name_loadBalancers_cluster_aro_zcqjz_name.id
          }
          backendAddressPools: [
            {
              id: loadBalancers_cluster_aro_zcqjz_name_loadBalancers_cluster_aro_zcqjz_name.id
            }
          ]
          probe: {
            id: '${loadBalancers_cluster_aro_zcqjz_name_resource.id}/probes/aeab19f36c1b6491a940e5945ed8c731-TCP-80'
          }
        }
      }
      {
        name: 'aeab19f36c1b6491a940e5945ed8c731-TCP-443'
        id: '${loadBalancers_cluster_aro_zcqjz_name_resource.id}/loadBalancingRules/aeab19f36c1b6491a940e5945ed8c731-TCP-443'
        properties: {
          frontendIPConfiguration: {
            id: '${loadBalancers_cluster_aro_zcqjz_name_resource.id}/frontendIPConfigurations/aeab19f36c1b6491a940e5945ed8c731'
          }
          frontendPort: 443
          backendPort: 443
          enableFloatingIP: true
          idleTimeoutInMinutes: 4
          protocol: 'Tcp'
          enableTcpReset: true
          loadDistribution: 'Default'
          disableOutboundSnat: false
          backendAddressPool: {
            id: loadBalancers_cluster_aro_zcqjz_name_loadBalancers_cluster_aro_zcqjz_name.id
          }
          backendAddressPools: [
            {
              id: loadBalancers_cluster_aro_zcqjz_name_loadBalancers_cluster_aro_zcqjz_name.id
            }
          ]
          probe: {
            id: '${loadBalancers_cluster_aro_zcqjz_name_resource.id}/probes/aeab19f36c1b6491a940e5945ed8c731-TCP-443'
          }
        }
      }
    ]
    probes: [
      {
        name: 'api-internal-probe'
        id: '${loadBalancers_cluster_aro_zcqjz_name_resource.id}/probes/api-internal-probe'
        properties: {
          protocol: 'Https'
          port: 6443
          requestPath: '/readyz'
          intervalInSeconds: 5
          numberOfProbes: 2
          probeThreshold: 1
        }
      }
      {
        name: 'aeab19f36c1b6491a940e5945ed8c731-TCP-80'
        id: '${loadBalancers_cluster_aro_zcqjz_name_resource.id}/probes/aeab19f36c1b6491a940e5945ed8c731-TCP-80'
        properties: {
          protocol: 'Http'
          port: 31711
          requestPath: '/healthz'
          intervalInSeconds: 5
          numberOfProbes: 2
          probeThreshold: 1
        }
      }
      {
        name: 'aeab19f36c1b6491a940e5945ed8c731-TCP-443'
        id: '${loadBalancers_cluster_aro_zcqjz_name_resource.id}/probes/aeab19f36c1b6491a940e5945ed8c731-TCP-443'
        properties: {
          protocol: 'Http'
          port: 31711
          requestPath: '/healthz'
          intervalInSeconds: 5
          numberOfProbes: 2
          probeThreshold: 1
        }
      }
    ]
    inboundNatRules: []
    outboundRules: [
      {
        name: 'outbound-rule-v4'
        id: '${loadBalancers_cluster_aro_zcqjz_name_resource.id}/outboundRules/outbound-rule-v4'
        properties: {
          allocatedOutboundPorts: 1024
          protocol: 'All'
          enableTcpReset: false
          idleTimeoutInMinutes: 30
          backendAddressPool: {
            id: loadBalancers_cluster_aro_zcqjz_name_loadBalancers_cluster_aro_zcqjz_name.id
          }
          frontendIPConfigurations: [
            {
              id: '${loadBalancers_cluster_aro_zcqjz_name_resource.id}/frontendIPConfigurations/public-lb-ip-v4'
            }
          ]
        }
      }
    ]
    inboundNatPools: []
  }
}

resource networkInterfaces_cluster_aro_zcqjz_master0_nic_name_resource 'Microsoft.Network/networkInterfaces@2022-07-01' = {
  name: networkInterfaces_cluster_aro_zcqjz_master0_nic_name
  location: 'westeurope'
  kind: 'Regular'
  properties: {
    ipConfigurations: [
      {
        name: 'pipConfig'
        id: '${networkInterfaces_cluster_aro_zcqjz_master0_nic_name_resource.id}/ipConfigurations/pipConfig'
        etag: 'W/"36bae7ec-3c2e-42ad-8b67-f36bf9bbc52f"'
        type: 'Microsoft.Network/networkInterfaces/ipConfigurations'
        properties: {
          provisioningState: 'Succeeded'
          privateIPAddress: '10.0.0.7'
          privateIPAllocationMethod: 'Dynamic'
          subnet: {
            id: '${virtualNetworks_aro_vnet_externalid}/subnets/master-subnet'
          }
          primary: true
          privateIPAddressVersion: 'IPv4'
          loadBalancerBackendAddressPools: [
            {
              id: loadBalancers_cluster_aro_zcqjz_internal_name_cluster_aro_zcqjz.id
            }
            {
              id: loadBalancers_cluster_aro_zcqjz_internal_name_ssh_0.id
            }
            {
              id: loadBalancers_cluster_aro_zcqjz_name_loadBalancers_cluster_aro_zcqjz_name.id
            }
          ]
        }
      }
    ]
    dnsSettings: {
      dnsServers: []
    }
    enableAcceleratedNetworking: false
    enableIPForwarding: false
    disableTcpStateTracking: false
    nicType: 'Standard'
  }
}

resource networkInterfaces_cluster_aro_zcqjz_master1_nic_name_resource 'Microsoft.Network/networkInterfaces@2022-07-01' = {
  name: networkInterfaces_cluster_aro_zcqjz_master1_nic_name
  location: 'westeurope'
  kind: 'Regular'
  properties: {
    ipConfigurations: [
      {
        name: 'pipConfig'
        id: '${networkInterfaces_cluster_aro_zcqjz_master1_nic_name_resource.id}/ipConfigurations/pipConfig'
        etag: 'W/"9c58b966-034e-45f3-be0c-d8805640e039"'
        type: 'Microsoft.Network/networkInterfaces/ipConfigurations'
        properties: {
          provisioningState: 'Succeeded'
          privateIPAddress: '10.0.0.10'
          privateIPAllocationMethod: 'Dynamic'
          subnet: {
            id: '${virtualNetworks_aro_vnet_externalid}/subnets/master-subnet'
          }
          primary: true
          privateIPAddressVersion: 'IPv4'
          loadBalancerBackendAddressPools: [
            {
              id: loadBalancers_cluster_aro_zcqjz_internal_name_cluster_aro_zcqjz.id
            }
            {
              id: loadBalancers_cluster_aro_zcqjz_internal_name_ssh_1.id
            }
            {
              id: loadBalancers_cluster_aro_zcqjz_name_loadBalancers_cluster_aro_zcqjz_name.id
            }
          ]
        }
      }
    ]
    dnsSettings: {
      dnsServers: []
    }
    enableAcceleratedNetworking: false
    enableIPForwarding: false
    disableTcpStateTracking: false
    nicType: 'Standard'
  }
}

resource networkInterfaces_cluster_aro_zcqjz_master2_nic_name_resource 'Microsoft.Network/networkInterfaces@2022-07-01' = {
  name: networkInterfaces_cluster_aro_zcqjz_master2_nic_name
  location: 'westeurope'
  kind: 'Regular'
  properties: {
    ipConfigurations: [
      {
        name: 'pipConfig'
        id: '${networkInterfaces_cluster_aro_zcqjz_master2_nic_name_resource.id}/ipConfigurations/pipConfig'
        etag: 'W/"49b60320-b5d1-4e66-a7f3-f74d0f5abf58"'
        type: 'Microsoft.Network/networkInterfaces/ipConfigurations'
        properties: {
          provisioningState: 'Succeeded'
          privateIPAddress: '10.0.0.8'
          privateIPAllocationMethod: 'Dynamic'
          subnet: {
            id: '${virtualNetworks_aro_vnet_externalid}/subnets/master-subnet'
          }
          primary: true
          privateIPAddressVersion: 'IPv4'
          loadBalancerBackendAddressPools: [
            {
              id: loadBalancers_cluster_aro_zcqjz_internal_name_cluster_aro_zcqjz.id
            }
            {
              id: loadBalancers_cluster_aro_zcqjz_internal_name_ssh_2.id
            }
            {
              id: loadBalancers_cluster_aro_zcqjz_name_loadBalancers_cluster_aro_zcqjz_name.id
            }
          ]
        }
      }
    ]
    dnsSettings: {
      dnsServers: []
    }
    enableAcceleratedNetworking: false
    enableIPForwarding: false
    disableTcpStateTracking: false
    nicType: 'Standard'
  }
}

resource networkSecurityGroups_cluster_aro_zcqjz_nsg_name_resource 'Microsoft.Network/networkSecurityGroups@2022-07-01' = {
  name: networkSecurityGroups_cluster_aro_zcqjz_nsg_name
  location: 'westeurope'
  properties: {
    securityRules: [
      {
        name: 'apiserver_in'
        id: networkSecurityGroups_cluster_aro_zcqjz_nsg_name_apiserver_in.id
        type: 'Microsoft.Network/networkSecurityGroups/securityRules'
        properties: {
          protocol: 'Tcp'
          sourcePortRange: '*'
          destinationPortRange: '6443'
          sourceAddressPrefix: '*'
          destinationAddressPrefix: '*'
          access: 'Allow'
          priority: 120
          direction: 'Inbound'
          sourcePortRanges: []
          destinationPortRanges: []
          sourceAddressPrefixes: []
          destinationAddressPrefixes: []
        }
      }
      {
        name: 'aeab19f36c1b6491a940e5945ed8c731-TCP-80-Internet'
        id: networkSecurityGroups_cluster_aro_zcqjz_nsg_name_aeab19f36c1b6491a940e5945ed8c731_TCP_80_Internet.id
        type: 'Microsoft.Network/networkSecurityGroups/securityRules'
        properties: {
          protocol: 'Tcp'
          sourcePortRange: '*'
          destinationPortRange: '80'
          sourceAddressPrefix: 'Internet'
          destinationAddressPrefix: '20.160.129.206'
          access: 'Allow'
          priority: 500
          direction: 'Inbound'
          sourcePortRanges: []
          destinationPortRanges: []
          sourceAddressPrefixes: []
          destinationAddressPrefixes: []
        }
      }
      {
        name: 'aeab19f36c1b6491a940e5945ed8c731-TCP-443-Internet'
        id: networkSecurityGroups_cluster_aro_zcqjz_nsg_name_aeab19f36c1b6491a940e5945ed8c731_TCP_443_Internet.id
        type: 'Microsoft.Network/networkSecurityGroups/securityRules'
        properties: {
          protocol: 'Tcp'
          sourcePortRange: '*'
          destinationPortRange: '443'
          sourceAddressPrefix: 'Internet'
          destinationAddressPrefix: '20.160.129.206'
          access: 'Allow'
          priority: 501
          direction: 'Inbound'
          sourcePortRanges: []
          destinationPortRanges: []
          sourceAddressPrefixes: []
          destinationAddressPrefixes: []
        }
      }
    ]
  }
}

resource loadBalancers_cluster_aro_zcqjz_internal_name_resource 'Microsoft.Network/loadBalancers@2022-07-01' = {
  name: loadBalancers_cluster_aro_zcqjz_internal_name
  location: 'westeurope'
  sku: {
    name: 'Standard'
    tier: 'Regional'
  }
  properties: {
    frontendIPConfigurations: [
      {
        name: 'internal-lb-ip-v4'
        id: '${loadBalancers_cluster_aro_zcqjz_internal_name_resource.id}/frontendIPConfigurations/internal-lb-ip-v4'
        properties: {
          privateIPAddress: '10.0.0.4'
          privateIPAllocationMethod: 'Dynamic'
          subnet: {
            id: '${virtualNetworks_aro_vnet_externalid}/subnets/master-subnet'
          }
          privateIPAddressVersion: 'IPv4'
        }
      }
    ]
    backendAddressPools: [
      {
        name: 'cluster-aro-zcqjz'
        id: loadBalancers_cluster_aro_zcqjz_internal_name_cluster_aro_zcqjz.id
        properties: {
          loadBalancerBackendAddresses: [
            {
              name: 'aro-cvrk480s_cluster-aro-zcqjz-master0-nicpipConfig'
              properties: {
              }
            }
            {
              name: 'aro-cvrk480s_cluster-aro-zcqjz-master2-nicpipConfig'
              properties: {
              }
            }
            {
              name: 'aro-cvrk480s_cluster-aro-zcqjz-master1-nicpipConfig'
              properties: {
              }
            }
          ]
        }
      }
      {
        name: 'ssh-0'
        id: loadBalancers_cluster_aro_zcqjz_internal_name_ssh_0.id
        properties: {
          loadBalancerBackendAddresses: [
            {
              name: 'aro-cvrk480s_cluster-aro-zcqjz-master0-nicpipConfig'
              properties: {
              }
            }
          ]
        }
      }
      {
        name: 'ssh-1'
        id: loadBalancers_cluster_aro_zcqjz_internal_name_ssh_1.id
        properties: {
          loadBalancerBackendAddresses: [
            {
              name: 'aro-cvrk480s_cluster-aro-zcqjz-master1-nicpipConfig'
              properties: {
              }
            }
          ]
        }
      }
      {
        name: 'ssh-2'
        id: loadBalancers_cluster_aro_zcqjz_internal_name_ssh_2.id
        properties: {
          loadBalancerBackendAddresses: [
            {
              name: 'aro-cvrk480s_cluster-aro-zcqjz-master2-nicpipConfig'
              properties: {
              }
            }
          ]
        }
      }
    ]
    loadBalancingRules: [
      {
        name: 'api-internal-v4'
        id: '${loadBalancers_cluster_aro_zcqjz_internal_name_resource.id}/loadBalancingRules/api-internal-v4'
        properties: {
          frontendIPConfiguration: {
            id: '${loadBalancers_cluster_aro_zcqjz_internal_name_resource.id}/frontendIPConfigurations/internal-lb-ip-v4'
          }
          frontendPort: 6443
          backendPort: 6443
          enableFloatingIP: false
          idleTimeoutInMinutes: 30
          protocol: 'Tcp'
          enableTcpReset: false
          loadDistribution: 'Default'
          disableOutboundSnat: true
          backendAddressPool: {
            id: loadBalancers_cluster_aro_zcqjz_internal_name_cluster_aro_zcqjz.id
          }
          backendAddressPools: [
            {
              id: loadBalancers_cluster_aro_zcqjz_internal_name_cluster_aro_zcqjz.id
            }
          ]
          probe: {
            id: '${loadBalancers_cluster_aro_zcqjz_internal_name_resource.id}/probes/api-internal-probe'
          }
        }
      }
      {
        name: 'sint-v4'
        id: '${loadBalancers_cluster_aro_zcqjz_internal_name_resource.id}/loadBalancingRules/sint-v4'
        properties: {
          frontendIPConfiguration: {
            id: '${loadBalancers_cluster_aro_zcqjz_internal_name_resource.id}/frontendIPConfigurations/internal-lb-ip-v4'
          }
          frontendPort: 22623
          backendPort: 22623
          enableFloatingIP: false
          idleTimeoutInMinutes: 30
          protocol: 'Tcp'
          enableTcpReset: false
          loadDistribution: 'Default'
          disableOutboundSnat: false
          backendAddressPool: {
            id: loadBalancers_cluster_aro_zcqjz_internal_name_cluster_aro_zcqjz.id
          }
          backendAddressPools: [
            {
              id: loadBalancers_cluster_aro_zcqjz_internal_name_cluster_aro_zcqjz.id
            }
          ]
          probe: {
            id: '${loadBalancers_cluster_aro_zcqjz_internal_name_resource.id}/probes/sint-probe'
          }
        }
      }
      {
        name: 'ssh-0'
        id: '${loadBalancers_cluster_aro_zcqjz_internal_name_resource.id}/loadBalancingRules/ssh-0'
        properties: {
          frontendIPConfiguration: {
            id: '${loadBalancers_cluster_aro_zcqjz_internal_name_resource.id}/frontendIPConfigurations/internal-lb-ip-v4'
          }
          frontendPort: 2200
          backendPort: 22
          enableFloatingIP: false
          idleTimeoutInMinutes: 30
          protocol: 'Tcp'
          enableTcpReset: false
          loadDistribution: 'Default'
          disableOutboundSnat: true
          backendAddressPool: {
            id: loadBalancers_cluster_aro_zcqjz_internal_name_ssh_0.id
          }
          backendAddressPools: [
            {
              id: loadBalancers_cluster_aro_zcqjz_internal_name_ssh_0.id
            }
          ]
          probe: {
            id: '${loadBalancers_cluster_aro_zcqjz_internal_name_resource.id}/probes/ssh'
          }
        }
      }
      {
        name: 'ssh-1'
        id: '${loadBalancers_cluster_aro_zcqjz_internal_name_resource.id}/loadBalancingRules/ssh-1'
        properties: {
          frontendIPConfiguration: {
            id: '${loadBalancers_cluster_aro_zcqjz_internal_name_resource.id}/frontendIPConfigurations/internal-lb-ip-v4'
          }
          frontendPort: 2201
          backendPort: 22
          enableFloatingIP: false
          idleTimeoutInMinutes: 30
          protocol: 'Tcp'
          enableTcpReset: false
          loadDistribution: 'Default'
          disableOutboundSnat: true
          backendAddressPool: {
            id: loadBalancers_cluster_aro_zcqjz_internal_name_ssh_1.id
          }
          backendAddressPools: [
            {
              id: loadBalancers_cluster_aro_zcqjz_internal_name_ssh_1.id
            }
          ]
          probe: {
            id: '${loadBalancers_cluster_aro_zcqjz_internal_name_resource.id}/probes/ssh'
          }
        }
      }
      {
        name: 'ssh-2'
        id: '${loadBalancers_cluster_aro_zcqjz_internal_name_resource.id}/loadBalancingRules/ssh-2'
        properties: {
          frontendIPConfiguration: {
            id: '${loadBalancers_cluster_aro_zcqjz_internal_name_resource.id}/frontendIPConfigurations/internal-lb-ip-v4'
          }
          frontendPort: 2202
          backendPort: 22
          enableFloatingIP: false
          idleTimeoutInMinutes: 30
          protocol: 'Tcp'
          enableTcpReset: false
          loadDistribution: 'Default'
          disableOutboundSnat: true
          backendAddressPool: {
            id: loadBalancers_cluster_aro_zcqjz_internal_name_ssh_2.id
          }
          backendAddressPools: [
            {
              id: loadBalancers_cluster_aro_zcqjz_internal_name_ssh_2.id
            }
          ]
          probe: {
            id: '${loadBalancers_cluster_aro_zcqjz_internal_name_resource.id}/probes/ssh'
          }
        }
      }
    ]
    probes: [
      {
        name: 'api-internal-probe'
        id: '${loadBalancers_cluster_aro_zcqjz_internal_name_resource.id}/probes/api-internal-probe'
        properties: {
          protocol: 'Https'
          port: 6443
          requestPath: '/readyz'
          intervalInSeconds: 5
          numberOfProbes: 2
          probeThreshold: 1
        }
      }
      {
        name: 'sint-probe'
        id: '${loadBalancers_cluster_aro_zcqjz_internal_name_resource.id}/probes/sint-probe'
        properties: {
          protocol: 'Https'
          port: 22623
          requestPath: '/healthz'
          intervalInSeconds: 5
          numberOfProbes: 2
          probeThreshold: 1
        }
      }
      {
        name: 'ssh'
        id: '${loadBalancers_cluster_aro_zcqjz_internal_name_resource.id}/probes/ssh'
        properties: {
          protocol: 'Tcp'
          port: 22
          intervalInSeconds: 5
          numberOfProbes: 2
          probeThreshold: 1
        }
      }
    ]
    inboundNatRules: []
    outboundRules: []
    inboundNatPools: []
  }
}