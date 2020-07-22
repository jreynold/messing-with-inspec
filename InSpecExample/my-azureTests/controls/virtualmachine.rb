control 'azurerm_virtual_machine' do
    describe azurerm_virtual_machine(resource_group: 'myResourceGroup', name: 'myVM') do
        it { should exist }
        its ('name') { should eq('myVM') }
        its ('location') { should eq('eastus') }
        its ('os_disk_name') {should include('OsDisk_1') }
    end
end