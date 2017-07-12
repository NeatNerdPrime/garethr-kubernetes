
# This file is automatically generated by puppet-swagger-generator and
# any manual changes are likely to be clobbered when the files
# are regenerated.

require_relative '../../../puppet_x/puppetlabs/kubernetes/provider'

Puppet::Type.type(:kubernetes_label_selector_requirement).provide(:swagger, :parent => PuppetX::Puppetlabs::Kubernetes::Provider) do

  mk_resource_methods

  def self.instance_to_hash(instance)
    {
    ensure: :present,
    name: instance.metadata.name,
    
      
        key: instance.key.respond_to?(:to_hash) ? instance.key.to_hash : instance.key,
      
    
      
        operator: instance.operator.respond_to?(:to_hash) ? instance.operator.to_hash : instance.operator,
      
    
      
        values: instance.values.respond_to?(:to_hash) ? instance.values.to_hash : instance.values,
      
    
    object: instance,
    }
  end

  def create
    Puppet.info("Creating kubernetes_label_selector_requirement #{name}")
    create_instance_of('label_selector_requirement', name, build_params)
  end

  def flush
   unless @property_hash.empty?
     unless resource[:ensure] == :absent
        flush_instance_of('label_selector_requirement', name, @property_hash[:object], build_params)
      end
    end
  end

  def destroy
    Puppet.info("Deleting kubernetes_label_selector_requirement #{name}")
    destroy_instance_of('label_selector_requirement', name)
    @property_hash[:ensure] = :absent
  end

  private
  def self.list_instances
    list_instances_of('label_selector_requirement')
  end

  def build_params
    params = {
    
      
        key: resource[:key],
      
    
      
        operator: resource[:operator],
      
    
      
        values: resource[:values],
      
    
    }
    params.delete_if { |key, value| value.nil? }
    params
  end
end