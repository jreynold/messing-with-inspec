control 'azurerm_resource_groups' do
    describe azurerm_resource_groups do
        it { should exist }
        its('names') { should include 'myResourceGroup' }
    end
end