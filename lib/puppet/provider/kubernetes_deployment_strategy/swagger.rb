
# This file is automatically generated by puppet-swagger-generator and
# any manual changes are likely to be clobbered when the files
# are regenerated.

require_relative '../../../puppet_x/puppetlabs/kubernetes/provider'

Puppet::Type.type(:kubernetes_deployment_strategy).provide(:swagger, :parent => PuppetX::Puppetlabs::Kubernetes::Provider) do

  mk_resource_methods

  def self.instance_to_hash(instance)
    {
    ensure: :present,
    name: instance.metadata.name,
    
      
        type: instance.type.respond_to?(:to_hash) ? instance.type.to_hash : instance.type,
      
    
      
        rolling_update: instance.rollingUpdate.respond_to?(:to_hash) ? instance.rollingUpdate.to_hash : instance.rollingUpdate,
      
    
    object: instance,
    }
  end

  def create
    Puppet.info("Creating kubernetes_deployment_strategy #{name}")
    create_instance_of('deployment_strategy', name, build_params)
  end

  def flush
   unless @property_hash.empty?
     unless resource[:ensure] == :absent
        flush_instance_of('deployment_strategy', name, @property_hash[:object], build_params)
      end
    end
  end

  def destroy
    Puppet.info("Deleting kubernetes_deployment_strategy #{name}")
    destroy_instance_of('deployment_strategy', name)
    @property_hash[:ensure] = :absent
  end

  private
  def self.list_instances
    list_instances_of('deployment_strategy')
  end

  def build_params
    params = {
    
      
        type: resource[:type],
      
    
      
        rollingUpdate: resource[:rolling_update],
      
    
    }
    params.delete_if { |key, value| value.nil? }
    params
  end
end