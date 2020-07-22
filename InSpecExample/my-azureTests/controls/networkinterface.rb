control 'azurerm_network_interface' do
    describe azurerm_network_interface(resource_group: 'myResourceGroup', name: 'myVMVMNic') do
    it { should exist }
  end
end