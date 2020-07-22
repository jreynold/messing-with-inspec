
control 'azurerm_network_security_group' do
    describe azurerm_network_security_group(resource_group: 'myResourceGroup', name: 'myVMNSG') do
    it { should exist }
    it { should allow_ssh_from_internet }
  end
  securityRules = azurerm_network_security_group(resource_group: 'myResourceGroup', name: 'myVMNSG').properties.securityRules
  securityRules.each do |securityRules|
    describe securityRules do
      its('name') { should eq 'open-port-80' }
      its('properties.destinationPortRange') { should eq '80' }
    end
end
  
end
